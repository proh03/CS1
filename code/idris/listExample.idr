module listExample

import SpiceGirl
import list


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



sg: list' SpiceGirl
sg = mb :: mc :: e :: g :: v :: nil'

msg: list' SpiceGirl
msg = mb :: g :: v :: nil'

umsg: list' SpiceGirl
umsg = mc :: e :: nil'
