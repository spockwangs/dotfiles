;; Enable `auto-insert-mode'.
(use-package autoinsert
  :after (yasnippet)
  ;; `:after' is not a deferring keyword. This package is not scheduled to load after `yasnippet' is
  ;; loaded, unless `:demand' is specified.
  :demand
  :preface
  (defun autoinsert-yas-expand()
    "Replace text in yasnippet template."
    (yas-expand-snippet (buffer-string) (point-min) (point-max)))
  :custom
  (auto-insert-directory "~/.emacs.d/auto-insert/")
  (auto-insert-query nil)
  :config
  (define-auto-insert "\\.\\([Hh]\\|hh\\|hpp\\)\\'" ["template.h" c++-mode autoinsert-yas-expand])
  (define-auto-insert "\\.\\(cc\\|cpp\\)\\'" ["template.cc" c++-mode autoinsert-yas-expand])
  (define-auto-insert "\\.js\\'" ["template.js" js-mode autoinsert-yas-expand])
  (define-auto-insert "\\.scala\\'" ["template.scala" scala-mode autoinsert-yas-expand])
  (define-auto-insert "\\.py\\'" ["template.py" python-mode autoinsert-yas-expand])
  (auto-insert-mode)
  (setenv "ORGANIZATION" "Tencent"))

(use-package yasnippet
  :hook
  (after-init . (lambda () (yas-global-mode 1))))

(provide 'init-auto-insert)
