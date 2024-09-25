(require 'package)
(setq package-archives '(("gnu" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/")
                         ("melpa" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa/")))
(package-initialize)

(require 'use-package-ensure)
;; Make sure the package is installed.
(setq use-package-always-ensure t)
;; Always defer loading a package unless :demand is specified.
(setq use-package-always-defer t)

(require 'use-package-core)
(setq use-package-compute-statistics t)

(provide 'init-package)
