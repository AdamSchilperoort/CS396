(define lst1 (list 1 2 3 0 4 5 0 6 2 8 0 1))
(define lst2 (list 1 (list 2 3 0) (list (list 4 5) 0) 6 2 8 0 1))
(define lst3 (list 'Apple 'Banana (list 'Mango 'Peach) (list 'Apricot 'Apple) 'Apple 'Orange))

(define (deep-member?  alist item)
    (cond
            [(null? alist) #f ]                            ; if list is empty, return false
            
            [(list? (car alist))                           ;first check if item is a list,
             (or (deep-member? (car alist) item)           ;or to evaluate both, dive into list
                 (deep-member? (cdr alist) item) )         ;preserve list outside of other list
            ]
            
            [(equal? item (car alist)) #t ]                ; is the first element equal to the item? true

            [else
              (deep-member? (cdr alist) item)              ; otherwise, iterate through list 
            ]
    )

)