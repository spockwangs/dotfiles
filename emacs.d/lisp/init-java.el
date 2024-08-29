(use-package cc-mode
  :mode (("\\.java\\'" . java-mode))
  :hook (java-mode . (lambda () (c-set-style "java")))
  :config
  (c-set-style "java"))

(provide 'init-java)
