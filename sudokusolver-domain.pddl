(define (domain sudokusolver)
(:requirements :strips :negative-preconditions :equality)
(:predicates (has ?x ?y) ; ?x have ?y , ?x = Line, Square , ?y = Number
             (written ?x ?y) ; ?x, ?y have written,  ?x, ?y = lineh and linev
             (passing ?x ?y) ; ?x is passing square ?y
             (horizontal ?x) ;?x is horizontal line
             (vertical ?x)   ;?x is vertical line
             (set ?x ?y ?z ?i);?x, ?y tile and square?z has ?i
             (setcomplete ?x ?y) ;?x, ?y tile set complete
             (writtennum ?x ?y ?z) ; ?x, ?y tile has num ?z
             )
                                    
(:action set-number
  :parameters (?num ?lineh ?linev ?square)
  :precondition (and (set ?lineh ?linev ?square ?num) (not (written ?lineh ?linev))
                )
  :effect (and (written ?lineh ?linev) (has ?lineh ?num) (has ?linev ?num) (has ?square ?num) (setcomplete ?lineh ?linev)))

(:action write-number
  :parameters (?num ?lineh ?linev ?square)
  :precondition (and (not (written ?lineh ?linev)) (not (= ?lineh ?linev)) (not (has ?lineh ?num)) (not (has ?linev ?num)) (not (has ?square ?num))
                     (passing ?lineh ?square) (passing ?linev ?square) (horizontal ?lineh) (vertical ?linev)
                     (not (set ?lineh ?linev ?square ?num)))
  :effect (and (written ?lineh ?linev) (has ?lineh ?num) (has ?linev ?num) (has ?square ?num) (writtennum ?lineh ?linev ?num)))

(:action remove-number
 :parameters (?num ?lineh ?linev ?square)
 :precondition (and (writtennum ?lineh ?linev ?num) (not (set ?lineh ?linev ?square ?num)) (passing ?lineh ?square) (passing ?linev ?square) (not (= ?lineh ?linev)))
 :effect (and (not (written ?lineh ?linev)) (not (has ?lineh ?num)) (not(has ?linev ?num)) (not(has ?square ?num))(not (writtennum ?lineh ?linev ?num))))               
               
               
               
               

               
               
               
               )
