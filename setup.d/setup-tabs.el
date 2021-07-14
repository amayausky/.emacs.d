;;; setup-tabs.el -- Configuration for tabs

;;; Commentary:
;; Sourced from https://dougie.io/emacs/indentation/

;;; Code:

;; Create a variable for our preferred tab width
(setq custom-tab-width 2)

;; Two callable functions for enabling/disabling tabs in Emacs
(defun disable-tabs ()
  (setq indent-tabs-mode nil)
  (setq tab-width custom-tab-width)
  (setq indent-line-function 'insert-tab))
(defun enable-tabs  ()
  (local-set-key (kbd "TAB") 'tab-to-tab-stop)
  (setq indent-tabs-mode t)
  (setq tab-width custom-tab-width))

;; Making electric-indent behave sanely
(setq-default electric-indent-inhibit t)

;; Make the backspace properly erase the tab instead of
;; removing 1 space at a time.
(setq backward-delete-char-untabify-method 'hungry)

;; Visualize tabs as a pipe character - "|"
;; This will also show trailing characters as they are useful to spot.
(setq whitespace-style '(face tabs tab-mark trailing))
(custom-set-faces
 '(whitespace-tab ((t (:foreground "#636363")))))
(setq whitespace-display-mappings
  '((tab-mark 9 [124 9] [92 9]))) ; 124 is the ascii ID for '\|'
(global-whitespace-mode) ; Enable whitespace mode everywhere

(provide 'setup-tabs)
;;; setup-tabs ends here
