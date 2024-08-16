(use-package treemacs
  :bind (("<f8>" . treemacs)
         ("M-0" . treemacs-select-window)))

(use-package treemacs-nerd-icons
  :after treemacs
  :config
  ;; You should download (https://www.nerdfonts.com/font-downloads) and install the font "Symbols
  ;; Nerd Font" first.
  (use-package nerd-icons)
  (treemacs-load-theme "nerd-icons")
  (treemacs-toggle-fixed-width))

(provide 'init-treemacs)
