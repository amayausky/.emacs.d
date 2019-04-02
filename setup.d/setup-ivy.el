;;; setup-ivy.el -- Installs ivy

;;; Commentary:

;;; Code:

(use-package ivy :ensure t
  :diminish ivy-mode
  :init
  (ivy-mode 1)
  :config
  (setq ivy-height 20))

(global-set-key "\C-s" 'swiper)

(provide 'setup-ivy)
;;; setup-ivy ends here
