lösche(Liste1,[Liste1|Rest1],Rest1).  
lösche(Liste1,[Kopf2|Rest1],[Kopf2|Rest2]) :- lösche(Liste1,Rest1,Rest2).

permutation([Kopf|Rest],Liste2) :- permutation(Rest,Leer), lösche(Kopf,Liste2,Leer).  
permutation([],[]).