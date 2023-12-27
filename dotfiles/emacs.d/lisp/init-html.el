(use-package sgml-mode
  :ensure nil
  :hook (html-mode . (lambda ()
                       (turn-off-auto-fill)))
  :bind (:map html-mode-map
              ([(return)] . newline-and-indent)))

(use-package nxml-mode
  :ensure nil
  :hook (xml-mode . (lambda ()
                      (turn-off-auto-fill)))
  :bind (:map xml-mode-map
              ([(return)] . newline-and-indent)))

(provide 'init-html)
