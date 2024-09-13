;; Set environment variables.
(require 'util)
(when (eq system-type 'windows-nt)
  (util/add-exec-path "C:/Windows/System32/OpenSSH"))

(add-to-list 'default-frame-alist '(ns-appearance . dark))

(use-package solarized-theme
  :hook (after-init . (lambda () (load-theme 'solarized-dark t))))

;; Set fonts.
;(set-frame-font (font-spec :family "Monaco" :size 15.0) nil t)

(custom-set-faces
 '(default ((t (:family "Monaco" :height 140))))
 '(fixed-pitch ((t (:family "Courier New")))))

;; Set fonts for Chinese characters.
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font
   (frame-parameter nil 'font)
   charset
   (font-spec :family (if (eq system-type 'windows-nt) "楷体" "STKaiti")
              :size 16.0)))

;; Set language environment and coding system.
;; See `set-file-name-coding-system', `set-buffer-file-coding-system',
;; `set-buffer-process-coding-system', `set-terminal-coding-system',
;; `set-selection-coding-system' and `set-input-method'.
(set-language-environment 'UTF-8)
(prefer-coding-system 'gbk-dos)
(prefer-coding-system 'utf-8-unix)
(set-locale-environment "en_US.UTF-8")

;; Do not show startup message.
(setq inhibit-startup-message t)

;; Get a visual, instead of audio, feedback of an exception.
(setq visible-bell nil)

;; Configure frame title bar.
(setq frame-title-format
      (list (format "%s: " (system-name))
            '(buffer-file-name "%f" (dired-directory
                                     dired-directory "%b"))))

;; Hide tool bar.
(tool-bar-mode 0)

;; Hide right scroll bar.
(scroll-bar-mode 0)

;; Hide horizontal scroll bar.
(horizontal-scroll-bar-mode 0)

;; Hide the menu bar.
(menu-bar-mode 0)

;; Disable tabs.
(tab-bar-mode 0)

;; Show line numbers in the left margin.
(global-display-line-numbers-mode)

;; Configure mode line.
(use-package doom-modeline
  :hook (after-init . doom-modeline-mode)
  :custom
  (doom-modeline-vcs-max-length 60))

;; Show line number at the mode line.
(line-number-mode t)

;; Show column number at the mode line.
(column-number-mode t)

;; Highlight current line.
(global-hl-line-mode 1)

;; Find buffer or file.
(ido-mode t)
(setq-default ido-create-new-buffer 'always)
(setq ido-enable-regexp t)

;; Set the default directory when finding a file.
(setq default-directory "~/")

;; Set default major mode to text-mode.
(setq major-mode 'text-mode)

;; Set default fill column.
(setq-default fill-column 100)
(add-hook
 'fundamental-mode-hook
 'turn-on-auto-fill)

(setq uniquify-buffer-name-style 'forward)

;; Save bookmark automatically.
(setq bookmark-save-flag 1)

;; Split always vertically.
(setq split-height-threshold 50)
(setq split-width-threshold nil)

;; Use space instead of tabs.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Set transient-mark-mode.
(setq transient-mark-mode t)

;; Syntax highlight.
(global-font-lock-mode 1)

;; Show matched parentheses.
(show-paren-mode t)

;; Automatic backup but no version control.
(setq make-backup-files t
      version-control t
      delete-old-versions t
      kept-new-versions 5
      kept-old-versions 0)

;; Update time stamp string in the buffer before saving.
(add-hook 'before-save-hook 'time-stamp)

;; Delete trailing whitespaces before saving.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Require newline at the end.
(setq-default require-final-newline t)

(bind-key "<f2>" #'set-mark-command)
(bind-key "<f3>" #'revert-buffer)
(bind-key "<f5>" #'undo)
(require 'redo+)
(bind-key "S-<f5>" #'redo)
(bind-key "<f6>" #'pop-to-mark-command)
(bind-key "S-<f6>" #'(lambda () (interactive) (push-mark)))
(bind-key "<f7>" #'ispell)
(bind-key "<f9>" #'goto-line)
(bind-key "S-<f9>" #'goto-char)

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
(bind-key "C-<" #'util/shift-left)
(bind-key "C->" #'util/shift-right)

;; Copy shortcuts.
(bind-key "C-c y" #'util/copy-line)
(bind-key "C-c w" #'util/copy-symbol)
(bind-key "C-c c f" #'util/copy-current-file-name)
(bind-key "C-c c d" #'util/copy-current-directory)
(bind-key "C-c c p" #'util/copy-current-path)

;; Delete current buffer and file.
(bind-key "C-x C-k" #'util/delete-file-and-buffer)

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

(bind-key "C-c i d" #'util/insert-current-date)
(bind-key "C-c i t" #'util/insert-current-time)

(provide 'init-basics)
