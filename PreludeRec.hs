import Prelude hiding (reverse, unzip)

reverse :: [a] -> [a]
reverse [] = []
reverse (x:xs) = reverse xs ++ [x]

unzip :: [(a,b)] -> ([a],[b]) 
unzip [] = ([],[])
unzip ((x,y):xs) = (x:fst (unzip xs) , y: snd (unzip xs))