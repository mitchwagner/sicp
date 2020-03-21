(defun len(ls)
  (if (null ls)
    0
    (+ 1 (length (cdr ls)))))
