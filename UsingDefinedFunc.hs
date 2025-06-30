returnMin :: (Integer -> Integer) -> Integer -> Integer
returnMin f n = foldr1 hoge (map f [0..n])

hoge:: Integer -> Integer -> Integer
hoge a b 
   | a >= b = b
   | otherwise = a

testEqual :: (Integer -> Integer) -> Integer -> Bool
testEqual f n = foldr (&&) True (zipWith (==) (map f [0]) (map f [1..n]))


checkAllPositive :: (Integer -> Integer) -> Integer -> Bool
checkAllPositive f n = allPositive (map f [0..n])


allPositive :: [Integer] -> Bool
allPositive ns = foldr (&&) True (map checkPositive ns)

checkPositive :: Integer -> Bool
checkPositive n = n > 0

checkIncrease :: (Integer -> Integer) -> Integer -> Bool
checkIncrease f n = foldr (&&) True (zipWith (<=) (map f [0..n]) (tail (map f [0..n])))

f1 x = x 
f2 x = 10 - x   
f3 x = x `mod` 3