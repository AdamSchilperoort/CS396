sumList([], 0).         %if list is empty return 0
sumList([H|T], Sum) :-  %define predicate
    sumList(T, Rest),   %recurse on Tail
    Sum is H + Rest.    %summation operation
