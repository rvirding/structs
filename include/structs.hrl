%% Structs.hrl

-compile({parse_transform, structs_transform}).

%% -record('__elixir_struct__', {mod,fields}).

-define(STRUCT(M), #'__elixir_struct__'{module=M, fields=[]}).
-define(STRUCT(M, Fs), #'__elixir_struct__'{module=M, fields=Fs}).
