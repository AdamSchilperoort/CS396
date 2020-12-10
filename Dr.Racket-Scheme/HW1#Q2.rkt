
(define (list-number=?  alist otherlist)
    (cond
            ((null? alist) (null? otherlist))                  ;check if both args are null -> return true
            ((null? otherlist) #f)                             ;check if one list is longer than second
            ((= (car alist) (car otherlist))                   ;compare equality of value, if equal..
                (list-number=? (cdr alist) (cdr otherlist)))   ;recurse and perform cdr on both
            (else #f)                                          ;otherwise.... false
    )
)
