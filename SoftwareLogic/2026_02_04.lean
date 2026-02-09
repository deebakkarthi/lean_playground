/-
Eval (x ∧ y) is pretty easy to implement given some universe

Finding a universe for a given proposition is far more interesting

Valid implies true in all universe
Satisfiable means atleast one universe
Unsatisfiable means no universe satisfies it

SAT solvers are tools that find values for variables that satisfies a proposition
Eg: Z3
Z3_solver python package

SAT solving is NP-complete. Unless P != NP, this is Exponential in the worst case
SAT solvers use some heurisics to run much faster than that in certain situations

-/



