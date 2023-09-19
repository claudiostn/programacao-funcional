menorMaior :: Int -> Int -> (Int, Int)
menorMaior x y
    | x <= y = (x,y)
    | otherwise = (y,x)

somaPar :: (Int, Int) -> Int
somaPar (x, y) = x+y

nome :: (String, (Int, Float)) -> String
nome (n, _) = n 

idade :: (String, (Int, Float)) -> Int
idade (_, (id, _)) = id

altura :: (String, (Int, Float)) -> Float
altura (_, (_, a)) = a 

imc :: Float -> Float -> String
imc peso altura
    | razao < abaixo = "Abaixo do peso"
    | razao < normal = "Peso normal"
    | razao < acima = "Sobrepeso"
    | otherwise = "Obesidade"
    where 
        razao = peso / altura ^ 2
        (abaixo, normal, acima) = (18.5, 25.0, 30.0) 

somaPar2 :: (Int, Int) -> Int
somaPar2 p = fst p + snd p

type Nome = String
type Idade = Int
type Altura = Float
type Pessoa = (Nome, (Idade, Altura))

nome2 :: Pessoa -> Nome
nome2 pes = fst pes

idade2 :: Pessoa -> Idade
idade2 pes = fst (snd pes)

altura2 :: Pessoa -> Altura
altura2 pes = snd (snd pes)

maiorOcorre :: Int -> Int -> (Int, Int)
maiorOcorre x y 
    | x == y = (x, 2)
    | otherwise = ((max x y), 1)

maiorOcorreTres :: Int -> Int -> Int -> (Int, Int)
maiorOcorreTres x y z
    | x == y && y == z = (x, 3)
    | otherwise = maiorOcorre (maximo) z
    where maximo = fst (maiorOcorre x y) 

ordenarTupla :: (Int, Int, Int) -> (Int, Int, Int)
ordenarTupla (x, y, z)
    | x <= y && y <= z && x <= z = (x, y, z)
    | x <= z && z <= y && x <= y = (x, z, y)
    | y <= x && y <= z && x <= z = (y, x, z)
    | y <= z && z <= x && y <= x = (y, z, x)
    | z <= x && z <= y && x <= y = (z, x, y)
    | otherwise = (z, y, x)

ordenarTuplaRefat :: (Int, Int, Int) -> (Int, Int, Int)
ordenarTuplaRefat (x, y, z) = (menor, meio, maior)
    where
        menor = min (min x y) z
        maior = max (max x y) z
        meio = (((x + y + z) - menor) - maior)
        


