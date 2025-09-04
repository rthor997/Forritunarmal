;; Notkun: (last x)
;; Fyrir: x=(x1 x2 ... xN) er listi, ekki tómur.
;; Gildi: xN, þ.e. aftasta gildi x.
(define (last x)
  (if (null? (cdr x))
    (car x)
    (last(cdr x))
  )
)
    
(last '(1 2 3))
(last (list 1 2 3))


;; Notkun: (remove-last x)
;; Fyrir: x=(x1 x2 ... xN) er listi, ekki tómur.
;; Gildi: (x1 x2 ... xN-1), þ.e. listi allra
;; gilda í x fyrir utan aftasta.
(define (remove-last x)
  (if (null? (cdr x))
      '()
      (cons (car x)
            (remove-last (cdr x))
       )
  )
)

(remove-last '(1 2 3))


;; Notkun: (product x)
;; Fyrir: x=(x1 x2 ... xN) er listi talna.
;; Gildi: Talan x1*x2*...*xN.
(define (product x)
  (define (product-hjalp lst sum)
    (if (null? lst)
        sum
        (product-hjalp (cdr lst) (* sum (car lst))) ;; seinasta línan er kall aftur á sig sjálft
    )
  )
  (product-hjalp x 1) ;; kallið á hjálparfallið í product x
)

(product '())
(product '(5))
(product '(1 2 3 4))

;; Notkun: (myappend x y)
;; Fyrir: x=(x1 x2 ... xN) er listi,
;; y=(y1 y2 ... yM) er einnig listi.
;; Gildi: Listinn (x1 x2 ... xN y1 y2 ... yM).
(define (myappend x y)
  (if (null? x)
      y
      (myappend (remove-last x) (cons (last x) y)
      )
  )
)

(myappend '(1 2 3) '(4 5))     


      