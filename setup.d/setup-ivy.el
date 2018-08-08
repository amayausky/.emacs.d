(use-package counsel
  :config
  (counsel-mode 1))

(use-package counsel-projectile
  :after projectile counsel
  :config
  (counsel-projectile-mode 1))

(ivy-mode 1)

(global-set-key "\C-s" 'swiper)

(provide 'setup-ivy)
