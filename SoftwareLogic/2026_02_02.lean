/-
Unit is void and void is Unit
Unit is a Type that has only one value


Proof irrelevance is a core part of these proof languages

Suppose we have a Prop with two constructors then they are the *same*
as far as Lean is concerned. You cannot pattern match
-/

namespace CS6501

#check False
#check Empty

inductive P : Type where
| intro: P

inductive Q: Type where


-- We cannot deduce the value of α or β from Neg (α × β)
-- Neg (α × β) tells us that Not (Both are true)
-- But how to tell which one is False
-- Maybe both are false
def dm1 (α β : Prop): (¬α) ∨ (¬β) → ¬(α ∧ β) := by
  intro h
  cases h
  intro p
  let a:= p.left
  rename_i val
  exact val a
  sorry

#eval Or True True


-- deep embedding
-- Syntax of the language exposed as data type


-- Curry-Howard correspondence



inductive CPL:Type where
| var (name : String)
| true: CPL
| false: CPL
| or (P Q: CPL): CPL
| and (P Q: CPL): CPL
| not (P:CPL): CPL
| implies (P Q: CPL)

#check  CPL.not (CPL.or (CPL.var "P") (CPL.var "Q"))

def eval : CPL -> Bool
| CPL.true => Bool.true
| CPL.false => Bool.false
| CPL.or => :wq


end CS6501
