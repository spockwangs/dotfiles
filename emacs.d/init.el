;; -*- coding: utf-8-unix -*-
;; Copyright (c) 2010-2015 wbb
;;     All rights reserved.
;;
;; Time-stamp: <2024-01-10 15:46:04 spockwang>
;;

(require 'server)
(unless (server-running-p)
  (server-start))

;; Set load-path variable.
(add-to-list 'load-path "~/.emacs.d/lisp")

;; For troubleshooting, start Emacs with command line flag `--debug-init'.
(when init-file-debug
  (setq use-package-verbose t
        use-package-expand-minimally nil
        use-package-compute-statistics t
        debug-on-error t))

(require 'init-package)
(require 'init-benchmarking)
(require 'init-basics)
(require 'init-key-bindings)
(require 'init-uniquify)
(require 'init-ibuffer)
(require 'init-fci)
(require 'init-auto-insert)
(require 'init-treemacs)
(require 'init-cc-mode)
(require 'init-go-mode)
(require 'init-eshell)
(require 'init-html)
(require 'init-java)
(require 'init-perl)
(require 'init-php)
(require 'init-python)
(require 'init-sh)
(require 'init-shell)
(require 'init-sql)
(require 'init-emacs-lisp)
(require 'init-javascript)
(require 'init-yasnippet)
(require 'init-xcscope)
(require 'init-smex)
(require 'init-web-mode)
(require 'init-auto-mark)
(require 'init-ace-window)
(require 'init-make-mode)
(require 'init-protobuf-mode)
(require 'init-vc)
(require 'init-desktop)
