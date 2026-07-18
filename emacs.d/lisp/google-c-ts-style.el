;;; google-c-ts-style.el --- Google's C/C++ style for c-ts-mode  -*- lexical-binding: t; -*-

;;; Commentary:

;; Provides Google-like indentation for `c-ts-mode' and `c++-ts-mode'.

;;; Code:

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

(defun google-c-ts-mode-style ()
  "Return Google-like indentation rules for `c-ts-mode' and `c++-ts-mode'."
  (let* ((mode (if (derived-mode-p 'c++-ts-mode) 'cpp 'c))
         (c-ts-mode-indent-style 'k&r))
    (append
     ;; Translation of the Google `c-offsets-alist' to
     ;; `treesit-simple-indent-rules'.  Rules not listed here are left to
     ;; Emacs' K&R tree-sitter style, which already matches Google's brace
     ;; and block indentation closely.
     `(
       ;; arglist-intro: google-c-lineup-expression-plus-4
       ((and (parent-is "argument_list") c-ts-mode--first-sibling)
        google-c-ts-mode--expression-plus-4-anchor 4)
       ((and (parent-is "parameter_list") c-ts-mode--first-sibling)
        google-c-ts-mode--expression-plus-4-anchor 4)
       ;; arglist-close: c-lineup-arglist, and following arguments align.
       ((parent-is "argument_list") c-ts-mode--anchor-prev-sibling 0)
       ((parent-is "parameter_list") c-ts-mode--anchor-prev-sibling 0)
       ;; func-decl-cont, statement-cont: ++
       ((parent-is "assignment_expression") parent-bol 4)
       ((parent-is "binary_expression") parent-bol 4)
       ((parent-is "conditional_expression") parent-bol 4)
       ((parent-is "init_declarator") parent-bol 4)
       ;; member-init-intro: ++
       ((node-is "field_initializer_list") parent-bol 4)
       ((parent-is "field_initializer_list") c-ts-mode--anchor-prev-sibling 0)
       ;; inher-intro: ++
       ((parent-is "base_class_clause") parent-bol 4)
       ;; class-open/class-close and class members
       ((node-is "access_specifier") google-c-ts-mode--class-anchor 1)
       ((n-p-gp "}" "declaration_list" "class_specifier")
        google-c-ts-mode--class-anchor 0)
       ((n-p-gp nil "declaration_list" "class_specifier")
        google-c-ts-mode--class-anchor c-ts-mode-indent-offset)
       ;; innamespace: 0
       ((n-p-gp nil "declaration_list" "namespace_definition") parent-bol 0)
       ;; access-label: /
       ((node-is "access_specifier") standalone-parent 1)
       ;; case-label, statement-case-open, statement-case-intro: +
       ((node-is "case") parent-bol c-ts-mode-indent-offset)
       ((node-is "default") parent-bol c-ts-mode-indent-offset)
       ((parent-is "case_statement") standalone-parent c-ts-mode-indent-offset))
     (cdar (c-ts-mode--get-indent-style mode)))))

(defun google-set-c-ts-style ()
  "Set the current buffer's tree-sitter C/C++ style to Google-like rules."
  (interactive)
  (setq-local c-ts-mode-indent-offset 2)
  (setq-local comment-column 40)
  (c-ts-mode-set-style #'google-c-ts-mode-style))

(provide 'google-c-ts-style)

;;; google-c-ts-style.el ends here
