


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


;; select parts of individual
(setq critter1 '(+ 3 4 5 6) critter2 '(* 3 5))


;; swapping
(defun swap (pcrit1 pcrit2)
      ;; generate rand ints
      
      (setq randint1 4 randint2 1) ;not a random integer
      (format t "swapping list 1's ~Dth element with list 2's ~Dth element" randint1 randint2)
      (let
	((crit1-part (nth randint1 pcrit1))
	(crit2-part (nth randint2 pcrit2)))
	;; set the variables
	(setq pcrit1 (replace-nth pcrit1 randint1 crit2-part)
	      pcrit2 (replace-nth pcrit2 randint2 crit1-part))
         (print pcrit1)
         (print pcrit2)
	      ))
(swap '(+ 3 4 5 6 7) '(- 0 -1 -2 -3 -4))
(defun replace-nth (list n value)
  "Recursively calls itself and replaces list's 'n'th element with 'value'"
  (if (> n 0)
      (cons (nth 0 list)
	    ;; recursive call down the list
            (replace-nth (cdr list) (1- n) value))
      (cons value (cdr list))))
