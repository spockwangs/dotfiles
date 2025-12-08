;;; init-editing.el --- Configure editing utilities.  -*- lexical-binding: t; -*-

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Window
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package ace-window
  :bind ("M-o" . ace-window))

;; Split always vertically.
(setq split-height-threshold 50)
(setq split-width-threshold nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Files
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Disable remote file detection for ffap.
(with-eval-after-load 'ffap
  (custom-set-variables '(ffap-ftp-regexp nil)))

(use-package helm
  :custom
  (helm-buffers-fuzzy-matching t)
  (helm-buffer-max-length 50)
  (helm-ff-guess-ffap-filenames t)
  :config
  (require 'helm-buffers)
  (require 'helm-autoloads)
  (helm-autoresize-mode t)
  :bind (("M-x" . helm-M-x)
         ("C-c C-f" . helm-find-files)
         ("C-c b" . helm-mini)
         ("C-c h g" . helm-google-suggest)
         ("M-y" . helm-show-kill-ring)
         ("M-g i" . helm-imenu)
         ("M-g I" . helm-imenu-in-all-buffers)))

(use-package helm-xref)

;; Delete current buffer and file.
(bind-key "C-x C-k" #'util/delete-file-and-buffer)

;; Rename current visited file.
(bind-key "C-c r" #'rename-visited-file)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Buffer
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(ido-mode t)
(custom-set-variables '(ido-save-directory-list-file "~/.cache/ido.last")
                      '(ido-create-new-buffer 'prompt)
                      '(ido-enable-regexp t)
                      '(ido-enable-flex-matching t)
                      '(ido-everywhere t)
                      '(ido-use-url-at-point t)
                      '(ido-use-filename-at-point 'guess))

;; Use `ibuffer' instead of `list-buffers'.
(defalias 'list-buffers 'ibuffer)

;; Reuse the buffer when browsing in dired buffer.
(setq dired-kill-when-opening-new-dired-buffer t)
(put 'dired-find-alternate-file 'disabled nil) ; Disables the warning.

(setq uniquify-buffer-name-style 'forward)

;; Set default major mode to text-mode.
(setq-default major-mode 'text-mode)
(use-package text-mode
  :ensure nil
  :hook ((text-mode . (lambda ()
                        (subword-mode 1)
                        (turn-on-auto-fill)
                        (setq tab-width 4)))))

;; Set default fill column.
(setq-default fill-column 100)
(add-hook
 'fundamental-mode-hook
 'turn-on-auto-fill)

;; Use space instead of tabs.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Set transient-mark-mode.
(setq transient-mark-mode t)

;; Disable automatic backup.
(setq make-backup-files nil)

(global-auto-revert-mode t)

;; Update time stamp string in the buffer before saving.
(add-hook 'before-save-hook 'time-stamp)

;; Delete trailing whitespaces before saving.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Require newline at the end.
(setq-default require-final-newline t)

;; Bind functional keys.
(require 'redo+)
(bind-keys ("<f2>" . set-mark-command)
           ("<f3>" . revert-buffer)
           ("<f5>" . undo)
           ("S-<f5>" . redo)
           ("<f6>" . pop-to-mark-command)
           ("S-<f6>" . (lambda () (interactive) (push-mark)))
           ("<f7>" . ispell)
           ("<f9>" . goto-line)
           ("S-<f9>" . goto-char))

;; Copy.
(bind-keys ("C-c y" . util/copy-line)
           ("C-c w" . util/copy-symbol)
           ("C-c f" . util/copy-filename-at-point)
           ("C-c M-f" . util/copy-current-file-name)
           ("C-c M-d" . util/copy-current-directory)
           ("C-c M-p" . util/copy-current-path))

;; Clean old buffers periodically.
(midnight-mode)
(custom-set-variables
 '(clean-buffer-list-delay-general 14)
 '(clean-buffer-list-kill-regexps '(("\\`\\*gcc-flymake\\*.*" . 3600))))

;; Midnight will never kill a buffer never displayed so we add a hook to clean buffers without
;; assoicated files.
(defun my-clean-buffer-never-displayed ()
  (interactive)
  (let* ((tm (current-time)) bct (ts (format-time-string "%Y-%m-%d %T" tm))
         bn)
    (dolist (buf (buffer-list))
      (setq bn (buffer-name buf))
      (when (and (buffer-live-p buf)
                 (not (with-current-buffer buf buffer-display-time))
                 (not (get-buffer-process buf))
                 (not (buffer-file-name buf)))
        (unless (or (cl-find bn clean-buffer-list-kill-never-regexps
                             :test (lambda (bn re)
                                     (if (functionp re)
                                         (funcall re bn)
                                       (string-match re bn))))
                    (cl-find bn clean-buffer-list-kill-never-buffer-names
                             :test #'string-equal)
                    (get-buffer-window buf 'visible))
          (message "[%s] killing `%s'" ts bn)
          (kill-buffer buf))))))

(add-hook 'midnight-hook #'my-clean-buffer-never-displayed)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Cursor
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Move points.
(bind-keys ("C-M-f" . forward-symbol)
           ("C-M-b" . (lambda() (interactive) (forward-symbol -1))))

;; Scroll pages and lines.
(use-package pager
  :bind (("C-v" . pager-page-down)
         ("<next>" . pager-page-down)
         ("M-v" . pager-page-up)
         ("<prior>" . pager-page-up)
         ("M-<up>" . pager-row-up)
         ("M-<kp-8>" . pager-row-up)
         ("M-<down>" . pager-row-down)
         ("M-<kp-2>" . pager-row-down)))

;; Scroll regions.
(require 'util)
(bind-keys ("C-<" . util/shift-left)
           ("C->" . util/shift-right))

(use-package avy
  :bind (("C-'" . avy-goto-char)
         ("C-\"" . avy-goto-char-2)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Search
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Bind keys to search key prefix "M-s".
(bind-keys :map search-map
           ("O" . multi-occur-in-matching-buffers)
           ("g" . rgrep)
           ("cm" . util/code-search-message)
           ("cp" . util/code-search-path)
           ("cd" . util/code-search-def)
           ("cr" . util/code-search-ref)
           ("l" . util/log-search-at-point)
           ("f" . find-name-dired))

(use-package ace-isearch
  :hook
  (after-init . (lambda () (global-ace-isearch-mode 1)))
  :custom
  (ace-isearch-jump-delay 0.5)
  (ace-isearch-function 'avy-goto-word-1)
  (ace-isearch-input-length 100 "Min length of input string to invoke helm search")
  :bind (:map isearch-mode-map
              ("M-'" . avy-isearch)
              ("M-o" . helm-occur-from-isearch)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Completions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(bind-key "M-/" #'hippie-expand)
(setq hippie-expand-try-functions-list
      '(try-expand-dabbrev
        try-expand-dabbrev-visible
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-all-abbrevs
        try-expand-list
        try-expand-line
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol))

;; Use TAB key to do indent and auto-completion.
(setq tab-always-indent 'complete
      tab-first-completion 'eol)
(bind-key "TAB" #'indent-for-tab-command prog-mode-map)

(use-package which-key
  :hook (after-init . which-key-mode)
  :config
  (setq-default which-key-idle-delay 1.5))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Project
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Find the project root by project root markers.
(defcustom project-root-markers
  '("WORKSPACE" "compile_commands.json")
  "Files or directories that indicate the root of a project."
  :type '(repeat string)
  :group 'project)

(defun my-find-project-root (dir)
  "Find the project root which contains DIR."
  (catch 'ret
    (dolist (f project-root-markers)
      (when-let ((root (locate-dominating-file dir f)))
        (throw 'ret (cons 'transient root))))))

(with-eval-after-load 'project
  (add-to-list 'project-find-functions #'my-find-project-root))

(defun my-treemacs-switch-to-workspace (name)
  "Switch to the specified treemacs workspace NAME. Create it if not exist."
  (interactive (list (progn (require 'treemacs)
                            (completing-read "Switch to workspace: "
                                             (->> (treemacs-workspaces)
                                                  (--reject (eq it (treemacs-current-workspace)))
                                                  (--map (cons (treemacs-workspace->name it) it)))
                                             nil 'confirm))))
  (let ((workspace (treemacs-find-workspace-by-name name)))
    (unless workspace
      (pcase (treemacs-do-create-workspace name)
        (`(success ,new-workspace) (setq workspace new-workspace))
        (_ (user-error "Failed to create workspace."))))
    (treemacs-do-switch-workspace workspace)))

(use-package treemacs
  :bind (("<f8>" . treemacs)
         ("M-0" . treemacs-select-window)
         ("C-c t n" . treemacs-create-workspace)
         ("C-c t s" . my-treemacs-switch-to-workspace)
         ("C-c t a" . treemacs-add-project-to-workspace)
         ("C-c t e" . treemacs-edit-workspaces))
  :config
  (setq treemacs-persist-file (expand-file-name "~/.cache/treemacs-persist"))
  (treemacs-set-width (* 0.3 (frame-width)))
  (treemacs-follow-mode -1))

(defun my-switch-to-buffer-and-tab (buffer &rest _)
  "Switch buffer and its associated tab at the same time."
  (require 'treemacs)
  (let (tab-name)
    (with-current-buffer buffer
      (let* ((file-or-dir (or (buffer-file-name) default-directory))
             (workspace (treemacs-find-workspace-by-path file-or-dir)))
        (setq tab-name
              (cond (workspace (treemacs-workspace->name workspace))
                    ((memq major-mode '(org-agenda-mode))
                     "Agenda")
                    ((memq major-mode '(emacs-lisp-mode))
                     "Emacs")))))
    (when tab-name
      (tab-bar-switch-to-tab tab-name))))

(with-eval-after-load 'ido
  (advice-add 'ido-visit-buffer :before #'my-switch-to-buffer-and-tab))

(use-package my-treemacs-tab-bar
  :ensure nil
  :after (treemacs tab-bar)
  :demand
  :config
  (treemacs-set-scope-type 'Tabs)
  ;; Create a default tab.
  (tab-rename "Emacs"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Bookmarks
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq
 ;; Save bookmark automatically.
 bookmark-save-flag 1
 bookmark-default-file "~/.cache/bookmarks"
 recentf-save-file "~/.cache/recentf"
 project-list-file "~/.cache/projects")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org and markdown files
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package org
  :ensure nil
  :demand
  :custom
  (org-directory (expand-file-name "GTD/" my-icloud-path))
  (org-agenda-files (list org-directory))
  (org-agenda-file-regexp "\\`[^.].*\\.org\\'")
  (org-todo-keywords
   '((sequence "TODO(t!)" "DOING(i!)" "WAITING(s)" "|" "DONE(d!)" "CANCELED(c@/!)")))
  (org-log-into-drawer "LOGBOOK")
  (org-archive-location (concat org-directory "archive.org::datetree/"))
  (org-capture-templates
   `(("i" "Inbox" entry (file "inbox.org") "* [%<%F %R>] %^{heading} %^g\n %?\n")
     ("r" "Reading" entry (file+olp "tasks.org" "Reading") "* TODO %^{title}%?")
     ("w" "Work" entry (file+olp "tasks.org" "Work") "* TODO %^{task}%?")
     ("a" "Agenda" entry (file+olp "tasks.org" "Agenda") "* TODO %^{description}%?\nSCHEDULED: %^{Date}t")
     ("t" "Todo" entry (file+olp "tasks.org" "Todo") "* TODO %^{task}%?")))
  (org-agenda-custom-commands
   '(("c" "Agenda bird view"
      ((agenda "" ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo '("DONE")))))
       (tags-todo "+work" ((org-agenda-sorting-strategy '(priority-down todo-state-down deadline-up scheduled-up))
                           (org-agenda-skip-function '(org-agenda-skip-if nil '(scheduled deadline)))
                           (org-agenda-overriding-header "All work tasks:")))
       (tags-todo "-work" ((org-agenda-sorting-strategy '(priority-down todo-state-down deadline-up scheduled-up))
                           (org-agenda-skip-function '(org-agenda-skip-if nil '(scheduled deadline)))
                           (org-agenda-overriding-header "Other tasks:")))))
     ("w" tags-todo "+work"
      ((org-overriding-columns-format "%50ITEM %TODO %PRIORITY %TAGS %25SCHEDULED %25DEADLINE")
       (org-agenda-sorting-strategy '(priority-down todo-state-down deadline-up scheduled-up))))
     ("d" tags-todo "-work"
      ((org-overriding-columns-format "%50ITEM %TODO %PRIORITY %TAGS %25SCHEDULED %25DEADLINE")
       (org-agenda-sorting-strategy '(priority-down todo-state-down deadline-up scheduled-up))))))
  (org-agenda-search-view-always-boolean t)
  :config
  ;; To preview latex the TeX distribution should be installed.
  (setq org-preview-latex-default-process 'dvisvgm)
  (setq org-format-latex-options
        (plist-put org-format-latex-options :scale 1.7))
  :bind (("C-c o l" . org-store-link)
         ("C-c o a" . org-agenda)
         ("C-c o c" . org-capture)))

(use-package org-fragtog
  :after (org)
  :config
  (add-hook 'org-mode-hook 'org-fragtog-mode))

(use-package markdown-mode
  :mode
  ("README\\.md\\'" . gfm-mode)
  ("\\.md\\'" . markdown-mode)
  ("\\.markdown\\'" . markdown-mode)
  :custom
  (markdown-header-scaling t)
  (markdown-hide-urls t)
  (markdown-fontify-code-blocks-natively t)
  :bind (:map markdown-mode-map
              ("C-c v" . markdown-view-mode)
              :map markdown-view-mode-map
              ("e" . markdown-mode))
  :config
  ;; Render the latex fragments when opening and saving a markdown buffer.
  (add-hook 'markdown-mode-hook
            (lambda ()
              (use-package math-preview
                :demand t)
              (math-preview-all)
              (add-hook 'after-save-hook #'math-preview-all))))

(provide 'init-editing)
;;; init-editing.el ends here
