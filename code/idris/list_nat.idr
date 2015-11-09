module list_nat

import nat
import pair

data list_nat = nil | cons nat list_nat

l0: list_nat
l0 = nil

l1: list_nat
l1 = cons O nil 

l2: list_nat -- list 1,2
l2 = (cons (S O) (cons (S(S O)) nil))

l3: list_nat -- list 1,2,3
l3 = (cons (S O) (cons (S(S O)) (cons (S(S(S O))) nil)))

len: list_nat -> nat
len nil = O
len (cons n l') = S (len l')

len_13: nat
len_13 = length l3

appd: pair list_nat list_nat -> list_nat
appd (mkPair nil nil) = nil
appd (mkPair nil (cons h t)) = (cons h t)
appd (mkPair (cons h t) nil) = (cons h t)
appd (mkPair (cons h1 t1) (cons h2 t2)) = cons h1 (appd (mkPair t1 (cons h2 t2)))

--  (cons h1 (append mkPair ((cons t1) (cons h2 t2))))
 -- append (mkPair (cons h1 t1) (cons h2 t2)) =

 -- cons h1 (append (mkPair t1 (cons h2 t2))

--(cons h (append (mkPair (cons t nil) (cons e a))))
-- ^ also doesn't work
-- append (mkPair (cons h t) (cons e a)) = (cons h (append (mkPair (cons nil t) (cons e a))))


-- what I have above doesn't work

-- (cons h (append (mkPair (cons nil t) (cons e a)))) --this is so wrong


 --  (cons (append h t) (append e a)) Can't do this though bc append
   --  gives a list
 
 
