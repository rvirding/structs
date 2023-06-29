# structs

An Elixir struct handler for Erlang

## Build

```shell
    $ rebar3 compile
```

## Simple example

```erlang
-module(mt).

-include_lib("structs/include/structs.hrl").

-export([a/0,b/1]).

-defstruct([{m, 42}, {n, 99}, {o, 999}]).

a() ->
    %% ?STRUCT(mt, [{m, erlang:time()},{p, 111}]).
    ?STRUCT(mt, [{m, erlang:time()},{n, 111}]).

b(?STRUCT(mt, [{n, 99}]) = M) ->
    M#{m => erlang:time()}.
```
