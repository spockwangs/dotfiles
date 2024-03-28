;; Do not show startup message.
(setq inhibit-startup-message t)

;; Get a visual, instead of audio, feedback of an exception.
(setq visible-bell nil)

;; Configure frame title bar.
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
                    '(buffer-file-name "%f" (dired-directory
                                             dired-directory "%b"))))

(add-to-list 'default-frame-alist '(ns-appearance . dark))

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
  :config
  (setq doom-modeline-vcs-max-length 60))

;; Show line number at the mode line.
(line-number-mode t)

;; Show column number at the mode line.
(column-number-mode t)

;; ;; Display time and date at the mode line.
;; (setq display-time-24hr-format t)
;; (setq display-time-day-and-date t)
;; ;(display-time)

;; Highlight current line.
(global-hl-line-mode 1)

(use-package solarized-theme
  :hook (after-init . (lambda () (load-theme 'solarized-dark t))))

;; Set fonts.
(set-frame-font "Monaco 16" nil t)

;; Set fonts for Chinese characters.
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font
   (frame-parameter nil 'font)
   charset
   (font-spec :family "华文楷体" :size 20)))

;; Set language environment and coding system.
;; See `set-file-name-coding-system', `set-buffer-file-coding-system',
;; `set-buffer-process-coding-system', `set-terminal-coding-system',
;; `set-selection-coding-system' and `set-input-method'.
(set-language-environment 'UTF-8)
(prefer-coding-system 'gbk-dos)
(prefer-coding-system 'utf-8-unix)

;; Find buffer or file.
(ido-mode t)
(setq-default ido-create-new-buffer 'always)

;; Set the default directory when finding a file.
(setq default-directory "~/")

;; Set default major mode to text-mode.
(setq major-mode 'text-mode)

;; Set default fill column.
(setq-default fill-column 100)
(add-hook
 'fundamental-mode-hook
 #'(lambda () (turn-on-auto-fill)))

;; Save bookmark automatically.
(setq bookmark-save-flag 1)

;; Split always vertically.
(setq split-height-threshold 50)
(setq split-width-threshold nil)

;; Update time stamp string in the buffer before saving.
(add-hook 'before-save-hook 'time-stamp)

;; Delete trailing whitespaces before saving.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Require newline at the end.
(setq-default require-final-newline t)

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

(provide 'init-basics)
