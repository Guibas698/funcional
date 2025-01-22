-- Faça um programa que recebe uma lista numérica L e um dado número p e apaga todas as ocorrências de p em L.

meuIgual :: [Int] -> Int -> [Int]
meuIgual [] _ = []
meuIgual (x:xs) a
    | x /= a    = x : meuIgual xs a
    | otherwise = meuIgual xs a

main :: IO ()
main = do
    input <- getLine
    let lista = map read (words input) :: [Int]
    numeroStr <- getLine
    let numero = read numeroStr :: Int  
    print (meuIgual lista numero)

