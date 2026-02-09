#check Bool -- This is an algebraic data type
-- This has a form of either-or
-- Bool is either True or False
#check Nat -- Includes 0
#check String


namespace CS6501

-- Define new datatype
-- Another keyword is struct


-- Bool: Type is a type judgement
inductive Bool : Type where
  | false : Bool
  | true : Bool

end CS6501

def aBool1 : Bool := true
def foo: String := "bar"
def baz: Nat := 69
-- Type inference
def bar := 69
def myFloat := 1


#check myFloat

-- -> is right associate
#check Bool -> Bool -> Bool
#check Bool -> (Bool -> Bool)
#check (Bool -> Bool) -> Bool

-- Arithmetic is left associate
#eval 8 - 5 - 2
#eval 8 - 5 - 2


#eval 1 == 1

#check Bool.and
#check (Bool.and)


#check ((Bool.and true) false)


def addn: Nat -> (Nat -> Nat) :=
  (fun (n: Nat) => 
  fun (m: Nat) => n+m
  )

def add10: Nat -> Nat :=
  (Nat.add 10)

#eval add10 1

-- Identity
def id_bool: Bool -> Bool := fun (n: Bool) => n
def id_bool1: Bool -> Bool := λ (n: Bool) => n

def id_nat: Nat -> Nat :=  fun n => n

def id_poly: (T: Type) -> (v: T) -> T :=
  fun (α : Type) (a: α) => a



def myNot: Bool -> Bool
  | true => false
  | false => true

#eval myNot true
#eval myNot false

inductive Filling where
  | meat
  | cheese

inductive Bread where
  | wheat
  | rye

inductive Sandwich where
  | make (b: Bread) (f: Filling)


