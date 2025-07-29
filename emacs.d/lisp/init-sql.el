(use-package sqlformat
  :custom
  (sqlformat-command 'sqlformat)
  (sqlformat-args '("-k" "upper" "-i" "lower" "-r" "-s" "--indent_columns" "--indent_width" "4" "--wrap_after=100"))
  :config
  (setenv "PYTHONIOENCODING" "utf-8"))

(use-package sql
  :mode (("\\.sql\\'" . sql-mode))
  :config
  (add-hook 'sql-mode-hook #'turn-on-auto-fill)
  :bind (:map sql-mode-map
              ("C-c C-c" . comment-region)
              ("C-M-\\" . sqlformat)))

(provide 'init-sql)
