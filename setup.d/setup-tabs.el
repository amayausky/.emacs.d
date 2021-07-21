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

;; Visualize tabs as a pipe character - "|"
(defun visualize-tabs ()
  (setq whitespace-style '(face tabs tab-mark trailing))
  (custom-set-faces
   '(whitespace-tab ((t (:foreground "#636363"))))))

;; This will also show trailing characters as they are useful to spot.
(defun visualize-whitespace ()
  (setq whitespace-display-mappings
	'((tab-mark 9 [124 9] [92 9]))) ; 124 is the ascii ID for '\|'
  (global-whitespace-mode)) ; Enable whitespace mode everywhere

;; Make the backspace properly erase the tab instead of
;; removing 1 space at a time.
(setq backward-delete-char-untabify-method 'hungry)

(provide 'setup-tabs)
;;; setup-tabs ends here
