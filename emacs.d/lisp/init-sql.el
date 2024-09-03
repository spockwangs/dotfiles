(use-package sqlformat
  :custom
  (sqlformat-command 'sqlformat)
  (sqlformat-args '("-k" "upper" "-r" "-s" "--indent_columns" "--indent_width" "4"))
  :config
  (setenv "PYTHONIOENCODING" "utf-8"))

(use-package sql
  :mode (("\\.sql\\'" . sql-mode))
  :hook ((sql-mode . 'turn-on-auto-fill))
  :bind (:map sql-mode-map
              ("C-c C-c" . comment-region)
              ("C-M-\\" . sqlformat)))

(provide 'init-sql)
