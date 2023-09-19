areaRet :: Float -> Float -> Float
areaRet b h = b * h

euroToReal :: Double -> Double -> Double
euroToReal euro cota = euro * cota

farToCel :: Float -> Float
farToCel t = (t - 32) / 1.8

saudacao :: String -> String
saudacao nome = "Oi " ++ nome ++ ", seja bem-vindo"

aprovacao :: Float -> String
aprovacao n = if n >= 5 
              then "Aluno aprovado" 
              else "Aluno reprovado"

valido :: Int -> String
valido n
  | n >= 0 && n <= 10 = "Valido"
  | otherwise = "Invalido"

mediaAluno :: Float -> Float -> Float -> String
mediaAluno n1 n2 n3
  | m >= 0.0 && m <= 3.0 = show m ++ " Reprovado"
  | m <= 7.0 = show m ++ " Prova Final"
  | otherwise = show m ++ "Aprovado"
  where m = (n1+n2+n3)/3

mediaPond :: Float -> Float -> Float
mediaPond n1 n2 = (n1*p1 + n2*p2)/(p1+p2)
  where p1 = 3.5; p2 = 7.5

promocao :: Int -> Float -> String
promocao cod sal = case cod of
  1 -> "Escriturario " ++ show (sal*0.5) ++ " " ++ show (sal + sal*0.5)
  2 -> "Secretario " ++ show (sal*0.35) ++ " " ++ show (sal + sal*0.35)
  3 -> "Caixa " ++ show (sal*0.2) ++ " " ++ show (sal + sal*0.2)
  4 -> "Gerente " ++ show (sal*0.1) ++ " " ++ show (sal + sal*0.1)
  5 -> "Diretor " ++ show (sal*0) ++ " " ++ show (sal + sal*0)
  _ -> "Codigo Invalido"

passagem :: Float -> Int -> Float
passagem val idade
  | idade <= 0 = error "Nunca nem vi"
  | idade <= 2 = val*0.1
  | idade <= 10 = val*0.5
  | idade < 60 = val
  | otherwise = val*0.6


mediaAluno2 :: Float -> Float -> Float -> Char
mediaAluno2 n1 n2 n3
  | media n1 n2 n3 >= 0 && media n1 n2 n3 < 7.0 = 'C'
  | media n1 n2 n3 >= 7.0 && media n1 n2 n3 < 8.0 = 'B'
  | media n1 n2 n3 <= 10 = 'A'
  | otherwise = error "Valor Invalido"
  where media x y z = (x*p1 + y*p2 + z*p3)/(p1+p2+p3)
         where p1 = 2.0
               p2 = 3.0
               p3 = 5.0