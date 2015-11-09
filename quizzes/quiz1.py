'''Plot the function $f(x) = x^2 + 20$ for integer values of x
ranging from 0 inclusive to 10 exclusive.'''

import pylab as pl

x = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

fx = [20, 1, 8, 27, 64, 125, 216, 343, 512, 729]

pl.plot(x, fx)

pl.show()
