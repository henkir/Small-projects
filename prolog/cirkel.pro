merge1([], List, List).
merge1(List, [], List).
merge1([Head1|List1], [Head2|List2], [Head1|Result]) :-
	Head1 =< Head2,
	merge1(List1, [Head2|List2], Result).
merge1([Head1|List1], [Head2|List2], [Head2|Result]) :-
	Head1 > Head2,
	merge1([Head1|List1], List2, Result).

split1([], [], []).
split1([Head], [Head], []).
split1([Head1,Head2|Tail], [Head1|FirstTail], [Head2|SecondTail]) :-
	split1(Tail, FirstTail, SecondTail).

sort1([], []).
sort1([Element], [Element]).
sort1(List, Sorted) :-
	split1(List, First, Second),
	sort1(First, FSorted),
	sort1(Second, SSorted),
	merge1(FSorted, SSorted, Sorted).


move(1,X,Y,_) :-
	write('Move top disk from '),
	write(X),
	write(' to '),
	write(Y),
	nl. 
move(N,X,Y,Z) :-
	N>1,
	M is N-1,
	move(M,X,Z,Y),
	move(1,X,Y,_),
	move(M,Z,Y,X). 