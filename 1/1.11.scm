(define (f n) 
    (if(< n 3) n
    (+ (f (- n 1)) (f (- n 2)) (f (- n 3)) )))

(define (f2 n)
    (let loop ((n n) (a 1) (b 2) (c 3))
        (case n
            ((1) a) ((2) b) ((3) c) 
            (else (loop (- n 1) b c (+ a b c) )))))

(f 4)
(f2 4)