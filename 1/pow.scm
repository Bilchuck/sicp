(define (pow b n)
    (if (= n 0) 1 (* b (pow b (- n 1)))))

(define (pow* b n)
    (let loop ((value 1) (n n))
        (if (= n 0) value (loop (* value b) (- n 1)))))

(define (fast-pow b n)
    (cond ((= n 0) 1)
        ((even? n) (square (fast-pow expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (even? n) (= (reminder n 2) 0))
(define (square n) (* n n))

(pow* 2 4)

(pow 2 4)

(fast-pow 2 16)