module relation

import bool
import list
import Person
import people
import nat
import pair

query: (value -> value -> value) -> value -> 
         (tuple -> value) -> (tuple -> bool) -> 
            (list tuple) -> value
query reduce id project select relation =
       list.foldr reduce id (map project (filter select relation))

query2:  (list tuple) -> (tuple -> bool) -> (tuple -> value) ->
            (value -> value -> value) -> value -> value
query2 relation select project reduce id =
         list.foldr reduce id (map project (filter select relation))

countOne: m -> Nat
countOne v = 1

number: Nat
number = query2 people gender countOne plus 0

count_rel: (list tuple) -> (tuple -> bool) -> Nat
count_rel rel sel = query2 rel sel countOne plus 0

sum_rel: (list tuple) -> (tuple -> bool) -> (tuple -> Nat) -> Nat
sum_rel rel sel proj = query2 rel sel proj plus 0

ave_rel:
    (list tuple) -> (tuple -> bool) -> (tuple -> Nat) -> pair Nat Nat
ave_rel rel sel proj =
   mkPair (sum_rel rel sel proj) (count_rel rel sel)

