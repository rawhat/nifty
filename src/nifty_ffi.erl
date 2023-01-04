-module(nifty_ffi).

-export([foo/1, bar/1]).

-nifs([{foo, 1}, {bar, 1}]).

-on_load init/0.

init() ->
  Priv = code:priv_dir(nifty),
  Path = filename:join(Priv, nifty_ffi),
  erlang:load_nif(Path, 0).

foo(_X) ->
  exit(nif_library_not_loaded).

bar(_Y) ->
  exit(nif_library_not_loaded).
