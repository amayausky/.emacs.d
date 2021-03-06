;;; setup-general.el -- General initialization code

;;; Commentary:

;;; Code:

;; Move custom generated stuff into a separate file
(let ((usr-custom (locate-user-emacs-file "custom.el")))
  (setq custom-file usr-custom))
(let (load custom-file))

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

;; Smaller compilation buffer
(setq compilation-window-height 14)
(defun my-compilation-hook ()
  (when (not (get-buffer-window "*compilation*"))
    (save-selected-window
      (save-excursion
        (let* ((w (split-window-vertically))
               (h (window-height w)))
          (select-window w)
          (switch-to-buffer "*compilation*")
          (shrink-window (- h compilation-window-height)))))))
(add-hook 'compilation-mode-hook 'my-compilation-hook)

;; Stop scrolling compilation window on first error
(setq compilation-scroll-output 'first-error)

;; Other Key bindings
(global-set-key (kbd "C-c C-c") 'comment-or-uncomment-region)

;; below require will auto-create `package-user-dir' if it doesn't exist.
(require 'package)
(setq package-enable-at-startup nil
      package-archives '(("melpa-stable" . "https://stable.melpa.org/packages/")
			 ("melpa"        . "https://melpa.org/packages/")
                         ("gnu"          . "https://elpa.gnu.org/packages/"))
      package-archive-priorities '(("melpa"        . 10)
				   ("melpa-stable" . 5)
				   ("gnu"          . 0)))
(package-initialize)

;; Save temp files to temp directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(provide 'setup-general)
;;; setup-general ends here
