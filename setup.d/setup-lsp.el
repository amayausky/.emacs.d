;;; setup-lsp.el -- Install lsp

;;; Commentary:

;;; Code:

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :hook (go-mode . lsp-deferred))

;; Set up before-save hooks to format buffer and add/delete imports.
;; Make sure you don't have other gofmt/goimports hooks enabled.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

;; optional - provides fancier overlays
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

(provide 'setup-lsp)
;;; setup-lsp ends here
