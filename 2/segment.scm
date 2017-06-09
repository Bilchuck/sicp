(load "../core.scm")

;Point
(define (make-point x y)
    (cons x y))
(define (x-point point)
    (car point))
(define (y-point point)
    (cdr point))
(define (display-point point)
    (newline)
    (display "(")
    (display (x-point point))
    (display ", ")
    (display (y-point point))
    (display ")")
    (newline))
;Segment
(define (make-segment start end)
    (cons start end))
(define (start-segment segment)
    (car segment))
(define (end-segment segment)
    (cdr segment))
;2.2
(define (midpoint-segment segment)
    (make-point 
        (average 
            (+ (x-point (start-segment segment)))
            (+ (x-point (end-segment segment))))
        (average 
            (+ (y-point (start-segment segment)))
            (+ (y-point (end-segment segment))))))

(display-point (midpoint-segment 
    (make-segment (make-point 1 1) (make-point 3 3))))