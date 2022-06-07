insert([], Number, [Number]).
insert([Head|Tail], Number, [Number, Head|Tail]):- Number =< Head.
insert([Head|Tail], Number, [Head|List]):- insert(Tail, Number, List).

insertion_sort([], []).
insertion_sort([Head|Tail], Sorted):- insertion_sort(Tail, Left), insert(Left, Head, Sorted).