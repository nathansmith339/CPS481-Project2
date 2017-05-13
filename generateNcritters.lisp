(setf *random-state* (make-random-state t))

(defun generate-rand-critter(numOfNums)
    "max-size must be > 2"
    ;get our operator
    (setq randop (random 4))
    (if (= randop 1)
      (setq oper '(+)))
    (if (= randop 2)
      (setq oper '(-)))
    (if (= randop 3)
      (setq oper '(*)))
    (if (= randop 0)
      (setq oper '(/)))
     
    ;get our variables
    (setq randvar (random 10))
    (if (= randvar 1)
      (setq var_list '(x)))
    (if (= randvar 2)
      (setq var_list '(x x)))
    (if (= randvar 3)
      (setq var_list '(x y)))
    (if (= randvar 4)
      (setq var_list '(x z)))
    (if (= randvar 5)
      (setq var_list '(y)))
    (if (= randvar 6)
      (setq var_list '(y y)))
    (if (= randvar 7)
      (setq var_list '(y z)))
    (if (= randvar 8)
      (setq var_list '(z)))
    (if (= randvar 9)
      (setq var_list '(z z)))
    (if (= randvar 0)
      (setq var_list '()))
    
    ;get our num list
    (loop for i from 1 to numOfNums
          do
          (setq randnumb (random 10))
          (setq cointoss (random 2))
          (if (= cointoss 0)
              (setq randnumb (- 0 randnumb)))
          collect randnumb into num_list
          finally (return (append oper num_list var_list))
    )
)

(defun generate-n-critters (n max-size)
    "Generate n critters"
    (setq generated-critters '())
    (loop for i from 1 to n
          do
          (setq ith_critter_size (random max-size))
          (setq ith_critter (generate-rand-critter ith_critter_size))
          collect ith_critter into ithcritters
          finally (return (append ithcritters generated-critters))
    )
)

(write (generate-n-critters 5 4))
