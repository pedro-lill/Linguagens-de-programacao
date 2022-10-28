module Main (main) where --nome do modulo que a gente ta declarando

-- as proximas linhas sao as funcoes que a gente vai usar
-- elas definem a funcao main
main :: IO ()     -- define o tipo da funcao main
main = do         -- define o corpo da funcao main

  putStrLn "hello world"

  take 10 [1..] 