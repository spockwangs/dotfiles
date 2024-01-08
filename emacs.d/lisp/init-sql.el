(use-package sql-mode
  :ensure nil
  :hook (sql-mode . turn-on-auto-fill)
  :bind (:map sql-mode-map
               ("C-c C-c" . comment-region)))

(provide 'init-sql)
