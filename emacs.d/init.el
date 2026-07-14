;; -*- coding: utf-8-unix; lexical-binding: t; -*-
;; Copyright (c) 2010-2024 spockwang
;;     All rights reserved.
;;

;; Add load-path. Put my own scripts in `lisp' and third-party scripts in `site-lisp'.
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))

(require 'benchmarking-require)
(require 'package)
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(require 'use-package-ensure)
(setq
 ;; Make sure the package is installed.
 use-package-always-ensure t
 ;; Always defer loading a package unless :demand is specified.
 use-package-always-defer t)

(use-package auto-package-update
  :defer 1
  :custom
  (auto-package-update-interval 7)
  (auto-package-update-hide-results t)
  (auto-package-update-delete-old-versions t)
  (auto-package-update-prompt-before-update nil)
  :config
  (auto-package-update-maybe)
  (auto-package-update-at-time "09:00"))

(require 'init-env)
(require 'init-appearance)
(require 'init-editing)
(require 'init-programming)
(require 'init-remote)
(require 'init-terminal)
(require 'init-misc)
(require 'init-desktop)

;; Load local customizations.
(setq custom-file "~/.cache/emacs/custom.el")
(when (file-exists-p custom-file)
  (load custom-file))

;; Start emacs server after init is done.
(unless (daemonp)
  (add-hook 'after-init-hook
            (lambda ()
              (require 'server)
              (unless (server-running-p)
                (server-start)))))
