(use-package gtags-mode)

(use-package cc-mode
  :bind (:map c-mode-base-map
              ("<return>" . newline-and-indent)
              ("M-q" . c-fill-paragraph)
              ("C-M-\\" . clang-format)
              ("C-c C-b" . util/compile-project))
  :hook ((c-mode-common . (lambda ()
                            (subword-mode 1)
                            (turn-on-auto-fill)
                            (c-toggle-auto-newline -1)
                            (setq clang-format-fallback-style "Google")
                            (when (fboundp 'company-complete)
                              (add-hook 'completion-at-point-functions #'company-complete nil 'local))
                            (cond ((locate-dominating-file default-directory "GTAGS")
                                   (gtags-mode))
                                  ((locate-dominating-file default-directory "compile_commands.json")
                                   (require 'eglot)
                                   (eglot-ensure)))))
         (java-mode . (lambda ()
                        (c-set-style "java"))))
  :config
  (require 'clang-format)
  (require 'spock-c-style))

(use-package spock-c-style
  :ensure nil
  :hook (c-mode-common . spock-set-c-style))

(provide 'init-cc-mode)
