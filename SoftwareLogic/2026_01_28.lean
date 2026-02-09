-- Truth theoretic view
-- Proposition as boolean and connectives



-- Constructive Proposition Logic
-- Proposition as types
-- The values are proofs
-- False Proposition has no values
-- True Proposition has a valid proof

-- Proof of an implication is a function
-- Proof of conjunction is a pair

inductive SkyBlue: Type where
| proof: SkyBlue

inductive EarthGreen: Type where
| proof: EarthGreen

inductive SkyBlueAndEarthGreen: Type where
  | proof: SkyBlue -> EarthGreen -> SkyBlueAndEarthGreen


-- abbrev


-- Introduction creates proof
-- Elimination extracts/uses proofs


-- Disjunction is a Sum type

structure myProd (α : Type)(β : Type) where
  mk :: (fst: α)(snd: β)

def myVar:myProd Nat String := (myProd.mk 1 "String")
#check myProd Nat String

#check False
