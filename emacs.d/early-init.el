;;; early-init.el ---                                -*- lexical-binding: t; -*-

;; Copyright (C) 2026  Tencent

;; Author: spockwang <wbbtiger@gmail.com>
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

;; Temporarily raise the garbage collection threshold to its maximum value.
;; It will be restored later to controlled values.
(if noninteractive
    (setq gc-cons-threshold 268435456) ; 256 Mb
  (setq gc-cons-threshold most-positive-fixnum))
(setq gc-cons-percentage 1.0)

(add-hook 'emacs-startup-hook
          (lambda ()
            ;; Set GC threshold to 100MB.
            (setq gc-cons-threshold 100000000
                  gc-cons-percentage 0.1)))

(add-hook 'emacs-startup-hook
          (lambda ()
            (message "Emacs loaded in %s with %d garbage collections."
                     (emacs-init-time)
                     gcs-done)))

(setq
 load-prefer-newer t
 debug-on-error (bound-and-true-p init-file-debug)
 use-package-verbose (bound-and-true-p init-file-debug)
 use-package-expand-minimally t
 use-package-compute-statistics (bound-and-true-p init-file-debug)
 read-process-output-max (* 4 1024 1024)
 process-adaptive-read-buffering nil
 initial-major-mode 'fundamental-mode
 initial-scratch-message nil)

(when (not noninteractive)
  (setq-default inhibit-redisplay t)
  (add-hook 'post-command-hook #'reset-inhibit-redisplay -100))

(defun reset-inhibit-redisplay ()
  (setq-default inhibit-redisplay nil)
  (remove-hook 'post-command-hook #'reset-inhibit-redisplay))

(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/")
                         ("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

;;; early-init.el ends here
