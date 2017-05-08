(define (abs x)
    (if (< x 0)
    (- x)
    x))

(define (square x) (* x x))

(define (average a b) (/ (+ a b) 2))

(define (improve guess x) 
    (/ (+ (/ x (square guess)) (* 2 guess)) 3)
)

(define (delta a b) (abs (- a b)))

(define (good-enought? prev-guess guess) 
    (< (delta prev-guess guess) 0.001))

(define (cbrt-iter prev-guess x) 
    (let ((guess (improve prev-guess x)))
    (if (good-enought? prev-guess guess)
        guess
        (cbrt-iter guess x))))

(define (cbrt x) (cbrt-iter 1.0 x))

(cbrt 27)
