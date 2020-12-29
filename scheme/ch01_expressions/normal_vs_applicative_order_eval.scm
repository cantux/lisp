; scheme uses applicative order where opera
;
; Normal order is to expand the operands down to primitives then reduces
; This may cause duplicate calculations and gets harder to manage when you leave the 
; realm of procedures that can be modeled by substitution.
;
; normal order is useful with stream processing and we will get to the on ch 3 and 4
;
; below is an example that does not work with applicative order

(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))

(test 0 (p))
