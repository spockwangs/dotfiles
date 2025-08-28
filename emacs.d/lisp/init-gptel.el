;;; init-gptel.el --- Configure methods of accessing LLMs  -*- lexical-binding: t; -*-

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

(use-package gptel
  :config
  (gptel-make-gemini "Gemini"
    :key 'gptel-api-key
    :stream t
    :models '(gemini-2.5-flash))
  (setq gptel-backend (gptel-make-openai "Qwen"
    :key 'gptel-api-key :stream t
    :models '(qwen-plus qwen-flash)
    :host "dashscope.aliyuncs.com" :endpoint "/compatible-mode/v1/chat/completions")))


(provide 'init-gptel)
;;; init-gptel.el ends here
