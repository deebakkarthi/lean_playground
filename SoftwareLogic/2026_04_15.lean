-- Equality is just a type

-- Elimination rule for Or



example: 2+3 = 5 := rfl


example: (n = n) := rfl

def zero_add_proof : (n: Nat) -> 0 + n = n
  | 0 => rfl
  | n' + 1 => congrArg ( · +1) (zero_add_proof n')
