/- NL is very ambigous
Need a formal mathematical language to express things concisely


Syntax as datatype
Semantics as a function
  notation for "eval e i" is  "[ e ] i"

the brackets are thicker


lean can be  compiled to C which can then be compiled anywhere


prop logic is decidable
Predicate logic  is not decidable (Godel)
Hilbert failed attempt


Lean Types

Nat
List α is a polymorphic type


Interpretations as function


    P | Q
    ------
f_1    0 | 0
f_2   0 | 1
f_3  1 | 0
f_4  1 | 1

Each row will have a corresponding function


Peano Arithmetic


Natural numbers {0, ...}

-/
#check Nat

inductive myNat where
| zero : myNat
| succ (n: myNat) : myNat

#eval myNat.zero 
#eval myNat.succ myNat.zero

-- succ is injective. In lean constructors in general are injective

def dec: myNat -> myNat
  | myNat.zero => myNat.zero
  | myNat.succ n => n


def dec2: myNat -> myNat
| myNat.zero => myNat.zero
| myNat.succ myNat.zero => myNat.zero
| myNat.succ (myNat.succ n) => n


def factorial: Nat -> Nat
| 0 => 1
| Nat.succ n => (n+1) * factorial (n)

#eval factorial 2
#eval factorial 5



def myAdd: Nat-> Nat -> Nat
| 0,n => n
| (Nat.succ n), m => Nat.succ (myAdd n m)

#eval myAdd 0 4
#eval myAdd 0 10
#eval myAdd 3 10
#eval myAdd 0 2


def myMult: Nat -> Nat -> Nat
| 0, _ => 0
-- (1 + n) * m = m + n*m
| (Nat.succ n), m => myAdd m (myMult n m)

#eval myMult 0 1
#eval myMult 1 4
#eval myMult 4 0

#eval dec2 myNat.zero
#eval dec2 (myNat.succ (myNat.succ myNat.zero))

#check List

def emptyList: List Nat := List.nil
def singleton := List.cons 0 emptyList
#eval singleton
#eval [0, 1, 2]
#eval 5::[0, 1, 2, 4]


def head: List Nat -> Nat
| [] => 0
| h::_ => h

def length: List α -> Nat
| []  => 0
| _::t => 1 + length t


def append: List α -> List α -> List α
| [], l => l
| h::t, l => h::(append t l)


#eval append [1, 2, 3] [4, 5, 6]
#eval append [1, 2, 3] []
#eval append [] [1, 2, 3]
#eval ((append [] []): List Nat)

#check Option


inductive myOption  (α: Type) where
  | NULL
  | some (val: α)

def betterDec : Nat -> myOption Nat 
| 0 => myOption.NULL
| Nat.succ n => myOption.some n

#eval betterDec 5
#eval betterDec 0

