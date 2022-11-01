module Main (main) where
main :: IO()
main = do putStrLn "qual é seu nome?"
    nome <- getline
    putStr nome
    putStrLn ", seja bem vindo (a)!"
