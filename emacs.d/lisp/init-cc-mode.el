(use-package cc-mode
  :mode (("\\.h\\'" . c++-mode)
         ("\\.c\\'" . c-mode)
         ("\\.cpp\\'" . c++-mode)
         ("\\.cc\\'" . c++-mode)
         ("\\.java\\'" . java-mode))
  :bind (:map c-mode-base-map
              ("<return>" . newline-and-indent)
              ("M-q" . c-fill-paragraph)
              ("C-M-\\" . clang-format)
              ("C-c C-b" . patch-build))
  :hook ((c-mode-common . (lambda ()
                            (subword-mode 1)
                            (turn-on-auto-fill)
                            (c-toggle-auto-newline -1)))
         (java-mode . (lambda ()
                        (c-set-style "java"))))
  :config
  (require 'clang-format)
  (require 'spock-c-style))

(use-package spock-c-style
  :ensure nil
  :hook (c-mode-common . spock-set-c-style))

(defun patch-build (target)
  "Use patchbuild to build a target."
  (interactive "sBuild target: ")
  (require 'bazel)
  (let ((package-directory (bazel--package-directory (buffer-file-name) (bazel--workspace-root (buffer-file-name))))
        (buffer (get-buffer-create (concat "*Build: " target "*"))))
    (with-current-buffer buffer
      (setq-local default-directory package-directory)
      (setq-local buffer-read-only nil)
      (erase-buffer)
      (setq-local buffer-read-only t))
    (make-comint-in-buffer "patchbuild" buffer "patchbuild" nil
                           "build" "--include-commit" "--gcc-version" "gcc7" (concat ":" target))
    (pop-to-buffer buffer)))

(provide 'init-cc-mode)
