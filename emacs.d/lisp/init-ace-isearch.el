(use-package ace-isearch
  :hook
  (after-init . (lambda () (global-ace-isearch-mode 1)))
  :custom
  (ace-isearch-jump-delay 1)
  (ace-isearch-input-length 10 "Min length of input string to invoke helm search"))

(provide 'init-ace-isearch)
