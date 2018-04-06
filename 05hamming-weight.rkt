#lang racket
(define (hamming-weight number)
;Checking the inputing number whether is null
  (cond [(null? number) 0 ];If is null, result is 0
        [(= (car number) 0) (hamming-weight(cdr number))];Checking the list if number is 0, continues recursive 
        [else (+ 1 (hamming-weight(cdr number)))];Plus 1 each times if the number is 1
   )) 
