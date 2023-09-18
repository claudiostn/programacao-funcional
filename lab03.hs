quadradoX :: Int -> Int 
quadradoX x = x * x 

infixl 7 &&&
(&&&) :: Int -> Int -> Int
a &&& b
    | a >= b = a
    | otherwise = b