module list

import nat
import pair
import bool
import ite
import option
import unit
import eq

infixr 7 :: , ++

data list a = nil | (::) a (list a)


-- have to tell that it is meant to be an infix operator (don't have
  -- to use it in front of the thing

length: list a -> Nat
length nil = 0
length (n :: l') = 1 + (length l')

app: list a -> list a -> list a
app nil nil = nil
app nil (h :: t) = h :: t
app (h :: t) nil = h :: t
app (h1 :: t1) (h2 :: t2) = (h1 :: (app t1 (h2 :: t2)))


||| append as an infix operator ++
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::t) l2 = h::(t++l2)

map: (a -> b) -> list a -> list b
map f nil = nil
map f (h :: t) = (f h) :: (map f t)

filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h :: t) = ite (f h)
                   (h :: (filter f t))
                   (filter f t) 

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

tail: list a -> option (list a)
tail nil = none
tail (h :: t) = some t

-- eql: a -> a -> bool
-- eql v1 v2 = ?big_hole

member: (eq a) => a -> list a -> bool 
member v nil = false
member v (h :: t) = ite (eql v h)
                        true
                        (member v t)
-- a has to be a member of the eq type class

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h :: t) nil = false
  eql nil (h :: t) = false
  eql (h1 :: t1) (h2 :: t2) = 
    and (eql h1 h2) (eql t1 t2)

subset_elements:(eq a) => (list a) -> (list a) -> bool
subset_elements nil nil = true
subset_elements nil (h :: t) = false
subset_elements (h :: t) nil = false
subset_elements (h1 :: t1) (h2 :: t2) = eql (h1 :: t1) (h2 :: t2)

same_elements: (eq a) => (list a) -> (list a) -> (bool -> bool)
same_elements (h1 :: t1) (h2 :: t2) = pand ((subset_elements (h1 :: t2) (h2 :: t2)) (subset_elements (h2 :: t2) (h1 :: t2)))
