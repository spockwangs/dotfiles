(use-package shell
  :ensure nil
  :hook (shell-mode . (lambda ()
                        (setq comint-prompt-regexp "^[^#$%>\n]*[#$] ")))
  :custom
  (comint-use-prompt-regexp 1)
  :config
  (when (memq system-type (list 'gnu/linux 'darwin))
    (setq shell-command-switch "-ic")))

(provide 'init-shell)
