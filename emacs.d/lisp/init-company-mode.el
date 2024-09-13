(use-package company
  :hook (after-init . global-company-mode)
  :custom
  (company-tooltip-align-annotations t "注释贴右侧对齐")
  (company-tooltip-limit 20 "菜单里可选项数量")
  (company-show-numbers t "显示编号（然后可以用 M-数字 快速选定某一项）")
  (company-idle-delay .4 "延时多少秒后弹出")
  (company-minimum-prefix-length 3 "至少几个字符后开始补全")
  :config
  ;; Delete the backends not supported yet.
  (setq company-backends (delete 'company-clang company-backends)))

(provide 'init-company-mode)
