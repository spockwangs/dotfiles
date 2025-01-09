(use-package tramp
  :ensure nil
  :config
  (require 'cl-lib)
  ;; Make method "ssh" of tramp mode work on windows.
  (when (eq system-type 'windows-nt)
    (cl-pushnew '("-tt")
                (car (alist-get 'tramp-login-args
                                (cdr (assoc "ssh" tramp-methods))))
                :test #'equal))
  ;; Make the PATH setting in "~/.bashrc" available to the remote shell.
  (add-to-list 'tramp-remote-path 'tramp-own-remote-path)
  (setq enable-remote-dir-locals t))

(provide 'init-tramp)
