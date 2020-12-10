split([], [], []).   %define predicate arity 3 as having 3 lists
split([H|T], [H|L1], L2) :- H>=0, split(T, L1, L2). %if head is greater than 0, add to first list
split([H|T], L1, [H|L2]) :- H<0, split(T, L1, L2).  %if less than 0, add to second list
