;; Copyright 2010. wbb
;;     All rights reserved.
;;
;; util.el -- Common utility functions

(defun util/shift-region (distance)
  "Shift the selected region right if distance is postive, left if
negative"
  (let ((mark (mark)))
    (save-excursion
      (indent-rigidly (region-beginning) (region-end) distance)
      (push-mark mark t t)
      ;; Tell the command loop not to deactivate the mark
      ;; for transient mark mode
      (setq deactivate-mark nil))))

(defun util/shift-left ()
  "Shift the region left by tab-width."
  (interactive)
  (util/shift-region (- tab-width)))

(defun util/shift-right ()
  "Shift the region right by tab-width."
  (interactive)
  (util/shift-region tab-width))

(defun util/copy-line (&optional arg)
  "Copy current line to kill-ring without marking the line."
  (interactive "P")
  (let ((beg (line-beginning-position))
        (end (line-end-position arg)))
    (copy-region-as-kill beg end))
  (message "Copied a line."))

(defun util/copy-symbol ()
  "Copy a symbol under current cursor."
  (interactive)
  (let ((str (thing-at-point 'symbol)))
    (if str
        (progn (kill-new str) (message "Copied `%s'." str))
      (message "No symbols under current cursor."))))

(defun util/insert-current-date ()
  "Insert current date at current point."
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))

(defun util/insert-current-time ()
  "Insert current time at current point."
  (interactive)
  (insert (format-time-string "%Y-%m-%d %H:%M:%S")))

(defun util/kill-current-word ()
  "Kill current word."
  (interactive)
  (backward-word)
  (kill-word 1))

(defun util/next-buffer ()
  "Switch to previous buffer in current window."
  (interactive)
  (switch-to-buffer (car (reverse (buffer-list)))))

(defun util/other-buffer ()
  "Switch to the other buffer (2nd in list-buffer) in current window."
  (interactive)
  (switch-to-buffer (other-buffer)))

(defun util/kill-current-buffer ()
  "Kill current buffer."
  (interactive)
  (kill-buffer (current-buffer)))

(defun util/copy-current-path ()
  "Copy current file path to kill-ring. If the path is remote, only copy the local components."
  (interactive)
  (let ((filename (tramp-file-local-name (if (equal major-mode 'dired-mode)
                                             default-directory
                                           (buffer-file-name)))))
    (if filename
        (progn (kill-new filename)
               (message "Copied path '%s'." filename))
      (message "No path associated with current buffer."))))

(defun util/copy-current-file-name ()
  "Copy current filename."
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (file-name-nondirectory (buffer-file-name)))))
    (if filename
        (progn (kill-new filename)
               (message "Copied filename '%s'." filename))
      (message "No filename associated with current buffer."))))

(defun util/copy-current-directory ()
  "Copy current directory to kill-ring. If the directory is remote, only copy the local name components."
  (interactive)
  (let* ((filename (tramp-file-local-name (if (equal major-mode 'dired-mode)
                                              default-directory
                                            (buffer-file-name))))
         (dir (file-name-directory filename)))
    (if dir
        (progn (kill-new dir)
               (message "Copied directory `%s'." dir))
      (message "No directory associated with current buffer."))))

(defun util/search-all-buffers (regexp)
  "Search all lines matching REGEXP in all open buffers."
  (interactive (list (read-regexp "List lines matching regexp: ")))
  (multi-occur-in-matching-buffers ".*" regexp t))

(defun util/fill ()
  "If area is selected call 'fill-region' otherwise call 'fill-paragraph'."
  (interactive)
  (if (region-active-p)
      (fill-region (region-beginning) (region-end))
    (fill-paragraph nil)))

(defun util/delete-file-and-buffer ()
  "Kill the current buffer and deletes the file it is visiting."
  (interactive)
  (let ((filename (buffer-file-name)))
    (if filename
        (if (y-or-n-p (format "Do you really want to delete file `%s'?" filename))
            (progn
              (delete-file filename)
              (message "Deleted file `%s'." filename)
              (kill-buffer)))
      (message "No visited file!"))))

(defun util/process-region (start end program &optional delete buffer display &rest args)
  "Similar to `call-process-region', but supports running remote
 commands if current directory is remote."
  (if (file-remote-p default-directory)
      (let ((temp-file (make-nearby-temp-file "util-process-region")))
        (unwind-protect
            (progn
              (write-region start end temp-file)
              (apply #'process-file program temp-file buffer display args))
          (when temp-file (delete-file temp-file))))
    (apply #'call-process-region start end program delete buffer display args)))

(defun util/add-exec-path (path &optional append)
  "Emacs does set `exec-path' from the value of `PATH' on startup,
 but will not look at it again later. But if you run a command,
 it will inherit `PATH', not `exec-path', so subprocesses can
 find different commands than Emacs does. So to make a path be
 effective immediately we should add a path to both variables."
  (add-to-list 'exec-path path append)
  (let ((sep (if (eq system-type 'windows-nt)
                 ";"
               ":")))
    (if append
        (setenv "PATH" (concat (getenv "PATH") sep path))
      (setenv "PATH" (concat path sep (getenv "PATH"))))))

(defun util/get-dpi (&optional frame)
  "Get the DPI of FRAME (or current if nil)."
  (cl-flet ((pyth (lambda (w h)
                    (sqrt (+ (* w w)
                             (* h h)))))
            (mm2in (lambda (mm)
                     (/ mm 25.4))))
    (let* ((atts (frame-monitor-attributes frame))
           (pix-w (cl-fourth (assoc 'geometry atts)))
           (pix-h (cl-fifth (assoc 'geometry atts)))
           (pix-d (pyth pix-w pix-h))
           (mm-w (cl-second (assoc 'mm-size atts)))
           (mm-h (cl-third (assoc 'mm-size atts)))
           (mm-d (pyth mm-w mm-h)))
      (progn
        (message "d: %d" (mm2in mm-d))
        (/ pix-d (mm2in mm-d))))))

(defcustom code-search-url nil
  "The URL of code search.")

(defun util/code-search (thing type)
  "Browse code search to find the THING with type TYPE."
  (let ((path (pcase type
                ('proto (concat "/codesearch/search?full=&defs="
                                thing
                                "&refs=&path=*proto&hist=&type=&xrd=&nn=134&searchall=true"))
                ('path (concat "/codesearch/search?full=&defs=&refs=&path="
                               thing
                               "&type=&xrd=&nn=134&searchall=true"))
                ('def (concat "/codesearch/search?full=&defs="
                              thing
                              "&refs=&path=&hist=&type=&xrd=&nn=134&searchall=true"))
                ('ref (concat "/codesearch/search?full=&defs=&refs="
                              thing
                              "&path=&hist=&type=&xrd=&nn=134&searchall=true"))
                (_ (message "Invalid type: %s" type)))))
    (browse-url (concat code-search-url path))))

(defun util/code-search-path (path)
  "Open code search to search for a path."
  (interactive (list (let ((thing (thing-at-point 'symbol)))
                       (if thing
                           thing
                         (read-from-minibuffer "Code search for path: ")))))
  (util/code-search path 'path))

(defun util/code-search-message (msg)
  "Open code search to search for a protobuf message."
  (interactive (list (let ((thing (thing-at-point 'symbol)))
                       (if thing
                           thing
                         (read-from-minibuffer "Code search for protobuf message: ")))))
  (util/code-search msg 'proto))

(defun util/code-search-def (symbol)
  "Open code search to search for a protobuf message."
  (interactive (list (let ((thing (thing-at-point 'symbol)))
                       (if thing
                           thing
                         (read-from-minibuffer "Code search for definition of symbol: ")))))
  (util/code-search symbol 'def))

(defun util/code-search-ref (symbol)
  "Open code search to search for a protobuf message."
  (interactive (list (let ((thing (thing-at-point 'symbol)))
                       (if thing
                           thing
                         (read-from-minibuffer "Code search for references of symbol: ")))))
  (util/code-search symbol 'ref))

(provide 'util)
