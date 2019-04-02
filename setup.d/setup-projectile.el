;;; setup-projectile.el -- Installs projectile with counsel support

;;; Commentary:

;;; Code:

(use-package projectile
  :after ivy
  :diminish projectile-mode
  :config
  (projectile-mode +1)
  (setq projectile-completion-system 'ivy)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(provide 'setup-projectile)
;;; setup-projectile ends here
