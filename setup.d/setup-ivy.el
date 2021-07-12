;;; setup-ivy.el -- Installs ivy

;;; Commentary:

;;; Code:

(use-package ivy :ensure t
  :diminish ivy-mode
  :init
  (ivy-mode 1)
  :config
  (setq ivy-height 20))

; Standard commands
(global-set-key (kbd "C-s") 'swiper-isearch)
(global-set-key (kbd "C-c v") 'ivy-push-view)
(global-set-key (kbd "C-c V") 'ivy-pop-view)

; Ivy resume
(global-set-key (kbd "C-c C-r") 'ivy-resume)

(provide 'setup-ivy)
;;; setup-ivy ends here
