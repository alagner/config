(setq font-size-default 16)

(defun font-size-set (points)
  "Convenience function for setting font size"
  (set-face-attribute 'default nil :height (* 10 points))
  )

(defun font-size-set-default ()
  "Set font size to font-size-default"
  (interactive nil)
  ;; TODO merge it with the above, make it interactive
  ;; and make it use default parameter
  (font-size-set font-size-default)
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
