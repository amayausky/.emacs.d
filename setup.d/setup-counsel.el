;;; setup-counsel.el -- Installs counsel

;;; Commentary:

;;; Code:

(use-package counsel
  :ensure t
  :diminish counsel-mode
  :init
  (ivy-mode 1)
  (counsel-mode 1)
  :config
  (setq ivy-height 20)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) "))

; Standard commands
(global-set-key (kbd "C-s") 'swiper-isearch)
(global-set-key (kbd "C-c v") 'ivy-push-view)
(global-set-key (kbd "C-c V") 'ivy-pop-view)

; Ivy resume
(global-set-key (kbd "C-c C-r") 'ivy-resume)

; Standard commands
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x b") 'counsel-switch-buffer)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "M-y") 'counsel-yank-pop)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "<f2> j") 'counsel-set-variable)

; Shell and system tools
(global-set-key (kbd "C-c c") 'counsel-compile)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c L") 'counsel-git-log)
(global-set-key (kbd "C-c k") 'counsel-rg)
(global-set-key (kbd "C-c n") 'counsel-fzf)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-c J") 'counsel-file-jump)

; Other commands
(global-set-key (kbd "C-c b") 'counsel-bookmark)
(global-set-key (kbd "C-c d") 'counsel-descbinds)
(global-set-key (kbd "C-c o") 'counsel-outline)
(global-set-key (kbd "C-c t") 'counsel-load-theme)
(global-set-key (kbd "C-c F") 'counsel-org-file)

(provide 'setup-counsel)
;;; setup-counsel ends here
