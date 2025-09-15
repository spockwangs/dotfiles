;;; init-org.el ---                                  -*- lexical-binding: t; -*-

(use-package org
  :ensure nil
  :demand
  :custom
  (org-directory (expand-file-name "GTD/" my-icloud-path))
  (org-agenda-files (list org-directory))
  (org-agenda-file-regexp "\\`[^.].*\\.org\\'")
  (org-todo-keywords
   '((sequence "TODO(t!)" "DOING(i!)" "WAITING(s)" "|" "DONE(d!)" "CANCELED(c@/!)")))
  (org-log-into-drawer "LOGBOOK")
  (org-archive-location (concat org-directory "archive.org::datetree/"))
  (org-capture-templates
   `(("i" "Inbox" entry (file "inbox.org") "* [%<%F %R>] %^{heading} %^g\n %?\n")
     ("r" "Reading" entry (file+olp "tasks.org" "Reading") "* TODO %^{title}%?")
     ("w" "Work" entry (file+olp "tasks.org" "Work") "* TODO %^{task}%?")
     ("a" "Agenda" entry (file+olp "tasks.org" "Agenda") "* TODO %^{description}%?\nSCHEDULED: %^{Date}t")
     ("t" "Todo" entry (file+olp "tasks.org" "Todo") "* TODO %^{task}%?")))
  (org-agenda-custom-commands
   '(("c" "Agenda bird view"
      ((agenda "" ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo '("DONE")))))
       (tags-todo "+work" ((org-agenda-sorting-strategy '(priority-down todo-state-down deadline-up scheduled-up))
                           (org-agenda-skip-function '(org-agenda-skip-if nil '(scheduled deadline)))
                           (org-agenda-overriding-header "All work tasks:")))
       (tags-todo "-work" ((org-agenda-sorting-strategy '(priority-down todo-state-down deadline-up scheduled-up))
                           (org-agenda-skip-function '(org-agenda-skip-if nil '(scheduled deadline)))
                           (org-agenda-overriding-header "Other tasks:")))))
     ("w" tags-todo "+work"
      ((org-overriding-columns-format "%50ITEM %TODO %PRIORITY %TAGS %25SCHEDULED %25DEADLINE")
       (org-agenda-sorting-strategy '(priority-down todo-state-down deadline-up scheduled-up))))
     ("d" tags-todo "-work"
      ((org-overriding-columns-format "%50ITEM %TODO %PRIORITY %TAGS %25SCHEDULED %25DEADLINE")
       (org-agenda-sorting-strategy '(priority-down todo-state-down deadline-up scheduled-up))))))
  (org-agenda-search-view-always-boolean t)
  :config
  ;; The program `latex' should be installed.
  ;; (add-to-list 'org-preview-latex-process-alist
  ;;              '(dvipng . (:programs
  ;;                          ("latex" "dvipng")
  ;;                          :description "dvi > png" :message "you need to install the programs: latex and dvipng."
  ;;                          :image-input-type "dvi" :image-output-type "png" :image-size-adjust
  ;;                          (1.0 . 1.0)
  ;;                          :latex-compiler
  ;;                          ("latex -interaction nonstopmode -output-directory %o %F")
  ;;                          :image-converter
  ;;                          ("dvipng -D %D -T tight -o %O %f")
  ;;                          :transparent-image-converter
  ;;                          ("dvipng -D %D -T tight -bg Transparent -o %O %f"))))
  ;; To preview latex the TeX distribution should be installed.
  (setq org-preview-latex-default-process 'dvisvgm)
  :bind (("C-c o l" . org-store-link)
         ("C-c o a" . org-agenda)
         ("C-c o c" . org-capture)))

(use-package org-fragtog
  :after (org)
  :config
  (add-hook 'org-mode-hook 'org-fragtog-mode))

(provide 'init-org)
;;; init-org.el ends here
