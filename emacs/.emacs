;; Extensions loading and paths ;;

;; Custom path for Emacs extensions
(let ((default-directory "~/dotfiles/emacs/extensions/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Load extensions
(require 'linum-off)
(require 'magit)
(require 'whitespace)
(require 'windows-mvmt)

;; Solarized dark theme
(add-to-list 'custom-theme-load-path 
      "~/dotfiles/emacs/themes/emacs-color-theme-solarized")

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

;; Coding style ;;

;; Insert spaces instead of tabs
;;(setq-default tab-width 4)
;;(setq-default indent-tabs-mode nil)

;; Insert tabs instead of spaces
(setq-default tab-width 8)
(setq-default indent-tabs-mode t)

;; C/C++ BSD bracket style
;;(setq c-default-style "bsd"
;;      c-basic-offset 4)
(setq c++-default-style "bsd"
      c++-basic-offset 4)

;; Linux Kernel style
(setq c-default-style "linux")

;; Show line/column number in statusbar
(setq line-number-mode t)
(setq column-number-mode t)

;; Show line number in margins
(global-linum-mode t)
(setq linum-format "%d ")

;; Key remapping ;;

;; Record macros
(global-set-key [f6] 'start-kbd-macro)
(global-set-key [f7] 'end-kbd-macro)
(global-set-key [f8] 'call-last-kbd-macro)

;; Windows movements
(global-set-key (kbd "C-x p")       'back-window)
(global-set-key (kbd "ESC <up>")    'scroll-other-window-up)
(global-set-key (kbd "ESC <down>")  'scroll-other-window-down)
(global-set-key (kbd "ESC <prior>") 'scroll-other-window-page-up)
(global-set-key (kbd "ESC <next>")  'scroll-other-window-page-down)

;; Ediff in vertical mode
(custom-set-variables
 '(ediff-split-window-function (quote split-window-horizontally)))

;; Colors ;;

(custom-set-faces
;; Ediff colors
 '(ediff-current-diff-A ((t (:background "black" :foreground "brightyellow"))))
 '(ediff-current-diff-B ((t (:background "black" :foreground "brightyellow"))))
 '(ediff-current-diff-C ((t (:background "black" :foreground "brightyellow"))))
 '(ediff-fine-diff-A ((t (:background "black" :foreground "brightred"))))
 '(ediff-fine-diff-B ((t (:background "black" :foreground "green"))))
 '(ediff-fine-diff-C ((t (:background "black" :foreground "yellow"))))
 '(ediff-even-diff-A ((t (:background "brightblack" :foreground "brightgreen"))))
 '(ediff-even-diff-B ((t (:background "brightblack" :foreground "brightgreen"))))
 '(ediff-even-diff-C ((t (:background "brightblack" :foreground "brightgreen"))))
 '(ediff-odd-diff-A ((t (:background "brightblack" :foreground "brightgreen"))))
 '(ediff-odd-diff-B ((t (:background "brightblack" :foreground "brightgreen"))))
 '(ediff-odd-diff-C ((t (:background "brightblack" :foreground "brightgreen"))))

;; Line number colors
 '(linum ((t (:background "brightblack" :foreground "brightgreen"))))

;; Comment color
 '(font-lock-comment-face ((((class color) (min-colors 8) (background dark)) (:foreground "brightyellow")))))

