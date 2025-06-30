adds :: [Integer] -> Integer
adds (x:y:_) = x + y
adds (x:[]) = x
adds _ = 0