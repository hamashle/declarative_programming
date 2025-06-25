adds :: [Integer] -> Integer
adds (x:y:_) = x + y
adds _ = 0