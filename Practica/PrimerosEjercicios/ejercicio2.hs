{-
Definir la función esMultiploDe/2, que devuelve True si el segundo es múltiplo del primero, p.ej. 
Main> esMultiploDe 3 12
True
-}
esMultiploDe :: Int -> Int -> Bool
esMultiploDe a b = mod a b == 0