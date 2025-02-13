{-
Resolver la función del ejercicio 5 de la guía anterior esBisiesto/1, utilizando aplicación parcial y composición.
-}

esBisiesto :: Int -> Bool
esBisiesto anio = (esMultiploDe anio 400 || esMultiploDe anio 4) && not(esMultiploDe anio 100)

esMultiploDe :: Int -> Int -> Bool
esMultiploDe = (== 0) .: mod

(.:) :: (c -> d) -> (a -> b -> c) -> a -> b -> d
(f .: g) x y = f (g x y)