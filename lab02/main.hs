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

triplo :: Int -> Int -> Int
triplo num1 num2 = 3 * (num1 `div` num2)

ordemAlfabetica :: Char -> Char -> Bool
ordemAlfabetica ch1 ch2 = ch1 <= ch2

igualAbs :: Int -> Int -> Bool
igualAbs num1 num2 = abs num1 == abs num2