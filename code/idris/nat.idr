module nat

import bool
import pair
import eq


data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false


||| returns the successor of any given nat
succ: nat -> nat
succ n = S n


||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n


||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)


||| given a pair of natural numbers, return its sum

add: nat -> nat -> nat
add O m = m
add (S n) m = S(add n m)

pf: nat -> nat
pf = add (S (S O))



||| given a pair of natural numbers, return its product
mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

fact: nat -> nat
fact O = S O
fact (S n) = mult (S n) (fact n)

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

exp: nat -> nat -> nat
exp x O = S O
exp x (S n) = mult x (exp x n)

le: nat -> nat -> bool
le O m = true
le (S n) O = false
le (S n) (S m) = le n m

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat O b = false
eql_nat a O = false
eql_nat (S a) (S b) = eql_nat a b


-- having trouble distinguishing b/w gtp and gep

gt: nat -> nat -> bool
gt O (S b) = false
gt (S a) O = true
gt (S a) (S b) = gt a b

ge: nat -> nat -> bool
ge a b = not (le a b)

lt: nat -> nat -> bool
lt a b = not (gt a b)

-- could not figure out how to do fib because I missed the
  -- definition/implementation when we did it for the lab extra credit

instance eq nat where
  eql n1 n2 = eql_nat n1 n2
