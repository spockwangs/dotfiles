(use-package make-mode
  :hook (makefile-mode . (lambda () (subword-mode 1))))

(provide 'init-make-mode)
