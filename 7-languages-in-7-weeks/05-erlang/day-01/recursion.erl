-module(recursion).
-export([count_words/1]).
-export([count_to_ten/0]).

count_words("") -> 0;
count_words(String) ->
    Last_words = string:join(tl(string:tokens(String, " ")), " "),
    1 + count_words(Last_words).

count_to_ten() -> count_to_ten(0).

count_to_ten(10) ->
    io:fwrite("~p~n", [10]);
count_to_ten(Number) -> 
    io:fwrite("~p~n", [Number]),
    count_to_ten(Number + 1).
