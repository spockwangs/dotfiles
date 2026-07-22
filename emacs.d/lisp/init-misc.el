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

(use-package hydra
  :bind ("C-c m" . hydra-menu/body)
  :config
  (require 'util)
  (defcustom wemonitor-domain nil
    "调用关系监控的域名。")

  (defun open-wemonitor (module-name)
    "Open the wemonitor of module MODULE-NAME."
    (interactive (list (read-string "模块名：")))
    (util-customize-variable-if-unset wemonitor-domain)
    (browse-url (concat wemonitor-domain "/wego/wemodulechainweb/page?tpl=call&detailType=3&str=" module-name)))

  (defcustom idkey-domain nil
    "IDKEY监控域名。")

  (defun open-idkey (id)
    "Open the IDKEY of ID"
    (interactive (list (read-string "ID：")))
    (util-customize-variable-if-unset idkey-domain)
    (browse-url (concat idkey-domain "/wego/weidkeyviewweb/type/server/id/" id)))

  (defcustom code-search-domain nil
    "Base URL of code search.
Prompted on first use via `util-customize-variable-if-unset' and saved
to `custom-file'; not stored in version control.")

  (defun code-search (type thing)
    "Open code search for THING with query TYPE (path/proto/def/ref)."
    (util-customize-variable-if-unset code-search-domain)
    (let* ((q (url-hexify-string thing))
           (query (pcase type
                    ('path  (format "full=&defs=&refs=&path=%s&type=&xrd=&nn=134&searchall=true" q))
                    ('proto (format "full=&defs=%s&refs=&path=*proto&hist=&type=&xrd=&nn=134&searchall=true" q))
                    ('def   (format "full=&defs=%s&refs=&path=&hist=&type=&xrd=&nn=134&searchall=true" q))
                    ('ref   (format "full=&defs=&refs=%s&path=&hist=&type=&xrd=&nn=134&searchall=true" q)))))
      (browse-url (concat code-search-domain "/codesearch/search?" query))))

  (defun code-search-read (prompt)
    "Return the symbol at point, or read a string with PROMPT if none."
    (or (thing-at-point 'symbol :no-properties)
        (read-string prompt)))

  (defcustom log-search-domain nil
    "Base URL of log search (xlog).
Prompted on first use via `util-customize-variable-if-unset' and saved
to `custom-file'; not stored in version control.")

  (defun log-search ()
    "Open xlog to search MODULE's log for KEYWORDS under ENV."
    (interactive)
    (util-customize-variable-if-unset log-search-domain)
    (let* ((keywords (or (thing-at-point 'symbol :no-properties)
                         (read-string "keywords: ")))
           (module (read-string "Module: "))
           (env (completing-read "Env (default idc): " '("test" "idc") nil t nil nil "idc"))
           (time (decode-time))
           (year (nth 5 time))
           (month (nth 4 time))
           (day (nth 3 time))
           (begin-time (format "%d-%d-%d 00:00:00" year month day))
           (end-time (format "%d-%d-%d 23:59:59" year month day))
           (param (json-serialize
                   `((env . ,env)
                     ,(if (string-empty-p module)
                          `(type . "all")
                        `(type . "appoint"))
                     (module . ,module)
                     (beginTime . ,begin-time)
                     (endTime . ,end-time)
                     (keywordObj . ((,(intern "0") . ,keywords)
                                    (,(intern "1") . "")
                                    (,(intern "2") . "")))
                     (excludeKeywordObj . ((,(intern "0") . "")
                                           (,(intern "1") . "")))
                     (_type . "share")))))
      (browse-url (concat log-search-domain
                          "/#/search/basic?param="
                          (url-hexify-string param)))))

  (defcustom mock-data-dict-domain nil
    "mock数据字典平台的域名。")

  (defun open-mock-data-dict (tb-name)
    "Open kunpeng mock data dict list filtered by TB-NAME."
    (interactive (list (read-string "表名："
                                    (thing-at-point 'symbol :no-properties))))
    (util-customize-variable-if-unset mock-data-dict-domain)
    (browse-url (concat mock-data-dict-domain
                        "/kunpeng/index2.php/cxdata_platform/index"
                        "#/mock-system/mock-data-dict/list?tb_name="
                        (url-hexify-string tb-name)
                        "&page_size=40&page_num=1")))

  (defhydra hydra-menu (:hint nil)
    "
^监控^                ^代码搜索^                ^其它^
---------------------------------------------------------------------------
_w_: 模块调用监控    _p_: 按路径搜索           _k_: mock数据字典
_i_: IDKEY监控        _m_: 按proto message搜索
_l_: 日志搜索         _d_: 按定义搜索
^ ^                    _r_: 按引用搜索
"
    ("w" open-wemonitor :color blue)
    ("i" open-idkey :color blue)
    ("l" log-search :color blue)
    ("p" (lambda () (interactive) (code-search 'path  (code-search-read "path: "))) :color blue)
    ("m" (lambda () (interactive) (code-search 'proto (code-search-read "proto message: "))) :color blue)
    ("d" (lambda () (interactive) (code-search 'def   (code-search-read "def: "))) :color blue)
    ("r" (lambda () (interactive) (code-search 'ref   (code-search-read "ref: "))) :color blue)
    ("k" open-mock-data-dict :color blue)
    ("q" nil "quit" :color blue)))

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
