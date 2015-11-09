module relationTest

import relation
import bool
import pair
import nat
import list
import Person
import people

years': Nat
years' = query plus 0 age gender people

totalHeight: Nat
--names = "Foo " ++ "Bar"
totalHeight = query plus 0 height gender people

names: String
names = query (++) "" name gender people

years'': Nat
years'' = query2 people gender age plus 0

totalInches'': Nat
totalInches'' = query2 people gender height mult 1

names'': String
names'' = query2 people gender name (++) ""

aveAge: pair Nat Nat
aveAge = mkPair 
           (query2 people gender age plus 0) 
           (query2 people gender countOne plus 0)

aveAge': pair Nat Nat
aveAge' = ave_rel people gender age


-- NEW TESTS using newPeople list
 -- total height of all women
totalHeightWomen: Nat
totalHeightWomen = query2 newPeople gender height plus 0
-- expect: 256

newWomenNames: String
newWomenNames = query2 newPeople gender name (++) ""
-- expect: "Mary" "Ge" "Mila" "Jennifer"
-- question: what if you wanted all people or just men??

howManyWomen: Nat
howManyWomen = count_rel newPeople gender
-- expect: 4

womenAges: Nat
womenAges = sum_rel newPeople gender age
-- expect:98

aveAgeW: (pair Nat Nat)
aveAgeW = ave_rel newPeople gender age
-- expect: 98 4

