(use-package helm
  :custom
  (helm-buffers-fuzzy-matching t)
  (helm-buffer-max-length 50)
  (helm-ff-guess-ffap-filenames t)
  :config
  (require 'helm-autoloads)
  (helm-autoresize-mode t)
  :bind (("M-x" . helm-M-x)
         ("C-c C-f" . helm-find-files)
         ("C-c b" . helm-mini)
         ("C-c h g" . helm-google-suggest)
         ("M-y" . helm-show-kill-ring)
         ("C-c i" . helm-imenu)
         ("C-c I" . helm-imenu-in-all-buffers)))

(use-package helm-xref)

(use-package helm-themes)

;; (use-package helm-gtags
;;   :hook
;;   ((c-mode . helm-gtags-mode)
;;    (c++-mode . helm-gtags-mode))
;;   :config
;;   (setq helm-gtags-ignore-case t
;;         helm-gtags-auto-update t
;;         helm-gtags-use-input-at-cursor t
;;         helm-gtags-pulse-at-cursor t
;;         helm-gtags-prefix-key "\C-cg"
;;         helm-gtags-suggested-key-mapping t)
;;   :bind (:map helm-gtags-mode-map
;;               ("C-c g a" . helm-gtags-tags-in-this-function)
;;               ("C-j" . helm-gtags-select)
;;               ("M-." . helm-gtags-dwim)
;;               ("M-," . helm-gtags-pop-stack)
;;               ("C-c <" . helm-gtags-previous-history)
;;               ("C-c >" . helm-gtags-next-history)))


(provide 'init-helm)
