(use-package desktop
  :demand
  :custom
  (desktop-path '("~/.emacs/"))
  (desktop-save t)
  (desktop-load-locked-desktop t)
  (desktop-restore-frames t)
  (desktop-files-not-to-save "^$" "Save all open files including remote files")
  (desktop-restore-eager 0 "Restore a small number for files for performance")
  :config
  (advice-add 'desktop-kill :around (lambda (orig-fun &rest args)
                                      (if (not desktop-lazy-timer)
                                          (apply orig-fun args)
                                        (message "Skip saving desktop during lazy desktop loading."))))
  (add-to-list 'desktop-modes-not-to-save 'dired-mode)
  (add-to-list 'desktop-modes-not-to-save 'Info-mode)
  (add-to-list 'desktop-modes-not-to-save 'info-lookup-mode)

  ;; Only restore the desktop in GUI frame.
  (if (daemonp)
      (progn
        (defun restore-desktop (frame)
          "Restores desktop and cancels hook after first frame opens.
So the daemon can run at startup and it'll still work"
          (with-selected-frame frame
            (desktop-save-mode 1)
            (desktop-read)
            (remove-hook 'after-make-frame-functions 'restore-desktop)))
        (add-hook 'after-make-frame-functions 'restore-desktop))
    (desktop-save-mode 1)))

(provide 'init-desktop)
