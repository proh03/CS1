module Box
import bool 

data Box = mkBox bool
--data is function that takes boolean value

b1: Box
b1 = mkBox true

b2: Box
b2 = mkBox false

unbox: Box -> bool
unbox(mkBox x) = x
