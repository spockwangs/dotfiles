(use-package magit
  :preface
  (defun do-merge-request ()
    "请求工蜂合并代码。"
    (interactive)
    (browse-url (concat (replace-regexp-in-string ".git$" "" (magit-get "remote.origin.url"))
                        "/-/merge_requests/new?ADTAG=git-cli&"
                        (url-hexify-string (format "merge_request[source_branch]=%s" (magit-get-current-branch))))))
  :config
  (require 'util)
  (transient-append-suffix 'magit-merge "m"
    '("r" "Merge request" do-merge-request)))

(provide 'init-magit)
