(use-package counsel
  :diminish counsel-mode
  :config
  (counsel-mode 1))

(use-package counsel-projectile
  :after projectile counsel
  :config
  (counsel-projectile-mode 1))

(use-package ivy :ensure t
  :diminish ivy-mode
  :init
  (ivy-mode 1)
  :config
  (setq ivy-height 20))

(global-set-key "\C-s" 'swiper)

(provide 'setup-ivy)
