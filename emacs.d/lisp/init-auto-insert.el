;; Enable `auto-insert-mode'.
(use-package autoinsert
  :after (yasnippet)
  :init
  (setq auto-insert-directory "~/.emacs.d/auto-insert/")
  (setq auto-insert-query nil)
  (auto-insert-mode)
  :config
  (define-auto-insert "\\.\\([Hh]\\|hh\\|hpp\\)\\'" ["template.h" c++-mode autoinsert-yas-expand])
  (define-auto-insert "\\.\\(cc\\|cpp\\)\\'" ["template.cc" c++-mode autoinsert-yas-expand])
  (define-auto-insert "\\.js\\'" ["template.js" js-mode autoinsert-yas-expand])
  (define-auto-insert "\\.scala\\'" ["template.scala" scala-mode autoinsert-yas-expand])
  (define-auto-insert "\\.py\\'" ["template.py" python-mode autoinsert-yas-expand]))

(defun autoinsert-yas-expand()
  "Replace text in yasnippet template."
  (yas-expand-snippet (buffer-string) (point-min) (point-max)))

(use-package yasnippet
  :ensure t
  :init
  (yas-global-mode 1))

(provide 'init-auto-insert)
