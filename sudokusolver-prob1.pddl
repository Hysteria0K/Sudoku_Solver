;; problem file: sudokusolver-prob1.pddl

(define (problem sudokusolver-prob1)
    (:domain sudokusolver)
    (:objects num1 num2 num3 num4 num5 num6 num7 num8 num9
              linea lineb linec lined linee linef lineg lineh linei
              line1 line2 line3 line4 line5 line6 line7 line8 line9
              square2 square4 square5 square6 square8
              )
    (:init (horizontal linea) (horizontal lineb) (horizontal linec) (horizontal lined) (horizontal linee) (horizontal linef) (horizontal lineg) (horizontal lineh) (horizontal linei)
           (vertical line1) (vertical line2) (vertical line3) (vertical line4) (vertical line5) (vertical line6) (vertical line7) (vertical line8) (vertical line9)
           (passing linea square2) (passing lineb square2) (passing linec square2) (passing line4 square2) (passing line5 square2) (passing line6 square2)
           (passing lined square4) (passing linee square4) (passing linef square4) (passing line1 square4) (passing line2 square4) (passing line3 square4)
           (passing lined square5) (passing linee square5) (passing linef square5) (passing line4 square5) (passing line5 square5) (passing line6 square5)
           (passing lined square6) (passing linee square6) (passing linef square6) (passing line7 square6) (passing line8 square6) (passing line9 square6)
           (passing lineg square8) (passing lineh square8) (passing linei square8) (passing line4 square8) (passing line5 square8) (passing line6 square8)
           
           (set linea line5 square2 num4) (set linea line6 square2 num8) (set linec line6 square2 num2)  ;square2
           (set linee line1 square4 num1) (set linef line1 square4 num9) ;square4
           (set lined line4 square5 num6) (set linef line4 square5 num7) ;square5
           (set lined line7 square6 num4) (set linee line9 square6 num7) (set lined line9 square6 num2) (set linef line7 square6 num8);square6
           (set lineg line6 square8 num3) (set lineh line5 square8 num9) (set linei line4 square8 num4) (set linei line5 square8 num2) ;square8

           
           )
           
           
    (:goal (and (has square2 num1) (has square4 num1) (has square5 num1) (has square6 num1) (has square8 num1)
                (has square2 num2) (has square4 num2) (has square5 num2) (has square6 num2) (has square8 num2)
                (has square2 num3) (has square4 num3) (has square5 num3) (has square6 num3) (has square8 num3)
                (has square2 num4) (has square4 num4) (has square5 num4) (has square6 num4) (has square8 num4)
                (has square2 num5) (has square4 num5) (has square5 num5) (has square6 num5) (has square8 num5) 
                (has square2 num6) (has square4 num6) (has square5 num6) (has square6 num6) (has square8 num6) 
                (has square2 num7) (has square4 num7) (has square5 num7) (has square6 num7) (has square8 num7) 
                (has square2 num8) (has square4 num8) (has square5 num8) (has square6 num8) (has square8 num8) 
                (has square2 num9) (has square4 num9) (has square5 num9) (has square6 num9) (has square8 num9) 

                (setcomplete linea line5) (setcomplete linea line6) (setcomplete linec line6)
                (setcomplete linee line1) (setcomplete linef line1)
                (setcomplete lined line4) (setcomplete linef line4)
                (setcomplete lined line7) (setcomplete linee line9) (setcomplete lined line9) (setcomplete linef line7)
                (setcomplete lineg line6) (setcomplete lineh line5) (setcomplete linei line4) (setcomplete linei line5)
    
    
    
    
    
           ))
    
    
    
    
    
    
    )