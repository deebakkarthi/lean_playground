/-
Higher order function

either takes func as arg or return func or both

def map : List α -> List β


functor

Some collection to another collection but each element transformed

map is a special case where the collection is a List

-/


def myMap: (List α) -> (α -> β) -> (List β)
| [], _ => []
| h::t, f => (f h) :: (myMap t f)

def exp (x:Nat) : Nat := x*x

#eval myMap [1, 2, 3] (fun x:Nat => x*2)
#eval myMap [1, 2, 3] (fun x:Nat => 10*x)
#eval myMap [1, 2, 3] exp


def reduce (op: α -> α -> α) -> (List α)


/-
List of  strings to bool
reduce oand (map isEven (x:xs))

-/




