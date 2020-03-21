(defun my-append (xs ys)
  (if (null xs)
    ys
    (cons (car xs)
          (my-append (cdr xs) ys))))

