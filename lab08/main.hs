import Data.Char

meuLength :: [Int] -> Int
meuLength []= 0 -- caso base
meuLength (x:xs) = 1 + meuLength xs -- caso geral

meuSum :: [Int] -> Int
meuSum []= 0 -- caso base
meuSum (x:xs) = x + meuSum xs -- caso geral

meuProd :: [Int] -> Int
meuProd []= 1 -- caso base
meuProd (x:xs) = x * meuProd xs -- caso geral

meuConcat :: [[Int]] -> [Int]
meuConcat []= [] -- caso base
meuConcat (xs:xss) = xs ++ meuConcat xss -- caso geral

meuReverse :: [Int] -> [Int]
meuReverse []= [] -- caso base
meuReverse (x:xs) = meuReverse xs ++ [x]-- caso geral

meuZip :: [Int]->[Int] -> [(Int,Int)]
meuZip _ [] = [] -- caso base
meuZip [] _ = []
meuZip (x:xs) (y:ys) = (x,y): meuZip xs ys -- caso geral

meuTake :: Int ->[Int] -> [Int]
meuTake _ [] = [] -- caso base
meuTake 0 _ = []
meuTake i (x:xs) = x: meuTake (i-1) xs -- caso geral

-- Tratando o caso especial quando i<0. Por convenção, adota-se retornar [].
meuTakeGeral :: Int -> [Int] -> [Int]
meuTakeGeral i ls
    | i < 0 = []
    | otherwise = meuTake i ls

coletaPares :: [Int]->[Int]
coletaPares [] = [] -- caso base
coletaPares (x:xs)
    | ehPar x = x: coletaPares xs -- caso geral
    | otherwise = coletaPares xs
    where ehPar p = (mod p 2 == 0)

meuReplicate :: Int -> Int -> [Int]
meuReplicate _ 0 = []
meuReplicate item quant = item : meuReplicate item (quant - 1)

meuAnd :: [Bool] -> Bool
meuAnd [] = True
meuAnd (x:xs) = x && meuAnd xs

meuOr :: [Bool] -> Bool
meuOr [] = False
meuOr (x:xs) = x || meuOr xs

meuDrop :: Int -> [Int] -> [Int]
meuDrop 0 (x:xs) = x:xs
meuDrop n (x:xs) = meuDrop (n-1) xs

meuUnzip :: [(Int, Int)] -> ([Int], [Int])
meuUnzip [] = ([], [])
meuUnzip ((x,y):ps) = (x:xs, y:ys)
    where (xs, ys) = meuUnzip ps

somaPares :: [Int] -> Int
somaPares [] = 0
somaPares (x:xs)
    | even x = x + somaPares xs
    | otherwise = somaPares xs

produtoImpares :: [Int] -> Int
produtoImpares [] = 1
produtoImpares (x:xs)
    | odd x = x * produtoImpares xs
    | otherwise = produtoImpares xs

apenasDigitos :: String -> String
apenasDigitos [] = []
apenasDigitos (x:xs)
    | isDigit x = x : apenasDigitos xs
    | otherwise = apenasDigitos xs

elemNum :: [Int] -> Int -> Int
elemNum [] _ = 0
elemNum (x:xs) n
    | n == x = 1 + elemNum xs n
    | otherwise = elemNum xs n

unicos :: [Int] -> [Int]
unicos [] = []
unicos (x:xs)
    | elemNum xs x == 0 = x : unicos xs
    | otherwise = unicos xs

elemExiste :: [Int] -> Int -> Bool
elemExiste [] _ = False
elemExiste (x:xs) n
    | x == n = True
    | otherwise = elemExiste xs n