%%%-------------------------------------------------------------------
%% @doc structs public API
%% @end
%%%-------------------------------------------------------------------

-module(structs_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    structs_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
