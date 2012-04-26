sudoku_solver(Puzzle, Solution) :-
	Puzzle = Solution,
	Puzzle = [S11, S12, S13, S14,
		  S21, S22, S23, S24,
		  S31, S32, S33, S34,
		  S41, S42, S43, S44],
	fd_domain(Puzzle, 1, 4),
	Row1 = [S11, S12, S13, S14],
	Row2 = [S21, S22, S23, S24],
	Row3 = [S31, S32, S33, S34],
	Row4 = [S41, S42, S43, S44],
	Col1 = [S11, S21, S31, S41],
	Col2 = [S12, S22, S32, S42],
	Col3 = [S13, S23, S33, S43],
	Col4 = [S14, S24, S34, S44],
	Square1 = [S11, S12, S21, S22],
	Square2 = [S13, S14, S23, S24],
	Square3 = [S31, S32, S41, S42],
	Square4 = [S33, S34, S43, S44],
	valid([Row1, Row2, Row3, Row4,
	       Col1, Col2, Col3, Col4,
	       Square1, Square2, Square3, Square4]).

valid([]).
valid([Head|Tail]) :-
	fd_all_different(Head),
	valid(Tail).

squareroot(N, I):-
	N >= 0,
	between(0, N, I),
	I * I =< N,
	(I + 1) * (I + 1) > N,
	!.

between(I, J, I):-I =< J.
between(I, J, K):-I < J, I1 is I + 1, between(I1, J, K).

print_sudoku(Sudoku) :-
	list_size(Sudoku, ListSize),
	squareroot(ListSize, Size),
	print_helper(Sudoku, Size, 1).
print_helper([], _, _).
print_helper([Head|Tail], Size, Col) :-
	Col = Size,
	write(Head),
	nl,
	print_helper(Tail, Size, 1).
print_helper([Head|Tail], Size, Col) :-
	Col \= Size,
	write(Head),
	write(' '),
	NewCol is Col + 1,
	print_helper(Tail, Size, NewCol).

list_size([], 0).
list_size([_|Tail], Size) :-
	list_size(Tail, NewSize),
	Size is NewSize + 1.
