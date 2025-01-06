% Facts representing parent-child relationships
parent(john, mary).
parent(mary, tom).
parent(tom, kate).
parent(kate, emily).

% Predicate to define grandparent relationship
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Predicate to define ancestor relationship
ancestor(X, Y) :-
    parent(X, Y).
ancestor(X, Y) :-
    parent(X, Z),
    ancestor(Z, Y).

% Predicate to define sibling relationship
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y. % Ensure X and Y are not the same person

% Predicate to define uncle relationship
uncle(X, Y) :-
    sibling(X, Z),
    parent(Z, Y).

% Predicate to define cousin relationship
cousin(X, Y) :-
    grandparent(Z, X),
    grandparent(Z, Y),
    not sibling(X, Y).