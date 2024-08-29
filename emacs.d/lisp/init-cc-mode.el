(use-package clang-format)

(use-package cc-mode
  :init
  (defun clang-format ()
    (interactive)
    (if (use-region-p)
        (clang-format-region (region-beginning) (region-end))
      (clang-format-buffer)))
  :mode (("\\.h\\'" . c++-mode)
         ("\\.c\\'" . c-mode)
         ("\\.cpp\\'" . c++-mode)
         ("\\.cc\\'" . c++-mode)
         ("\\.java\\'" . java-mode))
  :bind (:map c-mode-base-map
              ("<return>" . newline-and-indent)
              ("M-q" . c-fill-paragraph)
              ("C-M-\\" . clang-format))
  :hook ((java-mode . (lambda () (c-set-style "java"))))
  :config
  (require 'spock-c-style)
  (subword-mode 1)
  (turn-on-auto-fill)
  (c-toggle-auto-newline -1))

(use-package spock-c-style
  :ensure nil
  :hook (c-mode-common . spock-set-c-style))

(provide 'init-cc-mode)
