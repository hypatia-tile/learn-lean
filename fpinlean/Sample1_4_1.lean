#check 1.2
#check -454.2123215
#check 0.0

#check 0

#check (0: Float)

structure Point where
  x : Float
  y : Float

#check ({ x := 0.0, y := 0.0 } : Point)

#check ({ x := 0.0, y := 0.0 } : Point)

structure Point3D where
  x : Float
  y : Float
  z : Float

def zeroX (p : Point) : Point :=
  { p with x := 0 }

def origin := { x := 0.0, y := 0.0 : Point }
#eval { origin with z := 0 : Point3D }

#check Point.mk

structure Point' where
  point ::
    x : Float
    y : Float

def mk (x y : Float): Point' := { x := x, y := y }

#print String.append

structure RectangularPrism where
  hight: Float
  width: Float
  prism: Float

def volume (rp : RectangularPrism) : Float := rp.hight * rp.width * rp.prism

structure Segment where
  α : Point
  β : Point

#check Float.pow 2.0


inductive Bool' where
  | false : Bool'
  | true : Bool'

#check true

#check Nat.zero.succ.succ.succ

def Bool.one (_: Bool) : Nat := 1
#check true.one

def pair : Nat × Nat := (1, 2)

#eval pair.1
#eval { x := 0, y := 1 : Point }.2

#check Nat × Nat

#check { l : List Nat // ∀ x ∈ l, x ≥ 10 }
#check @Subtype (List Nat) fun l => ∀ (x : Nat), x ∈ l → x ≥ 10
