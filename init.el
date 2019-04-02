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
(require 'setup-company)
(require 'setup-go-mode)
(require 'setup-yaml-mode)
(require 'setup-json-mode)
(require 'setup-markdown-mode)
(require 'setup-magit)
(require 'setup-ivy)
(require 'setup-counsel)
(require 'setup-projectile)
(require 'setup-ace-window)

(provide 'init)
;;; init.el ends here
