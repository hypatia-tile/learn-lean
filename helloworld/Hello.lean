def main : IO Unit := IO.println "Hello, World!"

#eval "hello"

#eval 1 + 2

#eval String.append "Hello, " "World!"

#eval String.append "great " (String.append "oak " "tree")

#eval String.append "it is " (if 1 < 2 then "yes" else "no")

#eval String.append "it is " (if 1 > 2 then "yes" else "no")

#eval 42 + 19
#eval String.append "A" (String.append "B" "C")
#eval String.append (String.append "A" "B") "C"
#eval if 3 == 3 then 5 else 7
#eval if 3 == 4 then "equal" else "not equal"

#eval (1 - 2: Nat)

#check_failure String.append ["hello", " "] world

def maximum (n: Nat) (k : Nat) : Nat :=
  if n < k then
    k
    else n

def add1 (n: Nat): Nat :=  n + 1
example : Nat -> Nat := add1
#check maximum 2

def joinStringsWith connective fst sec := String.append fst (String.append connective sec)

#eval joinStringsWith ", " "one" "two"
#check joinStringsWith 

def volume (height: Nat) width depth := height * width * depth

#eval volume 12 2 3

def Str : Type := String

def aStr : Str := "This is a string"

set_option trace.Meta.synthInstance true
def NaturalNumber : Type := Nat

λ α ↦ α + 1







