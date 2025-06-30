import Prelude hiding (takeWhile)
dropUntil :: (a -> Bool) -> [a] -> [a]
dropUntil p [] = []
dropUntil p (x:xs)
   | p x = x:xs
   | otherwise = dropUntil p xs

dropSpace :: String -> String
dropSpace xs = dropUntil notSpace xs
   where notSpace x = not  (x == ' '|| x == '\t' || x == '\n')

getUntil :: (a -> Bool) -> [a] -> [a]
getUntil p [] = []
getUntil p (x:xs)
   | p x = []
   | otherwise = x : getUntil p xs


takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile p xs = getUntil (stopFunc p) xs
  where stopFunc p x = not (p x)

-- takeWhile :: (a -> Bool) -> [a] -> [a]
-- takeWhile p [] = []
-- takeWhile p (x:xs)
--    | p x = x : takeWhile p xs
--    | otherwise = []