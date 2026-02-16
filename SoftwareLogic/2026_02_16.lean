/-
Function overrriding

Unsatisfiability => not valid
All of them are false
This pattern on bit flipping is used often


Eg: Model to check the strucutral rigidity of a building
Check not (not fail )
-/

import Mathlib.Topology.Basic
#check TopologicalSpace

def isEvenLen (s: String) : Bool := s.length % 2 == 0

def allEv: String -> Bool -> Bool :=
  fun s r => (isEvenLen s) && r

-- Specialized Foldr
def reduceStringsToBool: (String -> Bool -> Bool) -> Bool -> List String -> Bool
| _, id, [] => id
| op, id, h::t => allEv h (reduceStringsToBool op id t)


/-
Monoid
Group operators, identity


inductive Monoid
d: Type
op: α -> α -> α
id: α 
leftid:
∀ n,  op id n = n
rightid:
∀ n, op n id = n
op-assoc:
∀ n, m, p: op n (op m p) = op (op n m) p
-/





/-

Override

Xen chi UVA
ML for optimizing SAT solving
-/


/-
Parametrics vs Ad-hoc polymorhphism

map is parametrically polymorphic

paramteric polymorhphism never introspects the incoming type

ad-hoc is when we introspect into the type

We need a monoid here
-/

