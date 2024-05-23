{-
LvlTerror * (Intensidad^2)  si moja la cama
LvlTerror*3 + Intensidad
LvlTerror = lenght(grito)
grito =  tupla (Onomatopeya, Intensidad, mojóLaCama)

data Monster = UnMonster 
{
    lvlTerror = Int,
    intensidad = Int,
    grito
}
-}
--- Defino una tupla con type
type Grito = (String, Int, Bool)

--- Accedo/Redefino a distintas partes de una tupla
onomatopeya (o,_,_) = o

intensidad (_,i,_) = i

mojoLaCama (_,_,m) = m
------------------------------ Funcion con criterio/Guards
{-
energiaDeGrito grito 
    | mojoLaCama grito = nivelTerror grito * (intensidad grito)^2
    | otherwise = 3 * nivelTerror grito + intensidad grito
-}
------------------------- Pattern Machine
energiaDeGrito grito@(_, intensidad, mojoLaCama)
    | mojoLaCama = nivelTerror grito * intensidad^2
    | otherwise = 3 * nivelTerror grito + intensidad
------------------------------- Where, define localmente, para el uso exclusivo de la funcion
{-
energiaDeGrito (onomatopeya, intensidad, mojoLaCama)
 | mojoLaCama = nivelTerror *intensidad^2
       | otherwise = 3 * nivelTerror + intensidad
  		where nivelTerror = length onomatopeya
-}
------------------------- Defino funcion que recibe el grito y devuelve la cantidad de letras
--nivelTerror grito = length (onomatopeya grito)
----Composicion
nivelTerror grito = (length.onomatopeya) grito
-----Point Free (ver)
--nivelTerror = length.onomatopeya



----PUNTO 2
type Niño = (String, Int, Float)
nombre (n,_,_) = n
edad (_,e,_) = e
altura (_,_,a) = a

--funcion Niño = grito

sullivan victima = (gritoGenerado, intensidadGenerada, haceMojarLaCama)
  where gritoGenerado      = map (\ _ -> 'A') (nombre victima) ++ "GH"
        intensidadGenerada = div 20 edad
        haceMojarLaCama    = edad victima < 3
{-
    take cantA
length(niño.edad)*A ++ "GH"
randall victima =

energiaDeGrito grito@(_, intensidad, mojoLaCama)
    | mojoLaCama = niño.edad <3
    | otherwise = 3 * nivelTerror grito + intensidad
-}