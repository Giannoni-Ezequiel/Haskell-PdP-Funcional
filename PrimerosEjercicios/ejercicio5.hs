esBisiesto :: Int -> Bool
esBisiesto anio = (esMultiploDe anio 400 || esMultiploDe anio 4) && not(esMultiploDe anio 100)

esMultiploDe :: Int -> Int -> Bool
esMultiploDe a b = mod a b == 0