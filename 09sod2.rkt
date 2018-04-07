#lang racket
;Question:Write a function sod2 in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing a 1 where the number of 1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise.
(define (sod2 list1 list2 list3)

  ;Checking three lists if one list is null then result will be '()  
  (if(null? list1)
     '()
     (if(null? list2)
        '()
        (if (null? list3)
            '()
        ;One cond statment compares the first element of each list and recursive
        ;The value of result will depend on the remainder of three lists of sum
        (cond
          [(= 1 (remainder(+ (car list1)(car list2)(car list3))2))
          (cons 1(sod2 (cdr list1) (cdr list2) (cdr list3)))]
          [else (cons 0(sod2 (cdr list1) (cdr list2) (cdr list3)))]
         )))))