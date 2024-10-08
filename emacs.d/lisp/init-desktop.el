(use-package desktop
  :config
  (setq desktop-path '("~/.emacs.d/"))
  ;; Auto save a session.
  (desktop-save-mode 1)
  (setq desktop-save t
        desktop-load-locked-desktop t)
  (add-to-list 'desktop-modes-not-to-save 'fundamental-mode)
  (add-to-list 'desktop-modes-not-to-save 'text-mode)
  (add-to-list 'desktop-modes-not-to-save 'dired-mode)
  (add-to-list 'desktop-modes-not-to-save 'Info-mode)
  (add-to-list 'desktop-modes-not-to-save 'info-lookup-mode)
  ;; Save all open files including remote files.
  (setq desktop-files-not-to-save "^$"))

;; Make desktop mode work even if emacs is running as a daemon.
(if (not (daemonp))
    (desktop-save-mode 1)
  (defun restore-desktop (frame)
    "Restores desktop and cancels hook after first frame opens.
     So the daemon can run at startup and it'll still work"
    (with-selected-frame frame
      (desktop-save-mode 1)
      (desktop-read)
      (remove-hook 'after-make-frame-functions 'restore-desktop)))
  (add-hook 'after-make-frame-functions 'restore-desktop))

(provide 'init-desktop)
