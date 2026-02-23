/-

Type classes

Total functions can get cumbersome

We need a way to package up this set + operator into something

These are called algebraic structures


MONOID
a type equipped wiht a binary operation, an identity is a Monoid

-/

inductive Duration where
  | zero 
  | one 
  | two


#check Zero

instance : Zero Duration where
  zero := Duration.zero









/-
Torsor
Group of durations over a torsor in time


Vectors act
-/
