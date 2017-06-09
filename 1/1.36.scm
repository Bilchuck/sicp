

(define tolerance 0.001)
(define (fix-point f first-guess) 
    (define (close-enought? a b) (< (abs (- a b)) tolerance))
    (define (try guess) 
        (let ((next (f guess)))
            (if (close-enought? guess next) next
                (try next))))
    (try first-guess))

(define (f x) (/ (log 1000) (log x)))

(fix-point f 2)