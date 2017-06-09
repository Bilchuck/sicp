(load "pow.scm")


(define (fast-prime? n) (= (remainder (fast-pow 2 n) n) (remainder 2 n) ))

(fast-prime? 4)
(fast-prime? 11)
(fast-prime? 2001)