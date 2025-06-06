(use-package gtags-mode)

(use-package cc-mode
  :bind (:map c-mode-base-map
              ("<return>" . newline-and-indent)
              ("M-q" . c-fill-paragraph)
              ("C-M-\\" . clang-format)
              ("C-c C-b" . compile-under-directory))
  :hook ((c-mode-common . (lambda ()
                            (subword-mode 1)
                            (turn-on-auto-fill)
                            (c-toggle-auto-newline -1)
                            (setq clang-format-fallback-style "Google")
                            (when (fboundp 'company-complete)
                              (add-hook 'completion-at-point-functions #'company-complete nil 'local))
                            (cond ((locate-dominating-file default-directory "GTAGS")
                                   (gtags-mode))
                                  ((locate-dominating-file default-directory "compile_commands.json")
                                   (require 'eglot)
                                   (eglot-ensure)))))
         (java-mode . (lambda ()
                        (c-set-style "java"))))
  :config
  (require 'clang-format)
  (require 'spock-c-style))

(use-package spock-c-style
  :ensure nil
  :hook (c-mode-common . spock-set-c-style))

(defun read-directory ()
  (let* ((package-directory (progn (require 'bazel)
                                   (bazel--package-directory
                                    (buffer-file-name)
                                    (bazel--workspace-root (buffer-file-name)))))
         (init-dir (or package-directory default-directory)))
    (read-from-minibuffer "Directory: " init-dir)))

(defun compile-under-directory (directory)
  "Prompt to run a command under specified directory."
  (interactive (list (read-directory)))
  (let ((default-directory directory))
    ;; Copy from the buffer-local value, which may be set in per-directory settings.
    (setq-default compilation-search-path compilation-search-path)
    (call-interactively 'compile)))

(provide 'init-cc-mode)
