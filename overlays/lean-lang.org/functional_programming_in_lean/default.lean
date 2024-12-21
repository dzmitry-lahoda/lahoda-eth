def maximum (n: Nat) k := if n < k then k else n

def bigger (n: Nat): Nat -> Nat := maximum n

def Str: Type := String

def NatNum: Type := Nat

def nat_num: NatNum := (42 : Nat)

abbrev NN := Nat

#eval maximum 42 13
