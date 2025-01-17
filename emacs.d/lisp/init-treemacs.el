(use-package treemacs
  :bind (("<f8>" . treemacs)
         ("M-0" . treemacs-select-window)
         ("C-c t n" . treemacs-create-workspace)
         ("C-c t s" . treemacs-switch-workspace)
         ("C-c t a" . treemacs-add-project-to-workspace))
  :config
  (setq treemacs-follow-mode nil)
  (treemacs-set-width (* 0.3 (frame-width)))
  (require 'treemacs-customization)
  (setq treemacs-persist-file "~/.cache/treemacs-persist"))

(use-package treemacs-nerd-icons
  :after (treemacs nerd-icons)
  :demand
  :config
  ;; You should download (https://www.nerdfonts.com/font-downloads) and install the font "Symbols
  ;; Nerd Font" first.
  (treemacs-load-theme "nerd-icons"))

(treemacs-start-on-boot)

(provide 'init-treemacs)
