(use-package desktop
  :demand
  :custom
  (desktop-path '("~/.emacs.d/"))
  (desktop-save t)
  (desktop-load-locked-desktop t)
  (desktop-files-not-to-save "^$" "Save all open files including remote files")
  :config
  ;; Auto save a session.
  (desktop-save-mode 1)
  (add-to-list 'desktop-modes-not-to-save 'dired-mode)
  (add-to-list 'desktop-modes-not-to-save 'Info-mode)
  (add-to-list 'desktop-modes-not-to-save 'info-lookup-mode)

  ;; Make desktop mode work even if emacs is running as a daemon.
  (defun restore-desktop (frame)
    "Restores desktop and cancels hook after first frame opens.
     So the daemon can run at startup and it'll still work"
    (with-selected-frame frame
      (desktop-save-mode 1)
      (desktop-read)
      (remove-hook 'after-make-frame-functions 'restore-desktop)))
  (add-hook 'after-make-frame-functions 'restore-desktop))

(provide 'init-desktop)
