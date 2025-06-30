isSublist :: [Char] -> [Char] -> Bool
isSublist [] _ = True
isSublist (_:_) [] = False
isSublist (x:xs) (y:ys) 
    | x == y = isSublist xs ys
    | otherwise = isSublist (x:xs) ys


--isSequenceが間違っている。
isSubsequence :: [Char] -> [Char] -> Bool
isSubsequence [] _ = True
isSubsequence (_:_) [] = False
isSubsequence (x:xs) (y:ys) 
    | x == y = isSubsequence xs ys
    | otherwise = isSubsequence (x:xs) ys
