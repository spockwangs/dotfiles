;;; init-appearance.el --- Configure appearance of Emacs.  -*- lexical-binding: t; -*-

;; Copyright (C) 2025  Tencent

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
;; Frame
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

(when (memq window-system '(x w32 ns))
  ;; Hide tool bar.
  (tool-bar-mode 0)

  ;; Hide right scroll bar.
  (scroll-bar-mode 0)

  ;; Hide horizontal scroll bar.
  (horizontal-scroll-bar-mode 0))

;; Hide the menu bar.
(menu-bar-mode 0)

;; Enable tab bar.
(tab-bar-mode 1)
(custom-set-variables '(tab-bar-show nil)
                      '(tab-bar-close-button-show nil)
                      '(tab-bar-tab-hints t)
                      '(tab-bar-format '(tab-bar-format-tabs tab-bar-separator))
                      '(tab-bar-tab-name-function #'tab-bar-tab-name-truncated)
                      '(tab-bar-tab-name-truncated-max 50)
                      '(tab-bar-new-tab-choice "*scratch*"))

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

(use-package paren
  :config (show-paren-mode)
  :custom (show-paren-style 'expression))

(use-package rainbow-delimiters
  :hook ((prog-mode . rainbow-delimiters-mode)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Font
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq my-default-font-list '("Monaco" "Consolas" "Monospace")
      my-fixed-pitch-font-list '("Courier New" "Monospace")
      my-variable-pitch-font-list '("Helvetica" "Arial")
      my-chinese-font-list '(("STKaiti" . 1.3) ("楷体" . 1.2)))

(defun set-font ()
  ;; Set font only in GUI frame.
  (when window-system
    (require 'cl-lib)
    (require 'util)
    (let* ((chinese-font-name (util/choose-available-font my-chinese-font-list))
           (atts (frame-monitor-attributes nil))
           (width-pixel (cl-fourth (assoc 'geometry atts)))
           (font-size (cond ((< width-pixel 1500) 18.0)
                            ((< width-pixel 2000) 15.0)
                            (t 14.0))))
      ;; Set fonts for Chinese characters.
      (dolist (charset '(kana han symbol cjk-misc bopomofo))
        (set-fontset-font "fontset-default" charset (font-spec :family chinese-font-name)))

      ;; Set standard faces.
      (set-face-font 'default (font-spec :family (util/choose-available-font my-default-font-list)
                                         :slant 'normal
                                         :size font-size))
      (set-face-attribute 'fixed-pitch nil :family (util/choose-available-font my-fixed-pitch-font-list))
      (set-face-attribute 'variable-pitch nil :family (util/choose-available-font my-variable-pitch-font-list)))))

(if (daemonp)
    (add-hook 'server-after-make-frame-hook #'set-font)
  (set-font))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Theme
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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

(use-package circadian
  :hook (after-init . circadian-setup)
  :demand
  :config
  (setq circadian-themes '((:sunrise . (modus-operandi))
                           (:sunset  . (modus-vivendi)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Icons
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package nerd-icons
  :demand t)

(use-package nerd-icons-dired
  :after nerd-icons
  :demand t
  :hook (dired-mode . nerd-icons-dired-mode))

(use-package treemacs-nerd-icons
  :after (treemacs nerd-icons)
  :demand
  :config
  ;; You should download (https://www.nerdfonts.com/font-downloads) and install the font "Symbols
  ;; Nerd Font" first.
  (treemacs-load-theme "nerd-icons"))


(provide 'init-appearance)
;;; init-appearance.el ends here
