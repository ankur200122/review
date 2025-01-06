% Gender

male(dev).
male(raj).
male(khush).
male(sid).
male(atul).

female(hetal).
female(neha).
female(kajal).
female(chetna).

% Relationships
father(raj, khush).
father(raj, sid).
father(khush, atul).
father(sid, dev).
father(sid, chetna).

mother(hetal, khush).
mother(hetal, sid).
mother(neha, atul).
mother(kajal, dev).
mother(kajal, chetna).

wife(hetal, raj).
wife(neha, khush).
wife(kajal, sid).

parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).

% Rules
sister(X, Y) :- parent(A, X), parent(A, Y), female(X), X \== Y.
brother(X, Y) :- parent(A, X), parent(A, Y), male(X), X \== Y.
siblings(X, Y) :- parent(A, X), parent(A, Y), X \== Y.
husband(X, Y) :- wife(Y, X).
son(X, Y) :- parent(Y, X), male(X).
daughter(X, Y) :- parent(Y, X), female(X).
grandfather(X, Y) :- father(X, Z), parent(Z, Y).
grandmother(X, Y) :- mother(X, Z), parent(Z, Y).
uncle(X, Y) :- brother(X, Z), parent(Z, Y).
aunt(X, Y) :- sister(X, Z), parent(Z, Y).
cousin(X, Y) :- uncle(Z, Y), parent(Z, X).






