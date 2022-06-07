%  Pfad finden in Prolog

% Datenstruktur -> 

% verbindung(merseburg, weissenfels).
% verbindung(merseburg, halle).
% % ...

% verbindung(Von, Nach):- 
%     write(Von), nl,
%     verbindung(Nach, Von).

nachbar(berlin, [magdeburg, halle, leipzig]).
nachbar(leipzig, [berlin, halle, weissenfels]).
nachbar(halle, [berlin, magdeburg, merseburg, leipzig]).
% ...

nachbar(Von, [Head, Tail]):-
    nachbar(Von, Tail).
    % verbindung(Von, Head).