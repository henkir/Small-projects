metabox(Lab, L,
        AA, AB, AC, AD, AE, AF, AG, AH, AI,
	BA, BB, BC, BD, BE, BF, BG, BH, BI,
	CA, CB, CC, CD, CE, CF, CG, CH, CI,
	DA, DB, DC, DD, DE, DF, DG, DH, DI,
	EA, EB, EC, ED, EE, EF, EG, EH, EI,
	FA, FB, FC, FD, FE, FF, FG, FH, FI,
	GA, GB, GC, GD, GE, GF, GG, GH, GI,
	HA, HB, HC, HD, HE, HF, HG, HH, HI,
	IA, IB, IC, ID, IE, IF, IG, IH, II) :-

	L = [AA, AB, AC, AD, AE, AF, AG, AH, AI,
	BA, BB, BC, BD, BE, BF, BG, BH, BI,
	CA, CB, CC, CD, CE, CF, CG, CH, CI,
	DA, DB, DC, DD, DE, DF, DG, DH, DI,
	EA, EB, EC, ED, EE, EF, EG, EH, EI,
	FA, FB, FC, FD, FE, FF, FG, FH, FI,
	GA, GB, GC, GD, GE, GF, GG, GH, GI,
	HA, HB, HC, HD, HE, HF, HG, HH, HI,
	IA, IB, IC, ID, IE, IF, IG, IH, II],
	
	fd_domain(L, 1, 9),

	fd_all_different([AA, AB, AC, BA, BB, BC, CA, CB, CC]),
	fd_all_different([AD, AE, AF, BD, BE, BF, CD, CE, CF]),
	fd_all_different([AG, AH, AI, BG, BH, BI, CG, CH, CI]),

	fd_all_different([DA, DB, DC, EA, EB, EC, FA, FB, FC]),
	fd_all_different([DD, DE, DF, ED, EE, EF, FD, FE, FF]),
	fd_all_different([DG, DH, DI, EG, EH, EI, FG, FH, FI]),

	fd_all_different([GA, GB, GC, HA, HB, HC, IA, IB, IC]),
	fd_all_different([GD, GE, GF, HD, HE, HF, ID, IE, IF]),
	fd_all_different([GG, GH, GI, HG, HH, HI, IG, IH, II]),


	fd_all_different([AA, AB, AC, AD, AE, AF, AG, AH, AI]),
	fd_all_different([BA, BB, BC, BD, BE, BF, BG, BH, BI]),
	fd_all_different([CA, CB, CC, CD, CE, CF, CG, CH, CI]),
	fd_all_different([DA, DB, DC, DD, DE, DF, DG, DH, DI]),
	fd_all_different([EA, EB, EC, ED, EE, EF, EG, EH, EI]),
	fd_all_different([FA, FB, FC, FD, FE, FF, FG, FH, FI]),
	fd_all_different([GA, GB, GC, GD, GE, GF, GG, GH, GI]),
	fd_all_different([HA, HB, HC, HD, HE, HF, HG, HH, HI]),
	fd_all_different([IA, IB, IC, ID, IE, IF, IG, IH, II]),

	fd_all_different([AA, BA, CA, DA, EA, FA, GA, HA, IA]),
	fd_all_different([AB, BB, CB, DB, EB, FB, GB, HB, IB]),
	fd_all_different([AC, BC, CC, DC, EC, FC, GC, HC, IC]),
	fd_all_different([AD, BD, CD, DD, ED, FD, GD, HD, ID]),
	fd_all_different([AE, BE, CE, DE, EE, FE, GE, HE, IE]),
	fd_all_different([AF, BF, CF, DF, EF, FF, GF, HF, IF]),
	fd_all_different([AG, BG, CG, DG, EG, FG, GG, HG, IG]),
	fd_all_different([AH, BH, CH, DH, EH, FH, GH, HH, IH]),
	fd_all_different([AI, BI, CI, DI, EI, FI, GI, HI, II]),

	lab(Lab, L).


try(L) :-
	metabox(normal, L,
                _,_,1,_,_,_,8,_,_,
                _,7,_,3,1,_,_,9,_,
                3,_,_,_,4,5,_,_,7,
                _,9,_,7,_,_,5,_,_,
                _,4,2,_,5,_,1,3,_,
                _,_,3,_,_,9,_,4,_,
                2,_,_,5,7,_,_,_,4,
                _,3,_,_,9,1,_,6,_,
                _,_,4,_,_,_,3,_,_).
		
try2(L) :-
	metabox(normal, L,
	        _,7,_,_,1,_,_,9,_,
	        9,_,_,8,_,_,_,_,7,
	        _,_,3,_,_,_,_,_,6,
	        _,4,_,_,_,1,5,_,_,
	        _,3,_,_,_,_,_,1,_,
	        _,_,2,7,_,_,_,6,_,
	        5,_,_,_,_,_,6,_,_,
	        6,_,_,_,_,5,_,_,2,
	        _,8,_,_,2,_,_,7,_).

try3(L) :-
	metabox(normal, L,
	        _,9,_,7,_,_,8,6,_,
	        _,3,1,_,_,5,_,2,_,
	        8,_,6,_,_,_,_,_,_,
	        _,_,7,_,5,_,_,_,6,
	        _,_,_,3,_,7,_,_,_,
	        5,_,_,_,1,_,7,_,_,
	        _,_,_,_,_,_,1,_,9,
	        _,2,_,6,_,_,3,5,_,
	        _,5,4,_,_,8,_,7,_).

generate(L) :-
	metabox(random, L,
	        _,_,_,_,_,_,_,_,_,
	        _,_,_,_,_,_,_,_,_,
	        _,_,_,_,_,_,_,_,_,
	        _,_,_,_,_,_,_,_,_,
	        _,_,_,_,_,_,_,_,_,
	        _,_,_,_,_,_,_,_,_,
	        _,_,_,_,_,_,_,_,_,
	        _,_,_,_,_,_,_,_,_,
	        _,_,_,_,_,_,_,_,_).

lab(normal, L) :-
	fd_labeling(L).

lab(random, L) :-
	fd_labeling(L, [variable_method(random)]).

