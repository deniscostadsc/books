
%%
%% Find a way to use the print predicates to print only successful
%% solutions. How do they work?
%%

likes(wallace, cheese).
likes(grommit, cheese).
likes(wendolene, sheep).

friend(X, Y) :- \+(X = Y), likes(X, Z), likes(Y, Z), write('They are friends.').

%%
%% I think that the write predicates should be the last rule.
%% How can I print the answer in a recursive code?
%%
