(use-package haskell-mode
  :mode ("\\.hsc?\\'" . haskell-mode)
  :bind (:map haskell-mode-map
              ("C-c h" . haskell-hoogle))
  :config
  (turn-on-haskell-indent)
  (turn-on-haskell-doc-mode))

(provide 'init-haskell)
