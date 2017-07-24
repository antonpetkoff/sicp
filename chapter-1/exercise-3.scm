;; Exercise 1.3: Define a procedure that takes three numbers
;; as arguments and returns the sum of the squares of the two
;; larger numbers.

(define (square x) (* x x))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

;; find the smallest number, then sum the squares of the other two
(define (larger-sum-of-squares a b c)
  (cond ((and (>= a c) (>= b c)) (sum-of-squares a b))
        ((and (>= a b) (>= c b)) (sum-of-squares a c))
        (else (sum-of-squares b c))))

(larger-sum-of-squares 1 2 3)
(larger-sum-of-squares 1 3 2)
(larger-sum-of-squares 2 1 3)
(larger-sum-of-squares 2 3 1)
(larger-sum-of-squares 3 1 2)
(larger-sum-of-squares 3 2 1)
(larger-sum-of-squares 2 2 2)
(larger-sum-of-squares 2 2 1)
