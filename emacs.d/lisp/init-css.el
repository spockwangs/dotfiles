(use-package css-mode
  :ensure nil
  :hook (css-mode . turn-on-auto-fill)
  :bind (:map css-mode-map
              ([(return)] . newline-and-indent)))

(provide 'init-css)
