#lang racket
;Question:Write a function chse in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing the elements of y in the positions where x is 1 and the elements of z otherwise.
(define (chse list1 list2 list3)

  ;Checking three lists if one list is null then result will be '()  
  (if(null? list1)
     '()
     (if(null? list2)
        '()
        (if (null? list3)
            '()
        ;One cond statment compares the first element of each list and recursive
        ;The value of result will depend the first element of list1 and list3 
        (cond
          ((= (car list1) 1);If is lis1, return the list2 element each time
           (cons (car list2) (chse (cdr list1) (cdr list2) (cdr list3))))
          (else;If not, return the list3 element each time
           (cons (car list3) (chse (cdr list1) (cdr list2) (cdr list3))))
          )))))