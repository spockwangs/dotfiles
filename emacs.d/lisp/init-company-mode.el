(use-package company
  :hook (after-init . global-company-mode)
  :custom
  (company-tooltip-align-annotations t "注释贴右侧对齐")
  (company-tooltip-limit 10 "菜单里可选项数量")
  (company-show-numbers t "显示编号（然后可以用 M-数字 快速选定某一项）")
  (company-idle-delay .4 "延时多少秒后弹出")
  (company-minimum-prefix-length 3 "至少几个字符后开始补全")
  (company-dabbrev-downcase nil)
  (company-dabbrev-minimum-length 1)
  (company-backends '((company-dabbrev-code :with company-capf company-keywords) company-files company-oddmuse)))

(provide 'init-company-mode)
