;; -*- coding: utf-8-unix -*-
;; Copyright (c) 2010-2024 spockwang
;;     All rights reserved.
;;
;; Time-stamp: <2024-09-13 20:09:15 spockwang>
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

(custom-set-variables '(user-mail-address "wbbtiger@gmail.com"))

(require 'init-benchmarking)
(require 'init-package)
(require 'init-basics)
(require 'init-helm)
(require 'init-ibuffer)
(require 'init-magit)
(require 'init-auto-insert)
(require 'init-company-mode)
(require 'init-ace-isearch)
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
;(require 'init-smex)
(require 'init-web-mode)
(require 'init-make-mode)
(require 'init-protobuf-mode)
(require 'init-vc)
(require 'init-tramp)
(require 'init-markdown)
(require 'init-desktop)
(require 'init-epilog nil t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-insert-directory "~/.emacs.d/auto-insert/")
 '(company-show-quick-access t nil nil "显示编号（然后可以用 M-数字 快速选定某一项）")
 '(package-selected-packages
   '(markdown-mode haskell-cabal company ace-isearch sqlformat magit helm python-black reformatter haskell-mode yaml-mode protobuf-mode web-mode smex xcscope php-mode go-mode clang-format treemacs-nerd-icons treemacs yasnippet fill-column-indicator ctrlf solarized-theme doom-modeline)))
