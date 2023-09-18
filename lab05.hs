fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n-1)

somaAte :: Int -> Int
somaAte 0 = 0
somaAte n = somaAte(n-1) + n

multiplica :: Int -> Int -> Int
multiplica _ 0 = 0
multiplica n m = n + multiplica n (m-1)

potenciaDois :: Int -> Int
potenciaDois 0 = 1
potenciaDois n = 2 * potenciaDois (n-1)

pot :: Int -> Int -> Int
pot _ 0 = 1
pot m n = m * pot m (n - 1)

somaFatorial :: Int -> Int
somaFatorial 0 = 1
somaFatorial n = fatorial n + somaFatorial (n - 1)

somaPotenciaDois :: Int -> Int
somaPotenciaDois 0 = 1
somaPotenciaDois n = potenciaDois n + somaPotenciaDois (n - 1)