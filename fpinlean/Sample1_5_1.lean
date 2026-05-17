def isZero (n: Nat) : Bool :=
  match n with
  | Nat.zero => true
  | Nat.succ _k => false


#check isZero Nat.zero
#check isZero (1).succ
#eval isZero 0
#eval isZero 2

structure Point3D where
  x : Float
  y : Float
  z : Float
def depth (p : Point3D) : Float :=
  match p with
  | {x:=_, y:=_, z:=d} => d

def even (n : Nat) : Bool :=
  match n with
  | Nat.zero => true
  | Nat.succ k => not (even k)

#eval even 0
#eval even 1

partial def evenLoops (n : Nat) : Bool :=
  match n with
  | Nat.zero => true
  | Nat.succ k => not (evenLoops (k.succ))

/- #eval evenLoops 0 -/
/- #eval evenLoops 1 -/

def plus (n : Nat) (k : Nat) : Nat :=
  match k with
  | Nat.zero => n
  | Nat.succ k' => Nat.succ (plus n k')

def div (n : Nat) (k : Nat) : Nat :=
  have :  n - k < n := sorry
  if n < k then
    0
  else Nat.succ (div (n - k) k)

structure PPoint (α : Type) where
  x : α
  y : α

def natOrigin : PPoint Nat := {x := 0, y := 0}

def replaceX (α : Type) (point : PPoint α) (newX : α) : PPoint α :=
  match point with
  | {x:=_, y:=y} => {x := newX, y := y}

#check PPoint.mk (α := Nat)

#eval replaceX Nat natOrigin 5

#check (1 : Float)

#check ite
/- open Classical -/

noncomputable def judge (P : Prop) : String :=
  if P then "True"
  else "False"
