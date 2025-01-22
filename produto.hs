--Faça um programa que recebe uma lista de números inteiros e imprime o produto dos números 

produto :: [Int] -> Int
produto [] = 1                       
produto (x:xs) = x * produto xs 

main:: IO()
main = do
    input <- getLine
    let numeros = map read (words input)
    print (produto numeros)
