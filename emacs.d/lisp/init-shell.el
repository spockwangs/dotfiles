(use-package shell
  :ensure nil
  :hook (shell-mode . (lambda ()
                        (setq comint-prompt-regexp "^[^#$%>\n]*[#$] ")))
  :custom
  (comint-use-prompt-regexp 1))


(provide 'init-shell)
