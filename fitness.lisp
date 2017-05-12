(defun div1(critter)
  "Function intended to safely divide by zero: returns 1 if a number is divided by zero"
    (loop for x in (cdr (cdr critter))
      do (if (= x 0)
          (return-from div1 1)
      )
     )
    (eval critter)
)

(defun getFitness (critter sample)
    
    (setq x (nth 0 sample) y (nth 1 sample) z (nth 2 sample) result (nth 3 sample))
    
    (if (equal (nth 0 critter) '/)
        (setq score (div1 critter))
        (setq score (eval critter))
    )
    
    (setq fitness (- result score))
    (return-from getFitness (list fitness))
)

(defun addFitness (critters sample)
    (setq newlist '())
    (loop for critter in critters
     do (setq fitness (getFitness critter sample))
         (setq crit (append fitness critter))
         collect crit into allcrits
         finally (return (append allcrits newlist))
    )
)

;usage
(setq critters '((+ 1 x 3 (+ 3 4)) (- 2 3 z) (* 2 3 y) (/ 2 0 1)))
(setq sample '(2 0 1 2))
(setq newlist (addFitness critters sample))
(write newlist)
