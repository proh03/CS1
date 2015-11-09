import set_adt_hw
import bool
import option
import pair
import list
import nat
import list
import ite
import eq

-- TEST CASES

list1: list nat
list1 = (S O) :: (S(S(S O))) :: nil

set1: set nat
set1 = mkSet list1

list2: list nat
list2 = (S(S(S(S(S O))))) :: (S O) :: (S(S(S(S O)))) :: nil

set2: set nat
set2 = mkSet list2

list3: list nat
list3 = (S(S O)) :: (S(S(S(S O)))) :: nil

set3: set nat
set3 = mkSet list3

srem: set nat
srem = set_remove (S O) set1
-- expect (S(S(S O))) :: nil

scard: nat
scard = set_cardinality set1
-- expect S(S O)

smem1: bool
smem1 = set_member (S O) set1
-- expect true

smem2: bool
smem2 = set_member (S(S(S(S(S O))))) set1
-- expect false

suni: set nat
suni = set_union set1 set2
 -- expect (S(S(S O))) :: (S(S(S(S(S O))))) :: (S O) :: S(S(S(S O)))
   -- :: nil

sint: set nat
sint = set_intersection set1 set2
-- expect (S O) :: nil

sdiff: set nat
sdiff = set_difference set1 set2
-- this one isn't working

sforall1: bool
sforall1 = set_forall evenb set2
-- expect false - this doesn't work

sforall2: bool
sforall2 = set_forall evenb set3
-- expect true

sexists1: bool
sexists1 = set_exists evenb set2
-- expect true
-- haha

sexists2: bool
sexists2 = set_exists oddb set3
-- expect false

swit1: option nat
swit1 = set_witness evenb set1
-- expect none

swit2: option nat
swit2 = set_witness evenb set2
-- expect some nat
-- sort of works. Not completely. But when I try to switch it to some
  -- a (some value of type a) in the set_adt_hw file, it doesn't compile

sprod: set (pair nat nat)
sprod = set_product set1 set2
-- expect (1, 5), (1, 1), (1, 4), (3, 5), (3, 1), (3, 4), O
