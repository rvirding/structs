%% Structs.hrl

-compile({parse_transform, structs_transform}).

%% Pseudo record used by struct macros. It is never really defined but
%% the structs parse transform "knows" how it is used.

%% -record('__elixir_struct__', {module,fields}).

-define(STRUCT(M), #'__elixir_struct__'{module=M, fields=[]}).
-define(STRUCT(M, Fs), #'__elixir_struct__'{module=M, fields=Fs}).
