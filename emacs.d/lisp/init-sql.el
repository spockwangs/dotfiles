(use-package sqlformat
  :config
  (setenv "PYTHONIOENCODING" "utf-8")
  (setq sqlformat-command 'sqlformat)
  (setq sqlformat-args '("-k" "upper" "-r" "-s" "--strip-comments" "--indent_columns" "--encoding" "utf-8")))

(use-package sql
  :mode (("\\.sql\\'" . sql-mode))
  :config
  (turn-on-auto-fill)
  :bind (:map sql-mode-map
              ("C-c C-c" . comment-region)
              ("C-M-\\" . sqlformat)))

(provide 'init-sql)
