;; 关闭工具栏， tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)
;; 关闭文件滑动控件
(scroll-bar-mode -1)
;; 显示行号
(global-linum-mode 1)
;; 关闭帮助页面
(setq inhibit-splash-screen 1)
;; 更改显示字体为 16pt
(set-face-attribute 'default nil :height 160')
;; 更改光标样式
(setq-default cursor-type 'bar)
;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el")
;; 这一行代码，将函数open-init-file 绑定到<f2>键上
(global-set-key (kdb "<f2">)  'open-init-file)
		  
 
