(defun my-treemacs-switch-to-workspace (name)
  "Switch to the specified treemacs workspace NAME. Create it if not exist."
  (interactive (list (progn (require 'treemacs)
                            (completing-read "Switch to workspace: "
                                             (->> (treemacs-workspaces)
                                                  (--reject (eq it (treemacs-current-workspace)))
                                                  (--map (cons (treemacs-workspace->name it) it)))
                                             nil 'confirm))))
  (let ((workspace (treemacs-find-workspace-by-name name)))
    (unless workspace
      (pcase (treemacs-do-create-workspace name)
        (`(success ,new-workspace) (setq workspace new-workspace))
        (_ (user-error "Failed to create workspace."))))
    (treemacs-do-switch-workspace workspace)))

(use-package treemacs
  :bind (("<f8>" . treemacs)
         ("M-0" . treemacs-select-window)
         ("C-c t n" . treemacs-create-workspace)
         ("C-c t s" . my-treemacs-switch-to-workspace)
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

(defun my-switch-to-buffer-and-tab (buffer &rest _)
  "Switch buffer and its associated tab at the same time."
  (require 'treemacs)
  (let (tab-name)
    (with-current-buffer buffer
      (let* ((file-or-dir (or (buffer-file-name) default-directory))
             (workspace (treemacs-find-workspace-by-path file-or-dir)))
        (setq tab-name
              (cond (workspace (treemacs-workspace->name workspace))
                    ((memq major-mode '(org-agenda-mode))
                     "Agenda")
                    ((or (memq major-mode '(emacs-lisp-mode))
                         (string-prefix-p "*" (buffer-name)))
                     "Emacs")))))
    (when tab-name
      (tab-bar-switch-to-tab tab-name))))

(with-eval-after-load 'ido
  (advice-add 'ido-visit-buffer :before #'my-switch-to-buffer-and-tab))

(use-package my-treemacs-tab-bar
  :ensure nil
  :after (treemacs tab-bar)
  :demand
  :config
  (treemacs-set-scope-type 'Tabs)
  ;; Create a default tab.
  (tab-rename "Emacs"))

(provide 'init-treemacs)
