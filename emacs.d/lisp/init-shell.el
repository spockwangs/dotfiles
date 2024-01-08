(use-package shell
  :ensure nil
  :hook (shell-mode . (lambda ()
                        (setq comint-use-prompt-regexp 1)
                        (setq comint-prompt-regexp "^[^#$%>\n]*[#$] "))))

(provide 'init-shell)
