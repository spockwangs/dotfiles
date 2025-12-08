;; -*- coding: utf-8-unix; lexical-binding: t; -*-
;; Copyright (c) 2010-2024 spockwang
;;     All rights reserved.
;;

;; Add load-path. Put my own scripts in `lisp' and third-party scripts in `site-lisp'.
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))

(require 'init-env)
(require 'init-desktop)
(require 'init-appearance)
(require 'init-editing)
(require 'init-programming)
(require 'init-remote)
(require 'init-terminal)
(require 'init-misc)

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
