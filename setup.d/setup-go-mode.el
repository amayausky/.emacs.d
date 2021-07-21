;;; setup-go-mode.el -- Install go-mode

;;; Commentary:

;;; Code:

(use-package go-mode
  :ensure t)

(add-hook 'go-mode-hook 'enable-tabs)

(provide 'setup-go-mode)
;;; setup-go-mode ends here
