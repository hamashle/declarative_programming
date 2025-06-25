import Prelude hiding (Word)
type Word = String
type Line = [Word]

dropLine :: Int -> [Word] -> Line
dropLine _ [] = []
dropLine len (w:ws) 
    | length w <= len = restOfLine
    | otherwise = w:ws
      where 
         newlen = len - (length w + 1)
         restOfLine = dropLine newlen ws


