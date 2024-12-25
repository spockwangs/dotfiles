(use-package helm
  :custom
  (helm-buffers-fuzzy-matching t)
  (helm-buffer-max-length 50)
  :config
  (require 'helm-autoloads)
  (helm-autoresize-mode t)
  :bind (("M-x" . helm-M-x)
         ("C-c C-f" . helm-find-files)
         ("C-c b" . helm-mini))
         ("C-c h g" . helm-google-suggest)
         ("M-y" . helm-show-kill-ring))

(use-package helm-themes)

(provide 'init-helm)
