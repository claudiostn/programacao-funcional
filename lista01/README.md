# Lista 01

- O que são algoritmos?

- O que é uma linguagem de programação?

- O que é compilação? Qual a diferença entre compilação e interpretação?

- O que é um paradigma de programação?

- O que você entende sobre o paradigma funcional? Como você o descreveria?
Você já sabe que o Haskell é uma linguagem que segue o paradigma funcional. Mas, o que é o
GHCi?

- O que são tipos? Responda usando suas palavras.

- Para resolver um problema, usamos tipos para representar dados relevantes para a sua
resolução ( e também para expressar a solução). Que tipo de dados do Haskell você usaria
para representar as informações abaixo?

    - A nota de um aluno
    - O nome de uma pessoa
    - Uma vogal
    - O número de pássaros em um bando
    - A escolha de uma pessoa sobre seu desejo de receber ou não uma propaganda por e-mail
    - A placa de um carro
    - A área de um círculo
    - O número estimado de estrelas no universo
    - O valor de uma tecla digitada pelo usuário
    - O número de máquinas em um laboratório

- O que são operadores? Dê dois exemplos de operadores:
    - Aritméticos
    - Booleanos
    - Relacionais
    - Condicionais

- Faça uma função que recebe a base e a altura de um retângulo, e retorna a sua área.

- Faça uma função que recebe o valor da cotação do Euro e uma certa quantidade de Euros. Ela
deve retornar o valor correspondente em Reais (R$).

- Faça uma função que recebe uma temperatura em graus Fahrenheit e a retorna em graus Celsius.

- Faça uma função que recebe o nome de uma pessoa como entrada, e que retorna uma saudação a
essa pessoa. Seja simpático(a).

- Escreva uma função que recebe um número real. Se esse número for maior ou igual a cinco,
ela deve retornar a mensagem “Aluno aprovado”. Caso contrário, ela deve retornar a
mensagem “Aluno reprovado”.

- Escreva uma função que retorna a mensagem “Válido” se, dado um número digitado pelo
usuário, esse número é maior ou igual a zero e menor ou igual a 10.

- Faça uma função que receba 3 notas de um aluno, calcule e retorne uma mensagem contendo a
média aritmética e a situação constante na tabela a seguir:

    Média Aritmética | Situação
    -----------------|--------------
    [0,0, 3,0)       | Reprovado
    [3,0, 7,0)       | Prova Final
    [7,0, 10,0]      | Aprovado

- [Fonte: adaptado do BeeCrowd] Faça uma função que recebe 2 valores reais, que correspondem
a duas notas de um aluno. A seguir, calcule a média do aluno, sabendo que a primeira nota
tem peso 3.5 e a segunda nota tem peso 7.5 (A soma dos pesos, portanto, é 11). Assuma que
cada nota pode ir de 0 até 10.0.

- Faça uma função que recebe o código correspondente ao cargo de um funcionário e seu
salário atual. Ela deve retornar uma mensagem contendo o cargo, o valor do aumento e seu
novo salário.

    Código| Cargo       | Percentual
    ------|-------------|------------
    1     | Escriturário| 50%
    2     | Secretário  | 35%
    3     | Caixa       | 20%
    4     | Gerente     | 10%
    5     |Diretor      | Não tem aumento

- [Fonte: UFU] Considere que o preço de uma passagem de avião em um trecho pode variar
dependendo da idade do passageiro. Pessoas com 60 anos ou mais pagam apenas 60% do preço
total. Crianças até 10 anos pagam 50% e bebês (abaixo de 2 anos) pagam apenas 10%. Faça
uma função que tenha como entrada o valor total da passagem e a idade do passageiro e
produz o valor a ser pago.

- A nota final de um estudante é calculada a partir de três notas atribuídas,
respectivamente, a um trabalho de laboratório, a uma avaliação semestral e a um exame
final. As média das três notas mencionadas obedece aos pesos descritos a seguir.
Trabalho de Laboratório: peso 2
Avaliação semestral: peso 3
Exame final: peso 5

- Elabore uma função que receba as três notas, calcule a média ponderada do aluno e
classifique seu conceito de acordo com a tabela seguinte:

    Média |Conceito
    ------|-------
    [8,0; 10,0]| A
    [7.0; 8,0)| B
    [0.0; 7.0)| C