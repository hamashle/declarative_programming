
size :: Integer
size = 12+13

square :: Integer -> Integer
square n = n*n

double :: Integer -> Integer
double n = 2*n

example :: Integer
example = double (size - square (2+2))

doubleSquare :: Integer -> Integer
doubleSquare n = square (double n)

squareDouble :: Integer -> Integer
squareDouble n = double (square n)