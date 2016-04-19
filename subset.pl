/* Test if a set is a subset of another set */

/* We first define a membership test */

/* X matches with the head of the set */
isinset(X,[X|_]).
/* X doesnt match with head, so check within tail if it matches */
isinset(X,[_|Tail]) :- isinset(X,Tail).

/* An empty set is a subset of any set */
issubset([],S).
/* A first set is a subset of a second set if the head is in the second set and
 * the tail is a subset of the second set */
issubset([Head|Tail],S) :- isinset(Head,S), issubset(Tail,S).

