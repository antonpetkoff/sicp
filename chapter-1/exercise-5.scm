;; Exercise 1.5: Ben Bitdiddle has invented a test to determine
;; whether the interpreter he is faced with is using applicative-
;; order evaluation or normal-order evaluation. He defines the
;; following two procedures:

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

;; Then he evaluates the expression: (test 0 (p))

;; What behavior will Ben observe with an interpreter that
;; uses applicative-order evaluation?

;; Answer:
;; The interpreter will first evaluate the arguments
;; which means that it will recurse infinitely to evaluate (p).
;; To evaluate (p) we must evaluate p by evaluating p and so on...

;; What behavior will he observe with an interpreter that
;; uses normal-order evaluation? Explain your answer.

;; Answer:
;; In this case the interpreter will replace 'test' with its body.
;; Thus, on the first evaluation step (test 0 (p)) will be replaced
;; with (if (= 0 0) 0 (p)) where the formal parameters are replaced
;; as follows: x is 0 and y is (p).
;; Because 'if' is a special form and the condition is true,
;; the value of the expression is 0 and (p) will never be evaluated.

;; (Assume that the evaluation
;; rule for the special form if is the same whether the
;; interpreter is using normal or applicative order: The predicate
;; expression is evaluated first, and the result determines
;; whether to evaluate the consequent or the alternative expression.)
