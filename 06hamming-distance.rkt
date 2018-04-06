#lang racket
(define (hamming-distance list1 list2)
   ;Checking two lists if one list is null then result will be 0
  (cond [(null? list1) 0];A set of statments to execute the function, only the fromar statment is true the next statment will continue
        [(null? list2) 0]
        [(= (car list1)(car list2)) (hamming-distance (cdr list1) (cdr list2))];Comparing two lists of the first element, if it is true, recursive
        [else (+ 1 (hamming-distance (cdr list1) (cdr list2)))];If not, count once
       ))