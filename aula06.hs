module Aula6 where

dobro x = x + x

quadruplo x = dobro(dobro x)

areaCirculo:: Float -> Float
areaCirculo r = pi * r^2

vabs:: Integer -> Integer
vabs n | n >= 0 = n
       | n < 0 = -n

sinal:: Int -> Int
sinal n | n > 0     = 1
        | n == 0    = 0
        | otherwise = 1  

areaTriangulo a b c =  let s = (a + b + c) / 2
                        in sqrt(s * (s-a)*(s-b)*(s-c))


firstOrEmpty lst = if not(null lst)
                    then head lst
                    else "empty"

funcUm x =  (dobro x)^2


funcTres a b c = (a + b + c)/3
