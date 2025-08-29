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
  :init
  (defun gpt ()
    "Create a GPT session."
    (interactive)
    (if-let* ((backend-name (completing-read "Choose a LLM provider: "
                                             (mapcar #'car gptel--known-backends) nil :require-match))
              (backend (alist-get backend-name gptel--known-backends nil nil #'equal))
              (model (intern (completing-read "Choose a model: "
                                              (gptel-backend-models backend) nil :require-match))))
        (progn (setq gptel-backend backend
                     gptel-model model)
               (call-interactively 'gptel))
      (error "Can't find the LLM backend")))
  :bind (:map gptel-mode-map
              ("<return>" . gptel-send))
  :config
  (gptel-make-gemini "Gemini"
    :key 'gptel-api-key
    :stream t
    :models '(gemini-2.5-flash))
  (gptel-make-openai "Qwen"
    :key 'gptel-api-key :stream t
    :models '(qwen-plus qwen-flash)
    :host "dashscope.aliyuncs.com" :endpoint "/compatible-mode/v1/chat/completions")
  (gptel-make-openai "Kimi"
    :models '(kimi-k2-0711-preview)
    :key 'gptel-api-key :stream t
    :host "api.moonshot.cn" :endpoint "/v1/chat/completions")
  )

(provide 'init-gptel)
;;; init-gptel.el ends here
