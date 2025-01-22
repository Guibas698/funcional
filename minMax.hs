--Faça um programa que recebe uma lista de inteiros e imprime o maior e o menor elemento.

meuMax :: Int -> Int -> Int
meuMax a b = if a > b then a else b

meuMin :: Int -> Int -> Int
meuMin a b = if a < b then a else b

minMax :: [Int] -> (Int, Int)
minMax [x] = (x, x)
minMax (x:xs) = (meuMax x maior, meuMin x menor)
  where
    (maior, menor) = minMax xs

main:: IO()
main = do
    input <- getLine
    let lista = map read (words input) :: [Int]
    let (maior, menor) = minMax lista
    print(maior, menor)

