;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Copyright (c) 2010 wbb
;;     All rights reserved.
;;
;; ~/.emacs -- Emacs config file.
;;
;; Time-stamp: <2014-01-01 20:33:30 wbb>
;; 
;; Contents
;; --------
;; * General
;; * Look and feel
;; * Enable default disabled key bindings
;; * Global key bindings
;; * Language Settings
;; * Miscellaneous
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; General
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'cl)
(server-start)

;; Set load-path variable.
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/yasnippet-0.6.1c/")

;; Set up package managers.
(load "package")
(package-initialize)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Install default packages if necessary.
(defvar default-packages
  '(haskell-mode color-theme color-theme-solarized markdown-mode)
  "A list of default packages to be installed at launch.")

(defun default-packages-installed-p ()
  (loop for p in default-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (default-packages-installed-p)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p default-packages)
    (when (not (package-installed-p p))
      (package-install p))))

;; Set up color theme.
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-solarized-dark)))

;; Load features and libraries.
(require 'sams-lib)
(require 'redo)
(require 'pager)
(require 'xcscope)
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/yasnippet-0.6.1c/snippets/")
(yas/global-mode)
(load "base")
(load "yic-buffer")
(iswitchb-mode 1)
(ido-mode 1)

;; Get a visual, instead of audio, feedback of an exception.
(setq visible-bell nil)

;; Enable `auto-insert-mode'.
(auto-insert-mode)
(custom-set-variables '(auto-insert-directory "~/.emacs.d/auto-insert/"))

;; Associate yasnippet with auto-insert.
;; Copied from http://www.emacswiki.org/emacs/AutoInsertMode.
(defun my/autoinsert-yas-expand()
  "Replace text in yasnippet template."
  (yas/expand-snippet (buffer-string) (point-min) (point-max)))

;; Do not show startup message.
(setq inhibit-startup-message t)

;; Set language environment and coding system.
;; See `set-file-name-coding-system', `set-buffer-file-coding-system',
;; `set-buffer-process-coding-system', `set-terminal-coding-system',
;; `set-selection-coding-system' and `set-input-method'.
(set-language-environment 'UTF-8)
(prefer-coding-system 'utf-8-unix)

;; Set the default directory when finding a file.
(setq default-directory "~/")

;; Set default major mode to text-mode.
(setq default-major-mode 'text-mode)

;; Set default fill column.
(setq-default fill-column 100)
(turn-on-auto-fill)

;; Update time stamp string in the buffer before saving.
(add-hook 'before-save-hook 'time-stamp)

;; Save bookmark automatically.
(setq bookmark-save-flag 1)

;; Make buffer names unique.
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Use `ibuffer' instead of `list-buffers'.
(defalias 'list-buffers 'ibuffer)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Look and feel
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Set default frame font
;; To check current font, run `M-x describe-font'.
;(set-frame-font "-outline-Consolas-normal-normal-normal-mono-18-*-*-*-c-*-iso10646-1")
(set-frame-font "-outline-Monaco-normal-normal-normal-mono-18-*-*-*-c-*-iso10646-1")

;; Hide tool bar.
(tool-bar-mode 0)

;; Show line number at the mode line.
(line-number-mode t)

;; Show column number at the mode line.
(column-number-mode t)

;; Show line numbers in the left margin.
(global-linum-mode)

;; Display time and date at the mode line.
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time)

;; Show system name and full path of buffer at the title bar.
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
                    '(buffer-file-name "%f" (dired-directory
                                             dired-directory "%b"))))

;; Highlight current line.
(global-hl-line-mode 1)

;; Use space instead of tabs.
(setq-default indent-tabs-mode nil)

;; Set transient-mark-mode.
(setq transient-mark-mode t)

;; Syntax highlight.
(global-font-lock-mode 1)

;; Show matched parentheses.
(show-paren-mode t)

;; Automatic backup but no version control.
(setq make-backup-files t)
(setq version-control 'never)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Enable default disabled 
;;   key bindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Enable 'C-x <' and 'C-x >'
(put 'scroll-left 'disabled nil)
(put 'scroll-right 'disabled nil)

;; Enable "C-x n n" and "C-x n w".
(put 'narrow-to-region 'disabled nil)

;; Enable "C-x C-l".
(put 'downcase-region 'disabled nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Global Key bindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Shift a region left or right.
(global-set-key (kbd "C-v") 'pager-page-down)
(global-set-key (kbd "<next>") 'pager-page-down)
(global-set-key (kbd "M-v") 'pager-page-up)
(global-set-key (kbd "<prior>") 'pager-page-up)
(global-set-key (kbd "M-<up>") 'pager-row-up)
(global-set-key (kbd "M-<kp-8>") 'pager-row-up)
(global-set-key (kbd "M-<down>") 'pager-row-down)
(global-set-key (kbd "M-<kp-2>") 'pager-row-down)
(global-set-key (kbd "C-<") 'base/shift-left)
(global-set-key (kbd "C->") 'base/shift-right)
(global-set-key (kbd "C-x y") 'base/copy-line)
(global-set-key (kbd "C-x d") 'base/kill-current-word)

;; Cycle through buffer list.  Require "yic-buffer.el".
(global-set-key "\C-x\C-p" 'bury-buffer)
(global-set-key "\C-x\C-n" 'yic-next-buffer)

;; Set file local variable `coding' to utf-8-unix.
(global-set-key
 "\C-xc"
 (lambda ()               
   "Set file local variable `coding' to utf-8-unix at the first line."
   (interactive)
   (save-excursion (add-file-local-variable-prop-line 'coding 'utf-8-unix))))

(global-set-key (kbd "M-q") 'sams-fill)

(global-set-key (kbd "M-/") 'hippie-expand)
(setq hippie-expand-try-functions-list 
      '(yas/hippie-try-expand
        try-expand-dabbrev
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

(global-set-key (kbd "C-x M-d") 'insert-current-date)
(global-set-key (kbd "C-x M-t") 'insert-current-time)

;; Bind function keys
(define-key global-map (kbd "<f2>") 'set-mark-command)
(define-key global-map (kbd "<f3>") 'revert-buffer)
(define-key global-map (kbd "<f5>") 'undo)
(define-key global-map (kbd "S-<f5>") 'redo)
(define-key global-map (kbd "<f6>") 'sams-cm-rotate)
(define-key global-map (kbd "S-<f6>") 'sams-cm-save-point)
(define-key global-map (kbd "<f7>") 'ispell)
(define-key global-map (kbd "<f8>") 'dired)
(define-key global-map (kbd "<f9>") 'goto-line)
(define-key global-map (kbd "S-<f9>") 'goto-char)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Language Settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq c-default-style
      '((java-mode . "java")
        (awk-mode . "awk")))

;; Auto-load `jce-mode'.
(autoload
  'jce-mode
  "jce-mode"
  "Major mode for TAF specification language."
  t)
(add-to-list 'auto-mode-alist '("\\.jce\\'" . jce-mode))

;; Use HTML mode for .wsp files.
(add-to-list 'auto-mode-alist '("\\.wsp\\'" . html-mode))


;;;;;;;;;;;;;;;;;;;;
;; C/C++ mode
;;;;;;;;;;;;;;;;;;;;

(add-hook
 'c-mode-common-hook
 '(lambda ()
    (subword-mode 1)
    (setq fill-column 90)
    (turn-on-auto-fill)
    (c-toggle-auto-newline -1)
    (define-key c-mode-base-map [(return)] 'newline-and-indent)
    (define-key c-mode-base-map (kbd "M-q") 'c-fill-paragraph)))

(require 'spock-c-style)
(add-hook 'c-mode-common-hook 'spock-set-c-style)

;; Override the default setting to use C++-mode for .h files.
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; Define auto insert skeletons for C++ header and source files.
(add-to-list
 'auto-insert-alist
 '(("\\.\\([Hh]\\|hh\\|hpp\\)\\'" . "C/C++ header skeleton")
   . ["template.h" c++-mode my/autoinsert-yas-expand]))
(add-to-list
 'auto-insert-alist
 '(("\\.\\(cc\\|cpp\\)\\'" . "C/C++ source skeleton")
   . ["template.cc" c++-mode my/autoinsert-yas-expand]))

;;;;;;;;;;;;;;;;;;;;
;; Java
;;;;;;;;;;;;;;;;;;;;

(add-hook
 'java-mode-hook
 '(lambda ()
    (c-set-style "java")))

;;;;;;;;;;;;;;;;;;;;
;; CSS
;;;;;;;;;;;;;;;;;;;;

(add-hook
 'css-mode-hook
 '(lambda ()
    (setq fill-column 80)
    (turn-on-auto-fill)
    (define-key css-mode-map [(return)] 'newline-and-indent)))

;;;;;;;;;;;;;;;;;;;;
;; Javascript
;;;;;;;;;;;;;;;;;;;;

(add-hook
 'js-mode-hook
 '(lambda ()
    (subword-mode 1)
    (setq fill-column 120)
    (turn-on-auto-fill)
    (define-key js-mode-map [(return)] 'newline-and-indent)))

(add-to-list
 'auto-insert-alist
 '(("\\.\\(js\\)\\'" . "Javascript source skeleton")
   . ["template.js" js-mode my/autoinsert-yas-expand]))

;;;;;;;;;;;;;;;;;;;;
;; AWK
;;;;;;;;;;;;;;;;;;;;

(add-hook
 'awk-mode-hook
 '(lambda ()
    (c-set-style "awk")))

;;;;;;;;;;;;;;;;;;;;
;; Verilog mode
;;;;;;;;;;;;;;;;;;;;

(defun my-verilog-mode-hook ()
  (setq tab-width 4)
  (setq verilog-indent-level 4)
  (setq verilog-cexp-indent 4)
  (setq verilog-case-indent 4)
  (setq verilog-auto-indent-on-newline t))
(add-hook 'verilog-mode-hook 'my-verilog-mode-hook)

;;;;;;;;;;;;;;;;;;;;
;; Haskell mode
;;;;;;;;;;;;;;;;;;;;

(autoload
  'haskell-mode
  "haskell-mode"
  "Major mode for the Haskell programming language."
  t)

;; Use haskell-mode for .hs files.
(add-to-list 'auto-mode-alist '("\\.hs\\'" . haskell-mode))

(add-hook 
 'haskell-mode-hook
 '(lambda ()
    (turn-on-haskell-indent)
    (turn-on-haskell-doc-mode)))

;;;;;;;;;;;;;;;;;;;;
;; Text mode
;;;;;;;;;;;;;;;;;;;;

(defun my-text-mode-hook ()
  (setq fill-column 75)
  (turn-on-auto-fill)
  (setq tab-width 4))
(add-hook 'text-mode-hook 'my-text-mode-hook)

;;;;;;;;;;;;;;;;;;;;
;; Emacs Lisp
;;;;;;;;;;;;;;;;;;;;

(add-hook
 'emacs-lisp-mode-hook
 '(lambda ()
    (turn-on-auto-fill)
    (define-key emacs-lisp-mode-map (kbd "C-c C-c") 'comment-region)
    (define-key emacs-lisp-mode-map [(return)] 'newline-and-indent)))

;;;;;;;;;;;;;;;;;;;;
;; Perl
;;;;;;;;;;;;;;;;;;;;

(add-hook
 'perl-mode-hook
 '(lambda ()
    (define-key perl-mode-map [(return)] 'newline-and-indent)))

;; Define auto-insert skeletons for perl source code.
(add-to-list
 'auto-insert-alist
 '(("\\.\\(pl\\)\\'" . "Perl source skeleton")
   . ["template.pl" perl-mode my/autoinsert-yas-expand]))

;;;;;;;;;;;;;;;;;;;;
;; XML and HTML
;;;;;;;;;;;;;;;;;;;;

(add-hook
 'html-mode-hook
 '(lambda ()
    (turn-off-auto-fill)
    (define-key html-mode-map [(return)] 'newline-and-indent)))

(add-hook
 'xml-mode-hook
 '(lambda ()
    (turn-off-auto-fill)
    (define-key xml-mode-map [(return)] 'newline-and-indent)))

;;;;;;;;;;;;;;;;;;;;
;; SQL
;;;;;;;;;;;;;;;;;;;;

(add-hook
 'sql-mode-hook
 '(lambda ()
    (turn-on-auto-fill)))

;;;;;;;;;;;;;;;;;;;;
;; Calendar
;;;;;;;;;;;;;;;;;;;;

(setq calendar-week-start 1)

;;;;;;;;;;;;;;;;;;;;
;; Shell script mode
;;;;;;;;;;;;;;;;;;;;

(add-hook
 'sh-mode-hook
 '(lambda ()
    (define-key sh-mode-map [(return)] 'newline-and-indent)))

;;;;;;;;;;;;;;;;;;;
;; EShell mode
;;;;;;;;;;;;;;;;;;;

(add-hook
 'eshell-mode-hook
 '(lambda ()
    (setq comint-prompt-regexp "^[^#$%>\n]*[#$] ")))

;;;;;;;;;;;;;;;;;;;
;; Shell mode
;;;;;;;;;;;;;;;;;;;

(add-hook
 'shell-mode-hook
 '(lambda ()
    (setq comint-use-prompt-regexp 1)
    (setq comint-prompt-regexp "^[^#$%>\n]*[#$] ")))

;;;;;;;;;;;;;;;;;;;
;; Php mode
;;;;;;;;;;;;;;;;;;;

(autoload
  'php-mode
  "php-mode"
  "Major mode for PHP."
  t)
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Miscellaneous
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Load local customizations.
;; `.emacs.local' is supposed to be located in the home directory.
(load "~/.emacs.local" t)
