;;; setup-ace-window.el -- Installs ace-window

;;; Commentary:

;;; Code:

(use-package ace-window
  :ensure t
  :bind (([remap other-window] . ace-window)))

(use-package ace-jump-mode
  :ensure t
  :bind (("C-c SPC" . ace-jump-mode)))

(provide 'setup-ace-window)
;;; setup-ace-window ends here
