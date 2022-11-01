module Cliente where

data Cliente = OrgGov String
            | Empresa String Integer String Integer
            | Individuo String String Bool
            deriving Show

data Pessoa = Pessoa String String Genero
            deriving Show

data Genero = Masculino | Feminino | Outro
            deriving Show

--nomeCliente :: Cliente -> String
--nomeCliente cliente = case cliente of
  --                      OrgGov nome
    --                    Empresa nome id resp cargo
      --                  Individuo pessoa ads
        --                    case pessoa of
          --                      Pessoa pNome sNome g


--nomeCliente' :: Cliente -> String
--nomeCliente' cliente =
  --      case cliente of
    --        OrgGov nome
      --      Empresa nome
        --    Individuo (Pessoa pNome sNome _)_


primeiro :: [Int]-> Int
primeiro (x:xs) = x

cauda :: [Int] -> [Int]
cauda (x:xs) = xs

fst3 :: (Int, Int, Int) -> Int
fst3 (x,_,_) = x

trd3 :: (Int, Int, Int) -> Int
trd3(_,_,x) = x

--mostraPessoa :: Pessoa-> String
--mostraPessoa (Pessoa n s) = n ++ "" ++ s



--mostraPessoa :: Pessoa-> String
--mostraPessoa (Pessoa n s) = n ++ "" ++ s



-- teste
--module Cliente where

--data Cliente = OrgGov String
  --          | Empresa String Integer String Integer
    --        | Individuo Pessoa Bool
      --      deriving Show

--data Pessoa = Pessoa String String
  --          deriving Show
--
--mostraPessoa :: Pessoa-> String
--mostraPessoa (Pessoa n s) = n ++ "" ++ s
