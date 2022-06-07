is_sorted([]).	% empty list is sorted
is_sorted([_]).	% singleton list is sorted
is_sorted([X, Y|Z]):- X =< Y, is_sorted([Y|Z]).	% if X <= Y, then X is sorted

remove(List1, [List1|Rest1], Rest1).  
remove(List1, [Head2|Rest1], [Head2|Rest2]):- remove(List1, Rest1, Rest2).

permutation([], []).
permutation([Head|Rest], List2):- permutation(Rest ,X), remove(Head, List2, X).  

permutation_sort(List1, List2):- permutation(List1, List2), is_sorted(List2).