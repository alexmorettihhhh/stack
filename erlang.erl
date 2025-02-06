-module(stack).
-export([new/0, push/2, pop/1, peek/1, is_empty/1]).

new() -> [].

push(Item, Stack) -> [Item | Stack].

pop([]) -> erlang:error("Stack is empty");
pop([Head | Tail]) -> {Head, Tail}.

peek([]) -> erlang:error("Stack is empty");
peek([Head | _]) -> Head.

is_empty([]) -> true;
is_empty(_) -> false.

% Usage:
% Stack = stack:new(),
% Stack1 = stack:push(1, Stack),
% Stack2 = stack:push(2, Stack1),
% {Popped, Stack3} = stack:pop(Stack2),
% io:format("~p~n", [Popped]).  % 2