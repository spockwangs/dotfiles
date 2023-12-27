(use-package ssh-deploy
  :defer t
  :config
  (ssh-deploy-add-menu)
  (ssh-deploy-line-mode)
  :bind ("C-c C-z" . ssh-deploy-prefix-map))

(provide 'init-ssh-deploy)
