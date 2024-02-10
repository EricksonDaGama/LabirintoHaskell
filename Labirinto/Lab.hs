--Erickson Cacondo 53653


-- que receba um caracter e um labirinto e 
--devolva o número de ocorrências desse caracter no labirinto
contaCaracteres :: Char->[String]->Int
contaCaracteres x xs= sum (somar1 xs x)


--função que recebe uma lista de  labirinto e  um caracter e devolve uma lista com o numero de ocorrencia deste
-- caracter  em todos os labirintos
somar1 :: [String]->Char->[Int]
somar1 st x =[sum c | c<- (conta2 st x)]

--função que recebe uma lista de labirintos  e um caracter devolve uma 
--lista de listas de inteiros com o numero de ocorrencia deste
-- caracter  em todos os labirintos
conta2 :: [String] -> Char-> [[Int]]
conta2 st x = [conta c x| c<-st ]

-- função que recebe uma lista(um labirinto) e um caracter e devolve  uma lista de 1 se o elemento da lista for igual a caracter
-- ou 0  se não for igual.
conta :: String-> Char->[Int]
conta st x = [ if x==c then 1 else 0 | c<-st]  