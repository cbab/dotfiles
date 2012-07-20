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

;; Line numbers
(global-linum-mode t)
(setq linum-format "%d ")

;; Custom path for Emacs extensions
(let ((default-directory "~/dotfiles/emacs/extensions/"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'linum-off)
(require 'magit)

;; Custom path for themes
;; FIXME: Should not reference dotfiles directly...
(add-to-list 'custom-theme-load-path "~/dotfiles/emacs/themes/emacs-color-theme-solarized")

;; Solarized dark theme
(load-theme 'solarized-dark t)

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

(defun back-window ()
  (interactive)
  (other-window -1))

(defun scroll-other-window-up ()
  "Scroll the other window one line up."
  (interactive)
  (scroll-other-window -1)
)

(defun scroll-other-window-page-up ()
  "Scroll the other window one page up."
  (interactive)
  (scroll-other-window -30)
)

(defun scroll-other-window-down ()
  "Scroll the other window one line down."
  (interactive)
  (scroll-other-window 1)
)

(defun scroll-other-window-page-down ()
  "Scroll the other window one page down."
  (interactive)
  (scroll-other-window 30)
)

;; Key remapping
(global-set-key (kbd "C-x p") 'back-window)
(global-set-key (kbd "ESC <up>") 'scroll-other-window-up)
(global-set-key (kbd "ESC <down>") 'scroll-other-window-down)
(global-set-key (kbd "ESC <prior>") 'scroll-other-window-page-up)
(global-set-key (kbd "ESC <next>") 'scroll-other-window-page-down)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" default)))
 '(ediff-split-window-function (quote split-window-horizontally)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ediff-current-diff-A ((t (:background "black" :foreground "brightyellow"))))
 '(ediff-current-diff-B ((t (:background "black" :foreground "brightyellow"))))
 '(ediff-fine-diff-A ((t (:background "black" :foreground "brightred"))))
 '(ediff-fine-diff-B ((t (:background "black" :foreground "green"))))
 '(ediff-odd-diff-A ((t (:background "brightblack" :foreground "brightgreen"))))
 '(ediff-odd-diff-B ((t (:background "brightblack" :foreground "brightgreen"))))
 '(linum ((t (:background "brightblack" :foreground "brightgreen"))))
 '(font-lock-comment-face ((((class color) (min-colors 8) (background dark)) (:foreground "brightyellow")))))

