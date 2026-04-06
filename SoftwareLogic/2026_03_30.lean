/-
How to prove for all Nat


Proof for zero

Proof for N+1 given N


Induction gives you this for free

If you the above two then you have a proof for ∀
-/

/-Family of proposition indexed by a natural number-/
-- Fiber bundle
inductive Ev : Nat -> Prop
| ev0: Ev 0
| step2: (n: Nat) -> (nEv: Ev n) -> (Ev (n+2))


def zeroEv := Ev.ev0
def twoEv:= Ev.step2 0 zeroEv
def extractN {n: Nat} (_: Ev n) : Nat:= n
#eval extractN twoEv

example: Ev 100 := by
  repeat (apply Ev.step2)
  exact Ev.ev0
/-
cannot extract data from proofs
-/
