(use-package treemacs
  :custom
   (treemacs-width (* 0.2 (frame-width)) "Set the treemacs window width")
  :bind (("<f8>" . treemacs)
         ("M-0" . treemacs-select-window)))

(use-package nerd-icons)

(use-package treemacs-nerd-icons
  :after treemacs
  :demand
  :config
  ;; You should download (https://www.nerdfonts.com/font-downloads) and install the font "Symbols
  ;; Nerd Font" first.
  (require 'nerd-icons)
  (treemacs-load-theme "nerd-icons"))

(provide 'init-treemacs)
