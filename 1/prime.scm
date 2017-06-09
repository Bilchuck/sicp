(load "1.7.scm");sqrt

(define (exmod a b) 
    (cond (
        (< (sqrt b) a) b)
        ((devides? b a) a)
        (else (exmod (+ a 1) b))))

(define (devides? n x) (= (remainder n x) 0))
(define (smallest-division n) (exmod 2 n) )
(define (prime? n) (= (smallest-division n) n ))



(prime? 11)
(prime? 121)
(prime? 2001)
