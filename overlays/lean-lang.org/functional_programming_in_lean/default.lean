def maximum (n: Nat) k := if n < k then k else n

def bigger (n: Nat): Nat -> Nat := maximum n

def Str: Type := String

def NatNum: Type := Nat

def nat_num: NatNum := (42 : Nat)

abbrev NN := Nat

structure Limits where
  size: Nat
  price: Nat
deriving Repr

def Limits.reduceSize (l: Limits) (n: Nat) : Limits :=
  { l with size := l.size - n}

structure Order where
  limit: Nat
  price: Nat
deriving Repr





#eval maximum 42 13

#eval ({ size := 42, price := 13: Limits }).reduceSize 2
