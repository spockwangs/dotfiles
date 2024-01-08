(use-package elisp-mode
  :ensure nil
  :hook (emacs-lisp-mode . turn-on-auto-fill)
  :bind (:map emacs-lisp-mode-map
              ("C-c C-c" . comment-region)
              ([(return)] . newline-and-indent)))

(provide 'init-emacs-lisp)
