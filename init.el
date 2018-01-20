;; load folder containing additional setup files
(add-to-list 'load-path (concat user-emacs-directory "setup.d/"))

;; general, non-package specific setup
(require 'setup-general)
