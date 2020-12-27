(define size 2)

(* 5 size)


(define pi 3.14)

(define (square x) (* x x))

(define (area_of_circle radius) 
  (* 
    pi 
    (square radius)
    )
  )

(define circumference 
  (lambda(rad) (* 2 pi rad)))
)

"area of circle with rad 5: "
(area_of_circle 5)

"circumference of circle with rad 5: "
(circumference 5)


