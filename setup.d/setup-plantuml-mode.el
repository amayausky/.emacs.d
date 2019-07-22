;;; setup-plantuml-mode.el -- Install plantuml-mode

;;; Commentary:

;;; Code:

;; plantuml-jar-path defaults to ~/plantuml.jar
(use-package plantuml-mode
  :ensure t
  :config
  (setq plantuml-jar-path "/usr/local/bin/plantuml"
	plantuml-default-exec-mode "jar")
  (add-to-list 'auto-mode-alist '("\\.uml\\'" . plantuml-mode))
  (add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode)))

(provide 'setup-plantuml-mode)
;;; setup-plantuml-mode ends here
