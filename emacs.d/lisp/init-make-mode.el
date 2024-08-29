(use-package make-mode
  :mode (("MAKEFILE\\'" . make-mode))
  :config
  (subword-mode 1))

(provide 'init-make-mode)
