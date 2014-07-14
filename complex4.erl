-module(complex4).
-export([foo/1, bar/1]).

foo(X) ->
  call_cnode({foo, X}).
bar(Y) ->
  call_cnode({bar, Y}).

call_cnode(Msg) ->
  {any, 'cnode@alpha.example.com'} ! {call, self(), Msg},
  receive
    {cnode, Result} ->
      Result
  end.
