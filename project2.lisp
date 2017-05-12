(defun replace-nth (list n value)
  "Recursively calls itself and replaces list's 'n'th element with 'value'"
  (if (> n 0)
      (cons (nth 0 list)
	    ;; recursive call down the list
            (replace-nth (cdr list) (1- n) value))
      (cons value (cdr list)))
)

(defun mutate(critter)
  "Mutates the operator of given critter"
    (write critter)
   ;need generate random number from 1 to 100 for 1% chance of mutation
   (setq randnum 1)
   ;Then set it to num (1 for now)
   (setq num randnum)
   
   (print "mutate: I still need RNG")
   ;(setq num (randint 0 100))
    
   ;need to generate random number from 1 to 100 for random operator
   (setq randop 45)
   ;then set it to op num
   (setq opnum randop)

   ;; if the randomly generated number is 1, MUTATE!
   (when (= num 1)
     (progn
     ;;then need to get random operator
       (if (and (<= opnum 25) (> opnum) 0)
	   (setq oper '+))
       (if (and (<= opnum 50) (> opnum 25))
	   (setq oper '-))
       (if (and (<= opnum 75) (> opnum) 50)
	   (setq oper '*))
       (if (and (<= opnum 100) (> opnum 75))
	   (setq oper 'div1))
       (setq critter (replace-nth critter 0 oper))
       (write critter)
       ))
   ;; test
   ;; (mutate '(+ 3 4 5 0))
)

(defun swap (pcrit1 pcrit2)
  "After choosing two random integers, pcrit1 and pcrit2 have parts swapped"
  ;; generate rand ints based on largest critter length
  (max (length pcrit1) (length pcrit2))
      
  (setq randint1 1 randint2 1) ;not a random integer
  (format t "swapping list 1's ~Dth element with list 2's ~Dth element" randint1 randint2)
  (let
      ((crit1-part (nth randint1 pcrit1))
       (crit2-part (nth randint2 pcrit2)))
  ;; set the variables
  (setq pcrit1 (replace-nth pcrit1 randint1 crit2-part)
	pcrit2 (replace-nth pcrit2 randint2 crit1-part))
  ;; set the values for the critters here, globally
  (print "swap: I need to set global critters to the values")
  ;;(setq critter1 '(+ (+ 30 20) 7) critter2 '(- 0 9 -4))
  ;;(swap critter1 critter2)
  ;;(print critter1)
  ;;(print critter2)
  )
)

(defun div1(critter)
  "Function intended to safely divide by zero: returns 1 if a number is divided by zero"
    (loop for x in (cdr (cdr critter))
      do (if (= x 0)
          (return-from div1 1)
      )
     )
    (eval critter)
    )

(defun purge(critter-list)
  "MUST BE USED ON A SORTED LIST. Used to purge the lowest half of the list."
  (setq ideal-pop-size (/ (length critter-list) 2))
  (setq lucky-ones '() )
  (loop for n from 0 to (- ideal-pop-size 1)
     collect (nth n critter-list) into ncritters
     finally (return (append ncritters lucky-ones)) 
       )
  ;; (setq test-sample (purge '( (+ 1 2 3) (div1 4 5 6) (+ 7 8 9) (* 10 11 12) (- 13 14 15)  )))
  ;; (print test-sample)
)
