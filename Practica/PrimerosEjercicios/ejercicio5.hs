{-
Definir la función esBisiesto/1, indica si un año es bisiesto. 
(Un año es bisiesto si es divisible por 400 o es divisible por 4 pero no es divisible por 100) 
Nota: Resolverlo reutilizando la función esMultiploDe/2
-}
esBisiesto :: Int -> Bool
esBisiesto anio = (esMultiploDe anio 400 || esMultiploDe anio 4) && not(esMultiploDe anio 100)

esMultiploDe :: Int -> Int -> Bool
esMultiploDe a b = mod a b == 0


--“bis sextus dies ante calendas martii” (“repetido el sexto día antes del primer día de marzo”)
esBisiesto1:: Int -> Bool
esBisiesto anio = (esDivisible anio) && not(esDivisible anio)
k = numero/numero
esDivisible:: Int -> Bool
esDivisible numero = even(numero / 4 numero == 2 * k) && even(numero / 400)
esbisiesto:: Int -> Bool
esbisiesto 365 = True
esbisiesto 366 = False