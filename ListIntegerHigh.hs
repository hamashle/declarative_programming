squaredList :: [Integer] -> [Integer]
squaredList ns =  map squared ns

squared :: Integer -> Integer
squared n = n * n


sumOfSquares :: [Integer] -> Integer
sumOfSquares ns = foldr (+) 0 (map squared ns)

allPositive :: [Integer] -> Bool
allPositive ns = foldr (&&) True (map checkPositive ns)

checkPositive :: Integer -> Bool
checkPositive n = n > 0