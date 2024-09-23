;; -*- coding: utf-8-unix -*-
;; Copyright (c) 2010-2024 spockwang
;;     All rights reserved.
;;
;; Time-stamp: <2024-09-23 12:03:38 spockwang>
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
 '(company-show-quick-access t nil nil "显示编号（然后可以用 M-数字 快速选定某一项）")
 '(custom-safe-themes
   '("fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "372905daccda4574b28e5d5b64d5a4059da9e3c5548abc274af04fe63adc1372" "99d1e29934b9e712651d29735dd8dcd431a651dfbe039df158aa973461af003e" "9a977ddae55e0e91c09952e96d614ae0be69727ea78ca145beea1aae01ac78d2" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "524fa911b70d6b94d71585c9f0c5966fe85fb3a9ddd635362bfabd1a7981a307" default))
 '(package-selected-packages
   '(modus-themes markdown-mode haskell-cabal company ace-isearch sqlformat magit helm python-black reformatter haskell-mode yaml-mode protobuf-mode web-mode smex xcscope php-mode go-mode clang-format treemacs-nerd-icons treemacs yasnippet fill-column-indicator ctrlf solarized-theme doom-modeline))
 '(user-mail-address "wbbtiger@gmail.com"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :height 150))))
 '(fixed-pitch ((t (:family "Courier New")))))
