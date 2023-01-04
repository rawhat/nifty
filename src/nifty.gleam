import gleam/io

external fn foo(value: Int) -> Int =
  "nifty_ffi" "foo"

external fn bar(value: Int) -> Int =
  "nifty_ffi" "bar"

pub fn main() {
  io.debug(#("foo", foo(1)))
  io.debug(#("bar", bar(2)))
}
