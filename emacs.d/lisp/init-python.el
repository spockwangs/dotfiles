(use-package python
  :mode (("[/]BUILD\\'" . python-mode)
         ("\\.py\\'" . python-mode)
         ("\\.bzl\\'" . python-mode))
:hook ((python-mode . (lambda () (subword-mode 1))))
  :custom
  (python-indent-offset 4)
  :bind (:map python-mode-map
              ("<return>" . newline-and-indent)))

;; You should install the python package "black".
(use-package python-black
  :after python
  :demand
  :bind (:map python-mode-map
              ("C-M-\\" . python-format)))

(defun python-format ()
  (interactive)
  (if (use-region-p)
      (python-black-region (region-beginning) (region-end))
    (python-black-buffer)))

(use-package pylint
  :after python
  :demand
  :hook ((python-mode . pylint-add-key-bindings))
  :custom
  (pylint-options '("--reports=n" "--output-format=parseable" "--errors-only")))

(provide 'init-python)
