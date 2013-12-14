
%% Some implementation of factorial. How do they work?

fat(0, 1).
fat(1, 1).
fat(N, X) :- N1 is N - 1, fat(N1, X1), X is X1 * N.

%% if N is 0 or 1, X is 1.
%% N1 is N - 1, call fat(N1, X1) and X is X1 * N.
