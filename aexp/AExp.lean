inductive Expr where
  | num (i : Int)
  | add (l r : Expr)
  | mul (l r : Expr)
  deriving Repr

def eval : Expr → Int
  | .num n => n
  | .add e1 e2 => eval e1 + eval e2
  | .mul e1 e2 => eval e1 * eval e2

declare_syntax_cat aexp

syntax num : aexp
syntax aexp "+" aexp : aexp
syntax aexp "*" aexp : aexp
syntax "(" aexp ")" : aexp

syntax "[aexp|" aexp "]" : term

macro_rules
  | `([aexp| $n:num]) => `(Expr.num $n)
  | `([aexp| $e1 + $e2]) => `(Expr.add [aexp| $e1] [aexp| $e2])
  | `([aexp| $e1 * $e2]) => `(Expr.mul [aexp| $e1] [aexp| $e2])
  | `([aexp| ($e)]) => `([aexp| $e])

def myExpr := [aexp| (3 + 4) * 2]

#eval eval myExpr
