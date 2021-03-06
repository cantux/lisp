(define pythagoras 
  (lambda(a b)
    (root (+ (square a) (square b)))
    )
  )

(define root
  (lambda(a)
    (define average 
      (lambda(x y)
        (/ (+ x y) 2))
      )

    (define abs
      (lambda(x)
        (if (< x 0)
          (- x)
          x
          )
        )
      )

    (define close_enough 
      (lambda(x y sigma)
        (< (abs (- x y)) sigma)
        )
      )

    (define square
      (lambda(x)
        (* x x))
      )

    (define root_int
      (lambda(a guess)
        (if 
          (close_enough 
            a 
            (square guess)
            0.1)
          guess
          (root_int a (average guess (/ a guess)))
          )
        )
      )

    (root_int a 1.0)
    )
  )

(root 9.0)
(pythagoras 3 4)

