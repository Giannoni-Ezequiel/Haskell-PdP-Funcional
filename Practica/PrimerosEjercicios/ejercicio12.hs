{-
Este ejercicio alguna vez se planteó como un Desafío Café con Leche: Implementar la función esCuadradoPerfecto/1, 
sin hacer operaciones con punto flotante. Ayuda: les va a venir bien una función auxiliar, tal vez de dos parámetros. 
Pensar que el primer cuadrado perfecto es 0, 
para llegar al 2do (1) sumo 1, para llegar al 3ro (4) sumo 3, para llegar al siguiente (9) sumo 5, después sumo 7, 9, 11 etc.. 
También algo de recursividad van a tener que usar. 
-}
{--
esCuadradoPerfecto :: Int -> Int
esCuadradoPerfecto 0 = 0
esCuadradoPerfecto x = (esCuadradoPerfecto1 0) + (x-1)

esCuadradoPerfecto1 :: (Int -> Int) -> Int
esCuadradoPerfecto1 x = 0
--}
esCuadradoPerfecto :: Int -> Bool
esCuadradoPerfecto n = aux n 0 1

aux :: Int -> Int -> Int -> Bool
aux n suma impar
    | suma == n = True
    | suma > n = False
    | otherwise = aux n (suma + impar) (impar + 2)
