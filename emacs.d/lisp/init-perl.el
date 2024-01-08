(use-package perl-mode
  :bind (:map perl-mode-map
              ([(return)] . newline-and-indent)))

(provide 'init-perl)
