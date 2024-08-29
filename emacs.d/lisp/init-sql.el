(use-package reformatter)

(use-package sql-mode
  :ensure nil
  :config
  (require 'sqlformat)
  (setq sqlformat-command 'sqlformat)
  (setq sqlformat-args '("-k" "upper" "-r" "-s" "--strip-comments" "--indent_columns" "--encoding" "utf-8"))
  :hook (sql-mode . turn-on-auto-fill)
  :mode (("\\.sql\\'" . sql-mode))
  :bind (:map sql-mode-map
              ("C-c C-c" . comment-region)
              ("C-M-\\" . sqlformat)))

(provide 'init-sql)
