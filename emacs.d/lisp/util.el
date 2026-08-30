;; -*- coding: utf-8-unix; lexical-binding: t; -*-
;; Copyright 2010. wbb
;;     All rights reserved.
;;
;; util.el -- Common utility functions

;; The following libraries are only loaded on demand at runtime, so declare the
;; functions we use from them to keep the byte-compiler (and native compiler)
;; quiet without paying the load cost at startup.
(declare-function tramp-file-local-name "tramp" (name))
(declare-function compilation-read-command "compile" (command))
(declare-function bazel--package-directory "bazel" (file-name repository-root))
(declare-function bazel--repository-root "bazel" (file-name))

(defun util-choose-available-font (list)
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
            (util-choose-available-font (cdr list)))
        (if (member elem (font-family-list))
            elem
          (util-choose-available-font (cdr list)))))))

(defun util-shift-region (distance)
  "Shift the selected region right if distance is postive, left if
negative"
  (let ((mark (mark)))
    (save-excursion
      (indent-rigidly (region-beginning) (region-end) distance)
      (push-mark mark t t)
      ;; Tell the command loop not to deactivate the mark
      ;; for transient mark mode
      (setq deactivate-mark nil))))

(defun util-shift-left ()
  "Shift the region left by tab-width."
  (interactive)
  (util-shift-region (- tab-width)))

(defun util-shift-right ()
  "Shift the region right by tab-width."
  (interactive)
  (util-shift-region tab-width))

(defun util-copy-line (&optional arg)
  "Copy current line to kill-ring without marking the line."
  (interactive "P")
  (let ((beg (line-beginning-position))
        (end (line-end-position arg)))
    (copy-region-as-kill beg end))
  (message "Copied a line."))

(defun util-copy-symbol ()
  "Copy a symbol under current cursor."
  (interactive)
  (let ((str (thing-at-point 'symbol :no-properties)))
    (if str
        (progn (kill-new str) (message "Copied `%s'." str))
      (message "No symbols under current cursor."))))

(defun util-copy-filename-at-point ()
  "Copy a filename at the point."
  (interactive)
  (let ((str (thing-at-point 'filename :no-properties)))
    (if str
        (progn (kill-new str)
               (message "Copied `%s'." str))
      (message "No filename at the point."))))

(defun util-insert-current-date ()
  "Insert current date at current point."
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))

(defun util-insert-current-time ()
  "Insert current time at current point."
  (interactive)
  (insert (format-time-string "%Y-%m-%d %H:%M:%S")))

(defun util-kill-current-word ()
  "Kill current word."
  (interactive)
  (backward-word)
  (kill-word 1))

(defun util-next-buffer ()
  "Switch to previous buffer in current window."
  (interactive)
  (switch-to-buffer (car (reverse (buffer-list)))))

(defun util-other-buffer ()
  "Switch to the other buffer (2nd in list-buffer) in current window."
  (interactive)
  (switch-to-buffer (other-buffer)))

(defun util-kill-current-buffer ()
  "Kill current buffer."
  (interactive)
  (kill-buffer (current-buffer)))

(defun util-copy-current-path ()
  "Copy current file path to kill-ring. If the path is remote, only copy the local components."
  (interactive)
  (let ((filename (tramp-file-local-name (if (equal major-mode 'dired-mode)
                                             default-directory
                                           (buffer-file-name)))))
    (if filename
        (progn (kill-new filename)
               (message "Copied path '%s'." filename))
      (message "No path associated with current buffer."))))

(defun util-copy-current-file-name ()
  "Copy current filename."
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (file-name-nondirectory (buffer-file-name)))))
    (if filename
        (progn (kill-new filename)
               (message "Copied filename '%s'." filename))
      (message "No filename associated with current buffer."))))

(defun util-copy-current-directory ()
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

(defun util-search-all-buffers (regexp)
  "Search all lines matching REGEXP in all open buffers."
  (interactive (list (read-regexp "List lines matching regexp: ")))
  (multi-occur-in-matching-buffers ".*" regexp t))

(defun util-fill ()
  "If area is selected call 'fill-region' otherwise call 'fill-paragraph'."
  (interactive)
  (if (region-active-p)
      (fill-region (region-beginning) (region-end))
    (fill-paragraph nil)))

(defun util-delete-file-and-buffer ()
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

(defun util-process-region (start end program &optional delete buffer display &rest args)
  "Similar to `call-process-region', but supports running remote
 commands if current directory is remote."
  (if (file-remote-p default-directory)
      (let ((temp-file (make-nearby-temp-file "util-process-region")))
        (unwind-protect
            (progn
              (write-region start end temp-file)
              (when delete
                (delete-region start end))
              (apply #'process-file program temp-file buffer display args))
          (when temp-file (delete-file temp-file))))
    (apply #'call-process-region start end program delete buffer display args)))

(defun util-format-region (name begin end format-program format-args)
  "Define a general format function with NAME to format a region of current
buffer by executing FORMAT-PROGRAM with a list of FORMAT-ARGS."
  (let ((error-output-file (make-temp-file name)))
    (unwind-protect
        (let ((status (apply #'util-process-region begin end format-program t (list t error-output-file) nil format-args))
              (stderr (with-temp-buffer
                        (insert-file-contents error-output-file)
                        (buffer-substring-no-properties (point-min) (point-max)))))
          (when (not (zerop status))
            (error "%s failed with code %d: %s" name status stderr))
          (message "%s succeeds" name))
      (delete-file error-output-file))))

(defun util-add-exec-path (path &optional append)
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

(defun util-refresh-exec-path ()
  "Refresh `exec-path' from the value of PATH."
  (interactive)
  (setq exec-path (split-string (getenv "PATH") path-separator)))

(defcustom util-large-file-size (* 1024 1024)
  "File size above which expensive editing helpers are disabled."
  :type 'integer)

(defun util-large-file-p ()
  "Return non-nil if the current buffer visits a large local file."
  (and buffer-file-name
       (not (file-remote-p buffer-file-name))
       (let ((attrs (file-attributes buffer-file-name)))
         (and attrs
              (> (file-attribute-size attrs) util-large-file-size)))))

(defun util-display-line-numbers-mode ()
  "Enable line numbers unless the current buffer is remote or large."
  (unless (util-large-file-p)
    (display-line-numbers-mode)))

(defun util-get-dpi (&optional frame)
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

(defmacro util-customize-variable-if-unset (var)
  "Prompt to customize VAR if it is nil."
  `(unless ,var
     (customize-save-variable
      ',var (completing-read (concat "Customize `" (symbol-name ',var) "': ") nil))))

(defun util--read-directory ()
  (let* ((package-directory (progn (require 'bazel)
                                   (bazel--package-directory
                                    (buffer-file-name)
                                    (bazel--repository-root (buffer-file-name)))))
         (init-dir (or package-directory default-directory)))
    (read-from-minibuffer "Directory: " init-dir)))

(defun util-compile-project (directory)
  "Prompt to run a command under specified directory of a project."
  (interactive (list (util--read-directory)))
  (let ((default-directory directory))
    (require 'compile)
    (setq-default compilation-search-path compilation-search-path)
    (let ((command (compilation-read-command compile-command)))
      (compile command))))

(defun util-hex-encode-region (begin end)
  "Replace the string in the region (BEGIN END) with hexified string."
  (interactive "r")
  (let* ((text (buffer-substring begin end))
         (hex (mapconcat (lambda (c) (format "%02X" c)) text)))
    (delete-region begin end)
    (insert hex)))

(defun util-hex-decode-region (begin end)
  "Replace the hex string in the region (BEGIN END) with unhexified string."
  (interactive "r")
  (let* ((hex (buffer-substring begin end))
         (decoded-text (apply #'string (cl-loop for i from 0 below (length hex) by 2
                                                collect (string-to-number (substring hex i (+ i 2)) 16)))))
    (delete-region begin end)
    (insert decoded-text)))

(defun util-url-decode-region (begin end)
  "Replace URL escape sequences in the region (BEGIN END) with decoded text."
  (interactive "r")
  (require 'url-util)
  (let* ((text (buffer-substring begin end))
         (decoded (url-unhex-string text)))
    (delete-region begin end)
    (insert decoded)))

(defun util-convert-time--format-p (str)
  "Return non-nil if STR looks like a Unix timestamp (digits, optional dot)."
  (string-match-p "\\`[0-9]+\\(\\.[0-9]+\\)?\\'" str))

(defun util-convert-time--convert (str)
  "Convert STR between Unix timestamp and \"YYYY-MM-DD HH:MM:SS\"."
  (if (util-convert-time--format-p str)
      (format-time-string "%Y-%m-%d %H:%M:%S"
                          (seconds-to-time (string-to-number str)))
    (let ((normalized (util-convert-time--normalize-date str)))
      (if normalized
          (number-to-string (round (float-time (date-to-time normalized))))
        (number-to-string (round (float-time (date-to-time str))))))))

(require 'thingatpt)

(defconst util-convert-time--date-re
  "\\([0-9]\\{4\\}\\)-\\([0-9]\\{1,2\\}\\)-\\([0-9]\\{1,2\\}\\)\\(?:[ T]\\([0-9]\\{1,2\\}\\):\\([0-9]\\{1,2\\}\\):\\([0-9]\\{1,2\\}\\)\\)?"
  "Regexp matching \"YYYY-M-D\" or \"YYYY-M-D H:M:S\" with capture groups.")

(defun util-convert-time--normalize-date (str)
  "Zero-pad the fields of date STR so `date-to-time' can parse it.
Returns \"YYYY-MM-DD\" or \"YYYY-MM-DD HH:MM:SS\", or nil if STR is not a date."
  (when (string-match util-convert-time--date-re str)
    (let ((y  (string-to-number (match-string 1 str)))
          (mo (string-to-number (match-string 2 str)))
          (d  (string-to-number (match-string 3 str)))
          (h  (match-string 4 str)))
      (if h
          (format "%04d-%02d-%02d %02d:%02d:%02d"
                  y mo d
                  (string-to-number h)
                  (string-to-number (match-string 5 str))
                  (string-to-number (match-string 6 str)))
        (format "%04d-%02d-%02d" y mo d)))))

(defun util-convert-time--at-point ()
  "Return a Unix timestamp or date string at point, or nil.
A string matching \"YYYY-MM-DD\" or \"YYYY-MM-DD HH:MM:SS\" is treated
as a date; otherwise a pure number is treated as a Unix timestamp."
  (or (when (thing-at-point-looking-at util-convert-time--date-re)
        (match-string-no-properties 0))
      (let ((num (thing-at-point 'number :no-properties)))
        (when num
          (setq num (format "%s" num)))
        (and num (util-convert-time--format-p num) num))))

(defun util-convert-time (&optional arg)
  "Convert between Unix timestamp and \"YYYY-MM-DD HH:MM:SS\".
Always prompts; the initial input is the active region, the number/date
at point, or the current time if neither is available.  A pure number is
treated as a Unix timestamp in seconds; any other input is parsed as a
date string (e.g. \"2026-7-17 10:10:10\").

With no prefix ARG the result is copied to the kill-ring and shown in
the echo area.  With a non-nil prefix ARG (e.g. \\[universal-argument]) the
result is inserted at point instead.  When a region is active it is
replaced in place regardless of ARG."
  (interactive "P")
  (let* ((region (when (use-region-p)
                   (buffer-substring-no-properties
                    (region-beginning) (region-end))))
         (detected (or region (util-convert-time--at-point)))
         (input (if region
                    region
                  (let ((s (read-string (format "Unix seconds or date (e.g. %s): "
                                                (format-time-string "%Y-%m-%d %H:%M:%S"))
                                        detected)))
                    (if (string-empty-p s)
                        (format-time-string "%Y-%m-%d %H:%M:%S")
                      s))))
         (result (util-convert-time--convert input)))
    (cond
     (region
      (delete-region (region-beginning) (region-end))
      (insert result))
     (arg
      (insert result))
     (t
      (kill-new result)))
    (message "%s -> %s" input result)
    result))

(provide 'util)
