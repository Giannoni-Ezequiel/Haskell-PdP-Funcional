-- Funcion para Homero Simpson
data Hombre = UnHombre String Float deriving(Show)
data Comida = UnaComida Float deriving(Show)

rosquilla1 = UnaComida 300
rosquilla2 = UnaComida 200
rosquilla3 = UnaComida 150

comer (UnHombre nombre peso) (UnaComida cals) = (UnHombre nombre (peso + (cals/10)))


{-
    foldl : recibe una semilla y una funcion
    foldl funcion/reduccion semilla lista
 ej foldl       max            0    [34, 67, 4, 3]   -- devuelve 67
    funcion recibe dos cosas y devuelve una funcion con "acumulacion"
    con la semilla y el 1er elemento de la lista, homero come esta rosquilla. 
    luego agarra el anterior de la acumulacion y el nuevo elemento de la lista, 
     y devuelve un nuevo elemento de toda la reduccion/doblaje anterior.
    
    (+) con operacion reduccion, intercalo entre dos y opero. 
    foldr -- leo de derecha a izquierda
    foldl1 -- cuando tengo 1, significa que no necesito semilla foldl1 :: (a->a->a) -> [a] -> a
-}

panzada unHombre comidas = foldl comer unHombre comidas 