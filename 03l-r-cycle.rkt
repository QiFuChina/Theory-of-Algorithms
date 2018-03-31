#lang racket


;Question:Write, from scratch, two functions in Racket. The first is called lcycle. It takes a list as input and returns the list cyclically shifted one place to the left. The second is called rcycle, and it shifts the list cyclically shifted one place to the right.

(define list '());Defining a empty list for storing data
(define l '(1 2 3 4 5))
(define (lcycle l)
  (cons (car l) list);Adding the first element of list l to the list
  (remq 1 l);Removeing the first element
  (append l list);Append two lists
  )

(define (rcycle l)
  (reverse l)
  (cons (car l) list);Adding the first element of list l to the list
  (remq 1 l);Removeing the first element
  (append l list);Append two lists
  )