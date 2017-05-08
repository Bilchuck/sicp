(define (nod a b)
    (if (= b 0) a
    (nod b (remainder a b))))

(nod 144 60)
