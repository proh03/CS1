module boolTest

import bool
import pair

b1: bool
b1 = (and true true)
-- expect truex
b2: bool
b2 = (and true false)
-- expect false
b3: bool
b3 = (and false true)
-- expect false
b4: bool
b4 = (and false false)
-- expect false
b5: bool
b5 = (or false false)
-- expect false
b6: bool
b6 = (or true true)
-- expect true
b7: bool
b7 = (or true false)
-- expect true
b8: bool
b8 = (or false true)
-- expect true
b9: bool
b9 = (xor true false)
-- expect true
b10: bool
b10 = (xor false true)
-- expect true
b11: bool
b11 = (xor false false)
-- expect false
b12: bool
b12 = (xor true true)
-- expect false
b13: bool
b13 = (nand true true)
-- expect false
b14: bool
b14 = (nand true false)
-- expect true
b15: bool
b15 = (nand false true)
-- expect true
b16: bool
b16 = (nand true true)
-- expect true

