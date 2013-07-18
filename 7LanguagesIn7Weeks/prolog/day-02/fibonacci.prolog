
%% Some implementations of a Fibonacci series and factorials. How
%% do they work?

fib(1, 1).
fib(2, 1).
fib(N, X) :- N1 is N - 1, N2 is N - 2, fib(N1, X1), fib(N2, X2), X is X1 + X2.

fat(0, 1).
fat(1, 1).
fat(2, 2).
fat(N, X) :- N1 is N - 1, fat(N1, X1), X is X1 * N.
