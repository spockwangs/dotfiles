(require 'util)
(require 'pager)

;; Enable 'C-x <' and 'C-x >'
(put 'scroll-left 'disabled nil)
(put 'scroll-right 'disabled nil)

;; Enable "C-x n n" and "C-x n w".
(put 'narrow-to-region 'disabled nil)

;; Enable "C-x C-l".
(put 'downcase-region 'disabled nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Global Key bindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Scroll pages.
(global-set-key (kbd "C-v") 'pager-page-down)
(global-set-key (kbd "<next>") 'pager-page-down)
(global-set-key (kbd "M-v") 'pager-page-up)
(global-set-key (kbd "<prior>") 'pager-page-up)
(global-set-key (kbd "M-<up>") 'pager-row-up)

;; Scroll lines.
(global-set-key (kbd "M-<kp-8>") 'pager-row-up)
(global-set-key (kbd "M-<down>") 'pager-row-down)
(global-set-key (kbd "M-<kp-2>") 'pager-row-down)

;; Shift regions.
(global-set-key (kbd "C-<") 'util/shift-left)
(global-set-key (kbd "C->") 'util/shift-right)

;; Copy shortcuts.
(global-set-key (kbd "C-x y") 'util/copy-line)
(global-set-key (kbd "C-x w") 'util/copy-symbol)
(global-set-key (kbd "C-x M-w f") 'util/copy-current-file-name)
(global-set-key (kbd "C-x M-w d") 'util/copy-current-directory)
(global-set-key (kbd "C-x M-w p") 'util/copy-current-path)

;; Cycle through buffer list.  Require "yic-buffer.el".
(global-set-key "\C-x\C-p" 'bury-buffer)
(global-set-key "\C-x\C-n" 'yic-next-buffer)

;; Set file local variable `coding' to utf-8-unix.
(global-set-key
 "\C-xc"
 (lambda ()
   "Set file local variable `coding' to utf-8-unix at the first line."
   (interactive)
   (save-excursion (add-file-local-variable-prop-line 'coding 'utf-8-unix))))

(global-set-key (kbd "M-q") 'util/fill)

(global-set-key (kbd "M-/") 'hippie-expand)
(setq hippie-expand-try-functions-list
      '(try-expand-dabbrev
        try-expand-dabbrev-visible
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-all-abbrevs
        try-expand-list
        try-expand-line
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol))

(global-set-key (kbd "C-x M-d") 'insert-current-date)
(global-set-key (kbd "C-x M-t") 'insert-current-time)

;; Bind function keys
(define-key global-map (kbd "<f2>") 'set-mark-command)
(define-key global-map (kbd "<f3>") 'revert-buffer)
(define-key global-map (kbd "<f5>") 'undo)
(require 'redo+)
(define-key global-map (kbd "S-<f5>") 'redo)
(define-key global-map (kbd "<f6>") 'pop-to-mark-command)
(define-key global-map (kbd "S-<f6>") (lambda () (interactive) (push-mark)))
(define-key global-map (kbd "<f7>") 'ispell)
;(define-key global-map (kbd "<f8>") 'dired)
(define-key global-map (kbd "<f9>") 'goto-line)
(define-key global-map (kbd "S-<f9>") 'goto-char)

(provide 'init-key-bindings)
