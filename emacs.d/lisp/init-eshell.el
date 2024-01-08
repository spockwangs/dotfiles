(use-package esh-mode
  :ensure nil
  :hook (eshell-mode . (lambda ()
                         (setq comint-prompt-regexp "^[^#$%>\n]*[#$] "))))

(provide 'init-eshell)
