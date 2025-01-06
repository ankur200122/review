
parent(john, james).    
parent(mary, james).    
parent(john, susan).   
parent(mary, susan).   
parent(james, mark).    
parent(susan, mark).    
parent(james, anna).    
parent(susan, anna).    


grandparent(GP, GC) :- parent(P, GC), parent(GP, P).
sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.
uncle_aunt(UA, N) :- sibling(UA, P), parent(P, N).
