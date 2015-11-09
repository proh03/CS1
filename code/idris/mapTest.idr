module mapTest

import list
import nat
import bool
import ite

list01: list Nat
list01 = nil

list02: list nat
list02 = (S O) :: S(S(S O)) :: nil

mf01: list bool
mf01 = map evenb list02


list03: list nat
list03 = (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

list04: list nat 
list04 = (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

map03: list bool
map03 = map evenb list03

filter04: list nat
filter04 = filter evenb list04


