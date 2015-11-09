module bool

import pair

data bool = true | false

bool_id: bool -> bool 
bool_id b = b

constFalse: bool -> bool 
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

pand: bool -> bool -> bool
pand true = bool_id
pand false = constFalse

por: bool -> bool -> bool
por true = constTrue
por false = bool_id

pxor: bool -> bool -> bool
pxor true = not
pxor false = bool_id

pnand: bool -> bool -> bool
pnand true = not
pnand false = constTrue

and: bool -> bool -> bool
and true true = true
and _ _ = false

uf: bool -> bool
uf = (and true)

or: bool -> bool -> bool
or false false = false
or _ _ = true

xor: bool -> bool -> bool
xor true false = true
xor false true = true
xor _ _ = false

nand: bool -> bool -> bool
nand true true = false
nand _ _ = true

--{ Exam Problem #2: There are 16 possible ways to fill in the result
  --column for a truth table for a binary Boolean function, and there
  --are thus exactly 16 such functions, and no more 

eql_bool: bool -> bool -> bool
eql_bool true true = true
eql_bool false false = false
eql_bool _ _ = false
