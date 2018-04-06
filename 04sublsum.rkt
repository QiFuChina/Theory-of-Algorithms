#lang racket


;Example reference:
;map,https://github.com/theory-of-algorithms/example-scheme/blob/master/mapreduce.rkt
;combinations, https://github.com/theory-of-algorithms/example-scheme/blob/master/permutations.rkt


(define (sum l);Will be called in function sublsum
  (if (null? l)
	0;If list l is null, get 0
	(+ (car l) (sum (cdr l)))));Otherwise, cal l plus the sum of rest l 

(define (subsublsum l1 l2)
  (if (null? l1)
	'()
    (if (= 0 (car l1));
	  (cons (car l2) (subsublsum (cdr l1) (cdr l2)));If the first element of l1 is 0, cons the first element of l2 and recursive 
	  (subsublsum (cdr l1) (cdr l2)))));If not, only recursive it again 

(define (sublsum l)
  (subsublsum (map sum (cdr (combinations l))) (cdr (combinations l))))
  ;combinations, get all of possible selectiong of the list l
  ;cdr, the first element of combinations is null, so we only need the second element to the last one
  ;map, http://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Fprivate%2Fmap..rkt%29._map%29%29
  ;sum, call the sum function until list l gets result 0