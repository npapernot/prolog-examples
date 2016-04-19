# prolog-examples
This repository includes some code samples to get started with list
manipulation in Prolog.

## Setup 

To run Prolog code, you first need to install SWI Prolog on your machine. The
stable version is available [here](http://www.swi-prolog.org/download/stable).
Once installed, run `swipl` in a Linux terminal or open the `SWI-Prolog`
application on Mac OS. You will see a prompt `?-` appear in the terminal. 

## How do I run the code samples?
 
To run the code samples from a Prolog prompt, simply use the following:

```
consult('filename.pl').
```

If you need to change directories, simply type:

```
cd('/path/to/your/dir').
```

## Description of the code samples included in this repository


### Testing if a list has an even number of elements: `listevenelements.pl`

This file includes two predicates. The first one `listlength` computes the
length of a list using an accumulator. The second one checks if the list has
an even number of elements. To test the predicate, you can use the following: 

```
?- even([a,b,c,d]).
true.

?- even([a,b]).
true.

?- even([]).
true.

?- even([a,b,c]).
false.

?- even([a,b,c,d,e]).
false.
```

### Testing if a list has two elements: `listtwoelements.pl`

This file includes two predicates. The first one is the same `listlength` than
in the previous example file. The second one `two` checks if a list has
exactly two elements. To try out the predicate `two`, some examples are:

```
?- two([a,b]).
true.

?- two([a,b,c]).
false.

?- two([]).
false.
```

### Testing if a list is a set: `set.pl`

This file includes two predicates. The predicate `isnotinlist` tests if the 
first argument is in the list passed as the second argument. The predicate
`set` tests if the list is a set (i.e. no elements are included more than 
once in the list). To test the predicate `set`, you can use the following 
examples:

```
?- set([a,b,c]).
true .

?- set([a,[b,a],c]).
true .

?- set([]).
true.

?- set([a,b,c,c,d]).
false.
```

Note that the predicates are not the optimal way to implement this test. The
check is done in `O(N^2)`. Instead, one could use predefined predicates from 
`SWI-Prolog` like `setof` and `length` to implement a `O(nlogn)` solution.

### Testing if a list is a subset: `subset.pl`

This file includes two predicates `isinset` and `issubset` that respectively
test if an element is in a set and if a set is a subset of a second set. To
try out this sample, here are a few examples:

```
?- issubset([a,b],[a,b,c,d]).
true .

?- issubset([e,f],[a,b,c,d]).
false.

?- issubset([b,a],[a,b,c,d]).
true .

?- issubset([a,b],[a,c,d,b]).
true .

?- issubset([],[a,b]).
true.
```


## Contact Info

Ways to get in touch with me:
* Twitter: <https://www.twitter.com/nicolaspapernot>
* Webpage: <https://www.papernot.fr> 


