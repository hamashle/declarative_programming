divisors :: Integer -> [Integer]
divisors x = [l | l <- [1..x], x `mod` l == 0]

isPrime :: Integer -> Bool
isPrime x 
   | [1, x] == divisors(x) = True
   | otherwise = False