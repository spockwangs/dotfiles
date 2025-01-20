(use-package shell
  :ensure nil
  :hook (shell-mode . (lambda ()
                        (setq comint-prompt-regexp "^[^#$%>\n]*[#$] ")))
  :custom
  (comint-use-prompt-regexp 1)
  :config
  (setq shell-command-switch "-ic")
  ;; Use bash for remote ssh.
  (connection-local-set-profile-variables
   'remote-bash
   '((explicit-shell-file-name . "/bin/bash")
     (explicit-bash-args . ("-i"))))
  (connection-local-set-profiles
   '(:application tramp :protocol "ssh" :machine "devcloud2")
   'remote-bash))

(provide 'init-shell)
