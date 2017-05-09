


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
