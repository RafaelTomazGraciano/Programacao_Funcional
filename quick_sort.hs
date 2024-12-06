-- Implementação de Quicksort
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []  -- Caso base: lista vazia já está ordenada
quicksort (x:xs) =
    let menores = [y | y <- xs, y <= x] -- Elementos menores ou iguais ao pivô
        maiores = [y | y <- xs, y > x]  -- Elementos maiores que o pivô
    in quicksort menores ++ [x] ++ quicksort maiores


main :: IO ()
main = do
    let lista = [5, 3, 8, 6, 2, 7, 4, 1]
    print $ quicksort lista