(define lst1 (list 1 2 3 0 4 5 0 6 2 8 0 1))
(define lst2 (list 1 (list 2 3 0) (list (list 4 5) 0) 6 2 8 0 1))
(define lst3 (list 'Apple 'Banana (list 'Mango 'Peach) (list 'Apricot 'Apple) 'Apple 'Orange))

(define (deleteall  alist item)
    (cond
            [(null? alist) empty]                              ; if list is empty, return empty

            [(equal? item (car alist))                         ; is the first element equal to the item?
                (deleteall (cdr alist) item)                   ;recursive call with list and item
            ]   

            [else                                              ; else, cons the item with recursion 
                (cons (car alist) (deleteall (cdr alist) item))
            ]           
    )

)
