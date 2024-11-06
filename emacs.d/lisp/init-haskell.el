(use-package haskell-mode
  :mode ("\\.hsc?\\'" . haskell-mode)
  :hook ((haskell-mode . turn-on-haskell-indent)
         (haskell-mode . turn-on-haskell-doc-mode))
  :bind (:map haskell-mode-map
              ("C-c h" . haskell-hoogle)))

(provide 'init-haskell)
