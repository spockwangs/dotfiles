(use-package js
  :ensure nil
  :after json
  :config
  (setq json-encoding-default-indentation "    ")
  :bind (:map js-json-mode-map
              ("C-M-\\" . json-format)))

(defun json-format ()
  (interactive)
  (if (use-region-p)
      (json-pretty-print (region-beginning) (region-end))
    (json-pretty-print (point-min) (point-max))))

(provide 'init-json)
