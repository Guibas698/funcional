--Faça um programa que, dado uma lista numérica, imprima uma 2-tupla, tal que contenha o maior valor da lista, bem como sua posição relativa


meuMax :: Int -> Int -> Int
meuMax a b = if a > b then a else b


position :: [Int] -> Int -> Int
position [] _ = error "Elemento não encontrado na lista"
position (y:ys) x
   | x == y    = 0
   | otherwise = 1 + position ys x


maxNumero :: [Int] -> (Int, Int)
maxNumero [x] = (x, 0)
maxNumero lista = (maior, position lista maior)
  where
    maior = maxLista lista


maxLista :: [Int] -> Int
maxLista [x] = x
maxLista (x:xs) = meuMax x (maxLista xs)

main :: IO ()
main = do
    input <- getLine
    let lista = map read (words input) :: [Int]
    let (maior, posicao) = maxNumero lista
    print (maior, posicao)
