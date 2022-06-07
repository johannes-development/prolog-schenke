% [7, -2, 4 ,1 ,6 ,5 ,0, -4, 2]
last([X], X).	% X is the last element of the list
last([_|Z], X):- last(Z, X). 	% _ is a placeholder for the first element of the list