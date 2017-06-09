(load "1.36.scm")
(define (average a b) (/ (+ a b)))
(define (average-damp f ) (lambda (x) (average x (f x))))

(define (sqrt n) 
    (fix-point (average-damp (lambda (y) (/ n y))) 1.0))

(define (cube-root n) 
    (fix-point (average-damp (lambda (y) (/ n (* y y)))) 1.0))

(sqrt 4)
(cube-root 8)