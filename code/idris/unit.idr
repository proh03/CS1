module unit

import bool
import eq

data unit = mkUnit


unit_id: unit -> unit
unit_id mkUnit = mkUnit

eql_unit: unit -> unit -> bool
eql_unit  v1 v2 = true

instance eq unit where
  eql u1 u2 = true

--overloaded the eql operator for 3 different types

