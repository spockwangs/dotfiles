;;; init-programing.el --- Configure programming utilities.  -*- lexical-binding: t; -*-

;; Copyright (C) 2025  spockwang

;; Author: spockwang <wbbtiger@gmail.com>
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(require 'util)

(use-package prog-mode
  :ensure nil
  :preface
  (defun init-prog-mode ()
    (font-lock-add-keywords nil '(("\\<\\(TODO\\|FIXME\\|XXX\\)\\>" 1 font-lock-warning-face t))))
  :hook
  (prog-mode . init-prog-mode))

(defun merge-request-to-gongfeng ()
  "请求工蜂合并代码。"
  (interactive)
  (browse-url (concat (replace-regexp-in-string ".git$" "" (magit-get "remote.origin.url"))
                      "/-/merge_requests/new?ADTAG=git-cli&"
                      (url-hexify-string (format "merge_request[source_branch]=%s" (magit-get-current-branch))))))

(defun my-list-merged-branches ()
  "List all branches which have merged into the specified branch."
  (interactive)
  (let* ((default-branch "origin/master")
         (dest-branch (completing-read (format "Branches merged to (default: %s): " default-branch)
                                       (magit-list-branch-names) nil :require-match nil nil default-branch))
         (merged-branches (remove dest-branch (magit-list-merged-branches dest-branch))))
    (if (null merged-branches)
        (message "No merged branches.")
      (message (concat "Merged branches to `" dest-branch "':\n"
                       (mapconcat 'identity merged-branches "\n"))))))

(defun my-list-unmerged-branches ()
  "List all branches which have not merged into the specified branch."
  (interactive)
  (let* ((default-branch "origin/master")
         (dest-branch (completing-read (format "Branches merged to (default: %s): " default-branch)
                                       (magit-list-branch-names) nil :require-match nil nil default-branch))
         (unmerged-branches (magit-list-unmerged-branches dest-branch)))
    (message (concat "Un-merged branches to `" dest-branch "':\n"
                     (mapconcat 'identity unmerged-branches "\n")))))

(defun my-delete-merged-branches ()
  "Iterate to delete all branches which have merged into the specified branch."
  (interactive)
  (let* ((default-branch "origin/master")
         (dest-branch (completing-read (format "Branches merged to (default: %s): " default-branch)
                                       (magit-list-branch-names) nil :require-match nil nil default-branch))
         (merged-branches (magit-list-merged-branches dest-branch))
         (branches-to-delete (remove dest-branch (remove "master" merged-branches)))
         (total-num (length branches-to-delete))
         (processed-count 0))
    (if branches-to-delete
        (dolist (br branches-to-delete)
          (setq processed-count (1+ processed-count))
          (if (yes-or-no-p (format "Delete branch `%s'? (%d/%d)" br processed-count total-num))
              (magit-branch-delete (list br))
            (message "Nothing to delete"))))))

(use-package magit
  :custom
  (auto-revert-buffer-list-filter
   (lambda (buf) (not (file-remote-p (buffer-file-name buf))))
   "Do not auto-revert remote files to improve performance")
  (magit-stage-all-confirm nil "disable `Stage all changes?")
  (magit-stage-modified-confirm nil "disable `Stage N modified files?'")
  :config
  (transient-append-suffix 'magit-merge "m"
    '("r" "Merge request" merge-request-to-gongfeng))
  (transient-append-suffix 'magit-branch "k"
    '("K" "Delete all merged branches" my-delete-merged-branches))
  (transient-append-suffix 'magit-branch "K"
    '("M" "List all merged branches" my-list-merged-branches))
  (transient-append-suffix 'magit-branch "M"
    '("U" "List all unmerged branches" my-list-unmerged-branches)))

(use-package autoinsert
  :after (yasnippet)
  ;; `:after' is not a deferring keyword. This package is not scheduled to load after `yasnippet' is
  ;; loaded, unless `:demand' is specified.
  :demand
  :preface
  (defun autoinsert-yas-expand ()
    "Replace text in yasnippet template."
    (yas-expand-snippet (buffer-string) (point-min) (point-max)))
  :custom
  (auto-insert-directory "~/.emacs.d/auto-insert/")
  (auto-insert-query nil)
  :config
  (define-auto-insert "\\.\\([Hh]\\|hh\\|hpp\\)\\'" ["template.h" c++-mode autoinsert-yas-expand])
  (define-auto-insert "\\.\\(cc\\|cpp\\)\\'" ["template.cc" c++-mode autoinsert-yas-expand])
  (define-auto-insert "\\.js\\'" ["template.js" js-mode autoinsert-yas-expand])
  (define-auto-insert "\\.scala\\'" ["template.scala" scala-mode autoinsert-yas-expand])
  (define-auto-insert "\\.py\\'" ["template.py" python-mode autoinsert-yas-expand])
  (auto-insert-mode))

(use-package yasnippet
  :preface
  (defun init-yasnippet ()
    (yas-global-mode 1))
  :hook
  (after-init . init-yasnippet))

(use-package company
  :hook (after-init . global-company-mode)
  :custom
  (company-tooltip-align-annotations t "注释贴右侧对齐")
  (company-tooltip-limit 10 "菜单里可选项数量")
  (company-show-numbers t "显示编号（然后可以用 M-数字 快速选定某一项）")
  (company-idle-delay .4 "延时多少秒后弹出")
  (company-minimum-prefix-length 3 "至少几个字符后开始补全")
  (company-dabbrev-downcase nil)
  (company-dabbrev-minimum-length 1)
  :config
  (setq company-backends (delete 'company-clang (delete 'company-semantic company-backends))))

(use-package eglot
  :ensure nil
  :custom
  (eglot-autoshutdown t)
  (eglot-sync-connect nil)
  (eglot-report-progress nil)
  (eglot-ignored-server-capabilities '(:documentHighlightProvider
                                       :documentFormattingProvider
                                       :documentRangeFormattingProvider))
  :config
  (add-to-list 'eglot-server-programs
               '((c-mode c++-mode c-ts-mode c++-ts-mode) .
                 ("clangd"
                  "--log=error"
                  "--query-driver=**/clang++,**/clang"
                  "--background-index"
                  "--completion-style=detailed"
                  "--pch-storage=memory"
                  "--header-insertion=iwyu"
                  "--header-insertion-decorators"
                  "--clang-tidy"
                  "--pretty"))))

(when (fboundp 'global-eldoc-mode)
  (add-hook 'after-init-hook 'global-eldoc-mode))

(use-package gtags-mode)

(use-package alert
  :config
  (when (eq window-system 'w32)
    (setq alert-default-style 'toast)))

(when (eq window-system 'w32)
  (use-package alert-toast
    :after alert))

(defun my-notify (title message)
  (pcase window-system
    ('w32 (alert-toast-notify `(:title ,title :message ,message :data (:long t))))
    ('ns (do-applescript (format "display notification \"%s\" with title \"%s\"" message title)))))

(with-eval-after-load 'compile
  (defun notify-compilation-result (buffer status)
    (my-notify (format "From %s" (buffer-name buffer)) status))
  (require 'ansi-color)
  (setq
   ;; Only cares about errors.
   compilation-skip-threshold 2
   ;; Scroll to the first error.
   compilation-scroll-output 'first-error)
  ;; Make compile output buffer interpret color escape sequence.
  (add-hook 'compilation-filter-hook 'ansi-color-compilation-filter)
  (add-hook 'compilation-mode-hook 'visual-line-mode)
  (add-hook 'compilation-finish-functions 'notify-compilation-result)

  ;; Rename compilation buffer according to its default directory so we can run multiple
  ;; compiliation commands concurrently.
  (defun my-compilation-buffer-name (mode-name)
    (concat "*" (downcase mode-name) ": " compilation-directory "*"))
  (setq compilation-buffer-name-function #'my-compilation-buffer-name))

(use-package tree-sitter
  :demand)

(use-package tree-sitter-langs
  :demand
  :config
  (add-to-list 'major-mode-remap-alist '(c++-mode . c++-ts-mode))
  (add-to-list 'major-mode-remap-alist '(c-mode . c-ts-mode))
  (add-to-list 'major-mode-remap-alist '(c-or-c++-mode . c-or-c++-ts-mode))
  (setopt treesit-font-lock-level 3)
  (global-tree-sitter-mode))

(defun init-cc-mode ()
  (subword-mode 1)
  (turn-on-auto-fill)
  (c-toggle-auto-newline -1)
  (setq clang-format-fallback-style "Google")
  (when (fboundp 'company-complete)
    (add-hook 'completion-at-point-functions #'company-complete nil 'local))
  (cond ((locate-dominating-file default-directory "GTAGS")
         (gtags-mode))
        ((locate-dominating-file default-directory "compile_commands.json")
         (require 'eglot)
         (eglot-ensure))))

(use-package c++-ts-mode
  :ensure nil
  :bind (:map c++-ts-mode-map
              ("<return>" . newline-and-indent)
              ("M-q" . c-fill-paragraph)
              ("C-M-\\" . clang-format)
              ("C-c C-b" . util/compile-project))
  :hook (c++-ts-mode . init-cc-mode)
  :config
  (require 'clang-format))

(use-package cc-mode
  :preface
  :bind (:map c-mode-base-map
              ("<return>" . newline-and-indent)
              ("M-q" . c-fill-paragraph)
              ("C-M-\\" . clang-format)
              ("C-c C-b" . util/compile-project))
  :hook ((c-mode-common . init-cc-mode))
  :config
  (require 'clang-format)
  (require 'spock-c-style))

(use-package spock-c-style
  :ensure nil
  :hook (c-mode-common . spock-set-c-style))

(use-package rust-ts-mode
  :ensure nil)

(use-package go-mode
  :preface
  (defun init-go-mode ()
    (subword-mode 1))
  :hook (go-mode . init-go-mode)
  :mode ("\\.go\\'" . go-mode))

(use-package haskell-mode
  :mode ("\\.hsc?\\'" . haskell-mode)
  :hook ((haskell-mode . turn-on-haskell-indent)
         (haskell-mode . turn-on-haskell-doc-mode))
  :bind (:map haskell-mode-map
              ("C-c h" . haskell-hoogle)))

(use-package sgml-mode
  :ensure nil
  :hook (html-mode . (lambda ()
                       (turn-off-auto-fill)))
  :bind (:map html-mode-map
              ([(return)] . newline-and-indent)))

(use-package nxml-mode
  :ensure nil
  :hook (xml-mode . (lambda ()
                      (turn-off-auto-fill)))
  :bind (:map xml-mode-map
              ([(return)] . newline-and-indent)))

(use-package css-mode
  :ensure nil
  :hook (css-mode . (lambda () (turn-on-auto-fill)))
  :bind (:map css-mode-map
              ([(return)] . newline-and-indent)))

(use-package perl-mode
  :bind (:map perl-mode-map
              ([(return)] . newline-and-indent)))

(use-package php-mode
  :mode ("\\.php\\'" . php-mode))

(use-package python
  :hook ((python-mode . init-python-mode))
  :preface
  (defun init-python-mode ()
    (subword-mode 1)
    ;; You should install pyright (Microsoft's Python language server).
    ;;   $ pip install pyright
    (require 'eglot)
    (eglot-ensure))
  :custom
  (python-indent-offset 4)
  :bind (:map python-mode-map
              ("<return>" . newline-and-indent)))

;; You should install the python package "black".
(use-package python-black
  :after python
  :demand
  :preface
  (defun python-format ()
    (interactive)
    (if (use-region-p)
        (python-black-region (region-beginning) (region-end))
      (python-black-buffer)))
  :bind (:map python-mode-map
              ("C-M-\\" . python-format)))

(use-package pylint
  :after python
  :demand
  :hook ((python-mode . pylint-add-key-bindings))
  :custom
  (pylint-options '("--reports=n" "--output-format=parseable" "--errors-only")))

(use-package sqlformat
  :custom
  (sqlformat-command 'sqlformat)
  (sqlformat-args '("-k" "upper" "-i" "lower" "-r" "-s" "--indent_columns" "--indent_width" "4" "--wrap_after=1"))
  :config
  (setenv "PYTHONIOENCODING" "utf-8"))

(use-package sql
  :mode (("\\.sql\\'" . sql-mode))
  :config
  (add-hook 'sql-mode-hook #'turn-on-auto-fill)
  :bind (:map sql-mode-map
              ("C-c C-c" . comment-region)
              ("C-M-\\" . sqlformat)))

(use-package elisp-mode
  :ensure nil
  :preface
  (defun elisp-format ()
    (interactive)
    (if (use-region-p)
        (indent-region (region-beginning) (region-end))
      (indent-region (point-min) (point-max))))
  :bind (:map emacs-lisp-mode-map
              ("<return>" . newline-and-indent)
              ("C-M-\\" . elisp-format))
  :config
  (turn-on-auto-fill))


(use-package json
  :commands (json-pretty-print)
  :preface
  (defun json-format ()
    "Format the region if any, or the buffer as JSON."
    (interactive)
    (if (use-region-p)
        (json-pretty-print (region-beginning) (region-end))
      (json-pretty-print (point-min) (point-max))))
  :config
  (setq json-encoding-default-indentation "    "))

(use-package yafolding)

(use-package js
  :ensure nil
  :mode (("\\.json\\'" . js-json-mode))
  :hook ((js-json-mode . (lambda () (yafolding-mode)))
         (js-mode . (lambda ()
                      (subword-mode 1)
                      (turn-on-auto-fill))))
  :bind (:map js-json-mode-map
              ("C-M-\\" . json-format)
              :map js-mode-map
              ([(return)] . newline-and-indent)))

(use-package web-mode
  :mode ("\\.html?\\'" . web-mode)
  :preface
  ;; You should install the program `tidy'.
  (defun html-format ()
    "Format HTML buffer using tidy."
    (interactive)
    (let ((tidy-args '("-m" "-indent" "-wrap" "0" "-quiet" "--tidy-mark" "no"))
          (begin (if (use-region-p) (region-beginning) (point-min)))
          (end (if (use-region-p) (region-end) (point-max))))
      (util/format-region "html-format" begin end "tidy" tidy-args)))
  :bind (:map web-mode-map ("C-M-\\" . html-format))
  :custom
  (web-mode-markup-indent-offset 2 "Set HTML offset indentation."))

(use-package make-mode
  :hook ((makefile-mode . (lambda () (subword-mode 1)))))

(use-package protobuf-mode
  :hook (protobuf-mode . protobuf-init)
  :init
  (defun protobuf-init ()
    (setq indent-tabs-mode nil)
    (setq tab-width 2)
    (setq c-basic-offset 2)
    (setf (alist-get 'arglist-intro c-offsets-alist) '+)))

(use-package vc
  :init
  (defun my-vc-dir (dir)
    (interactive
     (list (file-truename (read-directory-name "VC status for directory:"
                                               default-directory nil t nil))))
    (vc-dir dir))
  :bind ("C-x v d" . my-vc-dir))

(defun compile-for-bazel ()
  (interactive)
  ;; Set this variable in per-directory setting if bazel is not used for building.
  (if (bound-and-true-p compilation-do-not-use-bazel)
      (call-interactively 'util/compile-project)
    (call-interactively 'bazel-build)))

(use-package bazel
  :bind
  (:map bazel-mode-map
        ("C-M-\\" . bazel-buildifier)
        ("C-c C-b" . compile-for-bazel)))

(provide 'init-programming)
;;; init-programing.el ends here
