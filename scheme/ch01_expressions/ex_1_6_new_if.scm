; here we see the difference between the special form if clause between a procedure
;
; assume we created our if procedure

(define new-if 
  (lambda(predicate then_clause else_clause)
    (cond 
      (predicate then_clause)
      (else else_clause)
      )
    )
  )

; exercise is to consider what might fo wrong if we replaced if "special form" with the procedure above.
; spoiler, because of the applicative order of execution


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
        (new-if 
          (close_enough 
            a 
            (square guess)
            0.1)
          guess
          (root_int a (average guess (/ a guess)))
          )
        )
      )

    (root_int a 1)
    )
  )

(root 9)

