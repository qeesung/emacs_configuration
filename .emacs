(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes
   (quote
	("25ed1d587f51389966b4bbe883b257a2f35289eb2791dcfc74624f8ee7804ad9" "c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" default)))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(ede-project-directories (quote ("c:/Users/Administrator/Desktop/testEde")))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))

;; set the line number
(global-linum-mode t)
;; disable the scroll bar
(set-scroll-bar-mode nil)  
(setq inhibit-startup-message t)  
;;(menu-bar-mode nil)  
(mouse-wheel-mode t)    

(setq default-tab-width 4)   

(setq indent-tabs-mode t)  
(setq c-indent-level 4)  
(setq c-continued-statement-offset 4)  
(setq c-brace-offset -4)  
(setq c-argdecl-indent 4)  
(setq c-label-offset -4)  
(setq c-basic-offset 4)  

(fset 'yes-or-no-p 'y-or-n-p)


(show-paren-mode t)
(setq show-paren-style 'parentheses)

(global-set-key "\C-m" 'newline-and-indent)
(global-set-key (kbd "C-<return>") 'newline)
(put 'upcase-region 'disabled nil)

;; set the default font 
(set-default-font "Monaco-12")
(set-fontset-font "fontset-default"  
                  'gb18030' ("微软雅黑" . "unicode-bmp"))

;; setting of auto complete
(add-to-list 'load-path "~/.emacs.d/lisp/auto-complete-1.3.1/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/lisp/auto-complete-1.3.1//ac-dict")
(ac-config-default)
(setq ac-auto-start 1) ;; 输入1个字符才开始补全
(global-set-key "\M-/" 'auto-complete)  ;; 补全的快捷键，用于需要提前补全
;; 选择菜单项的快捷键
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)
;; menu设置为12 lines
(setq ac-menu-height 12)

 ;; open the cedet plugin
(add-to-list 'load-path "~/.emacs.d/lisp/cedet-1.1/common")

;; Enable EDE (Project Management) features
(global-ede-mode 1)

 
;;(semantic-load-enable-excessive-code-helpers)
;;(semantic-load-enable-semantic-debugging-helpers)


(put 'set-goal-column 'disabled nil)
(put 'scroll-left 'disabled nil)

;; max the emacs while start up
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; set the emacs theme
(setq molokai-theme-kit t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/molokai-theme")
(load-theme 'molokai)
