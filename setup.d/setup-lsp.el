;;; setup-lsp.el -- Install lsp

;;; Commentary:

;;; Code:

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :ensure t)

;; optional - provides fancier overlays
(use-package lsp-ui
  :commands lsp-ui-mode
  :ensure t)

;; if you use company-mode for completion (otherwise, complete-at-point works out of the box):
(use-package company-lsp
  :commands company-lsp
  :ensure t)

(provide 'setup-lsp)
;;; setup-lsp ends here
