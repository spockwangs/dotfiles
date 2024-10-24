;; -*- coding: utf-8-unix -*-
;; Copyright (c) 2010-2024 spockwang
;;     All rights reserved.
;;
;; Time-stamp: <2024-10-24 19:59:58 spockwang>
;;

(require 'server)
(unless (server-running-p)
  (server-start))

;; Add a load-path.
(add-to-list 'load-path "~/.emacs.d/lisp")

;; For troubleshooting, start Emacs with command line flag `--debug-init'.
(when init-file-debug
  (setq use-package-verbose t
        use-package-expand-minimally nil
        use-package-compute-statistics t
        debug-on-error t))

(require 'init-benchmarking)
(require 'init-package)
(require 'init-basics)
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
(require 'init-desktop)
(require 'init-epilog nil t)
