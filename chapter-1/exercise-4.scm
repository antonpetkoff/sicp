;; Exercise 1.4: Observe that our model of evaluation allows
;; for combinations whose operators are compound expressions.
;; Use this observation to describe the behavior of the
;; following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 10 12)
(a-plus-abs-b 10 -12)

;; Operators can be dynamically chosen based on some rule.
;; In the example when b is not positive we subtract it from a.
;; Otherwise, b is positive and we can add it with b.
;; Thus, we always add the absolute value of b to a.
