(setq font-size-default 16)

(defun font-size-set ( &optional  points )
"Convenience function for setting font size to POINTS.
Default value taken from variable font-size-default."
(interactive
  (list (string-to-number (read-string "Size: " (number-to-string font-size-default))))
)
  (unless points (setq points font-size-default))
  (set-face-attribute 'default nil :height (* 10 points))
)


(defun font-size-increment ()
"Increase font size by one point"
(interactive nil)
  (let ((current-size (/ (face-attribute 'default :height) 10)  ))
    (font-size-set (+ current-size 1))
  )
)


(defun font-size-decrement ()
"Increase font size by one point"
(interactive nil)
  (let ((current-size (/ (face-attribute 'default :height) 10)  ))
    (font-size-set (- current-size 1))
  )
)

(provide 'font-size)

