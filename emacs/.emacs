;; Insert spaces instead of tabs
(setq-default tab-width 4)
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
(setq-default indent-tabs-mode nil)

;; Show line/column number
(setq line-number-mode t)
(setq column-number-mode t)

;; C/C++ BSD bracket style
(setq c-default-style "bsd"
      c-basic-offset 4)
(setq c++-default-style "bsd"
      c++-basic-offset 4)

;; Record macros
(global-set-key [f6]  'start-kbd-macro)
(global-set-key [f7]  'end-kbd-macro)
(global-set-key [f8]  'call-last-kbd-macro)

;; Place all emacs temp/backup files in one directory
(defvar user-temporary-file-directory "~/.emacs-backup")
(make-directory user-temporary-file-directory t)
(setq backup-by-copying t)
(setq backup-directory-alist
      `(("." . ,user-temporary-file-directory)
        (,tramp-file-name-regexp nil)))
(setq auto-save-list-file-prefix
      (concat user-temporary-file-directory ".auto-saves-"))
(setq auto-save-file-name-transforms
      `((".*" ,user-temporary-file-directory t)))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((((class color) (min-colors 8) (background dark)) (:foreground "magenta"))))
 '(linum ((t (:inherit (shadow default) :foreground "black")))))
