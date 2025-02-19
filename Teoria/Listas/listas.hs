-----Listas [a]
{-
    son recursivas
    tiene dos constructores
-}
{-
    [a] -  [] --Nil :: [a]    //lista vacia
    -  (:)--Cons:: a -> [a] -> [a]
                cabeza  cola
    1:2:3:[] :: [Int]
-}
{-
    una lista o bien tiene otra lista como cola o 
    tiene una lista vacia como cola
    es recursiva
-}

--1:2:3:[] :: [Int] es lo mismo que [1,2,3] :: [Int]

--las navego usando pattern machine
head1 :: [a] -> a 
head1 (x:_) = x 
tail1 :: [a] -> [a]
tail1 (_:xs) = xs

---una lista es una lista vacia????
null1 :: [a] -> Bool
null1 [] = True
null1 _ = False

---tamaño de una lista
length1 :: [a] -> Int
length1 [] = 0
--length (_:xs) = 1 + length xs

elem1 :: Eq a => a -> [a] -> Bool
elem1 _ [] = False
elem1 x (y:ys) = y == x || elem1 x ys

estaOrdenada :: Ord a => [a] -> Bool
estaOrdenada [] = True
estaOrdenada [x] = True
estaOrdenada (x:y:ys) = x < y && estaOrdenada (y:ys)
