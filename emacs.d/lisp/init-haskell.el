(use-package haskell-mode
  :hook ((haskell-mode . turn-on-haskell-indent)
         (haskell-mode . turn-on-haskell-doc-mode))
  :mode ("\\.hs\\'" . haskell-mode))

(provide 'init-haskell)
