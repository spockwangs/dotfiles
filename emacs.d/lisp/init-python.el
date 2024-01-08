(use-package python
  :mode ("[/]BUILD\\'" . python-mode)
  :hook (python-mode . (lambda() (subword-mode 1) (setq python-indent-offset 4)))
  :bind (:map python-mode-map
              ("<return>" . newline-and-indent)))

(provide 'init-python)
