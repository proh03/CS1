module favoriteColor

import bool

data color = blue | green | gray | orange | yellow | purple | black | red | brown | white


favoriteColor: color -> bool
favoriteColor gray = true
favoriteColor _ = false
