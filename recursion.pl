
% % Charlotte is the child of Caroline.
% child(charlotte, caroline).

% % Caroline is the child of Laura.
% child(caroline, laura).

child(martha,charlotte).
child(charlotte,caroline).   
child(caroline,laura).   
child(laura,rose).

% X is the decend of Y if Y is the child of X.
decend(X, Y) :- child(X, Y).
% X is the decend of Y if X is the child of Z and Z is the decend of Y.
decend(X, Y) :- child(X, Z), decend(Z, Y).
