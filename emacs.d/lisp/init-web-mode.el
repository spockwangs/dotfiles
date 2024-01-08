(use-package web-mode
  :mode ("\\.html?\\'" . web-mode)
  :config
  ;; Set HTML offset indentation.
  (setq web-mode-markup-indent-offset 2))

(provide 'init-web-mode)
