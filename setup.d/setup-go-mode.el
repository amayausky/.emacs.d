;;; setup-go-mode.el -- Install go-mode

;;; Commentary:

;;; Code:

(use-package go-mode
  :ensure t)

(defun go-mode-setup ()
  (setq compile-command "echo Building... && go build -v && echo Testing... && go test -v && echo Vetting... go vet && echo Linter... && staticcheck -fail none")
  (setq compilation-read-command nil)
  (local-set-key (kbd "C-c c") 'compile))
(add-hook `go-mode-hook `go-mode-setup)

(add-hook 'go-mode-hook 'enable-tabs)

(provide 'setup-go-mode)
;;; setup-go-mode ends here
