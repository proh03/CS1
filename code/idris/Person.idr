module Person


import bool
import nat
import list
import pair


||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years and a height in inches an a gender (true is female and false if male)
record Person where
    constructor MkPerson
    name : String
    age : Nat
    height : Nat
    gender: bool

-- An example value of type Person
p: Person
p = MkPerson "Tommy" 3 36 false

-- And now here's the key idea: The 
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the age of person, p.
t: Nat
t = age p
-- expect 3

a: Person
a = MkPerson "Amanda" 19 65 true

e: Person
e = MkPerson "Emily" 19 64 true

l: Person
l = MkPerson "Leo" 40 72 false

ad: Person
ad = MkPerson "Adam" 36 72 false

aa: Nat
aa = age a
-- expect 19

na: String
na = name a
-- Expect "Amanda"



-- Here we get the name of person p.
n: String
n = name p
-- expect "Tommy"
