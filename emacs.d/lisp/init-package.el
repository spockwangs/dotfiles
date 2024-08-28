(require 'package)
(setq package-archives
      '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
		("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

(require 'use-package-ensure)
(setq use-package-always-ensure t)
(setq use-package-always-defer t)

(provide 'init-package)
