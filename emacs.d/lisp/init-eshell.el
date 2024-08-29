(use-package esh-mode
  :ensure nil
  :config
  (setq comint-prompt-regexp "^[^#$%>\n]*[#$] "))

(provide 'init-eshell)
