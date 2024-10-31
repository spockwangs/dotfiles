(add-to-list 'default-frame-alist '(ns-appearance . dark))

;; Set color themes.
(use-package modus-themes
  :custom
  (modus-themes-common-palette-overrides
   '((border-mode-line-active unspecified)
     (border-mode-line-inactive unspecified))))

(use-package doom-themes)
(use-package solarized-theme)
(use-package spacemacs-theme)

(use-package solar
  :ensure nil
  :demand
  :config
  (setq calendar-latitude 22.53
        calendar-longitude 113.93))

(use-package circadian
  :hook (after-init . circadian-setup)
  :demand
  :config
  (setq circadian-themes '((:sunrise . (doom-one-light solarized-zenburn doom-zenburn spacemacs-light))
                           (:sunset  . (doom-one solarized-dark solarized-wombat-dark spacemacs-dark solarized-gruvbox)))))

;; Set standard faces.
(set-face-font 'default (font-spec :family "Monaco"
                                   :size (if (eq system-type 'windows-nt) 15.0 17.0)))

;; Set fonts for Chinese characters.
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font
   (frame-parameter nil 'font)
   charset
   (font-spec :family (if (eq system-type 'windows-nt) "楷体" "STKaiti")
              :size (if (eq system-type 'windows-nt) 17.0 19.0))))

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

;; Bind keys.
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

;; Copy.
(bind-keys ("C-c y" . util/copy-line)
           ("C-c w" . util/copy-symbol)
           ("C-c M-f" . util/copy-current-file-name)
           ("C-c M-d" . util/copy-current-directory)
           ("C-c M-p" . util/copy-current-path))

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

(bind-key "C-c d" #'dictionary-search)
(setq dictionary-server "dict.org")

(bind-key "C-c l" #'browse-url)
(define-key search-map "\S-o" 'multi-occur-in-matching-buffers)

;; Delete current buffer and file.
(bind-key "C-x C-k" #'util/delete-file-and-buffer)

;; Rename current visited file.
(bind-key "C-c r" #'rename-visited-file)

(use-package google-translate
  :bind
  (("C-c t" . google-translate-query-translate))
  :custom
  (google-translate-default-source-language "en")
  (google-translate-default-target-language "zh-CN"))

(provide 'init-basics)
