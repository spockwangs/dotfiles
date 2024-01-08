(use-package cc-mode
  :ensure nil
  :hook (java-mode . (lambda ()
                       (c-set-style "java")
                       (subword-mode 1))))

(provide 'init-java)
