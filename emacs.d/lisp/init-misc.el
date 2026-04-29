;;; init-misc.el --- Miscellaneous settings.          -*- lexical-binding: t; -*-

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

(bind-key "C-c d" #'dictionary-search)
(setq dictionary-server "dict.org")

(use-package google-translate
  :bind
  (("C-c g t" . google-translate-query-translate)
   ("C-c g T" . google-translate-query-translate-reverse)
   ("C-c g p" . google-translate-at-point))
  :custom
  (google-translate-default-source-language "en")
  (google-translate-default-target-language "zh-CN"))

(use-package gptel
  :hook ((gptel-mode . (lambda ()
                         (markdown-toggle-markup-hiding 1))))
  :custom
  (gptel-prompt-prefix-alist '((markdown-mode . "**Prompt**: ")
                               (org-mode . "*Prompt*: ")))
  (gptel-response-prefix-alist '((markdown-mode . "**Response**: ")
                                 (org-mode . "*Response*: ")))
  (gptel-default-mode 'markdown-mode)
  :config
  (setq gptel-include-reasoning nil)
  (with-eval-after-load 'math-preview
    (add-to-list 'gptel-post-response-functions #'math-preview-region))
  (setq gptel-model "gemini-2.5-flash")
  (setq gptel-backend (gptel-make-gemini "Gemini"
                        :key 'gptel-api-key
                        :stream t
                        :models '(gemini-2.5-flash)))
  (gptel-make-openai "Qwen"
    :key 'gptel-api-key :stream t
    :models '(qwen-plus qwen-flash)
    :host "dashscope.aliyuncs.com" :endpoint "/compatible-mode/v1/chat/completions")
  (gptel-make-openai "Kimi"
    :models '(kimi-k2-0711-preview)
    :key 'gptel-api-key :stream t
    :host "api.moonshot.cn" :endpoint "/v1/chat/completions")
  )

(use-package elfeed
  :hook
  (elfeed-search-mode . visual-line-mode)
  :custom
  (elfeed-feeds
   '(("https://hnrss.org/frontpage" Tech News)
     ("https://www.technologyreview.com/feed/" Tech News)
     ))
  (elfeed-search-title-max-width 100))

(provide 'init-misc)
;;; init-misc.el ends here
