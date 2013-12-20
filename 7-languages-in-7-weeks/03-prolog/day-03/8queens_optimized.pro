
%%
%% Optimized program to solve 8 queens problems.
%%

valid_queen((Row, Column)) :-
    member(Column, [1, 2, 3, 4, 5, 6, 7, 8]).

valid_board([]).
valid_board([Head|Tail]) :-
    valid_queen(Head),
    valid_board(Tail).

%% helper to get columns.
%%
%% [(_, column), (_, column), (_, column)...
%% gets
%% [column, column, column...
columns([], []).
columns([(_, Column)|Tail], [Column|ColumnsTail]) :-
    columns(Tail, ColumnsTail).

diagonal1([], []).
diagonal1([(Row, Column)|Tail], [Diagonal|DiagonalsTail]) :-
    Diagonal is Column - Row,
    diagonal1(Tail, DiagonalsTail).

diagonal2([], []).
diagonal2([(Row, Column)|Tail], [Diagonal|DiagonalsTail]) :-
    Diagonal is Column + Row,
    diagonal2(Tail, DiagonalsTail).

eight_queens(Board) :-
    Board = [(1, _), (2, _) , (3, _), (4, _), (5, _), (6, _), (7, _), (8, _)],

    valid_board(Board),

    columns(Board, Columns),
    diagonal1(Board, Diagonals1),
    diagonal2(Board, Diagonals2),

    fd_all_different(Columns),
    fd_all_different(Diagonals1),
    fd_all_different(Diagonals2).
