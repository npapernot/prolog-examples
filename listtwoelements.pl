/* This predicate will test if a list has two elements */

/* We first define a predicate that computes the length of a list */
/* We use an accumulator to do so. */

/* An empty list has a length 0 */
listlength([],0).
/* A list length is the length of its tail incremented by 1 */
listlength([_|Tail],N) :- listlength(Tail,M), N is M+1.

/* A list has two elements if its length is 2 */
two(L) :- listlength(L,2).

