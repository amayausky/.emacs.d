;;; setup-sql.el -- Configures SQL mode

;;; Commentary:

;;; Code:

(add-hook 'sql-mode-hook 'disable-tabs)
(add-hook 'sql-mode-hook 'visualize-tabs)
(add-hook 'sql-mode-hook 'visualize-whitespace)

(provide 'setup-sql)
;;; setup-sql ends here
