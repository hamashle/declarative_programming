-- duplicate :: String -> Integer -> String
-- duplicate st n 
--    | n <= 0 = ""
--    | n == 1 = st
--    | otherwise = st ++ duplicate st (n-1)

duplicate :: String -> Integer -> String
duplicate st n = [c | x <- [1..n], c <- st]