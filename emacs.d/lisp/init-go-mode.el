(use-package go-mode
  :hook (go-mode . (lambda ()
                     (subword-mode 1)))
  :mode ("\\.go\\'" . go-mode))

(provide 'init-go-mode)
