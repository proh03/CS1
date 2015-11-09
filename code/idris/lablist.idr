module president

import list

data president = Washington | Adams | Jefferson | Madison | Monroe

data state = Virginia | Massachusetts

||| A record of this type represents a president and his name, birth year, birth state, year elected, death year

data presFact = mkPresFact president Nat state Nat Nat

washington: presFact
washington = mkPresFact Washington 1732 Virginia 1789 1799

adams: presFact
adams = mkPresFact Adams 1735 Massachusetts 1797 1801

jefferson: presFact
jefferson = mkPresFact Jefferson 1743 Virginia 1801 1826

madison: presFact
madison = mkPresFact Madison 1751 Virginia 1809 1836

monroe: presFact
monroe = mkPresFact Monroe 1758 Virginia 1817 1831

-- add the search functions. For born, name, state, death, year elected
