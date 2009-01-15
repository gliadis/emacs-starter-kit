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

;; Font
(set-face-font 'default "-xos4-terminus-medium-*-100-iso10646-1")

;; Color Themes
;;(color-theme-zenburn)
;;(require 'color-theme)
;;(color-theme-blackboard)
;;(color-theme-zenburn)
;;(load-file "~/.emacs.d/themes/color-theme-blackboard.el")

;; Ruby Electric Mode
(ruby-electric-mode)


;(add-to-list 'load-path (concat dotfiles-dir "vendor/color-theme))
;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-charcoal-black)

;; Snippets
;(add-to-list 'load-path "~/emacs.d/vendor/yasnippet")
;(require 'yasnippet)
;(yas/initialize)
;(yas/load-directory "~/emacs.d/vendor/yasnippet/snippets")
