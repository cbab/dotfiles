;; windows.el
;; Custom window movement.
;; Separated in useful functions for easy key remapping.

(provide 'windows-mvmt)

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
