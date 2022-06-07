% [X,X,X,X,X,X,X,X]
% [X,X,X,O,X,X,X,X]
% [X,X,X,X,X,X,X,X]
% [X,X,O,X,X,X,X,X]
% [X,X,X,X,X,X,X,X]
% [X,O,X,X,X,X,X,X]
% [X,X,X,X,X,X,X,X]
% [O,X,X,X,X,X,X,X]

% [(1,Y1),(2,Y2),(3,Y3),(4,Y4),(5,Y5),(6,Y6),(7,Y7),(8,Y8)]
muster([[1,_], [2,_], [3,_], [4,_], [5,_], [6,_], [7,_], [8,_]]).

nicht_bedroht([DameX1,DameY1], [DameX2,DameY2]):-
    member(DameY1, [1,2,3,4,5,6,7,8]),
    member(DameY2, [1,2,3,4,5,6,7,8]),
    DameY1 =\= DameY2,
    DameX1 + DameY1 =\= DameX2 + DameY2,
    DameX1 - DameY1 =\= DameX2 - DameY2.

bedroht_nicht(_, []).
bedroht_nicht(Dame, [Head|Tail]):-
    nicht_bedroht(Dame, Head),
    bedroht_nicht(Dame, Tail).

loesung([]).
loesung([Head|Tail]):- 
    bedroht_nicht(Head, Tail),
    loesung(Tail).

acht_damen:-
    muster(L),
    loesung(L),
    write(L), nl.