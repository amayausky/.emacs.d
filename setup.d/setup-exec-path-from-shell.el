;;; setup-exec-path-from-shell.el -- Installs exec-path-from-shell

;;; Commentary:

;;; Code:

(use-package exec-path-from-shell
  :ensure t
  :config
  (setq
   exec-path-from-shell-variables '("PATH"))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))

(provide 'setup-exec-path-from-shell)
;;; setup-exec-path-from-shell ends here
