import Data.Char

ehPar :: [Int] -> [Bool]
ehPar lista = [n `mod` 2 == 0 | n <- lista]

dobroPar :: [Int] -> [Int]
dobroPar lista = [2*n | n <- lista, n `mod` 2 == 0, n>3]

somaPares :: [(Int,Int)] -> [Int]
somaPares lista = [x + y| (x, y) <- lista]

somaOrdPares :: [(Int,Int)] -> [Int]
somaOrdPares lista = [x + y| (x, y) <- lista, x < y]

digits :: String-> String
digits st = [ch | ch <- st, isDigit ch]

todosPares :: [Int] -> Bool
todosPares xs = (xs == [ x | x <- xs, x `mod` 2 == 0])

calcImc :: [(Float, Float)] -> [Float]
calcImc xs = [razimc w h | (w, h) <- xs]
    where razimc peso altura = peso / altura ^ 2

todosImpares :: [Int] -> Bool
todosImpares xs = ([] == [x | x <- xs, x `mod` 2 == 0])

imparesTriplicados :: [Int] -> [Int]
imparesTriplicados xs = [3*n | n <- xs, n `mod` 2 /= 0]

ehMinusculo :: Char -> Bool
ehMinusculo ch = ('a' <= ch) && (ch <='z')

paraMaiusculo :: Char -> Char
paraMaiusculo letra
    | ehMinusculo letra = chr (ord letra - ord 'a' + ord 'A')
    | otherwise = letra

maiuscula :: String -> String
maiuscula st = [paraMaiusculo x | x <- st]

entreZeroCem :: [Float] -> [Float]
entreZeroCem xs = [x | x <- xs, x>=0 && x<=100] 

notDigits :: String-> String
notDigits st = [ch | ch <- st, not (isDigit ch)]

combinar :: [String] -> [String] -> [String]
combinar xs ys = [x ++ " " ++ y | x <- xs, y <- ys]

