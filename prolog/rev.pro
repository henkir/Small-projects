rev([], []).
rev([Head|Tail], Reversed) :-
	rev(Tail, PartReversed),
	append(PartReversed, [Head], Reversed).