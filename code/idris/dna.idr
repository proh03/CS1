module dna

import list
import pair
import bool
import nat

data base = A | T | C | G
data basePair = mkPair base base

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base
complement_strand nil = nil
complement_strand (h :: t) = map complement_base (h :: t)

strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 (h :: t) = map fst (h :: t)

strand2: list (pair base base) -> list base
strand2 nil = nil
strand2 (h :: t) = map snd (h :: t)

makeBasePair: base -> pair base base
makeBasePair A = mkPair A T
makeBasePair T = mkPair T A
makeBasePair C = mkPair C G
makeBasePair G = mkPair G C

complete: list base -> list (pair base base)
complete nil = nil
complete (h :: t) = map makeBasePair (h :: t)

smBase: base -> base -> Nat
smBase A A  = 1
smBase C C = 1
smBase T T = 1
smBase G G = 1
smBase _ _ = 0

countBase: list base -> base -> Nat
countBase l b = list.foldr plus 0 (map (smBase b) l)

