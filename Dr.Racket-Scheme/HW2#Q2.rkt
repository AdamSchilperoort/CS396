(define lst1 (list 1 2 3 0 4 5 0 6 2 8 0 1))
(define lst2 (list 1 (list 2 3 0) (list (list 4 5) 0) 6 2 8 0 1))
(define lst3 (list 'Apple 'Banana (list 'Mango 'Peach) (list 'Apricot 'Apple) 'Apple 'Orange))

(define (reverse-list  alist)
    (cond
            [(null? alist) empty]                       ; if list is empty, return empty

            ; add to the recursive call of the list (which will bottom out to the last element) with the car of list
            [(append (reverse-list (cdr alist) ) (list (car alist)))] 
    )

)


