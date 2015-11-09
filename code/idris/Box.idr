module Box

import eq
import list
import bool

data Box t = mkBox t

unbox: Box t -> t
unbox (mkBox b) = b

eql_box: (eq a) => Box a -> Box a -> bool
eql_box (mkBox v1) (mkBox v2) = eql v1 v2


instance (eq a) => eq (Box a) where
  eql (mkBox b1) (mkBox b2) = eql b1 b2
 
