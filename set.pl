/* This tests if a list is a set (i.e. no element occurs more than once) */

/* First, we define a predicate that verifies an element is not in a list */

/* X is not part of empty list */
isnotinlist(_,[]).
/* X is not head of list and is not in the tail */ 
isnotinlist(X,[Head|Tail]) :- X\=Head, isnotinlist(X,Tail).

/* We now use the predicate isnotinlist to check whether a list is a set */

/* An empty list is a set */
set([]).
/* A list with a single element is a set */
set([_]).
/* A list is a set if its head is not in its tail and its tail is a set */
set([Head|Tail]) :- isnotinlist(Head,Tail), set(Tail).


/* Some examples 
set([a,b,c,c,d]).
set([a,b,c]).
set([a,[b,a],c]).
set([]). */

