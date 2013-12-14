
%% Find the smallest element of a list.

smallest([X], X).
smallest([Head|Tail], X) :- smallest(Tail, TailMin), X is min(Head,TailMin).

%% I found this solution on the internet. 8P 
