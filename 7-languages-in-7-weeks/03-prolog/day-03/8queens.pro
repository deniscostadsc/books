
%%
%% Program to solve 8 queens problems.
%%

valid_queen(Row, Column) :-
    Range = [1, 2, 3, 4, 5, 6, 7, 8],
    member(Row, Range),
    member(Column, Range).

valid_board([]).
valid_board([Head|Tail]) :-
    valid_queen(Head),
    valid_board(Tail).

%% helper to get rows.
%%
%% [(row, _), (row, _), (row, _)...
%% gets
%% [row, row, row...
rows([], []).
rows([(Row, _)|Tail], [Row|RowsTail]) :-
    rows(Tail, RowsTail).

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
    length(Board, 8),
    valid_board(Board),

    rows(Board, Rows),
    columns(Board, Columns),
    diagonal1(Board, Diagonals1),
    diagonal2(Board, Diagonals2),

    fd_all_different(Rows),
    fd_all_different(Columns),
    fd_all_different(Diagonals1),
    fd_all_different(Diagonals2).
