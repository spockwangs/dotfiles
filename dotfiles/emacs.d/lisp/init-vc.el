(require 'vc)
(defun my-vc-dir (dir)
  (interactive
   (list (file-truename (read-directory-name "VC status for directory:"
                                             default-directory nil t nil))))
  (vc-dir dir))
    
(global-set-key (kbd "C-x v d") 'my-vc-dir)
(provide 'init-vc)
