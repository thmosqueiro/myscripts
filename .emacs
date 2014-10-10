
;; Setting the font
(custom-set-faces
 '(default ((t (:family "Mono" :foundry "unknown" :slant normal :weight normal :height 100 :width normal)))))


;; Setting a good starting size (may depend on the screen!!
(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if window-system
  (progn
    ;; use 120 char wide window for largeish displays
    ;; and smaller 80 column windows for smaller displays
    ;; pick whatever numbers make sense for you
    (add-to-list 'default-frame-alist (cons 'width 90))
    (add-to-list 'default-frame-alist (cons 'height 45))
    )))
(set-frame-size-according-to-resolution) 


;; color theme
(custom-set-variables
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (tango-dark)))
)


;; automatically enabling python mode (may be useless in
;; some distros like Fedora)
(add-to-list 'load-path "~/.emacs.d")
(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
