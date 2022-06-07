quick_sort([], []).

quick_sort([Pivot|Rest], Sorted):- 
	partition(Rest, Pivot, Left, Right),
	quick_sort(Left, SortedLeft),
	quick_sort(Right, SortedRight),
	append(SortedLeft, [Pivot|SortedRight], Sorted).


partition([], _, [], []).

partition([Head|Tail], Pivot, Left, [Head|Right]):-
	partition(Tail, Pivot, Left, Right),
	Head >= Pivot.

partition([Head|Tail], Pivot, [Head|Left], Right):-
	partition(Tail, Pivot, Left, Right),
	Head < Pivot.