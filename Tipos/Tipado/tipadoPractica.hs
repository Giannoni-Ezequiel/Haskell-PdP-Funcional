elMayorDeLosTres :: Ord a => a -> a -> a -> a
elMayorDeLosTres x y z = (x > y) > z
--max :: Ord a => a -> a -> a
elMayorDeLosTres x y z = x `max` y `max` z

xor :: Bool -> Bool -> Bool
xor a b = False
xor x y = x || y

fibonacci :: Int -> Int
--fibonacci x = x + 2
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci (x-1) + fibonacci (x-2)

--esMuchoMayor :: Num  a => a -> a -> Bool
--esMuchoMayor :: (Num  a, Ord a) => a -> a -> Bool  
-- ordenable por que aparece el >
--esMuchoMayor :: Int -> Int -> Int 
esMuchoMayor :: Int -> Int -> Bool 
esMuchoMayor n m = n - m > 10

-- NO TIPAAA, le estoy pasando por parametro a esMuchoMayor
--un booleano. 
funcionRara :: Ord a => a -> a -> a
funcionRara n m = esMuchoMayor n (not m)


f :: Bool -> String -> Bool
f False "" = True
f x y = g ( h y (i x y) x) y