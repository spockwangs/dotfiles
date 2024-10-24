;;; init-org.el ---                                  -*- lexical-binding: t; -*-

(use-package org
  :ensure nil
  :demand
  :custom
  (org-directory "~/iCloudDrive/Notes/")
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
  :bind (("C-c o l" . org-store-link)
         ("C-c o a" . org-agenda)
         ("C-c o c" . org-capture)))

(provide 'init-org)
;;; init-org.el ends here
