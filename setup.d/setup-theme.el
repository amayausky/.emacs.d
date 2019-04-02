;;; setup-theme.el -- Installs a theme

;;; Commentary:

;;; Code:

(use-package abyss-theme
  :ensure t
  :config
  (load-theme 'abyss 'no-confirm))

(provide 'setup-theme)
;;; setup-theme ends here
