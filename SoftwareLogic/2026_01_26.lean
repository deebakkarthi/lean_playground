def implies: Bool -> Bool -> Bool := 
  fun b1 =>
    fun b2 =>
      match b1 with
      | true =>
        match b2 with
        | true => true
        | false => false
      | false =>
        match b2 with
        | true => true
        | false => true

#eval implies false false
#eval implies false true
#eval implies true false
#eval implies true true

def implies2: Bool -> Bool -> Bool
| b1, b2 => 
      match b1 with
      | true =>
        match b2 with
        | true => true
        | false => false
      | false =>
        match b2 with
        | true => true
        | false => true

def implies3: Bool -> Bool -> Bool
| false, _ => true
| true, true => true
| true, false => false

def implies4 (b1 b2: Bool) : Bool := 
  match b1, b2 with
  | true, false => false
  | _, _ => true



inductive Pet where
| cat
| dog
| bird

def says(p: Pet) : String :=
match p with 
  | Pet.cat => "Meow"
  | Pet.dog => "Woof"
  | Pet.bird => "Tweet"


def implies_tactic (b1 b2: Bool): Bool := by
  cases h1: b1
  cases h2: b2
  exact true
  exact true
  cases h2: b2
  exact false
  exact true


structure myStruct where
(one: Nat)
(two: Nat)
(three: Nat)


def myFunc : myStruct -> Nat
|  ⟨ _, _, t⟩ => t

def myFunc2 : myStruct -> Nat
|  s => s.three

def myFunc3 (s: myStruct ): Nat := s.three


def myFunc4:  (myStruct) -> Nat
| myStruct.mk _ _ _ => 1
