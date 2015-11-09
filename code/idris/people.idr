module people

import Person
import list
import bool

-- a few Persons

tom: Person
tom = MkPerson "Tom" 19 56 false

mary: Person
mary = MkPerson "Mary" 20 59 true

ge: Person
ge = MkPerson "Ge" 21 64 true

daryl: Person
daryl = MkPerson "Daryl" 19 71 false

cristiano: Person
cristiano = MkPerson "Cristiano" 30 73 false

mila: Person
mila = MkPerson "Mila" 32 64 true

jennifer: Person
jennifer = MkPerson "Jennifer" 25 69 true

johnny: Person
johnny = MkPerson "Johnny" 52 70 false

-- a list of Persons

people: list Person
people = tom::
         mary::
         ge::
         daryl::
         nil

women: list Person
women = filter gender people

wAges: list Nat
wAges = map age women

years: Nat
years = list.foldr plus 0 wAges

oneLine: Nat
oneLine = list.foldr plus 0 (map age (filter gender people))

newPeople: list Person
newPeople = tom :: mary :: ge :: daryl :: cristiano :: mila :: jennifer :: johnny :: nil


