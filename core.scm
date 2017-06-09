(define (inc n) (+ n 1))

(define (report-time time) 
    (display "***")
    (display time))

(define (gcd a b)
    (if(= b 0) a
    (gcd b (remainder a b))))

(define (average a b) (/ (+ a b) 2))