;;; setup-go-mode.el -- Install go-mode

;;; Commentary:

;;; Code:

(use-package company-go
  :ensure t)

(use-package go-eldoc
  :ensure t)

;; go get -u github.com/kisielk/errcheck
(use-package go-errcheck
  :ensure t)

(use-package rats
  :ensure t
  :diminish rats-mode)

;; go get golang.org/x/tools/cmd/guru
(use-package go-guru
  :ensure t)

;; go get golang.org/x/tools/cmd/gorename
(use-package go-rename
  :ensure t)

(defun go-mode-hook ()
  (setq tab-width 4)
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save)
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
	   "go vet && govendor install +vendor ./..."))
  (add-to-list 'company-backends 'company-go)
  (company-mode)
  (rats-mode)
  (go-eldoc-setup)
  (go-guru-hl-identifier-mode))

;; go get github.com/mdempsky/gocode
;; go get golang.org/x/tools/cmd/goimports
(use-package go-mode
  :ensure t
  :config
  (add-hook 'go-mode-hook 'go-mode-hook))

(add-hook 'go-mode-hook #'lsp-deferred)

(provide 'setup-go-mode)
;;; setup-go-mode ends here
