;;; init-terminal.el --- Configure how to access terminals.  -*- lexical-binding: t; -*-

;; Copyright (C) 2025  Tencent

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

(use-package esh-mode
  :ensure nil
  :config
  (setq comint-prompt-regexp "^[^#$%>\n]*[#$] "))

(use-package sh-mode
  :ensure nil
  :bind (:map sh-mode-map
              ([(return)] . newline-and-indent)))

(use-package shell
  :ensure nil
  :hook (shell-mode . (lambda ()
                        (setq comint-prompt-regexp "^[^#$%>\n]*[#$] ")))
  :custom
  (comint-use-prompt-regexp 1)
  :config
  (when (memq system-type (list 'gnu/linux 'darwin))
    (setq shell-command-switch "-ic")))

(provide 'init-terminal)
;;; init-terminal.el ends here
