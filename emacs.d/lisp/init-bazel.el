;;; init-bazel.el --- Configure bazel related mode   -*- lexical-binding: t; -*-

;; Copyright (C) 2024  spockwang

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

(defun compile-for-bazel ()
  (interactive)
  ;; Set this variable in per-directory setting if bazel is not used for building.
  (if (bound-and-true-p compilation-do-not-use-bazel)
      (call-interactively 'util/compile-project)
    (call-interactively 'bazel-build)))

(use-package bazel
  :bind
  (:map bazel-mode-map
        ("C-M-\\" . bazel-buildifier)
        ("C-c C-b" . compile-for-bazel)))

(provide 'init-bazel)
;;; init-bazel.el ends here
