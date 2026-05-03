-- more complicated difinitaions for types

  /- number literal to be overloaded. -/
  /- What is the number literal is overloaded -/
  /- e.g. OverloadedString in Haskell -/
  /- `hello = "hello"` is interpretted as both `hello :: Text` and `hello :: String`. -/
-- naming longer identifier for `Nat`
def NaturalNumber : Type := Nat

set_option trace.Meta.synthInstance true
-- absence of instance
-- https://lean-lang.org/doc/reference/latest/Type-Classes/Instance-Synthesis/
def thirtyEight : NaturalNumber := 38

