multiplo :: Int -> String
multiplo n
    | mod n 3 == 0 && mod n 5 == 0 = "Multiplo de 3 e 5"
    | mod n 5 == 0 = "Multiplo de 5"
    | mod n 3 == 0  = "Multiplo de 3"
    | otherwise = "Nao e multiplo de 3 nem de 5"

mediana :: Int -> Int -> Int -> Int
mediana x y z 
    | x >= y && x <= z || x <= y && x >= z = x
    | y >= x && y <= z || y <= x && y >= z = y
    | otherwise = z

-- subtracao sucessiva subtrai o divisor do dividendo ate que o dividendo seja menor que o divisor, no qociente nos contamos quantas vezes ele subtrai e no resto ele e o valor do dividendo depois das subtracoes
quociente :: Int -> Int -> Int
quociente n m
    | n < m = 0
    | otherwise = 1 + quociente (n - m) m

resto :: Int -> Int -> Int
resto n m 
    | n < m = n
    | otherwise = resto (n - m) m
    
multiplica :: Int -> Int -> Int
multiplica _ 0 = 0
multiplica n m = n + multiplica n (m-1)

soma :: Int -> Int -> Int
soma n m
    | n == 0 = m
    | otherwise = soma (pred n) (succ m)

fatorialDuplo :: Int -> Int
fatorialDuplo n
    | n == 0 = 1
    | n == 1 = 1
    | otherwise = n * fatorial (n-2)

produtoIntervalo :: Int -> Int -> Int
produtoIntervalo m n
    | m == n = n
    | m > n = m * produtoIntervalo (m - 1) n
    | otherwise = m * produtoIntervalo (m + 1) n

-- sempre que precisar guardar o valor fazer uma funcao auxiliar
raizQuadrada :: Int -> Int
raizQuadrada n = aux n n
    where aux n p
            | p^2 == n = p
            | otherwise = aux n (p-1)

potenciaDois :: Int -> Int
potenciaDois 0 = 1
potenciaDois n = 2 * potenciaDois n-1

pot :: Int -> Int -> Int
pot _ 0 = 1
pot m n = m * pot m n-1

fatorial :: Int -> Int
farorial 0 = 1
fatorial n = n * fatorial n-1

somaFatorial :: Int -> Int
somaFatorial 0 = 1
somaFatorial n = fatorial n + somaFatorial n-1

somaPotenciaDois :: Int -> Int
somaPotenciaDois 0 = 1
somaPotenciaDois n = potenciaDois n + somaPotenciaDois n-1


 
