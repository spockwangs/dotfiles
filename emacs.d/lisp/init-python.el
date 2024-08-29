(use-package python
  :mode (("[/]BUILD\\'" . python-mode)
         ("\\.py\\'" . python-mode))
  :config
  (subword-mode 1)
  (setq python-indent-offset 4)
  :bind (:map python-mode-map
              ("<return>" . newline-and-indent)))

;; You should install the python package "black".
(use-package python-black
  :after python
  :bind (:map python-mode-map
              ("C-M-\\" . python-format)))

(defun python-format ()
  (interactive)
  (if (use-region-p)
      (python-black-region (region-beginning) (region-end))
    (python-black-buffer)))

(provide 'init-python)
