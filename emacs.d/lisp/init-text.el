(use-package text-mode
  :ensure nil
  :hook (text-mode . (lambda ()
                       (subword-mode 1)
                       (turn-on-auto-fill)
                       (setq tab-width 4))))

(provide 'init-text)
