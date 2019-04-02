;;; setup-flycheck.el -- Install flycheck

;;; Commentary:

;;; Code:

(use-package flycheck
  :ensure t
  :config
  (global-flycheck-mode)
  :diminish flycheck-mode)

(use-package flycheck-color-mode-line
  :ensure t
  :config
  (add-hook 'flycheck-mode-hook #'flycheck-color-mode-line-mode))

(provide 'setup-flycheck)
;;; setup-flycheck ends here
