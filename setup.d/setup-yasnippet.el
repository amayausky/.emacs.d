;;; setup-yasnippet.el -- Install yasnippet

;;; Commentary:

;;; Code:

(use-package yasnippet
  :ensure t
  :commands yas-minor-mode
  :hook (go-mode . yas-minor-mode))

(provide 'setup-yasnippet)
;;; setup-yasnippet ends here
