father(taro, jiro).
father(jiro, saburo).
father(jiro, shiro).
father(jiro, hanako).
father(saburo, koichi).
father(koichi, yuki).
mother(yoko, jiro).
mother(kyoko, koichi).
mother(yuka, yuki).
mother(sachiko, saburo).

parent(P, C) :- father(P, C).
parent(P, C) :- mother(P, C).

grandfather(G, C) :- father(G, P), parent(P, C).
grandmother(G, C) :- mother(G, P), parent(P, C).
grandparent(G, C) :- grandfather(G, C).
grandparent(G, C) :- grandmother(G, C).

child(C, P) :- parent(P, C).
grandchild(C, G) :- grandparent(G, C).
sibling(X, Y) :- parent(P, X), parent(P, Y).
