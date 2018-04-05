#lang racket
;Write, from scratch, a function in Racket that takes a positive integer n0 as input and returns a list by recursively applying the following operation, starting with the input number. 
;End the recursion when(orif)the number becomes 1. Call the function collatz-list. So, collatz-list should return a list whose first element is n0, the second element is n1, and so on.

(define list '());Defining a empty list
(define (collatz-list n)
  (append list n);Append command makes two lists to combine as one list
  (cond
    ((= n 1) list '(1));One
    ((= (remainder n 2) 1);Geting remainder and selecting one expression to continue
     (cons n
           (collatz-list(+ 1 (* n 3)))));After Calauting expressiong, it will recall the function collatz-list

    ((= (remainder n 2 ) 0)
      (cons n
           (collatz-list(/ n 2)) )
           )
    );After Calauting expressiong, it will recall the function collatz-list
  )
