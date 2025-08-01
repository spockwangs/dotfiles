;; -*- coding: utf-8-unix; lexical-binding: t; -*-
;; Copyright (c) 2010-2024 spockwang
;;     All rights reserved.
;;

(setq
 use-package-verbose t
 use-package-expand-minimally nil
 use-package-compute-statistics t
 ;; Set GC threshold as 100MB.
 gc-cons-threshold 100000000
 ;; accept `y' or `n' instead of yes/no
 use-short-answers t
 enable-local-variables :all
 read-process-output-max (* 4 1024 1024)
 process-adaptive-read-buffering nil)

(require 'package)
(setq package-archives '(("gnu" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/")
                         ("melpa" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa/")))
(package-initialize)

(require 'use-package-ensure)
(setq
 ;; Make sure the package is installed.
 use-package-always-ensure t
 ;; Always defer loading a package unless :demand is specified.
 use-package-always-defer t)

;; Add load-path. Put my own scripts in `lisp' and third-party scripts in `site-lisp'.
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))

(require 'init-benchmarking)
(require 'util)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Provide info about the user and running environment.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (memq window-system '(mac ns))
  (use-package exec-path-from-shell
    :demand t
    :init
    ;; Copy environment variables seen by shell to emacs.
    (exec-path-from-shell-initialize)))

;; Set language environment and coding system.
;; See `set-file-name-coding-system', `set-buffer-file-coding-system',
;; `set-buffer-process-coding-system', `set-terminal-coding-system',
;; `set-selection-coding-system' and `set-input-method'.
(set-locale-environment "en_US.UTF-8")
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8-unix)

(setq user-full-name "spockwang"
      user-mail-address "wbbtiger@gmail.com")
(setenv "ORGANIZATION" "Tencent")

;; Set the icloud path.
(defconst my-icloud-path
  (cond ((eq system-type 'windows-nt) "~/iCloudDrive/")
        ((eq system-type 'darwin) "~/Library/Mobile Documents/com~apple~CloudDocs/"))
  "The iCloud path")

;; Use bash for remote ssh.
(connection-local-set-profile-variables
 'remote-bash
 '((explicit-shell-file-name . "/bin/bash")
   (explicit-bash-args . ("-i"))))
(connection-local-set-profiles
 '(:application tramp :protocol "ssh" :machine "devcloud2")
 'remote-bash)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Appearance
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Do not show startup message.
(setq inhibit-startup-message t)

;; Get a visual, instead of audio, feedback of an exception.
(setq visible-bell nil)

;; Configure frame title bar.
(setq frame-title-format
      (list (format "%s: " (system-name))
            '(buffer-file-name "%f" (dired-directory
                                     dired-directory "%b"))))


(when (memq window-system '(x, w32, ns))
  ;; Hide tool bar.
  (tool-bar-mode 0)

  ;; Hide right scroll bar.
  (scroll-bar-mode 0)

  ;; Hide horizontal scroll bar.
  (horizontal-scroll-bar-mode 0))

;; Hide the menu bar.
(menu-bar-mode 0)

(when (eq system-type 'windows-nt)
  (bind-keys ("M-<left>" . tab-bar-switch-to-prev-tab)
             ("M-<right>" . tab-bar-switch-to-next-tab))
  (custom-set-variables '(tab-bar-select-tab-modifiers '(meta))))
(when (eq system-type 'darwin)
  (bind-keys ("s-<left>" . tab-bar-switch-to-prev-tab)
             ("s-<right>" . tab-bar-switch-to-next-tab))
  (custom-set-variables '(tab-bar-select-tab-modifiers '(super))))

;; Show line numbers in some modes.
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

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

;; Syntax highlight.
(global-font-lock-mode 1)

;; Show matched parentheses.
(show-paren-mode t)

(defun set-font ()
  ;; Set font only in GUI frame.
  (when window-system
    (require 'cl-lib)
    (let* ((default-font-list '("Monaco" "Consolas" "Monospace"))
           (fixed-pitch-font-list '("Courier New" "Monospace"))
           (chinese-font-list '(("STKaiti" . 1.3)
                                ("楷体" . 1.2)))
           (chinese-font-name (util/choose-available-font chinese-font-list))
           (atts (frame-monitor-attributes nil))
           (width-pixel (cl-fourth (assoc 'geometry atts)))
           (font-size (cond ((< width-pixel 1500) 18.0)
                            ((< width-pixel 2000) 15.0)
                            (t 14.0))))
      ;; Set fonts for Chinese characters.
      (dolist (charset '(kana han symbol cjk-misc bopomofo))
        (set-fontset-font "fontset-default" charset (font-spec :family chinese-font-name)))

      ;; Set standard faces.
      (set-face-font 'default (font-spec :family (util/choose-available-font default-font-list)
                                         :slant 'normal
                                         :size font-size))
      (set-face-attribute 'fixed-pitch nil :family (util/choose-available-font fixed-pitch-font-list)))))

(if (daemonp)
    (add-hook 'server-after-make-frame-hook #'set-font)
  (set-font))

(defadvice load-theme (before clear-previous-themes activate)
  "Clear existing theme settings instead of layering them"
  (mapc #'disable-theme custom-enabled-themes))

;; Set color themes.
(if (version< emacs-version "30.1")
    (use-package emacs
      :custom
      (modus-themes-italic-constructs t)
      (modus-themes-bold-constructs t)
      (modus-themes-mixed-fonts t)
      (modus-themes-variable-pitch-ui t)
      (modus-themes-vivendi-color-overrides
       '((bg-header . "#4c566a")
         (bg-hl-line . "#434c5e")
         (bg-inactive . "#3b4252")
         (bg-main . "#2e3440")))
      (modus-themes-headings '((1 . (1.2))
                               (2 . (1.15))
                               (3 . (1.1))))
      (modus-themes-org-agenda '((event . (varied))
                                 (scheduled . rainbow))))
  (use-package emacs
    :custom
    (modus-themes-italic-constructs t)
    (modus-themes-bold-constructs t)
    (modus-themes-mixed-fonts t)
    (modus-themes-variable-pitch-ui t)
    (modus-vivendi-palette-overrides
     '((bg-header "#4c566a")
       (bg-hl-line "#434c5e")
       (bg-inactive "#3b4252")
       (bg-main "#2e3440")))
    (modus-themes-headings '((1 . (1.2))
                             (2 . (1.15))
                             (3 . (1.1))))
    (modus-themes-org-agenda '((event . (varied))
                               (scheduled . rainbow)))))

(use-package doom-themes)
(use-package solarized-theme)
(use-package spacemacs-theme)

(use-package solar
  :ensure nil
  :demand
  :config
  (setq calendar-latitude 22.53
        calendar-longitude 113.93))

;; (use-package circadian
;;   :hook (after-init . circadian-setup)
;;   :demand
;;   :config
;;   (setq circadian-themes '((:sunrise . (modus-operandi))
;;                            (:sunset  . (modus-vivendi)))))
(load-theme 'modus-vivendi)

(use-package nerd-icons
  :demand t)

(use-package nerd-icons-dired
  :after nerd-icons
  :demand t
  :hook (dired-mode . nerd-icons-dired-mode))

(use-package paren
  :config (show-paren-mode)
  :custom (show-paren-style 'expression))

(use-package rainbow-delimiters
  :hook ((prog-mode . rainbow-delimiters-mode)))

(use-package prog-mode
  :ensure nil
  :hook
  (prog-mode . (lambda ()
                 (font-lock-add-keywords nil '(("\\<\\(TODO\\|FIXME\\|XXX\\)\\>" 1 font-lock-warning-face t))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Browse: find buffers, files or search around.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(ido-mode t)
(custom-set-variables '(ido-save-directory-list-file "~/.cache/ido.last")
                      '(ido-create-new-buffer 'prompt)
                      '(ido-enable-regexp t)
                      '(ido-enable-flex-matching t)
                      '(ido-everywhere t)
                      '(ido-use-url-at-point t)
                      '(ido-use-filename-at-point 'guess))

;; Disable remote file detection for ffap.
(with-eval-after-load 'ffap
  (custom-set-variables '(ffap-ftp-regexp nil)))

;; Reuse the buffer when browsing in dired buffer.
(setq dired-kill-when-opening-new-dired-buffer t)
(put 'dired-find-alternate-file 'disabled nil) ; Disables the warning.
;; (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
;; (define-key dired-mode-map (kbd "^") 'dired-up-directory-same-buffer)

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

(setq
 ;; Save bookmark automatically.
 bookmark-save-flag 1
 bookmark-default-file "~/.cache/bookmarks"
 recentf-save-file "~/.cache/recentf"
 project-list-file "~/.cache/projects")

(when (fboundp 'global-eldoc-mode)
  (add-hook 'after-init-hook 'global-eldoc-mode))

;; (use-package projectile
;;   :hook (after-init . projectile-mode)
;;   :bind (:map projectile-mode-map
;;               ("C-c p" . projectile-command-map))
;;   :custom
;;   (projectile-known-projects-file "~/.cache/projectile-bookmarks.eld")
;;   (projectile-cache-file "~/.cache/projectile.cache")
;;   :config
;;   ;; Shorter modeline
;;   (setq-default projectile-mode-line-prefix " Proj")
;;   (setq projectile-indexing-method 'alien)
;;   (setq projectile-enable-caching t)

;;   ;; Integrate with ffap.
;;   (require 'ffap)
;;   (add-to-list 'ffap-alist (cons (rx anything)
;;                                  (lambda (filename)
;;                                    (locate-file filename (projectile-project-root))))
;;                t)

;;   (when (executable-find "rg")
;;     (setq-default projectile-generic-command "rg --files --hidden -0")))

;; Enable tab bar.
(tab-bar-mode 1)
(custom-set-variables '(tab-bar-show nil)
                      '(tab-bar-close-button-show nil)
                      '(tab-bar-tab-hints t)
                      '(tab-bar-format '(tab-bar-format-tabs tab-bar-separator))
                      '(tab-bar-tab-name-function #'tab-bar-tab-name-truncated)
                      '(tab-bar-tab-name-truncated-max 50)
                      '(tab-bar-new-tab-choice "*scratch*"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Editing
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Set default major mode to text-mode.
(setq-default major-mode 'text-mode)

;; Set default fill column.
(setq-default fill-column 100)
(add-hook
 'fundamental-mode-hook
 'turn-on-auto-fill)

(setq uniquify-buffer-name-style 'forward)
;; Split always vertically.
(setq split-height-threshold 50)
(setq split-width-threshold nil)

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

;; Copy.
(bind-keys ("C-c y" . util/copy-line)
           ("C-c w" . util/copy-symbol)
           ("C-c f" . util/copy-filename-at-point)
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

;; Delete current buffer and file.
(bind-key "C-x C-k" #'util/delete-file-and-buffer)

;; Rename current visited file.
(bind-key "C-c r" #'rename-visited-file)

;; Use TAB key to do indent and auto-completion.
(setq tab-always-indent 'complete
      tab-first-completion 'eol)
(bind-key "TAB" #'indent-for-tab-command prog-mode-map)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Enhancing compilation mode.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
  (require 'ansi-color)
  (setq
   ;; Only cares about errors.
   compilation-skip-threshold 2
   ;; Scroll to the first error.
   compilation-scroll-output 'first-error)
  ;; Make compile output buffer interpret color escape sequence.
  (add-hook 'compilation-filter-hook 'ansi-color-compilation-filter)
  (add-hook 'compilation-mode-hook 'visual-line-mode)
  (add-hook 'compilation-finish-functions
            (lambda (buffer status)
              (my-notify (format "From %s" (buffer-name buffer)) status)))

  ;; Rename compilation buffer according to its default directory so we can run multiple
  ;; compiliation commands concurrently.
  (defun my-compilation-buffer-name (mode-name)
    (concat "*" (downcase mode-name) ": " compilation-directory "*"))
  (setq compilation-buffer-name-function #'my-compilation-buffer-name))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Language server protocols
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
               '(c++-mode . ("clangd"
                             "--log=error"
                             "--query-driver=**/clang++,**/clang"
                             "--background-index"
                             "--completion-style=detailed"
                             "--pch-storage=memory"
                             "--header-insertion=iwyu"
                             "--header-insertion-decorators"
                             "--clang-tidy"
                             "--pretty"))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Misc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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

(bind-key "C-c d" #'dictionary-search)
(setq dictionary-server "dict.org")

(use-package google-translate
  :bind
  (("C-c h t" . google-translate-query-translate)
   ("C-c h T" . google-translate-query-translate-reverse))
  :custom
  (google-translate-default-source-language "en")
  (google-translate-default-target-language "zh-CN"))


(use-package which-key
  :hook (after-init . which-key-mode)
  :config
  (setq-default which-key-idle-delay 1.5))

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
;; Load configs of various packages.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'init-desktop)
(require 'init-helm)
(require 'init-ibuffer)
(require 'init-org)
(require 'init-magit)
(require 'init-auto-insert)
(require 'init-company-mode)
(require 'init-isearch)
(require 'init-ace-window)
(require 'init-treemacs)
(require 'init-cc-mode)
(require 'init-go-mode)
(require 'init-eshell)
(require 'init-html)
(require 'init-perl)
(require 'init-php)
(require 'init-python)
(require 'init-sh)
(require 'init-shell)
(require 'init-sql)
(require 'init-emacs-lisp)
(require 'init-javascript)
(require 'init-web-mode)
(require 'init-make-mode)
(require 'init-protobuf-mode)
(require 'init-vc)
(require 'init-tramp)
(require 'init-markdown)
(require 'init-bazel)

;; Load local customizations.
(setq custom-file "~/.cache/custom.el")
(when (file-exists-p custom-file)
  (load custom-file))

;; Start emacs server after init is done.
(add-hook 'after-init-hook
          (lambda ()
            (require 'server)
            (unless (server-running-p)
              (server-start))))
