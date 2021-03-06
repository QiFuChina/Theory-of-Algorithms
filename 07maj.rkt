#lang racket
;Question: Write a function maj in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing a 1 where two or more of x, y and z contain 1’s, and 0 otherwise.
(define (maj list1 list2 list3)
    ;Checking three lists if one list is null then result will be '()

    (if (null? list1)
        '()
        (if (null? list2)
            '()
            (if (null? list3)
                '()

                ;One cond statment compares the first element of each list and recursive
                (cond
                  ((=(car list1) (car list2))
                   (cons
                    (car list1) (maj (cdr list1) (cdr list2) (cdr list3))))
                  ((=(car list1) (car list3))
                   (cons
                    (car list1) (maj (cdr list1) (cdr list2) (cdr list3))))
                  ((=(car list2) (car list3))
                   (cons
                    (car list2) (maj (cdr list1) (cdr list1) (cdr list2)))))



                ))
     ;cond [(null? list1) '()] 
     ;     [(null? list2) '()]
     ;     [(null? list3) '()]
   
         ))