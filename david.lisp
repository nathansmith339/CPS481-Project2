;; Useful stuff (delete this if you're done with it)

;; Loading another lisp file (similarly to locally #include)
;; (load "rng.lisp) ; loads rng.lisp, can use any of the fcns inside
;; ex: (randint 100 1000) as some example fn inside rng.lisp is now yours


;; We'll need to run over the population to randomy mutate them (1% chance)
;; We'll need to (eventually) generate a random population of 100 indiv.s
;; A random individual is an operator and a list of expr.s (OPR [EXPR ...])

;; if statements have two required parts and an optional part
;; (if (condition)
;;    (expression to do if true)
;;    (optional: expression to do if false)
;; )


;; working example of if statement
;; prints "true" if true, and "false" if false
(if (eq 7 (+ 3 4)) ;; if 7 == (3 + 4)
    (format t "true")
    (format t "false") )

;; when is just like an if, except if it's false, nothing happens
;; returns last statement's return in the "stuff to do" section
(when (eq 7 (+ 3 4))
  ;; stuff to do
  )

;; global variables
;; global variables can be done using setq, otherwise variables are local inside a function
(setq x 2 y 5 z 11)
;; setq is done in name-value pairs, returns last expression (not very useful)
;; to get a literal: 'z will return Z
;; to get a value: z will return (in this case) 11
