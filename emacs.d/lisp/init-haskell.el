(use-package haskell-mode
  :mode ("\\.hsc?\\'" . haskell-mode)
  :hook ((haskell-mode . turn-on-haskell-indent)
         (haskell-mode . turn-on-haskell-doc-mode))
  :bind (:map haskell-mode-map
              ("C-c h" . haskell-hoogle)
              :map haskell-cabal-mode-map
              ("C-c C-c" . comment-region)))

(provide 'init-haskell)
