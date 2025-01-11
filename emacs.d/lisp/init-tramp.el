(use-package tramp
  :ensure nil
  :config
  (setq tramp-persistency-file-name "~/.cache/tramp")
  (require 'cl-lib)
  ;; Make method "ssh" of tramp mode work on windows.
  (when (eq system-type 'windows-nt)
    (cl-pushnew '("-tt")
                (car (alist-get 'tramp-login-args
                                (cdr (assoc "ssh" tramp-methods))))
                :test #'equal))
  ;; Make the PATH setting in "~/.bashrc" available to the remote shell.
  (add-to-list 'tramp-remote-path 'tramp-own-remote-path)
  ;; Enable per-directory local variables over tramp.
  (setq enable-remote-dir-locals t)
  ;; Make remote shell recognize alias settings.
  (connection-local-update-profile-variables 'tramp-connection-local-default-shell-profile
                                             '((shell-file-name . "/bin/bash")
                                               (shell-command-switch . "-ic"))))

(provide 'init-tramp)
