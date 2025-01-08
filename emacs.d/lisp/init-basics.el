(defun choose-available-font (list)
  (if (null list)
      nil
    (let ((elem (car list)))
      (if (consp elem)
          (if (member (car elem) (font-family-list))
              (progn
                (add-to-list 'face-font-rescale-alist elem)
                (car elem))
            (choose-available-font (cdr list)))
        (if (member elem (font-family-list))
            elem
          (choose-available-font (cdr list)))))))

(defun set-font ()
  ;; Set font only in GUI frame.
  (if window-system
      (let ((default-font-list '("Monaco" "Consolas" "Monospace"))
            (fixed-pitch-font-list '("Courier New" "Monospace"))
            (chinese-font-list '(("STKaiti" . 1.3)
                                 ("楷体" . 1.2))))
        (progn
          ;; Set fonts for Chinese characters.
          (let ((font-name (choose-available-font chinese-font-list)))
            (dolist (charset '(kana han symbol cjk-misc bopomofo))
              (set-fontset-font "fontset-default" charset (font-spec :family font-name))))

          ;; Set standard faces.
          (set-face-font 'default (font-spec :family (choose-available-font default-font-list)
                                             :slant 'normal
                                             :size env/font-size))
          (set-face-attribute 'fixed-pitch nil :family (choose-available-font fixed-pitch-font-list))))))

(if (daemonp)
    (add-hook 'server-after-make-frame-hook #'set-font)
  (set-font))

(defadvice load-theme (before clear-previous-themes activate)
  "Clear existing theme settings instead of layering them"
  (mapc #'disable-theme custom-enabled-themes))

;; Set color themes.
(use-package emacs
  :custom
  (modus-themes-italic-constructs t)
  (modus-themes-bold-constructs t)
  (modus-themes-mixed-fonts t)
  (modus-themes-mode-line '(borderless))
  (modus-themes-diffs 'desaturated)
  (modus-themes-variable-pitch-ui t)
  (modus-themes-vivendi-color-overrides '((bg-header . "#4c566a")
                                          (bg-hl-line . "#434c5e")
                                          (bg-inactive . "#3b4252")
                                          (bg-main . "#2e3440")))
  (modus-themes-org-agenda '((event . (varied))
                             (scheduled . rainbow))))

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
  (setq circadian-themes '((:sunrise . (doom-one-light solarized-zenburn doom-zenburn spacemacs-light doom-nord-light modus-operandi))
                           (:sunset  . (doom-one solarized-dark solarized-wombat-dark spacemacs-dark solarized-gruvbox doom-nord modus-vivendi)))))

;; Set language environment and coding system.
;; See `set-file-name-coding-system', `set-buffer-file-coding-system',
;; `set-buffer-process-coding-system', `set-terminal-coding-system',
;; `set-selection-coding-system' and `set-input-method'.
(set-locale-environment "en_US.UTF-8")
(prefer-coding-system 'gbk)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8-unix)

;; Do not show startup message.
(setq inhibit-startup-message t)

;; Get a visual, instead of audio, feedback of an exception.
(setq visible-bell 0)

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

;; Config tab bar.
(tab-bar-mode 1)
(setq tab-bar-show 1                    ; hide tab bar if <=1 tabs are open
      tab-bar-close-button-show nil     ; hide tab bar close button
      tab-bar-tab-hints t
      tab-bar-format '(tab-bar-format-tabs tab-bar-separator)
      tab-bar-tab-name-function #'tab-bar-tab-name-truncated
      tab-bar-tab-name-truncated-max 50)
(custom-set-variables '(tab-bar-select-tab-modifiers '(control super)))

(if (eq system-type 'windows-nt)
    (bind-keys ("C-<left>" . tab-bar-switch-to-prev-tab)
               ("C-<right>" . tab-bar-switch-to-next-tab))
  (bind-keys ("s-<left>" . tab-bar-switch-to-prev-tab)
             ("s-<right>" . tab-bar-switch-to-next-tab)))

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
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

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
      kept-new-versions 3
      kept-old-versions 0)

(global-auto-revert-mode t)

;; Update time stamp string in the buffer before saving.
(add-hook 'before-save-hook 'time-stamp)

;; Delete trailing whitespaces before saving.
;; (add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Require newline at the end.
(setq-default require-final-newline t)

;; Reuse the buffer when browsing in dired buffer.
(setq dired-kill-when-opening-new-dired-buffer t)

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

;; Find the file at point.
(bind-keys ("C-c f" . find-file-at-point))

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

;; Bind keys to search key prefix "M-s".
(bind-keys :map search-map
           ("O" . multi-occur-in-matching-buffers)
           ("g" . rgrep)
           ("cm" . util/code-search-message)
           ("cp" . util/code-search-path)
           ("cd" . util/code-search-def)
           ("cr" . util/code-search-ref)
           ("l" . util/log-search-at-point))

;; Delete current buffer and file.
(bind-key "C-x C-k" #'util/delete-file-and-buffer)

;; Rename current visited file.
(bind-key "C-c r" #'rename-visited-file)

(use-package google-translate
  :bind
  (("C-c t" . google-translate-query-translate)
   ("C-c T" . google-translate-query-translate-reverse))
  :custom
  (google-translate-default-source-language "en")
  (google-translate-default-target-language "zh-CN"))

(use-package prog-mode
  :ensure nil
  :hook
  (prog-mode . (lambda ()
                 (font-lock-add-keywords nil '(("\\<\\(TODO\\|FIXME\\|XXX\\)\\>" 1 font-lock-warning-face t))))))

(use-package ansi-color
  :hook
  ;; Make compile output buffer interpret color escape sequence.
  (compilation-filter . ansi-color-compilation-filter))
(setq compilation-skip-threshold 2)

(provide 'init-basics)
