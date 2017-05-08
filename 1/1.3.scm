(define (sum-of-squares a b c)
  (- (+ (square a) (square b) (square c))
     (square (min a b c))))

(sum-of-squares 1 2 3)