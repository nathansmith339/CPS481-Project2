(defun replace-nth (list n value)
  "Recursively calls itself and replaces list's 'n'th element with 'value'"
  (if (> n 0)
      (cons (nth 0 list)
	    ;; recursive call down the list
            (replace-nth (cdr list) (1- n) value))
      (cons value (cdr list))))

(defun mutate(critter)
    (write critter)
   ;need generate random number from 1 to 100 for 1% chance of mutation
   (setq randnum 1)
   ;Then set it to num (1 for now)
   (setq num randnum)
    
   ;need to generate random number from 1 to 100 for random operator
   (setq randop 45)
   ;then set it to op num
   (setq opnum randop)
   
   ;then need to get random operator
   (if (and (<= opnum 25) (> opnum) 0)
      (setq oper '+))
   (if (and (<= opnum 50) (> opnum 25))
      (setq oper '-))
   (if (and (<= opnum 75) (> opnum) 50)
      (setq oper '*))
   (if (and (<= opnum 100) (> opnum 75))
      (setq oper 'div1))
   
   ;if the randomly generated number is 1, MUTATE!
   (if (= num 1)
     (setq critter (replace-nth critter 0 oper)))
   (write critter)
)
;test
;(mutate '(+ 2 3 4 5))
