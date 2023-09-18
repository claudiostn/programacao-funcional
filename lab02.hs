import Data.Char

ouExclusivo :: Bool -> Bool -> Bool
ouExclusivo x y = (x || y) && not (x && y)

ehMinusculo :: Char -> Bool
ehMinusculo ch = ('a' <= ch) && (ch <= 'z')