-- How to deal with infinite loops
--  Co-Inductive Type
-- Inductive types consumes data until nothing is left
-- Co-Inductive types generates data until some condition
-- Spitting out output till some condition may be forever


-- Lean using strict eval.
-- f x y z is evaluated by first evaluating x y z to the smallest form
-- Then passed to f

-- Lazy eval is the opposite. It uses something called thunk
