(use-package treemacs
  :bind (("<f8>" . treemacs)
         ("M-0" . treemacs-select-window)
         ("C-c t n" . treemacs-create-workspace)
         ("C-c t s" . treemacs-switch-workspace)
         ("C-c t a" . treemacs-add-project-to-workspace)
         ("C-c t e" . treemacs-edit-workspaces))
  :config
  (setq treemacs-persist-file (expand-file-name "~/.cache/treemacs-persist"))
  (treemacs-set-width (* 0.3 (frame-width)))
  (treemacs-follow-mode -1))

(use-package treemacs-nerd-icons
  :after (treemacs nerd-icons)
  :demand
  :config
  ;; You should download (https://www.nerdfonts.com/font-downloads) and install the font "Symbols
  ;; Nerd Font" first.
  (treemacs-load-theme "nerd-icons"))

(use-package my-treemacs-tab-bar
  :ensure nil
  :after treemacs
  :demand
  :config
  (treemacs-set-scope-type 'Tabs)

  (defun my-switch-to-buffer-and-tab (buffer &rest _)
    "Switch buffer and its associated tab at the same time."
    (require 'treemacs-workspaces)
    (let (tab-name)
      (with-current-buffer buffer
        (let* ((file-or-dir (or (buffer-file-name) default-directory))
               (workspace (treemacs-find-workspace-by-path file-or-dir)))
          (setq tab-name
                (if workspace         
                    (treemacs-workspace->name workspace)
                  (cond ((memq major-mode '(org-agenda-mode))
                         "Agenda")
                        (t "Emacs"))))))
      (tab-bar-switch-to-tab tab-name)))

  (advice-add 'ido-visit-buffer :before #'my-switch-to-buffer-and-tab)

  ;; Create a default tab.
  (tab-rename "Emacs"))

(provide 'init-treemacs)
