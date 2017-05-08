(define (fibo n) 
    (define (fibo-iter a b count)
        (if(= count 0) b (fibo-iter (+ a b) a (- count 1))))
    (fibo-iter 1 0 n))

(fibo 4)