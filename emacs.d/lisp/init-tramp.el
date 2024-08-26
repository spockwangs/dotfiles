;; Make method "ssh" of tramp mode work on windows.
(when (eq system-type 'windows-nt)
  (require 'cl-lib)
  (with-eval-after-load 'tramp
    (cl-pushnew '("-tt")
                (car (alist-get 'tramp-login-args
                                (cdr (assoc "ssh" tramp-methods))))
                :test #'equal)))

(provide 'init-tramp)
