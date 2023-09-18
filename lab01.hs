dobro :: Int -> Int
dobro x = 2*x

soma :: Int -> Int -> Int 
soma num1 num2 = num1 + num2

ehMenor :: Int -> Int -> Bool
ehMenor num1 num2 = num1 < num2 

ehPar :: Int -> Bool
ehPar num = (num `mod` 2) == 0