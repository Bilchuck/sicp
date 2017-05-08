;(define pow-iter* (b n) 
  ;  (let loop ((a 1) (n))
  ;      (if (even))))

(define (even? n) 
    (cond 
    ((= n 0) #t)
    ((= n 1) #f)
    (else (even? (- n 2)))))

(even 13)
(even 14)
