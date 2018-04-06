#lang racket
(define (maj list1 list2 list3)

    (cond [(null? list1) '()] 
          [(null? list2) '()]
          [(null? list3) '()]
          ;Checking three lists if one list is null then result will be '()
          [(cond
             [(= (car list1) (car list2))
              (cons
              (car list1) (maj (cdr list1) (cdr list2) (cdr list3)))])]          
          [(cond
             [(= (car list1) (car list3))
              (cons
              (car list1) (maj (cdr list1) (cdr list2) (cdr list3)))])]
          [(cond
             [(= (car list2) (car list3))
              (cons
              (car list2) (maj (cdr list1) (cdr list2) (cdr list3)))])]
          ;Three cond statment to execute the result
         ))