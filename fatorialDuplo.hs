fatorialDuplo :: Int -> Int
fatorialDuplo 0 = 1
fatorialDuplo 1 = 1
fatorialDuplo n = n * fatorialDuplo (n - 2)

main :: IO ()
main = do
    input <- getLine
    let numero = read input :: Int
    let resultado = fatorialDuplo numero
    print(resultado)
