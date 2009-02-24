;; Minor modes
(column-number-mode)

;; Scrolling
(defun drag-line-up ()
  "Scroll current line one line up."
  (interactive)
  (scroll-up 1))
(defun drag-line-down ()
  "Scroll current line one line down."
  (interactive)
  (scroll-down 1))
(defun line-to-top-of-window ()
  "Scroll current line to top of window."
  (interactive)
  (recenter 0))

;; My key bindings
(global-set-key [s-up] 'drag-line-up)
(global-set-key [s-down] 'drag-line-down)
(global-set-key [f12] 'delete-window)
(global-set-key [s-left] 'delete-window)

;; Reset the default binding
(global-set-key (kbd "C-x C-h") 'mark-whole-buffer)
;;(global-set-key (kbd "M-q") 'fill-paragraph)

;; Bug in Ruby (Electric)? Mode
(defun ruby-insert-end ()
  "Insert \"end\" at point and reindent current line."
  (interactive)
  (insert "end")
  (ruby-indent-line t)
  (end-of-line))
