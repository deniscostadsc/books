
%% Some implementation of a Fibonacci series. How do they work?

fib(1, 1).
fib(2, 1).
fib(N, X) :- N1 is N - 1, N2 is N - 2, fib(N1, X1), fib(N2, X2), X is X1 + X2.

%% if number is 1, X is 1.
%% if number is 2, X is 1.
%% if number is N, N1 is N - 1, N2 is N - 2, call fib(N1, X1) and fib(N2, X2). X is X1 + X2.
