isSublist :: [Char] -> [Char] -> Bool
isSublist [] _ = True
isSublist (_:_) [] = False
isSublist (x:xs) (y:ys) 
    | x == y = isSublist xs ys
    | otherwise = isSublist (x:xs) ys

isSequence :: [Char] -> [Char] -> Bool
isSequence [] _ = True
isSequence (_:_) [] = False
isSequence (x:xs) (y:ys) 
    | x == y = isSequence xs ys
    | otherwise = isSequence (x:xs) ys
