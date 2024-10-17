(use-package avy)

(use-package ace-isearch
  :hook
  (after-init . (lambda () (global-ace-isearch-mode 1)))
  :custom
  (ace-isearch-function 'avy-goto-word-1)
  (ace-isearch-input-length 100 "Min length of input string to invoke helm search")
  :bind (:map isearch-mode-map
              ("C-'" . avy-isearch)))

(provide 'init-ace-isearch)
