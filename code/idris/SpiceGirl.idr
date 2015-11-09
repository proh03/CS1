module SpiceGirl

import bool
import list
import pair
import nat
import relation

||| A record type that is equivalent to:
||| (data SpiceGirl = mkSpiceGirl String String Nat bool)
||| but where we give names to fields.
||| A Spice Girl has a name, a nickname, an age (in years) and a boolean answer to the question of whether they are married or not.


record SpiceGirl where
  constructor mkSpiceGirl
  name : String
  nickname : String
  age : Nat
  maritalStatus : bool

-- THE SPICE GIRLS
mb: SpiceGirl
mb = mkSpiceGirl "MelanieB" "Scary" 40 true

mc: SpiceGirl
mc = mkSpiceGirl "MelanieC" "Sporty" 41 false

e: SpiceGirl
e = mkSpiceGirl "Emma" "Baby" 39 false

g: SpiceGirl
g = mkSpiceGirl "Geri" "Ginger" 43 true

v: SpiceGirl
v = mkSpiceGirl "Victoria" "Posh" 41 true

spiceGirls: list SpiceGirl
spiceGirls = mb :: mc :: e :: g :: v :: nil



