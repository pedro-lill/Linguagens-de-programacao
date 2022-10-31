# Linguagens-de-programacao

// pra executa devo abrir o terminal e digitar shack ghci


Estudos sobre a linguagem de programação Haskell   

comandos uteis do GHCi

comando              /abreviação        /Significado
:load name           /:l                /carrega o programa fonte name
:reload              /:r                /recarrega o programa fonte atual
:edit name           /:e                /edita o programa fonte name
:edit                /:e                /edita o programa fonte atual
:type expr           /:t                /mostra o tipo da expressão expr
:kind type           /:k                /mostra o tipo do tipo type
:info name           /:i                /mostra a informação sobre name
:browse              /:b                /mostra as definições do módulo atual
:browse name         /:b                /mostra as definições do módulo name, se ele estiver carregado
let id = exp         /let               /define id como exp, associa a variavel id ao valor da expressão exp
:! comando                              /executa o comando do sistema
:help                /:h /?             /mostra a lista de comandos
:quit                /:q                /sai do GHCi


caracteres numeros e listas

    Caracteres:

caracteres são representados por aspas simples
ex: 'a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z'
são representados por um tipo chamado Char, que é uma instância da classe Show e da classe Eq

Haskell possui algumas funções para trabalhar com caracteres, como:
ord :: Char -> Int
ord 'a' = 97
ord 'b' = 98
ord 'c' = 99
ord 'd' = 100
ord 'e' = 101
    possui tambem algumas funcionalidades pré definidas para trabalhar com caracteres, como:
isLower :: Char -> Bool
isLower 'a' = True
isLower 'b' = True

import Data.Char
toUpper :: Char -> Char
toUpper 'a' = 'A'
toUpper 'b' = 'B'

    podemos verificar o tipo de funcao:

:t toUpper
toUpper :: Char -> Char     // esta seta significa que a funcao toUpper recebe um Char e retorna um Char


    Números:

    A linguagem Haskell possui suporte a uma grande variedade de tipos
numéricos:

    ○ Int é do tipo inteiro limitado a um certo tamanho.
    ○ Integer é um tipo inteiro sem limite.
    ○ Ratio é o tipo de números racionais.
    ○ Float e Double são números com casas decimais.

    Funcoes para converter tipos de numeros:

    fromInteger, toInteger, fromRational, toRational, fromIntegral, toIntegral

        ○ fromIntegral :: (Integral a, Num b) => a -> b
        ○ fromRational :: (Fractional a) => Rational -> a
        ○ fromInteger :: (Num a) => Integer -> a
    
    verificar o tipo de constantes numericas:

        :t 1
        1 :: Num a => a
        :t 1.8
        1.8 :: Fractional a => a

    Haskell possui um mecanismo avançado para especificar um tipo numérico.
        ○ Ele faz o ‘agrupamento’ de tipos similares.
        ○ Desta forma, fica mais fácil realizar operações entre diferentes constantes.


    Strings:
    
    Utilizamos uma forma parecida com a de C para declarar strings:
        "Hello World"
    
    Ao invés do tipo String, vemos o tipo [Char].
        ○ Algo entre colchetes indica o uso de uma lista de caracteres.
        ○ Lista é a estrutura de dados mais utilizada em FP

    
    Listas:

    Listas são representadas por colchetes e os elementos são separados por vírgulas.
    ex: [1,2,3,4,5,6,7,8,9,10]
    são representadas por um tipo chamado [a], que é uma instância da classe Show e da classe Eq

    Haskell possui algumas funções para trabalhar com listas, como:

    :t[1,2,3]
    [1,2,3] :: Num a => [a]
    
    :t['a','b','c']
    ['a','b','c'] :: [Char]

    :t reverse
    reverse :: [a] -> [a]
    :t reverse [1,2,3]
    [3,2,1]
    reverse [a,b,c] = [c,b,a]

    Concatenação de listas

    :t (++)
    (++) :: [a] -> [a] -> [a]
    :t (++) [1,2,3] [4,5,6] = [1,2,3,4,5,6]
    (++) [a,b,c] [d,e,f] = [a,b,c,d,e,f]

    Listas em haskell sao homogeneas
    ex: [1,2,3,4,5,6,7,8,9,10] é uma lista de numeros
    ex: ['a','b','c','d','e','f','g','h','i','j'] é uma lista de caracteres
    ex: ["a","b","c","d","e","f","g","h","i","j"] é uma lista de strings
    cada lista pode ter elementos de um unico tipo

    haskell implementa listas ligadas, ou seja, cada elemento da lista aponta para o proximo elemento da lista(linked list)
    podemos criar uma lista assim:
        1 : 2 : 3 : 4 : 5 : 6 : 7 : 8 : 9 : 10 : []
    ou assim:
        [1,2,3,4,5,6,7,8,9,10]
    ou assim:
        [1..10]
    ou assim:
        [1,3..10]
    ou assim:
        [1,3..] // lista infinita
    ou assim:
        'a' : 'b' : 'c' : 'd' : 'e' : 'f' : 'g' : 'h' : 'i' : 'j' : []
    ou assim:
        ['a'..'j']
    ou assim:
        ['a','c'..'j']

    Três funcoes principais podem ser usadas:

        null para verificar se uma lista é vazia
        head para obter o primeiro elemento de uma lista
        tail para obter a cauda de uma lista        //lista sem o primeiro elemento

    booleanos:

    Haskell possui dois tipos de dados booleanos: True e False.
    Funcoes para trabalhar com booleanos:
        not, (&&), (||)


    Condicionais:

    Haskell possui uma estrutura condicional que é muito parecida com a de C.

    expressão no formato : if b then t else f
    onde b é uma expressão booleana, t é uma expressão qualquer e f é uma expressão qualquer

    then e else devem estar presentes, mesmo que não sejam necessários.
    ex:
        if 1 == 1
            then "1 é igual a 1"
            else "1 é diferente de 1"

multiplas linhas no ghci :
    :{
        if not (null["hello", "world"])
            then(head["hello", "world"])
            else "lista vazia"
    }

listas dentro de listas:

    listas podem conter outras listas com elementos, ou qualquer nivel de aninhamento:

    ex:
        [[1,2,3],[4,5,6],[7,8,9]]
        [[1,2,3],[4,5,6],[7,8,9]] :: Num a => [[a]]
        [[1,2,3],[4,5,6],[7,8,9]] :: [[Integer]]
        [[1,2,3],[4,5,6],[7,8,9]] :: [[Int]]

        um ex:
            head[[]]    //uma lista vazia dentro de uma lista vazia
            head[[],[]] //uma lista vazia dentro de duas listas vazias

    concatenando duas listas:
            
            ex:
                ["abc"] ++ ["de"]

take 100 [x|x <- nat, primo x];


as variaveis sao imutaveis

int x = 1;
for(int i = 1; i < 10; i++){
    x = x * 2;
    }
    printf("%d\n", x);
    
nao pode ser feito em haskell


Funcoes recursivas :
    nao existem laços, por causa da ideia de imutabilidade, mas podemos usar funcoes recursivas para simular um laço

    f 0 = 1
    f n = 2 * f (n-1) --
    print(f 10)

funcoes de alta ordem:

    funcoes podem receber funcoes como parametros e retornar funcoes como resultado
    print (aplique dobro[1,2,3,4]) == [2,4,6,8]

    onde dobro é uma funcao que recebe um numero e retorna o dobro dele
    e aplique é uma funcao que recebe uma funcao e uma lista e retorna a lista com a funcao aplicada a cada elemento da lista

tipo polimorficos:
    permite que uma funcao receba argumentos de tipos diferentes
    os tipos dos elmentos nao importam

    fst :: (a,b) -> a
    fst (x,y) = x

avaliação preguiçosa:

    o resultado de uma função só é computado quando for requerido
    ex:
        listainf = [1..]
        print(take 10 listainf)

em haskell a aplicação de função é definida como:
    o nome da funcao 
    seguido dos parametros separados por espaco
    a aplicacao de funcoes tem a maior precedencia

    f a b       --f(a,b)
    f a b + c*d --f(a,b) + c*d


matematica              haskell
f(x)                    f x
f(x,y)                  f x y
f(x,y,z)                f x y z
f(g(x))                 f (g x)
f(x,g(y))               f x (g y)
f(x)g(y)                f x * g y
f(x) + g(x)             f x + g x
f(g(x),h(y))            f (g x) (h y)

convençoes:
    nomes das funcoes e seus parametros devem ser escritos em minusculo
    evitar uso de caracteres unicode
    camelcase

    nomes reservados:
        as, case, class, data, default, deriving, do,
        else, if, import, in, infix, infixl, infixr, instance,
        let, module, newtype, of, then, type, where, _

    nomes de funcoes:
        funcoes que retornam booleanos devem ter o prefixo is
        funcoes que retornam listas devem ter o prefixo list
        funcoes que retornam funcoes devem ter o prefixo fun
        funcoes que retornam tuplas devem ter o prefixo tup
        funcoes que retornam numeros devem ter o prefixo num
        funcoes que retornam strings devem ter o prefixo str
        funcoes que retornam caracteres devem ter o prefixo chr
        funcoes que retornam outros tipos devem ter o prefixo get

    as listas sao nomeadas com o plural do nome do elemento
    ex:
        numeros = [1,2,3,4,5]
        nomes = ["joao", "maria", "pedro"]

    as funcoes que retornam listas sao nomeadas com o prefixo list
    ex:
        listNomes = ["joao", "maria", "pedro"]

    as funcoes que retornam numeros sao nomeadas com o prefixo num
    ex:
        numNomes = length ["joao", "maria", "pedro"]
    
    layout é separado pela identação, tipo em python
    ex:
        f x = a*x + B
            where
                a = 1
                b = 2
                x = 3
        z = f 2 +3

    a palavra chave where faz parte da definição de f
    z nao faz parte de f
    
    

    firstOrEmpty lst = if not(null lst)
                    then head lst
                    else "empty"
                    
    essa funcao só retorna se a lista tiver strings, se for uma lista de ints ela da erro
    porque no
     
