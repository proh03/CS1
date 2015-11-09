module Box

import bool
import unit --results in a type error

data Box = mkBox bool

b1: Box --is going to be bound by type box
b1 = (mkBox true)

b2: Box
b2 = (mkBox false)

unbox: Box -> bool
unbox (mkBox b) = b

