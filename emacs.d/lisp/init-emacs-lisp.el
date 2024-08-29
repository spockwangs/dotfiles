(use-package elisp-mode
  :ensure nil
  :bind (:map emacs-lisp-mode-map
              ("C-c C-c" . comment-region)
              ([(return)] . newline-and-indent))
  :config
  (turn-on-auto-fill))

(provide 'init-emacs-lisp)
