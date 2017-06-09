(load "fast-prime.scm")
(load "../core.scm")

(define (start-search-primes n start-time)
    (let loop ((n n) (count 1)) 
        (if (fast-prime? n) 
            (if (= count 3) 
                (report-time (- (runtime) start-time))
                (loop (inc n) (inc count)))
            (loop (inc n) count))))

(define (search-for-primes n) (start-search-primes n (runtime)))


(search-for-primes 1000)    ;1 000
(search-for-primes 10000)   ;10 000
(search-for-primes 100000)  ;100 000
(search-for-primes 1000000) ;1 000 000