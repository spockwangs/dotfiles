(use-package sh-mode
  :ensure nil
  :bind (:map sh-mode-map
              ([(return)] . newline-and-indent)))

(provide 'init-sh)
