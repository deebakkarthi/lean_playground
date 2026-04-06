/-

Corecursion spits out states
recursion consumes states

Generative recursion

Adam chipala book on coinductive recursion


Precendence rules for equality

Prod α β

Prod.intro a b

Prop
And P Q And.intro p q


Sum α β

Sum.inl a | Or.inl Or.inr
Sum.inr b |

Empty | False

T -> Empty | ¬ P 

Unit | True : True.intro

T -> W |  P -> Q

T <=> W | P <=> Q


-/

example: (3 = 3) := rfl
example: (2+1 = 1+2) := rfl
example: (∀ {a b:Nat}, a+b = (a+b)) := rfl
example: (∀ (a b:Nat), a+b = (a+b)) :=
  fun (_ _: Nat) => rfl

example: (∀ (a b:Nat), a+b = (a+b-b+b)) := by
  intro a b
  simp

example: (∀ (a b:Nat), a+b = (b+a)) :=  Nat.add_comm
  

