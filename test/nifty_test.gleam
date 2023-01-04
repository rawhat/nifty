import gleeunit
import gleeunit/should

pub fn main() {
  gleeunit.main()
}

external fn foo(a: Int) -> Int =
  "nifty_ffi" "foo"

external fn bar(a: Int) -> Int =
  "nifty_ffi" "bar"

pub fn it_should_call_foo_test() {
  foo(1)
  |> should.equal(2)
}

pub fn it_should_call_bar_test() {
  bar(2)
  |> should.equal(4)
}
