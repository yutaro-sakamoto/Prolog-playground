lst([red,blue,green]).
lst([purple,pink]).

car([X|Y], X).
cdr([X|Y], Y).
cons(X, Y, [X|Y]).
append([], Z, Z).
append([W|X], Y, [W|Z]) :- append(X, Y, Z).

swap23([X,Y,Z|C], [X,Z,Y|C]).
