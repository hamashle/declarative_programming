triArea :: Float -> Float -> Float -> Float
triArea a b c 
  | possible = sqrt(s*(s-a)*(s-b)*(s-c))
  | otherwise = 0
  where 
    s = (a + b + c)/2
    possible = positiveCheck a b c && triIneq a b c
    positiveCheck a b c = (a > 0) && (b > 0) && (c > 0) 
    triIneq a b c = (a + b > c) && (b + c > a) && (c + a > b) 