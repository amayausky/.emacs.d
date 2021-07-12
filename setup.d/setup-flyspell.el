;;; setup-flyspell.el -- Configures flyspell

;;; Commentary:

;;; Code:

(dolist (hook '(text-mode-hook markdown-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))

(eval-after-load "flyspell"
  '(progn
     (define-key flyspell-mouse-map [down-mouse-3] #'flyspell-correct-word)
     (define-key flyspell-mouse-map [mouse-3] #'undefined)))

(provide 'setup-flyspell)

;;; setup-flyspell ends here
