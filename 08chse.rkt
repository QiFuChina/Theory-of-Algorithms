#lang racket
(define (chse list1 list2 list3)

 
  (if(null? list1)
     '()
     (if(null? list2)
        '()
        (if (null? list3)
            '()
  ;Checking three lists if one list is null then result will be '()         
        (cond
          [((= (car list1) 1) (cons (car list2) (chse (cdr list1) (cdr list2) (cdr list3))))]
          [else ((cons (car list3) (chse (cdr list1) (cdr list2) (cdr list3))))]  
          )))))