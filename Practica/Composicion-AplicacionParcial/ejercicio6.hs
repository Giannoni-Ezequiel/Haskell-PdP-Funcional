
{-
Resolver la función del ejercicio 2 de la guía anterior esMultiploDe/2, utilizando aplicación parcial y composición.
-}

esMultiploDe :: Int -> Int -> Bool
esMultiploDe = (== 0) .: mod

(.:) :: (c -> d) -> (a -> b -> c) -> a -> b -> d
(f .: g) x y = f (g x y)