(use-package reformatter)

(use-package sql-mode
  :ensure nil
  :config
  (require 'sqlformat)
  (setq sqlformat-command 'sqlformat)
  (setq sqlformat-args '("-k" "upper" "-r" "--indent_width" "4" "-s"))
  :hook (sql-mode . turn-on-auto-fill)
  :bind (:map sql-mode-map
              ("C-c C-c" . comment-region)
              ("C-M-\\" . sqlformat)))

(provide 'init-sql)
