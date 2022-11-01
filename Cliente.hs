module Cliente where

data Cliente = OrgGov String
            | Empresa String Integer String Integer
            | Individuo String String Bool
            deriving Show

data Pessoa = Pessoa String String Genero
            deriving Show

data Genero = Masculino | Feminino | Outro
            deriving Show

nomeCliente :: Cliente -> String
nomeCliente cliente = case cliente of
                        OrgGov nome
                        Empresa nome id resp cargo
                        Individuo pessoa ads
                            case pessoa of
                                Pessoa pNome sNome g


nomeCliente' :: Cliente -> String
nomeCliente' cliente =
        case cliente of
            OrgGov nome
            Empresa nome
            Individuo (Pessoa pNome sNome _)_




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
