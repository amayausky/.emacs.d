;;; setup-flycheck.el -- Install flycheck

;;; Commentary:

;;; Code:

(use-package flycheck
  :ensure t
  :config
  (global-flycheck-mode)
  :diminish flycheck-mode)

(provide 'setup-flycheck)
;;; setup-flycheck ends here
