maxOccurs :: Integer -> Integer -> (Integer, Integer)
maxOccurs m n = (maxV, maxC)
   where 
      maxV = maxValue m n
      maxC = eqValue(maxV == m) + eqValue(maxV == n)
   

maxThreeOccurs :: Integer -> Integer -> Integer -> (Integer, Integer)
maxThreeOccurs m n l = (maxV, maxC)
    where 
       maxV = maxValue (maxValue m n) l
       maxC = eqValue(maxV == m) + eqValue(maxV == n) + eqValue(maxV == l)


maxValue :: Integer -> Integer -> Integer
maxValue x y 
   | x >= y = x 
   | otherwise = y

eqValue :: Bool -> Integer
eqValue True = 1
eqValue False = 0


shift :: ((a,b),c) -> (a,(b,c))
shift ((a,b),c) = (a,(b,c))