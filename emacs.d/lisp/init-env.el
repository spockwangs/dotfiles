;;; init-env.el --- Configure info about the enviornment where the emacs is running.  -*- lexical-binding: t; -*-

;; Copyright (C) 2024  spockwang

;; Author:  <wbbtiger@gmail.com>
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

;; Set the executable path.
(require 'util)
(when (eq system-type 'windows-nt)
  (util/add-exec-path "C:/Windows/System32/OpenSSH")
  (util/add-exec-path "~/scoop/shims")
  (util/add-exec-path "~/scoop/apps/latex/24.1/texmfs/install/miktex/bin/x64"))

(setq user-full-name "spockwang"
      user-mail-address "wbbtiger@gmail.com")
(setenv "ORGANIZATION" "Tencent")

;; Set the icloud path.
(defconst env/icloud-path
  (cond ((eq system-type 'windows-nt) "~/iCloudDrive/")
        ((eq system-type 'darwin) "~/Library/Mobile Documents/com~apple~CloudDocs/"))
  "The iCloud path")

(connection-local-set-profile-variables
 'remote-bash
 '((explicit-shell-file-name . "/bin/bash")
   (explicit-bash-args . ("-i"))
   (shell-file-name . "/bin/bash")))

(connection-local-set-profiles
 '(:application tramp :protocol "ssh" :machine "devcloud2")
 'remote-bash)

(defun env/my-dpi (&optional frame)
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

(defconst env/font-size
  (let* ((atts (frame-monitor-attributes nil))
         (width-pixel (cl-fourth (assoc 'geometry atts))))
    (cond ((< width-pixel 1500) 16.0)
          ((< width-pixel 2000) 15.0)
          (t 14.0)))
  "The default font size in points")

(defconst env/font-size-for-chinese
  (+ env/font-size 1)
  "The font size in points for chinese")

(provide 'init-env)
;;; init-env.el ends here
