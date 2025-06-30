import Prelude hiding (last, init, unzip)

unzip :: [(a, b)] -> ([a], [b])
unzip xs = foldr combine ([], []) xs
  where
    combine (a, b) (as, bs) = (a : as, b : bs)

last :: [a] -> a
last xs = foldr1 getLast xs 
   where 
    getLast _ y = y

init :: [a] -> [a]
init xs = fst (foldr deleteTail ([], False) xs)
  where
    deleteTail x (ys, False) = (ys, True)       
    deleteTail x (ys, True)  = (x : ys, True) 

