
%%
%% Modify the Sudoku solver to work on 9x9 puzzles
%%

valid([]).
valid([Head|Tail]) :-
    fd_all_different(Head),
    valid(Tail).

sudoku(Puzzle, Solution) :-
    Solution = Puzzle,

    Puzzle = [
        S11, S12, S13, S14, S15, S16, S17, S18, S19,
        S21, S22, S23, S24, S25, S26, S27, S28, S29,
        S31, S32, S33, S34, S35, S36, S37, S38, S39,
        S41, S42, S43, S44, S45, S46, S47, S48, S49,
        S51, S52, S53, S54, S55, S56, S57, S58, S59,
        S61, S62, S63, S64, S65, S66, S67, S68, S69,
        S71, S72, S73, S74, S75, S76, S77, S78, S79,
        S81, S82, S83, S84, S85, S86, S87, S88, S89,
        S91, S92, S93, S94, S95, S96, S97, S98, S99
    ],

    fd_domain(Puzzle, 1, 9),

    Row1 = [S11, S12, S13, S14, S15, S16, S17, S18, S19],
    Row2 = [S21, S22, S23, S24, S25, S26, S27, S28, S29],
    Row3 = [S31, S32, S33, S34, S35, S36, S37, S38, S39],
    Row4 = [S41, S42, S43, S44, S45, S46, S47, S48, S49],
    Row5 = [S51, S52, S53, S54, S55, S56, S57, S58, S59],
    Row6 = [S61, S62, S63, S64, S65, S66, S67, S68, S69],
    Row7 = [S71, S72, S73, S74, S75, S76, S77, S78, S79],
    Row8 = [S81, S82, S83, S84, S85, S86, S87, S88, S89],
    Row9 = [S91, S92, S93, S94, S95, S96, S97, S98, S99],

    Column1 = [S11, S21, S31, S41, S51, S61, S71, S81, S91],
    Column2 = [S12, S22, S32, S42, S52, S62, S72, S82, S92],
    Column3 = [S13, S23, S33, S43, S53, S63, S73, S83, S93],
    Column4 = [S14, S24, S34, S44, S54, S64, S74, S84, S94],
    Column5 = [S15, S25, S35, S45, S55, S65, S75, S85, S95],
    Column6 = [S16, S26, S36, S46, S56, S66, S76, S86, S96],
    Column7 = [S17, S27, S37, S47, S57, S67, S77, S87, S97],
    Column8 = [S18, S28, S38, S48, S58, S68, S78, S88, S98],
    Column9 = [S19, S29, S39, S49, S59, S69, S79, S89, S99],

    Square1 = [S11, S12, S13, S21, S22, S23, S31, S32, S33],
    Square2 = [S14, S15, S16, S24, S25, S26, S34, S35, S36],
    Square3 = [S17, S18, S19, S27, S28, S29, S37, S38, S39],
    Square4 = [S41, S42, S43, S51, S52, S53, S61, S62, S63],
    Square5 = [S44, S45, S46, S54, S55, S56, S64, S65, S66],
    Square6 = [S47, S48, S49, S57, S58, S59, S67, S68, S69],
    Square7 = [S71, S72, S73, S81, S82, S83, S91, S92, S93],
    Square8 = [S74, S75, S76, S84, S85, S86, S94, S95, S96],
    Square9 = [S77, S78, S79, S87, S88, S89, S97, S98, S99],

    valid([
        Row1, Row2, Row3, Row4, Row6, Row6, Row7, Row8, Row9,
        Column1, Column2, Column3, Column4, Column5, Column6, Column7, Column8, Column9,
        Square1, Square2, Square3, Square4, Square5, Square6, Square7, Square8, Square9
    ]).

%% sudoku([
%%     5, 3, _, _, 7, _, _, _, _,
%%     6, _, _, 1, 9, 5, _, _, _,
%%     _, 9, 8, _, _, _, _, 6, _,
%%     8, _, _, _, 6, _, _, _, 3,
%%     4, _, _, 8, _, 3, _, _, 1,
%%     7, _, _, _, 2, _, _, _, 6,
%%     _, 6, _, _, _, _, 2, 8, _,
%%     _, _, _, 4, 1, 9, _, _, 5,
%%     _, _, _, _, 8, _, _, 7, 9
%% ], Solution).
