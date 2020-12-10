(define lst1 (list 1 2 3 0 4 5 0 6 2 8 0 1))
(define lst2 (list 1 (list 2 3 0) (list (list 4 5) 0) 6 2 8 0 1))
(define lst3 (list 'Apple 'Banana (list 'Mango 'Peach) (list 'Apricot 'Apple) 'Apple 'Orange))

(define (steamroller  alist)
    (cond
            [(null? alist) empty ]                            ; if list is empty, return empty
            
            [(list? (car alist))                              ; check if first item is a list
              (append (steamroller (car alist))               ; go into 'sub' list, append to list
              (steamroller (cdr alist)))                      ; need to call recursion again on cdr of list
            ]

            [else
              (append (list (car alist)) (steamroller (cdr alist)) )  ; must add to list, but add layer of recursion to the element
            ]
    )

)