(defun json-format ()
  "Format the region if any, or the buffer as JSON."
  (interactive)
  (if (use-region-p)
      (json-pretty-print (region-beginning) (region-end))
    (json-pretty-print (point-min) (point-max))))

(use-package json
  :commands (json-pretty-print)
  :config
  (setq json-encoding-default-indentation "    "))

(use-package yafolding)

(use-package js
  :ensure nil
  :mode (("\\.json\\'" . js-json-mode))
  :hook ((js-json-mode . (lambda () (yafolding-mode)))
         (js-mode . (lambda ()
                      (subword-mode 1)
                      (turn-on-auto-fill))))
  :bind (:map js-json-mode-map
              ("C-M-\\" . json-format)
              :map js-mode-map
              ([(return)] . newline-and-indent)))

(provide 'init-javascript)
