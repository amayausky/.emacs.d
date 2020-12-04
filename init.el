;;; init.el --- Initialization file

;;; Commentary:

;;; Code:

(add-to-list 'load-path (concat user-emacs-directory "setup.d/"))

;; general, non-package specific setup
(require 'setup-general)

;; install use-package
(require 'setup-use-package)

;; load and setup packages here
(require 'setup-nlinum)
(require 'setup-diminish)
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
(require 'setup-plantuml-mode)

(provide 'init)
;;; init.el ends here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(plantuml-mode ace-jump-mode ace-window projectile counsel ivy magit json-mode yaml-mode go-rename go-guru rats go-errcheck go-eldoc company-go company-lsp lsp-ui lsp-mode company yasnippet flycheck-color-mode-line flycheck abyss-theme exec-path-from-shell diminish nlinum auto-package-update use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
