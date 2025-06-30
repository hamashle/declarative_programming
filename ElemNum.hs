-- elemNum :: Integer -> [Integer] -> Integer
-- elemNum x [] = 0
-- elemNum x (y:ys)
--   | x == y = 1 + elemNum x ys
--   | otherwise = elemNum x ys


elemNum :: Integer -> [Integer] -> Integer
elemNum x xs = sum [1 | n <- xs, x == n]
