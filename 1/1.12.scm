(define (pascalTriangle x y)
    (if (or (= x 0) (= x y)) 1 
    (+ (pascalTriangle (- x 1) (- y 1)) (pascalTriangle x (- y 1)))))

(pascalTriangle 3 5)