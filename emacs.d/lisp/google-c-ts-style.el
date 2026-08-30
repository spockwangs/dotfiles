;;; google-c-ts-style.el --- Google's C/C++ style for c-ts-mode  -*- lexical-binding: t; -*-

;;; Commentary:

;; Provides Google-like indentation for `c-ts-mode' and `c++-ts-mode'.
;;
;; Emacs 31 reworked the internals of `c-ts-mode', renaming or dropping
;; several helpers this file used to rely on:
;;
;;   c-ts-mode--get-indent-style    -> c-ts-mode--simple-indent-rules
;;   c-ts-mode--anchor-prev-sibling -> c-ts-mode--prev-sibling
;;   c-ts-mode--first-sibling       -> removed (reimplemented below)
;;   c-ts-mode-indent-offset        -> c-ts-indent-offset (obsolete alias)
;;
;; Everything is resolved at runtime, so this file keeps working on
;; Emacs 29, 30 and 31.

;;; Code:

(require 'c-ts-mode)
(require 'treesit)

(declare-function c-ts-mode--get-indent-style "c-ts-mode" (mode))
(declare-function c-ts-mode--simple-indent-rules "c-ts-mode" (mode style))
(declare-function c-ts-mode--anchor-prev-sibling "c-ts-mode" (node parent bol &rest _))

(defun google-c-ts-mode--indent-offset-symbol ()
  "Return the symbol holding the tree-sitter C/C++ indent offset.
Emacs 31 renamed `c-ts-mode-indent-offset' to `c-ts-indent-offset'; the
old name survives as an obsolete alias, but the new one is preferred
when present."
  (if (boundp 'c-ts-indent-offset) 'c-ts-indent-offset 'c-ts-mode-indent-offset))

(defun google-c-ts-mode--prev-sibling-anchor ()
  "Return the anchor function that aligns a node with its previous sibling.
Emacs 31 renamed `c-ts-mode--anchor-prev-sibling' to `c-ts-mode--prev-sibling'
and taught it to skip over labels and preprocessor blocks."
  (if (fboundp 'c-ts-mode--prev-sibling)
      #'c-ts-mode--prev-sibling
    #'c-ts-mode--anchor-prev-sibling))

(defun google-c-ts-mode--base-indent-rules (mode)
  "Return the built-in K&R tree-sitter indent rules for MODE (`c' or `cpp').
The result is a plain list of rules, without the language symbol, ready to
be returned from a `c-ts-mode-indent-style' style function."
  (cond ((fboundp 'c-ts-mode--simple-indent-rules) ; Emacs 31+
         (cdar (c-ts-mode--simple-indent-rules mode 'k&r)))
        ((fboundp 'c-ts-mode--get-indent-style)    ; Emacs 29/30
         (cdar (c-ts-mode--get-indent-style mode)))
        (t
         (user-error "Unsupported `c-ts-mode' version: no indent style source"))))

(defun google-c-ts-mode--expression-plus-4-anchor (_node _parent bol &rest _)
  "Return the previous line's expression start for Google-style continuations."
  (save-excursion
    (goto-char bol)
    (forward-line -1)
    (back-to-indentation)
    (cond
     ((looking-at "\\(if\\|for\\|while\\)\\s-*(")
      (goto-char (match-end 0)))
     ((looking-at ":\\s-*")
      (goto-char (match-end 0))))
    (point)))

(defun google-c-ts-mode--class-anchor (node _parent _bol &rest _)
  "Return the start of NODE's enclosing C++ class."
  (let ((node node))
    (while (and node (not (equal (treesit-node-type node) "class_specifier")))
      (setq node (treesit-node-parent node)))
    (and node (treesit-node-start node))))

(defun google-c-ts-mode--first-sibling (node parent &rest _)
  "Return non-nil if NODE is the first named child of PARENT.
This replaces `c-ts-mode--first-sibling', which Emacs 31 removed.  It is
meant to be used in `treesit-simple-indent-rules' to detect the first
argument or parameter, which Google style indents by a fixed amount
instead of aligning it with a previous argument."
  (let ((first (and parent (treesit-node-child parent 0 t))))
    (or (null first)
        (treesit-node-eq node first))))

(defun google-c-ts-mode-style ()
  "Return Google-like indentation rules for `c-ts-mode' and `c++-ts-mode'."
  (let* ((mode (if (derived-mode-p 'c++-ts-mode) 'cpp 'c))
         (c-ts-mode-indent-style 'k&r)
         (offset (google-c-ts-mode--indent-offset-symbol))
         (prev-sibling (google-c-ts-mode--prev-sibling-anchor)))
    (append
     ;; Translation of the Google `c-offsets-alist' to
     ;; `treesit-simple-indent-rules'.  Rules not listed here are left to
     ;; Emacs' K&R tree-sitter style, which already matches Google's brace
     ;; and block indentation closely.
     `(
       ;; arglist-intro: google-c-lineup-expression-plus-4
       ((and (parent-is "argument_list") google-c-ts-mode--first-sibling)
        google-c-ts-mode--expression-plus-4-anchor 4)
       ((and (parent-is "parameter_list") google-c-ts-mode--first-sibling)
        google-c-ts-mode--expression-plus-4-anchor 4)
       ;; arglist-close: c-lineup-arglist, and following arguments align.
       ((parent-is "argument_list") ,prev-sibling 0)
       ((parent-is "parameter_list") ,prev-sibling 0)
       ;; func-decl-cont, statement-cont: ++
       ((parent-is "assignment_expression") parent-bol 4)
       ((parent-is "binary_expression") parent-bol 4)
       ((parent-is "conditional_expression") parent-bol 4)
       ((parent-is "init_declarator") parent-bol 4)
       ;; member-init-intro: ++
       ((node-is "field_initializer_list") parent-bol 4)
       ((parent-is "field_initializer_list") ,prev-sibling 0)
       ;; inher-intro: ++
       ((parent-is "base_class_clause") parent-bol 4)
       ;; class-open/class-close and class members
       ((node-is "access_specifier") google-c-ts-mode--class-anchor 1)
       ((n-p-gp "}" "declaration_list" "class_specifier")
        google-c-ts-mode--class-anchor 0)
       ((n-p-gp nil "declaration_list" "class_specifier")
        google-c-ts-mode--class-anchor ,offset)
       ;; innamespace: 0
       ((n-p-gp nil "declaration_list" "namespace_definition") parent-bol 0)
       ;; access-label: /
       ((node-is "access_specifier") standalone-parent 1)
       ;; case-label, statement-case-open, statement-case-intro: +
       ((node-is "case") parent-bol ,offset)
       ((node-is "default") parent-bol ,offset)
       ((parent-is "case_statement") standalone-parent ,offset))
     (google-c-ts-mode--base-indent-rules mode))))

(defun google-set-c-ts-style ()
  "Set the current buffer's tree-sitter C/C++ style to Google-like rules."
  (interactive)
  (set (make-local-variable (google-c-ts-mode--indent-offset-symbol)) 2)
  (setq-local comment-column 40)
  (c-ts-mode-set-style #'google-c-ts-mode-style))

(provide 'google-c-ts-style)

;;; google-c-ts-style.el ends here
