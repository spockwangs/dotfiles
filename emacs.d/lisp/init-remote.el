;;; init-remote.el --- Configure how to access a remote host.  -*- lexical-binding: t; -*-

;; Copyright (C) 2025  spockwang

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

(use-package tramp
  :ensure nil
  :config
  (setq tramp-persistency-file-name "~/.cache/tramp")
  (require 'cl-lib)
  ;; Make method "ssh" of tramp mode work on windows.
  (when (eq system-type 'windows-nt)
    (cl-pushnew '("-tt")
                (car (alist-get 'tramp-login-args
                                (cdr (assoc "ssh" tramp-methods))))
                :test #'equal))
  ;; Make the PATH setting in "~/.bashrc" available to the remote shell.
  (add-to-list 'tramp-remote-path 'tramp-own-remote-path)
  ;; Enable per-directory local variables over tramp.
  (setq enable-remote-dir-locals t)
  ;; Make remote shell recognize alias settings.
  (connection-local-update-profile-variables 'tramp-connection-local-default-shell-profile
                                             '((shell-file-name . "/bin/bash")
                                               (shell-command-switch . "-ic"))))

(provide 'init-remote)
;;; init-remote.el ends here
