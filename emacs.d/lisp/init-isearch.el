(use-package avy
  :bind (("C-'" . avy-goto-char)
         ("C-\"" . avy-goto-char-2)))

(use-package ace-isearch
  :hook
  (after-init . (lambda () (global-ace-isearch-mode 1)))
  :custom
  (ace-isearch-function 'avy-goto-word-1)
  (ace-isearch-input-length 100 "Min length of input string to invoke helm search")
  :bind (:map isearch-mode-map
              ("M-'" . avy-isearch)
              ("M-o" . helm-occur-from-isearch)))

(provide 'init-isearch)
