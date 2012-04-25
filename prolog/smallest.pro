smallest([Last|[]], Last).
smallest([Element|Rest], Element) :-
	smallest(Rest, Smallest),
	Element < Smallest.
smallest([Element|Rest], Smallest) :-
	smallest(Rest, Smallest),
	Element >= Smallest.
