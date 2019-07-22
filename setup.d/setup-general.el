;;; setup-general.el -- General initialization code

;;; Commentary:

;;; Code:

;; https://www.reddit.com/r/emacs/comments/3kqt6e/2_easy_little_known_steps_to_speed_up_emacs_start/
(defvar gc-cons-threshold--orig gc-cons-threshold)
(setq gc-cons-threshold (* 100 1024 1024)) ; 100 MB before garbage collection

;; avoid using stale .elc files.
(setq load-prefer-newer t)

;; hide menu-/tool-/scroll-bars early on during loading to minimize the awkward blip before they disappear.
(when (fboundp 'menu-bar-mode)
  (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Don't load the default init file.
(setq inhibit-default-init t)

;; Startup tweaks and disable beeps.
(setq inhibit-startup-screen t
      initial-scratch-message nil
      ring-bell-function #'ignore)
(fset 'display-startup-echo-area-message #'ignore)

;; Display tweaks
(column-number-mode 1)

;; below require will auto-create `package-user-dir' if it doesn't exist.
(require 'package)
(setq package-enable-at-startup nil
      package-archives '(("stable" . "https://stable.melpa.org/packages/")
			 ("melpa"  . "https://melpa.org/packages/")
                         ("gnu"    . "https://elpa.gnu.org/packages/"))
      package-archive-priorities '(("stable" . 10)
				   ("gnu"    . 5)
				   ("melpa"  . 0)))
(package-initialize)

(provide 'setup-general)
;;; setup-general ends here
