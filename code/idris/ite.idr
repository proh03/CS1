module ite

import bool
import nat
import pair

ite: bool -> a -> a -> a 
ite true tb fb = tb
ite false tb fb = fb
