module natTest
import nat
import pair
import bool

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
t: nat
t = S (S O)

-- three
r: nat
r = S t 
--four
f: nat
f = S r
-- five
v: nat
v = S f
-- six
j: nat
j = S v






n1: nat
n1 = (add O (S O))
-- expect S O
n2: nat
n2 = (add (S(S O)) (S(S(S O))))
-- expect S(S(S(S(S O))))
n3: nat
n3 = (mult O (S O))
-- expect O
n4: nat
n4 = (mult (S O) (S(S(S O))))
-- expect S(S(S O))
n5: nat
n5 = (fact O)
-- expect S O
n6: nat
n6 = (fact (S(S(S O))))
-- expect S(S(S(S(S(S O))))) 
n7: nat
n7 = (sub O (S O))
-- expect O
n8: nat
n8 = (sub (S O) O)
--expect S O
n9: nat
n9 = (sub (S(S(S O))) (S O))
-- expect S(S O)
n10: nat
n10 = (exp (S(S(S O))) O)
-- expect S O
n11: nat
n11 = (exp (S(S O)) (S(S O)))
-- expect S(S(S(S O)))
n12: bool
n12 = (le O (S(S O)))
-- expect true
n13: bool
n13 = (le (S(S(S O))) O)
-- expect false
n14: bool
n14 = (le (S(S O)) (S(S(S(S O)))))
-- expect true
n15: bool
n15 = (le (S(S(S O))) (S O))
-- expect false
n16: bool
n16 = (eq O O) 
-- expect true
n17: bool
n17 = (eq O (S O))
-- expect false
n18: bool
n18 = (eq (S O) (S O))
-- expect true
n19: bool
n19 = (gt O (S O))
-- expect false
n20: bool
n20 = (gt (S O) O)
-- expect true
n21: bool
n21 = (gt (S O) (S(S O)))
-- expect false
n22: bool
n22 = (gt (S(S(S O))) (S O))
-- expect true
n23: bool
n23 = (ge O O)
-- expect true
n24: bool
n24 = (ge (S O) O)
-- expect true
n25: bool
n25 = (ge O (S O))
-- expect false
n26: bool
n26 = (ge (S(S O)) (S O))
-- expect true
n27: bool
n27 = (ge (S O) (S(S O)))
-- expect false
n28: bool
n28 = (lt O (S O))
-- expect true
n29: bool
n29 = (lt (S O) O)
-- expect false
n30: bool
n30 = (lt (S(S(S O))) (S O))
-- expect false
n31: bool
n31 = (lt (S O) (S(S(S O))))
-- expect true

