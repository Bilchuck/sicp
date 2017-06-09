(load "../core.scm")

(define (make-rat n d) 
    (let ((g (gcd n d)))
        (cons (/ n g) (/ d g))))
        
(define (number rat) (car rat))
(define (denom rat) (cdr rat))

(define (display-rat rat) 
    (newline)
    (display (number rat))
    (display "/")
    (display (denom rat))
    (newline))

(display-rat (make-rat 1 3))
