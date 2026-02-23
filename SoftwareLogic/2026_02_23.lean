/-
Part 1. Propositional logic using lean data structures
  Product types for conjuction
  Sum types  for disjunction
  -> Empty for Not

Part 2. Propositional logic using deep embedding

Part 3. Higher order functions
    - Map
    - foldr

Part 4.
HOF required an operator and a set. This required some janky syntax, we move
on to packing operator plus set.
- Monoid
- Algebraic structures
- Groups
- Torsor

Third language in lean
Geometric language
Torsors over group actions

Example
Durations in a clock

Noon-> Afternoon-> Evening

Duration Group  
- Objects {0, 1, 2}
- operator +
- Zero
- Inverse

Torsor
t_0 =  noon
t_1 =  afternoon
t_2 = evening

point + vector = point
0 over t_0 = t_0
1 over t_1 = t_1
2 over t_2 = t_2

point - point = vector

vector + vector = vector

But cannot add points
This is what torsor captures.
There is no origin




So the durations can be thought of as a group of differences
Torsor or the points are more fundamental and the differences between them 
gives us the group
This group can be thought of as a vector (They are not really one) but can 
be thought of that way

Carrier set for the group
{0, 1, 2}

Monoid +       Iterated addition, scalar addition by nats
Group +, -
Ring +, -, ×  May not have multiplicative inverse
Field +, -, ×, ÷ Have multiplicative inverse     Real scalars

Vector space Multiply by any amount
- Continuous

Real to Rationals don't have typical norms as we don't have square roots in rational


lean allows us arbitrary formalism of any domain
This allows provably correct software engineering


-/
