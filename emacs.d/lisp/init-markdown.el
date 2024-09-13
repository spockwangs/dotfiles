;;; init-markdown.el --- Configure markdown mode.    -*- lexical-binding: t; -*-

;; Copyright (C) 2024

;; Author:  <spockwang@spockwang-PC3>
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

(use-package markdown-mode
  :mode
  ("README\\.md\\'" . gfm-mode)
  ("\\.md\\'" . markdown-mode)
  ("\\.markdown\\'" . markdown-mode)
  :custom
  (markdown-header-scaling t)
  (markdown-hide-urls t)
  (markdown-fontify-code-blocks-natively t))

(provide 'init-markdown)
;;; init-markdown.el ends here
