(use-package clang-format)
(use-package cc-mode
  :defer t
  :ensure nil
  :hook ((c-mode-common . (lambda ()
                           (subword-mode 1)
                           (turn-on-auto-fill)
                           (c-toggle-auto-newline -1)
                           (require 'spock-c-style)
                           (spock-set-c-style))))
  :mode ("\\.h\\'" . c++-mode)
  :bind (:map c-mode-base-map
              ("<return>" . newline-and-indent)
              ("M-q" . c-fill-paragraph)
              ("C-M-\\" . clang-format-buffer)))

(provide 'init-cc-mode)
