;;; init-org.el ---                                  -*- lexical-binding: t; -*-

(use-package org
  :ensure nil
  :demand
  :custom
  (org-directory (concat env/icloud-path "Notes/"))
  (org-agenda-files `(,org-directory "GTD/tasks.org"))
  (org-agenda-file-regexp "\\`[^.].*\\.org\\'")
  (org-todo-keywords
   '((sequence "TODO(t!)" "DOING(d!)" "WAITING(s)" "|" "DONE(d!)" "CANCELED(c@/!)")))
  (org-log-into-drawer "LOGBOOK")
  (org-archive-location (concat org-directory "GTD/archive.org::datetree/"))
  (org-capture-templates
   `(("i" "Inbox" entry (file "GTD/inbox.org") "* [%<%F %R>] %^{heading} %^g\n %?\n")
     ("r" "Reading" entry (file+olp "GTD/tasks.org" "Reading") "* TODO %^{title} [%<%F %R>]")
     ("w" "Work" entry (file+olp "GTD/tasks.org" "Work") "* TODO %^{task} [%<%F %R>]")
     ("a" "Agenda" entry (file+olp "GTD/tasks.org" "Agenda") "* TODO %^{description}\nSCHEDULED: %^{Date}t")))
  :config
  ;; The program `latex' should be installed.
  (add-to-list 'org-preview-latex-process-alist
               '(dvipng . (:programs
                           ("latex" "dvipng")
                           :description "dvi > png" :message "you need to install the programs: latex and dvipng." :image-input-type "dvi" :image-output-type "png" :image-size-adjust
                           (1.0 . 1.0)
                           :latex-compiler
                           ("latex -interaction nonstopmode -output-directory %o %F")
                           :image-converter
                           ("dvipng -D %D -T tight -o %O %f")
                           :transparent-image-converter
                           ("dvipng -D %D -T tight -bg Transparent -o %O %f"))))
  (setq org-format-latex-options (plist-put org-format-latex-options :scale 1.7))
  :bind (("C-c o l" . org-store-link)
         ("C-c o a" . org-agenda)
         ("C-c o c" . org-capture)))

(provide 'init-org)
;;; init-org.el ends here
