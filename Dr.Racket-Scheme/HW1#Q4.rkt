(define lst1 (list 1 2 3 0 4 5 0 6 2 8 0 1))
(define lst2 (list 1 (list 2 3 0) (list (list 4 5) 0) 6 2 8 0 1))
(define lst3 (list 'Apple 'Banana (list 'Mango 'Peach) (list 'Apricot 'Apple) 'Apple 'Orange))
(define lst4 (list 'Apple 'Banana 'milk))

(define (got-milk lst)
  (equal? (findf (lambda (arg)   ; use findf function, which returns 'milk or #f, check for equivalence to 'milk and result
           (equal? arg 'milk))
         lst) 'milk)
)
