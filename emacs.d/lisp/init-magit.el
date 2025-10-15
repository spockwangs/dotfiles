(defun merge-request-to-gongfeng ()
  "请求工蜂合并代码。"
  (interactive)
  (browse-url (concat (replace-regexp-in-string ".git$" "" (magit-get "remote.origin.url"))
                      "/-/merge_requests/new?ADTAG=git-cli&"
                      (url-hexify-string (format "merge_request[source_branch]=%s" (magit-get-current-branch))))))

(defun my-list-merged-branches ()
  "List all branches which have merged into the specified branch."
  (interactive)
  (let* ((default-branch "origin/master")
         (dest-branch (completing-read (format "Branches merged to (default: %s): " default-branch)
                                       (magit-list-branch-names) nil :require-match nil nil default-branch))
         (merged-branches (remove dest-branch (magit-list-merged-branches dest-branch))))
    (if (null merged-branches)
        (message "No merged branches.")
      (message (concat "Merged branches to `" dest-branch "':\n"
                       (mapconcat 'identity merged-branches "\n"))))))

(defun my-list-unmerged-branches ()
  "List all branches which have not merged into the specified branch."
  (interactive)
  (let* ((default-branch "origin/master")
         (dest-branch (completing-read (format "Branches merged to (default: %s): " default-branch)
                                       (magit-list-branch-names) nil :require-match nil nil default-branch))
         (unmerged-branches (magit-list-unmerged-branches dest-branch)))
    (message (concat "Un-merged branches to `" dest-branch "':\n"
                     (mapconcat 'identity unmerged-branches "\n")))))

(defun my-delete-merged-branches ()
  "Iterate to delete all branches which have merged into the specified branch."
  (interactive)
  (let* ((default-branch "origin/master")
         (dest-branch (completing-read (format "Branches merged to (default: %s): " default-branch)
                                       (magit-list-branch-names) nil :require-match nil nil default-branch))
         (merged-branches (magit-list-merged-branches dest-branch))
         (branches-to-delete (remove dest-branch (remove merged-branches "master")))
         (total-num (length branches-to-delete))
         (processed-count 0))
    (if branches-to-delete
        (dolist (br branches-to-delete)
          (setq processed-count (1+ processed-count))
          (if (yes-or-no-p (format "Delete branch `%s'? (%d/%d)" br processed-count total-num))
              (magit-branch-delete (list br))
            (message "Nothing to delete"))))))

(use-package magit
  :custom
  (auto-revert-buffer-list-filter
   (lambda (buf) (not (file-remote-p (buffer-file-name buf))))
   "Do not auto-revert remote files to improve performance")
  (magit-stage-all-confirm nil "disable `Stage all changes?")
  (magit-stage-modified-confirm nil "disable `Stage N modified files?'")
  :config
  (transient-append-suffix 'magit-merge "m"
    '("r" "Merge request" merge-request-to-gongfeng))
  (transient-append-suffix 'magit-branch "k"
    '("K" "Delete all merged branches" my-delete-merged-branches))
  (transient-append-suffix 'magit-branch "K"
    '("M" "List all merged branches" my-list-merged-branches))
  (transient-append-suffix 'magit-branch "M"
    '("U" "List all unmerged branches" my-list-unmerged-branches)))

(provide 'init-magit)
