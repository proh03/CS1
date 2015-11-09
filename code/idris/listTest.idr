module listTest

import nat
import pair
import bool
import list

l1: list Nat
l1 = nil

len_l1: Nat
len_l1 = length l1
-- expect 0

l2: list Nat
l2 = cons 2 (cons 3 (cons 4 nil))

len_l2: Nat
len_l2 = length l2
-- expect 3

app_l1_l1: list Nat
app_l1_l1 = app l1 l1
-- expect nil

app_l1_l2: list Nat
app_l1_l2 = app l1 l2
-- expect l2 (2, 3, 4, nil)

app_l2_l1: list Nat
app_l2_l1 = app l2 l1
-- expect (nil, 2, 3, 4)

app_l2_l2: list Nat
app_l2_l2 = app l2 l2
-- expect (2, 3, 4, nil, 2, 3, 4, nil)
-- old list stuff:

data list' a = nil' | cons a (list' a)

length: list a -> Nat
length nil = 0
length (cons n l') = 1 + (length l')

app: list a -> list a -> list a
app nil nil = nil
app nil (cons h t) = cons h t
app (cons h t) nil = cons h t
app (cons h1 t1) (cons h2 t2) = cons h1 (app t1 (cons h2 t2))

l0: Nat
l0 = length (cons 0 nil)

l1: Nat
l1 = length (cons true nil)

lx: list Nat
lx = nil

l2: Nat
l2 = length nil {a = Nat}
-- type inference



-- new list test code


li: list' bool
li = true :: false :: true :: true :: nil'
-- can write code that looks cleaner

length'': list a -> nat
length'' nil = O
length'' (h :: t) = S (length'' t)

append: list a -> list a -> list a
append nil l2 = l2
append (h :: l1') l2 = h :: (append l1' l2)


-- test cases for map
list01: list Nat
list01 = nil

list02: list Nat
list02 = 8 :: 4 :: 5 :: nil

oldlist1: list nat
oldlist1 = (S O) :: (O):: (S(S(S(S O)))) :: (S(S(S O))) :: nil

isThree: bool
isThree = (member (S(S(S O))) oldlist1)
