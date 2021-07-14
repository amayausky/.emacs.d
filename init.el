;;; init.el --- Initialization file

;;; Commentary:

;;; Code:

(add-to-list 'load-path (concat user-emacs-directory "setup.d/"))

;; general, non-package specific setup
(require 'setup-general)
(require 'setup-tabs)

;; install use-package
(require 'setup-use-package)

;; load and setup packages here
(require 'setup-nlinum)
(require 'setup-exec-path-from-shell)
(require 'setup-theme)
(require 'setup-flycheck)
(require 'setup-yasnippet)
(require 'setup-company)
(require 'setup-lsp)
(require 'setup-go-mode)
(require 'setup-yaml-mode)
(require 'setup-json-mode)
(require 'setup-markdown-mode)
(require 'setup-magit)
(require 'setup-ivy)
(require 'setup-counsel)
(require 'setup-projectile)
(require 'setup-ace-window)
(require 'setup-org-mode)
(require 'setup-flyspell)

(provide 'init)
;;; init.el ends here

