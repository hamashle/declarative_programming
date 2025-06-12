averageThree :: Integer -> Integer -> Integer -> Float
averageThree x y z = fromInteger (x + y + z) / 3

howManyAboveAverage :: Integer -> Integer -> Integer -> Integer
howManyAboveAverage x y z = 
    count(fromInteger x > average) + count(fromInteger y > average) + count(fromInteger z > average)
      where
        average = averageThree x y z
   

count :: Bool -> Integer
count True = 1
count False = 0