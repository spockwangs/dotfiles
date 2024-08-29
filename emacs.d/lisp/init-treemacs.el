(use-package treemacs
  :config
  (setq treemacs-width 70)
  :bind (("<f8>" . treemacs)
         ("M-0" . treemacs-select-window)))

(use-package nerd-icons)

(use-package treemacs-nerd-icons
  :after treemacs
  :config
  ;; You should download (https://www.nerdfonts.com/font-downloads) and install the font "Symbols
  ;; Nerd Font" first.
  (require 'nerd-icons)
  (treemacs-load-theme "nerd-icons")
  (treemacs-toggle-fixed-width))

(provide 'init-treemacs)
