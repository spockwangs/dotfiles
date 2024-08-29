(use-package js
  :config
  (subword-mode 1)
  (turn-on-auto-fill)
  :bind (:map js-mode-map
              ([(return)] . newline-and-indent)))

(provide 'init-javascript)
