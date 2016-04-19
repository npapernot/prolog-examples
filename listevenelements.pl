/* The predicate checks if a list has an even number of elements */

/* We first define a predicate that computes the length of a list */
/* We use an accumulator to do so. */

/* An empty list has a length 0 */
listlength([],0).
/* A list length is the length of its tail incremented by 1 */
listlength([_|Tail],N) :- listlength(Tail,M), N is M+1.

/* We check if N, the length of the list, can be divided by 2 */

even(L) :- listlength(L,N), 0 is mod(N,2).

