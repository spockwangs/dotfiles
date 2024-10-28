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

(setq user-full-name "spockwang")
(setq user-mail-address "wbbtiger@gmail.com")
(setenv "ORGANIZATION" "Tencent")

;; Set the icloud path.
(defvar env/icloud-path
  (cond ((eq system-type 'windows-nt) "~/iCloudDrive/"))
  "The iCloud path")

(provide 'init-env)
;;; init-env.el ends here
