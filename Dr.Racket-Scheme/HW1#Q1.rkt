(define lst1 (list 1 2 3 0 4 5 0 6 2 8 0 1))
(define lst2 (list 1 (list 2 3 0) (list (list 4 5) 0) 6 2 8 0 1))
(define lst3 (list 'Apple 'Banana (list 'Mango 'Peach) (list 'Apricot 'Apple) 'Apple 'Orange))

(define (count-zeroes  alist)
    (cond
            ((null? alist) 0)                              ; if list is empty, return 0

            ((equal? (car alist) 0)                        ; is the first element a zero?
                (+ 1 (count-zeroes (cdr alist)))           ; if so, add 1 to counter, recurse
            )   

            (else                                          ; else, recurse on next element in list
                (count-zeroes (cdr alist))
            )             
    )

)
