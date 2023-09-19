quadradoX :: Int -> Int 
quadradoX x = x * x 

infixl 7 &&&
(&&&) :: Int -> Int -> Int
a &&& b
    | a >= b = a
    | otherwise = b

infixl 7 ???
(???) :: Int -> Int -> Int
a ??? b = 2 * (a+b)

infixl 7 @@@
(@@@) :: Int -> Int -> Int
a @@@ b = (a*b) ^ 2

infixl 7 $$$
($$$) :: Bool -> Bool -> Bool
x $$$ y = (x || y) && not (x && y)
paraRad :: Float -> Float
paraRad graus = graus * (pi / 180)

senGraus :: Float -> Float
senGraus graus = sin (paraRad graus)

cosGraus :: Float -> Float
cosGraus graus = cos (paraRad graus)
