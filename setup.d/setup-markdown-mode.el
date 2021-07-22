;;; setup-markdown-mode.el -- Installs markdown-mode

;;; Commentary:

;;; Code:

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
	 ("\\.md\\'" . markdown-mode)
	 ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "markdown"))

(provide 'setup-markdown-mode)
;;; setup-markdown-mode ends here
