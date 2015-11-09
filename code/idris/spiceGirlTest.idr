module spiceGirlTest

import SpiceGirl
import relation
import bool
import list
import pair

sgAges: list Nat
sgAges = map age spiceGirls
-- expect 40, 41, 39, 43, 41

sgNames: list String
sgNames = map name spiceGirls
-- expect MelanieB :: MelanieC :: Emma :: Geri :: Victoria :: nil

marriedNames: String
marriedNames = query2 spiceGirls maritalStatus name (++) ""
-- expect: MelanieB, Geri, Victoria

howManyMarried: Nat
howManyMarried = count_rel spiceGirls maritalStatus
-- expect 3

ageSumMarried: Nat
ageSumMarried = sum_rel spiceGirls maritalStatus age
-- expect 124

aveAgeMarried: pair Nat Nat
aveAgeMarried = ave_rel spiceGirls maritalStatus age
-- expect 124 3
