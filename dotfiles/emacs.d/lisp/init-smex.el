(use-package smex
  :defer t
  :config
  (smex-initialize)
  :bind (("M-x" . smex)
         ("M-X" . smex-major-mode-commands)))

(provide 'init-smex)
