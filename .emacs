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
	("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "b04425cc726711a6c91e8ebc20cf5a3927160681941e06bc7900a5a5bfe1a77f" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "25ed1d587f51389966b4bbe883b257a2f35289eb2791dcfc74624f8ee7804ad9" "c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" default)))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(ede-project-directories (quote ("c:/Users/Administrator/Desktop/testEde")))
 '(electric-pair-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
;; (custom-set-faces			  
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; '(default ((t (:family "Monaco" :foundry "outline" :slant normal :weight normal :height 120 :width normal))))) 

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
(set-default-font "Consolas-12")

(set-fontset-font "fontset-default"  					 
                  'gb18030' ("微软雅黑" . "unicode-bmp"))
(setq face-font-rescale-alist '(("微软雅黑" . 1.15) ("Microsoft Yahei" . 1.2) ("WenQuanYi Zen Hei" . 1.2)))



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
;(setq molokai-theme-kit t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/molokai-theme")
										;(load-theme 'molokai)



;; change the way that emacs move over a word
(load-file "~/.emacs.d/lisp/syntax-subword.el")
(global-syntax-subword-mode 1)

;; load the yasnippet
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;;; auto complete mod
;;; should be loaded after yasnippet so that they can work together
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
;(ac-set-trigger-key "TAB")
;(ac-set-trigger-key "<tab>")

(setq ac-source-yasnippet nil)

(require 'package) 
(setq package-archives 
      '(("gnu" . "http://elpa.gnu.org/packages/") 
        ("melpa" . "http://melpa.org/packages/"))) 
(package-initialize) 


;; install the multiple-cursors
(require 'multiple-cursors)

;; config the multiple-cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; enable the smex
(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
										; when Smex is auto-initialized on its first run.

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


;;
;; ace jump mode major function
;; 
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
;; you can select the key you prefer to
;(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-c l") 'ace-jump-line-mode)

;; 
;; enable a more powerful jump back function from ace jump mode
;;
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
;(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)


;; enable the helm plugin
(require 'helm)
(require 'helm-config)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t)

(helm-mode 1)

;; bind the key for helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(when (executable-find "ack-grep")
  (setq helm-grep-default-command "ack-grep -Hn --no-group --no-color %e %p %f"
        helm-grep-default-recurse-command "ack-grep -H --no-group --no-color %e %p %f"))
(global-set-key (kbd "C-c h o") 'helm-occur)
(global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)

;; select a line quickly

;; select a line quickly
(transient-mark-mode 1)

(defun select-current-line ()
  "Select the current line"
  (interactive)
  (end-of-line) ; move to end of line
  (set-mark (line-beginning-position)))

(global-set-key (kbd "C-;") 'select-current-line)

;; deal the problem that yassnippets and tab
;; Remove Yasnippet's default tab key binding
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)


;; Set Yasnippet's key binding to shift+tab					 
(define-key yas-minor-mode-map (kbd "<backtab>") 'yas-expand) 
;; Alternatively use Control-c + tab							 
(define-key yas-minor-mode-map (kbd "\C-c TAB") 'yas-expand)


;; define my own find and grep exe file in windows
(setq find-program "\"C:/cygwin64/bin/find.exe\"")
(setq grep-program "\"C:/cygwin64/bin/grep.exe\"")

;; set the proxy for package control
(setq url-proxy-services
   '(("no_proxy" . "^\\(localhost\\|10.*\\)")
     ("http" . "10.70.13.66:3128")
     ("https" . "10.70.13.66:3128")))


;; bind the C-x o to ace window
(global-set-key (kbd "C-x o") 'ace-window)


;; load the ace jump plugins in shell mode
(defun my-shell-hook ()
  (define-key shell-mode-map (kbd "C-c SPC") 'ace-jump-mode))

(add-hook 'shell-mode-hook 'my-shell-hook)

;; add the support for the emacs powerline
;(require 'powerline)
;(powerline-default-theme)

;(sml/setup)
;(setq sml/theme 'dark)
;(custom-set-faces
; ;; custom-set-faces was added by Custom.
; ;; If you edit it by hand, you could mess it up, so be careful.
; ;; Your init file should contain only one such instance.
; ;; If there is more than one, they won't work right.
; )


;; config the default js mode to js2-mode
(add-to-list 'auto-mode-alist (cons (rx ".js" eos) 'js2-mode))
(add-hook 'js2-mode-hook 'ac-js2-mode)
(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)

(setq ac-js2-evaluate-calls t)

;; add the ztree
(require 'ztree)

;; add the anzu-mode require
(global-anzu-mode +1)
(global-set-key (kbd "M-%") 'anzu-query-replace)
(global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)


;; enable the flaycheck mode
(global-flycheck-mode)

;; config the emmet mode
(require 'emmet-mode)


;; require the config
(require 'helm-swoop)

;; Change the keybinds to whatever you like :)
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)



;; enbale the indeng duide
(require 'indent-guide)
(indent-guide-global-mode)

(load-theme 'spacemacs-dark)

; add the support for the emacs powerline
;(require 'cl);
;(add-to-list 'load-path "~/.emacs.d/vendor/emacs-powerline")
;(require 'powerline)
(load-file "c:/users/q00354346/.emacs.d/vender/emacs-powerline/powerline.el")
(setq powerline-arrow-shape 'arrow)   ;; give your mode-line curves
(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "#9370DB" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#339966" :box nil)))))

