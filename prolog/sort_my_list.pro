insert_sort(List, Sorted) :- isort(List, [], Sorted).
isort([], Res, Res).
isort([Head|Tail], Res, Sorted) :-
	ins(Head, Res, NewRes),
	isort(Tail, NewRes, Sorted).

ins(Element, [], [Element]).
ins(Element, [Head|Tail1], [Head|Tail2]) :-
	Element > Head,
	ins(Element, Tail1, Tail2).
ins(Element, [Head|Tail], [Element, Head|Tail]) :-
	Element =< Head.
