(define lst1 (list 1 2 3 0 4 5 0 6 2 8 0 1))
(define lst2 (list 1 (list 2 3 0) (list (list 4 5) 0) 6 2 8 0 1))
(define lst3 (list 'Apple 'Banana (list 'Mango 'Peach) (list 'Apricot 'Apple) 'Apple 'Orange))

(define (list-append  firstarg secondarg)
    (cond
            ((null? firstarg) secondarg)                         ;if firstarg null, return second
            (else                                                ;otherwise...              
                 (cons (car firstarg)                            ;make a pair with the 'first' value of firstarg            
                       (list-append (cdr firstarg) secondarg))   ;recurse selecting the last value of firstarg and the secondarg
                 )
    )
)
