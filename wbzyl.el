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

(global-set-key [s-up] 'drag-line-up)
(global-set-key [s-down] 'drag-line-down)

(add-to-list 'auto-mode-alist '("\\.maruku$" . markdown-mode))

;; reset the default binding
(global-set-key (kbd "C-x h") 'mark-whole-buffer)

;; Snippets
;(add-to-list 'load-path "~/emacs.d/vendor/yasnippet")
;(require 'yasnippet)
;(yas/initialize)
;(yas/load-directory "~/emacs.d/vendor/yasnippet/snippets")

;; Ruby Electric Mode
;;(ruby-electric-mode)

;(add-to-list 'load-path (concat dotfiles-dir "vendor/color-theme))
;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-charcoal-black)
