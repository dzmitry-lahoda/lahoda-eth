def maximum (n: Nat) k := if n < k then k else n

def bigger (n: Nat): Nat -> Nat := maximum n

def Str: Type := String

def NatNum: Type := Nat

def nat_num: NatNum := (42 : Nat)

abbrev NN := Nat

abbrev Size := Nat
abbrev Price := Nat


structure Limits (α : Type) (β: Type) where
  size: α
  price: β
deriving Repr

def Limits.reduceSize (l: Limits) (n: Size) : Limits :=
  { l with size := l.size - n}

structure Order where
  limit: Limits

deriving Repr

inductive FillMode where
  | fillOrKill : FillMode
  | immediateOrCancel : FillMode
  | postOnly : FillMode
  | limit : FillMode


def is_immediate_or_cancel(f:FillMode): Bool :=
  match f with
    | FillMode.immediateOrCancel | FillMode.fillOrKill  => true
    | _ => false


inductive Side where
  | buy : Side
  | sell : Side

def side := Side.buy

#eval Nat.succ 42

#eval maximum 42 13

#eval ({ size := 42, price := 13: Limits }).reduceSize 2
