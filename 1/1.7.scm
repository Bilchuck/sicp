(define (abs x)
    (if (< x 0)
    (- x)
    x))

(define (square x) (* x x))

(define (average a b) (/ (+ a b) 2))

(define (improve guess x) 
    (average guess (/ x guess))
)

(define (delta a b) (abs (- a b)))

(define (good-enought? prev-guess guess) 
    (< (delta prev-guess guess) 0.001))

(define (sqrt-iter prev-guess guess x) 
    (if (good-enought? prev-guess guess)
        guess
        (sqrt-iter guess (improve guess x) x)
    )
)  

(define (sqrt x) (sqrt-iter 0 1.0 x))

(sqrt 1.5)

