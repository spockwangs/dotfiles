;; Make buffer names unique.
(use-package uniquify
  :ensure nil
  :defer t
  :config
  (setq uniquify-buffer-name-style 'forward))

(provide 'init-uniquify)
