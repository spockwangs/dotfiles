;;; init-env.el --- Configure environment info of the system running Emacs.  -*- lexical-binding: t; -*-

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

(setq
 use-package-verbose t
 use-package-expand-minimally nil
 use-package-compute-statistics t
 ;; Set GC threshold as 100MB.
 gc-cons-threshold 100000000
 ;; accept `y' or `n' instead of yes/no
 use-short-answers t
 enable-local-variables :all
 read-process-output-max (* 4 1024 1024)
 process-adaptive-read-buffering nil
 epg-pinentry-mode 'loopback)

(require 'benchmarking-require)
(require 'package)
(setq package-archives '(("gnu" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/")
                         ("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

(require 'use-package-ensure)
(setq
 ;; Make sure the package is installed.
 use-package-always-ensure t
 ;; Always defer loading a package unless :demand is specified.
 use-package-always-defer t)

;; There is a `~' in the temporary path on Windows which some programs (e.g. latex) can't recognize
;; so we change the temporary path for Emacs.
(when (eq system-type 'windows-nt)
  (make-directory "c:/tmp" t)
  (custom-set-variables '(temporary-file-directory "c:/tmp")))

(use-package exec-path-from-shell
  :demand t
  :config
  ;; Copy environment variables seen by shell to emacs on UNIX-like systems.
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize)))

;; Set language environment and coding system.
;; See `set-file-name-coding-system', `set-buffer-file-coding-system',
;; `set-buffer-process-coding-system', `set-terminal-coding-system',
;; `set-selection-coding-system' and `set-input-method'.
(set-locale-environment "en_US.UTF-8")
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8-unix)

(setq user-full-name "spockwang"
      user-mail-address "wbbtiger@gmail.com")
(setenv "ORGANIZATION" "Tencent")

;; Set the icloud path.
(defconst my-icloud-path
  (cond ((eq system-type 'windows-nt) "~/iCloudDrive/")
        ((eq system-type 'darwin) "~/Library/Mobile Documents/com~apple~CloudDocs/"))
  "The iCloud path")

;; Use bash for remote ssh.
(connection-local-set-profile-variables
 'remote-bash
 '((explicit-shell-file-name . "/bin/bash")
   (explicit-bash-args . ("-i"))))
(connection-local-set-profiles
 '(:application tramp :protocol "ssh" :machine "devcloud2")
 'remote-bash)

;; Where so save secrets.
(add-to-list 'auth-sources "~/.emacs.d/authinfo.gpg")

(provide 'init-env)
;;; init-env.el ends here
