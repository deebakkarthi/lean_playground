/-
Dependent Types


How to define
Even numbers
(Nat, Proof that it is even)
This proof is unique that Nat


(2, Proof of 2 %2 == 0)
NOTE this a proof
Not just a predicate. 2%2 == 0 is a predicate
This is a simple example but how do you prove this?

You can reduce the LHS using the function of %
The use equality of LHS and RHS to prove it

This is want we want to prove

Second arg is Prop. Its value is a unique proof

This second arg depends on the first arg. This is a dependent type

Dependent type underpins ∀ and ∃

∀ is a function whose output type depends on the input

Dependent types are also called sigma Σ  types

Normal product types are α × β 
The α and β are independent 
This is defined for any α and any β 


But dependent types are one where there is some relation between α and β 

This is the notation in lean
{x : α // P x}
All x that satisfies the predicate P

How do we know that the predicate is true?
There exists a proof for that P x is true


<v, h>
v: α
h: P v (P depends on the type of v)

Proof of an universal is a total function
This is a dependent function that takes in independent input and a dependent output

∀ x, P x  ==> f : x -> P x
if you can define a total function of x then you've got the proof for P x


Π Type
Vector is a type from the length 
-/

def ZeroNat : Type := { n : Nat // n = 0 }
def theZero : ZeroNat := ⟨0, rfl⟩     -- value 0; proof: 0 = 0


def isEven (n : Nat): Prop := n % 2 = 0
def EvenNat: Type := {n: Nat // isEven n}
def eightEven: EvenNat := ⟨ 4, rfl ⟩ 
#eval eightEven

def fromEvenToOdd (n: EvenNat) : Nat := n.val + 1

#eval (fromEvenToOdd (⟨4, rfl⟩: EvenNat))

def isLong : String -> Prop :=  fun s => s.length > 5

