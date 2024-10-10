(use-package helm
  :config
  (require 'helm-autoloads)
  (setq helm-buffers-fuzzy-matching t
        helm-recentf-fuzzy-match t)
  (helm-autoresize-mode t)
  :bind (("M-x" . helm-M-x)
;         ("C-x C-f" . helm-find-files)
;         ("C-x b" . helm-mini))
         ("C-c h g" . helm-google-suggest)
         ("M-y" . helm-show-kill-ring)
         ))

(use-package helm-themes)

(provide 'init-helm)
