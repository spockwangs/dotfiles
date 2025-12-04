;; -*- coding: utf-8-unix -*-
;; Copyright 2010. wbb
;;     All rights reserved.
;;
;; util.el -- Common utility functions

(defun util/choose-available-font (list)
  "Return a available font name from the LIST, or nil if all of
 them are not available on this computer. LIST is a list of font
 names or (FONT-NAME . SCALE) pairs."
  (if (null list)
      nil
    (let ((elem (car list)))
      (if (consp elem)
          (if (member (car elem) (font-family-list))
              (progn
                (add-to-list 'face-font-rescale-alist elem)
                (car elem))
            (util/choose-available-font (cdr list)))
        (if (member elem (font-family-list))
            elem
          (util/choose-available-font (cdr list)))))))

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
  (let ((str (thing-at-point 'symbol :no-properties)))
    (if str
        (progn (kill-new str) (message "Copied `%s'." str))
      (message "No symbols under current cursor."))))

(defun util/copy-filename-at-point ()
  "Copy a filename at the point."
  (interactive)
  (let ((str (thing-at-point 'filename :no-properties)))
    (if str
        (progn (kill-new str)
               (message "Copied `%s'." str))
      (message "No filename at the point."))))

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

(defun util/refresh-exec-path ()
  "Refresh `exec-path` from the value of "PATH"."
  (interactive)
  (setq exec-path (split-string (getenv "PATH") path-separator)))

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

(defmacro util/customize-variable-if-unset (var)
  "Prompt to customize VAR if it is nil."
  `(unless ,var
    (customize-save-variable
     ',var (completing-read (concat "Customize `" (symbol-name ',var) "': ") nil))))

(defcustom util/code-search-url nil
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
    (util/customize-variable-if-unset util/code-search-url)
    (browse-url (concat util/code-search-url path))))

(defun util/code-search-path (path)
  "Open code search to search for a path."
  (interactive (list (let ((thing (thing-at-point 'filename)))
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

(defcustom util/log-search-url nil
  "The URL to access log search.")

(defun util/log-search (env module keywords)
  "Open xlog to search the log of MODULE for KEYWORDS under ENV."
  (let* ((calendar-time (decode-time))
         (year (nth 5 calendar-time))
         (month (nth 4 calendar-time))
         (day (nth 3 calendar-time))
         (begin-time (format "%d-%d-%d 00:00:00" year month day))
         (end-time (format "%d-%d-%d 23:59:59" year month day))
         (url (concat "/#/search/basic?param="
                      (url-hexify-string (json-serialize
                                          `((env . ,env)
                                            ,(if (string-empty-p module)
                                                 `(type . "all")
                                               `(type . "appoint"))
                                            (module . ,module)
                                            (beginTime . ,begin-time)
                                            (endTime . ,end-time)
                                            (keywordObj . ((,(intern "0") . ,keywords)
                                                           (,(intern "1") . "")
                                                           (,(intern "2") . "")))
                                            (excludeKeywordObj . ((,(intern "0") . "")
                                                                  (,(intern "1") . "")))
                                            (_type . "share")))))))
    (util/customize-variable-if-unset util/log-search-url)
    (browse-url (concat util/log-search-url url))))

(defun util/log-search-at-point (keyword module env)
  "Open xlog to search for the symbol at point."
  (interactive (list (if (use-region-p)
                         (buffer-substring (region-beginning) (region-end))
                       (let ((thing (thing-at-point 'symbol)))
                         (or thing (read-from-minibuffer "Search xlog for: "))))
                     (read-from-minibuffer "Module: ")
                     (completing-read "Env (default `idc'): " '("test" "idc") nil t nil nil "idc")))
  (util/log-search env module keyword))

(defun util--read-directory ()
  (let* ((package-directory (progn (require 'bazel)
                                   (bazel--package-directory
                                    (buffer-file-name)
                                    (bazel--workspace-root (buffer-file-name)))))
         (init-dir (or package-directory default-directory)))
    (read-from-minibuffer "Directory: " init-dir)))

(defun util/compile-project (directory)
  "Prompt to run a command under specified directory of a project."
  (interactive (list (util--read-directory)))
  (let ((default-directory directory))
    ;; Copy from the buffer-local value, which may be set in per-directory settings.
    (setq-default compilation-search-path compilation-search-path)
    (call-interactively 'compile)))

(provide 'util)
