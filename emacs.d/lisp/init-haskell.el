(use-package haskell-mode
  :defer t
  :hook ((haskell-mode . turn-on-haskell-indent)
         (haskell-mode . turn-on-haskell-doc-mode))
  :mode ("\\.hsc?\\'" . haskell-mode)
  :bind (:map haskell-mode-map
              ("C-c h" . haskell-hoogle)))

(provide 'init-haskell)
