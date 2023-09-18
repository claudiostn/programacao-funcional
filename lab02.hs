import Data.Char

ouExclusivo :: Bool -> Bool -> Bool
ouExclusivo x y = (x || y) && not (x && y)

ehMinusculo :: Char -> Bool
ehMinusculo ch = ('a' <= ch) && (ch <= 'z')

-- show converte valor para string
-- read converte string pra valor
-- ++ concatenacao

mediaTres :: Float -> Float -> Float -> Float
mediaTres a b c = (a + b + c)/3

-- fromIntegral transforma int em float ou double

