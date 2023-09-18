import Data.Char

maxi :: Int -> Int -> Int
maxi m n = if m >= n then m else n

mini :: Int -> Int -> Int
mini m n = if m <= n then m else n

miniTres :: Int -> Int -> Int -> Int
miniTres m n l = if m <= n && m <= l 
                then m 
                else if n <= m && n <= l
                        then n
                        else l

maxiGuardas :: Int -> Int -> Int
maxiGuardas m n
    | m >=n = m
    | otherwise = n

diaDaSemana :: Int -> String
diaDaSemana n
 | n == 1 = "Domingo"
 | n == 2 = "Segunda"
 | n == 3 = "Terca"
 | n == 4 = "Quarta"
 | n == 5 = "Quinta"
 | n == 6 = "Sexta"
 | n == 7 = "Sabado"
 | otherwise = "Valor invalido!"


ehMinusculo :: Char -> Bool
ehMinusculo ch = ('a' <= ch) && (ch <='z')

paraMaiusculo :: Char -> Char
paraMaiusculo letra
    | ehMinusculo letra = chr (ord letra - ord 'a' + ord 'A')
    | otherwise = letra

miniGuardas :: Int -> Int -> Int
miniGuardas m n
    | m <= n = m
    | otherwise = n

miniTresGuardas :: Int -> Int -> Int -> Int
miniTresGuardas m n l
    | m <= n && m <= l = m
    | n <= m && n <= l = n
    | otherwise = l

myNot :: Bool -> Bool
myNot True = False
myNot False = True

lucky :: Int -> String
lucky 7 = “Voce acertou, sortudo!”
lucky _ = “Oops, tente outra vez!”

diaDaSemanaCasamento :: Int -> String
diaDaSemanaCasamento 1 = "Domingo"
diaDaSemanaCasamento 2 = "Segunda"
diaDaSemanaCasamento 3 = "Terca"
diaDaSemanaCasamento 4 = "Quarta"
diaDaSemanaCasamento 5 = "Quinta"
diaDaSemanaCasamento 6 = "Sexta"
diaDaSemanaCasamento 7 = "Sabado"
diaDaSemanaCasamento n = "Valor invalido!"

myExOr :: Bool -> Bool -> Bool
myExOr True x = not x
myExOr False x = x

nAnd :: Bool -> Bool -> Bool
nAnd True True = False
nAnd _ _ = True 

escrevaMe :: Int -> String
escrevaMe 1 = “Um!”
escrevaMe 2 = “Dois!”
escrevaMe 3 = “Tres!”
escrevaMe 4 = “Quatro!”
escrevaMe 5 = “Cinco!”
escrevaMe _ = “Cansei!”

diaDaSemanaCase :: Int -> String
diaDaSemanaCase x = case x of
    1 -> "Domingo"
    2 -> "Segunda"
    3 -> "Terca"
    4 -> "Quarta"
    5 -> "Quinta"
    6 -> "Sexta"
    7 -> "Sabado"
    _ -> "Valor invalido!"

imc :: Float -> Float -> String
imc peso altura
    | razao < 18.5 = “Abaixo do peso”
    | razao < 25.0 = “Peso normal”
    | razao < 30.0 = “Sobrepeso”
    | otherwise = “Obesidade”
    where razao = peso / altura ^ 2

cilindro :: Float -> Float -> Float
cilindro r h =
    let areaLateral = 2 * pi * r * h
        areaBase = pi * r^2
    in areaLateral + 2 * areaBase
