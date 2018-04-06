#lang racket


;Question:Write, from scratch, two functions in Racket. The first is called lcycle. It takes a list as input and returns the list cyclically shifted one place to the left. The second is called rcycle, and it shifts the list cyclically shifted one place to the right.

;(define list '());Defining a empty list for storing data

(define (lcycle l)
  (append(cdr l) (list(car l)) );Append two lists
  ;((cons (car l) list);Adding the first element of list l to the list
   ; (remq 1 l);Removeing the first element
    ; (append l list))
  )

(define (getLast l)
  (if (null? (cdr l));If the last element is null
	(car l);the first element will be chosen
	(getLast (cdr l))));If not null, the function will loop to choose last element

(define (getList l)
  (if (null? (cdr l));If the last element is null
	'();There is one element in original list or there are no elements anymore
	(cons (car l) (getList (cdr l)))));If not null, every time gets the first element of rest list and does loop 

(define(rcycle l);The function of append two arrays 
      (cons (getLast l) (getList l)))
  ;((reverse l)
  ; (append(cdr l) (list(car l)) ))
  ;(cons (car l) list);Adding the first element of list l to the list
  ;(remq 1 l);Removeing the first element
  ;(append l list);Append two lists
  