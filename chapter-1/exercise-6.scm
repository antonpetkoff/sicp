;; Exercise 1.6: Alyssa P. Hacker doesn’t see why if needs to
;; be provided as a special form. “Why can’t I just define it as
;; an ordinary procedure in terms of cond ?” she asks. Alyssa’s
;; friend Eva Lu Ator claims this can indeed be done, and she
;; defines a new version of if:

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

;; Delighted, Alyssa uses new-if to rewrite the square-root program:

(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (square-root x)
  (sqrt-iter 1.0 x))

;; What happens when Alyssa attempts to use this to compute
;; square roots? Explain.

;; Answer:
;; The difference between `if` and `new-if` is that 'if' is a special form
;; and is evaluated with a special rule, whereas 'new-if' is a normal
;; procedure evaluated with applicative-order evaluation.
;; This means that all arguments of 'new-if' will always be evaluated
;; no matter the outcome of the condition (the first argument).
;; Because the third argument in `new-if` is a recursive call to `sqrt-iter`,
;; the program will recurse infinitely. It always evaluates the third argument,
;; even when the condition '(good-enough? guess x)' is true.
;; The special form 'if', on the other hand, will not evaluate the third argument
;; when the condition is true and thus, will not recurse infinitely.
