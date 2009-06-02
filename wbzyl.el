;; Minor modes
(column-number-mode)
(color-theme-blackboard)
;;(color-theme-zenburn)

;; Disable sup/sub script raising/lowering
;;(eval-after-load "tex-mode" '(fset 'tex-font-lock-suscript 'ignore))
(eval-after-load 'tex-mode
  '(progn
     (fset 'tex-font-lock-suscript 'ignore)))

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

;; old syntax
;;(global-set-key [s-up] 'drag-line-up)
;;(global-set-key [s-down] 'drag-line-down)
;;(global-set-key [f12] 'delete-window)
;;(global-set-key [s-left] 'delete-window)

(global-set-key [(s up)] 'drag-line-up)
(global-set-key [(s down)] 'drag-line-down)

(global-set-key [(s ?h)] 'ucs-insert)
(global-set-key [(s ?-)] '(lambda () (interactive) (ucs-insert "2013"))) ; półpauza
(global-set-key [(s ?=)] '(lambda () (interactive) (ucs-insert "2014"))) ; pauza
(global-set-key [(s ?.)] '(lambda () (interactive) (ucs-insert "2026"))) ; wielokropek

(global-set-key [(s ?,)] '(lambda () (interactive) (ucs-insert "201e"))) ; „
(global-set-key [(s ?')] '(lambda () (interactive) (ucs-insert "201d"))) ; ”

(global-set-key [(s ?[)] '(lambda () (interactive) (ucs-insert "00ab"))) ; «
(global-set-key [(s ?])] '(lambda () (interactive) (ucs-insert "00bb"))) ; »

(global-set-key [(s ?])] '(lambda () (interactive) (ucs-insert "2030"))) ; ‰

;;(global-set-key [(control shift ...)] '...)

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

(server-start)
