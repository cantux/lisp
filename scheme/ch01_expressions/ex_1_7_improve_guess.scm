; plagerised from http://community.schemewiki.org/?sicp-ex-1.7
; explanation is not great at the given solution
;
; idea is to just look ahead to the next improvement 
; and ask if it is indeed possible to improve further 
; it is impossible to get infinitely precise.
; (of course you must have proven that your guesses don't oscilate and always steadily improve the solution)

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
      (lambda(a guess)
        (= guess (improve a guess))
        )
      )

    (define square
      (lambda(x)
        (* x x))
      )

    (define improve 
      (lambda(a guess)
        (average guess (/ a guess))
        )
      )

    (define root_int
      (lambda(a guess)
        (if 
          (close_enough a guess)
          guess
          (root_int a (average guess (/ a guess)))
          )
        )
      )

    (root_int a 1.0)
    )
  )

(root 9.0)

