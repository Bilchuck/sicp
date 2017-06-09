(load "segment.scm")

(define (make-rect lt rb) (cons lt rb))
(define (lt-rect rect) (car rect))
(define (rb-rect rect) (cdr rect))

(define (rect-width rect)
    (- (x-point (rb-rect rect)) (x-point (lt-rect rect))))

(define (rect-height rect)
    (- (y-point (lt-rect rect)) (y-point (rb-rect rect))))

(define (rect-square rect) (* (rect-width rect) (rect-height rect)))
(define (rect-perimeter rect) (* (+ (rect-width rect) (rect-height rect)) 2))

(display (rect-square (make-rect (make-point 0 20) (make-point 40 0))))
(display (rect-perimeter (make-rect (make-point 0 20) (make-point 40 0))))