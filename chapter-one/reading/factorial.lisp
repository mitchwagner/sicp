;; Linear recursive implementation of factorial
;; Notes:
;; - I improved it- now it handles 0!
;; - This is a terrific example of the terrifying flexibility and
;;   comparative military discipline of Lisp and Haskell respectively.
;;   In Haskell, necessity to handle all cases would preclude compilation.
(defun fact-recursive (n)
  (cond ((= n 0) 1)
        ((= n 1) 1)
        (t (* n (fact-recursive (- n 1))))))

;; Linear iterative implementation of factorial
(defun fact-iter (product counter max-count)
  (if (> counter max-count)
    product
    (fact-iter (* product counter)
               (+ counter 1)
               max-count)))

(defun fact-iterative (n)
  (fact-iter 1 1 n))
