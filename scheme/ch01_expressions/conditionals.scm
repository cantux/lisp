(define (>= x y)
  (or (= x y) (> x y))
  )

(define (abs x)
  (cond 
    ((< x 0) (- x))
    ((>= x 0) x)
    )
  )

(define (abs_if x)
  (if (< x 0)
    (- x)
    x)
  )


(= (abs -10) 10)
(= (abs 10) 10)
(= (abs 0) 0)

(= (abs_if -10) 10)
(= (abs_if 10) 10)
(= (abs_if 0) 0)
