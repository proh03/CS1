module HOfunc

import Person
import people
import bool
import list
import nat
import pair

mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h::t) = (age h)::(mapAge t)

ages_old: list Nat
ages_old = mapAge people

--map and filter and foldr are in list.idr

ages: list Nat
ages = map age people

names: list String
names = map name people
