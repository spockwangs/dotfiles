(use-package ace-isearch
  :defer t
  :config
  (global-ace-isearch-mode +1)
  (setq ace-isearch-input-length 10))

(provide 'init-ace-isearch)
