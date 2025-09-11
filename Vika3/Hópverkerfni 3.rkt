;; Dæmi 1 
;; x er frjáls breyta en ekki y því y er bundið í innri falli y  
;; hægt að nota svona ((f1 5) 2) sem gefur 3.5
;; λa. (λb.(a+b)/b
(define (f1 x)
  (lambda (y)
    (/ (+ x y) y)
  )
)
((f1 2) 5)
  
;; Dæmi 2 
;; x er frjáls breyta en ekki y því y er bundið í innri falli y 
;;((λа. (λb. (a+b)/b))3)6
(define (f2)
  (lambda (x)
    (lambda (y)
      (/ (+ x y) y)
    )
  )
)
(((f2) 3) 6)


;; Dæmi 3
;; engar frjálsar breytur 
;; ((λx.(λy(x(xy))))(λx.x^2))3
(define (f3)
  ((lambda (x)
     (lambda (y)
       (x (x y))
     )
   )
   (lambda (x)
     (* x x)
   )
  )
)

((f3) 3)



        
    
