/-
Recursion

use it to model a total function from some domain to some other co-domain

Think about it bottom up

Base case and the step function, I can give you total function

base case and the rules of each constructor, through induction we can compute
anything
-/


def fac0 := 1

def facStep (n facn: Nat) : Nat := (n+1) * facn

#eval (@Nat.rec (fun _ => Nat) fac0 facStep) 5

#check @List.rec

/- Tree of Nat
TreeNat
Binary trees
-/


inductive BinTreeNat where
  | empty
  | node (n: Nat) (l r: BinTreeNat)

#check (@BinTreeNat.rec)


def LenEmptyBinTreeNat := 0

def LenStepBinTreeNat (n: Nat) (left: BinTreeNat) (right: BinTreeNat) (leftLen: Nat) (rightLen: Nat) := n + leftLen + rightLen

def myNode := BinTreeNat.node 42 BinTreeNat.empty BinTreeNat.empty
#reduce (@BinTreeNat.rec (fun _ => Nat) LenEmptyBinTreeNat LenStepBinTreeNat) ( BinTreeNat.node 1 BinTreeNat.empty BinTreeNat.empty)

/- BinTreeNat.rec.{u, u_1} {motive : BinTreeNat → Sort u}
 (empty : motive BinTreeNat.empty)
 (node : {Node : Sort u_1} → (n : Node) → (l r : BinTreeNat) → motive l → motive r → motive (BinTreeNat.node n l r)) 
 (t : BinTreeNat) : motive t -/



 /-
 Generative vs structural recursion

 quick sort vs merge sort
 -/
