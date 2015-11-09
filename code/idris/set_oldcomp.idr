module set

import list
import ite
import bool
import eq


||| mkSet is meant to be private
data set a = mkSet (list a)
-- set is like box with a list inside

||| a starting point for building any set
new_set: set a --polymorphic
new_set = mkSet  nil


||| return { given value } union given set
set_insert:(eq a) => a -> set a -> set a
set_insert v (mkSet l) = ite (member v l)
                             (mkSet l)
                             (mkSet (v :: l))
                             
-- set_insert v (mkSet l) = mkSet (v :: l)
-- this code makes duplicate entries though

-- member: a -> list a -> bool


-- hypothesize the new functiono n list called same member r takes two
  -- lists and returns true if they have the same elements independs
  -- of order, otherwise returns false
