#lang racket

;Question:Write a function hamming-weight in Racket that takes a list l as input and returns the number of non-zero elements in it
(define (hamming-weight number)
  ;Checking the inputing number whether is null
  ;A set of statments to execute the function, only the fromar statment is true the next statment will continue
  (cond [(null? number) 0 ];If is null, result is 0
        [(= (car number) 0) (hamming-weight(cdr number))];Checking the list if number is 0, continues recursive 
        [else (+ 1 (hamming-weight(cdr number)))];Plus 1 each times if the number is 1
   )) 
;cond, a expression same with if statement
;http://docs.racket-lang.org/reference/if.html#%28form._%28%28lib._racket%2Fprivate%2Fletstx-scheme..rkt%29._cond%29%29