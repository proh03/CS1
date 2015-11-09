{}
x = 5
# { (x, 5)}

print(x)
#{(x, 5)}

x = 6 #x gets six; take six and put it in the box called x, erasing
      #what's in the box
# {(x,6)} overwrote previous value bound to x
print(x)
#{(x, 6)}
y = 7
# {(x, 6),(y,7)}
print(y)
# {(x, 6), (y, 7)}
print(x)
