;;; setup-use-package.el -- Installs use-package

;;; Commentary:

;;; Code:

;; install/setup use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

(setq use-package-always-ensure t)

(provide 'setup-use-package)
;;; setup-use-package ends here
