(load "rat.scm")

(define (add-rat a b) 
    (make-rat 
        (+ (* (number a) (denom b))(* (number b) (denom a)))
        (* (denom a) (denom b))))
(define (sub-rat a b) 
    (make-rat 
        (- (* (number a) (denom b))(* (number b) (denom a)))
        (* (denom a) (denom b))))
(define (mult-rat a b) 
    (make-rat 
        (* (number a) (number b))
        (* (denom a) (denom b))))
(define (div-rat a b)
    (make-rat 
        (* (number a) (denom b))
        (* (denom a) (number b))))

(display "add 1/3 to 1/2")
(display-rat (add-rat (make-rat 1 3) (make-rat 1 2)))
(display "sub 1/3 to 1/2")
(display-rat (sub-rat (make-rat 1 3) (make-rat 1 2)))
(display "muklt 1/2 to 1/2")
(display-rat (mult-rat (make-rat 1 2) (make-rat 1 2)))
(display "div 1/3 to 2/1")
(display-rat (div-rat (make-rat 1 3) (make-rat 2 1)))