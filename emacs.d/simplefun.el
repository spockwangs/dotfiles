;; -*- Emacs-Lisp -*-
;;
;; Copyright 2010. wbb
;;
;; simplefun.el -- Simple functions used in dot.emacs
;;
;; when: 2012-10-03 21:34:01
;; who: 王兵兵 (wbbtiger@gmail.com)

;; Shift a region left or right.
(defun shift-region (distance)
  "Shift the selected region right if distance is postive, left if
negative"
  (let ((mark (mark)))
    (save-excursion
      (indent-rigidly (region-beginning) (region-end) distance)
      (push-mark mark t t)
      ;; Tell the command loop not to deactivate the mark
      ;; for transient mark mode
      (setq deactivate-mark nil))))

(defun shift-left ()
  "Shift the region left by tab-width."
  (interactive)
  (shift-region (- tab-width)))

(defun shift-right ()
  "Shift the region right by tab-width."
  (interactive)
  (shift-region tab-width))

(defun copy-line (&optional arg)
  "Copy current line to kill-ring without marking the line."
  (interactive "P")
  (let ((beg (line-beginning-position))
        (end (line-end-position arg)))
    (copy-region-as-kill beg end)))

(defun emacs-maximize ()
 "Maximize Emacs."
 (interactive)
 (if (win32-p)                    ; in Windows
     ;; send maximize message to the window   
     (w32-send-sys-command #xf030)
   (if (emacs-p)                        ; in Linux
       (progn
        (x-send-client-message
         nil 0 nil "_NET_WM_STATE" 32    
         '(1 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
        (x-send-client-message
         nil 0 nil "_NET_WM_STATE" 32
         '(1 "_NET_WM_STATE_MAXIMIZED_VERT" 0)))
     nil)))

(defun insert-current-date ()
  "Insert current date at current point."
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))

(defun insert-current-time ()
  "Insert current time at current point."
  (interactive)
  (insert (format-time-string "%Y-%m-%d %H:%M:%S")))

(defun kill-current-word ()
  "Kill current word."
  (interactive)
  (backward-word)
  (kill-word 1))