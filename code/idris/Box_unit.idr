module Box

import unit 

data Box = mkBox unit

b1: Box --is going to be bound by type box
b1 = (mkBox mkUnit)

unbox: Box -> unit
unbox _ = mkUnit

