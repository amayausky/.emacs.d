;;; setup-company.el -- Install company

;;; Commentary:

;;; Code:

(use-package company
  :ensure t
  :config
  (setq company-echo-delay 0
        company-idle-delay 0
        company-minimum-prefix-length 1)
  :diminish company-mode)

(provide 'setup-company)
;;; setup-company ends here
