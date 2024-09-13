(use-package elisp-mode
  :ensure nil
  :preface
  (defun elisp-format ()
    (interactive)
    (if (use-region-p)
        (indent-region (region-beginning) (region-end))
      (indent-region (point-min) (point-max))))
  :bind (:map emacs-lisp-mode-map
              ("C-c C-c" . comment-region)
              ([(return)] . newline-and-indent)
              ("C-M-\\" . elisp-format))
  :config
  (turn-on-auto-fill))

(provide 'init-emacs-lisp)
