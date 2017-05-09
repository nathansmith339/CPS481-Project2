;; Useful stuff (don't include this inside the main file)

;; Mutation is done on nth 0, or the operator of the critter.
;; maybe try to pick not the nth 0, but the nth 0 of a later expression (if it exists)

;; DIV1 REPLACES '/' operator, but still uses it
;; checks for a zero between nth 1 and nth X, where X is the last expression
;; examples:
;; (DIV1 5 8 x 19 (+ 3 4) 0) -> should return 1 (division by zero)
;;

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
