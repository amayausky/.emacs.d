;;; setup-org-mode.el -- Installs org-mode

;;; Commentary:

;;; Code:

;; Standard key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-agenda-files (quote ("~/org"
			       "~/org/wbgb")))

(provide 'setup-org-mode)
;;; setup-org-mode ends here
