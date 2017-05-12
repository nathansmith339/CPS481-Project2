(defun purge(critter-list)
  "MUST BE USED ON A SORTED LIST"
    (setq ideal-pop-size (/ (length critter-list) 2))
    (setq lucky-ones '() )
    (loop for n from 0 to (- ideal-pop-size 1)
         collect (nth n critter-list) into ncritters
         finally (return (append ncritters lucky-ones)) 
    )
)

(setq blah (purge '( (1 2 3) (4 5 6) (7 8 9) (10 11 12) (13 14 15)  )))
(print blah)
