-- :t (*3)

doble x = 2*x

losDosPrimeros :: [a] -> [a]
losDosPrimeros lista = take 2 lista

losDosPrimeross :: [a] -> [a]
losDosPrimeross = take 2

losDosPrimerosInvertidos :: [a] -> [a]
--losDosPrimerosInvertidos lista = take 2 (reverse lista)
--losDosPrimerosInvertidos lista = ((take 2). reverse) lista
losDosPrimerosInvertidos  = ((take 2). reverse)

--filter ((<10).(*5)).(+1).(max 10)) [1..20]

--serieEventosDesafortunados letras cantidad = reevaluacion letras (crisis (remodelacion cantidad)ciudad) 
--serieEventosDesafortunados letras cantidad = (reevaluacion letras.crisis.remodelacion cantidad)


--Consola:    map (3*).(/2) [1..20]
--LAMBDA \ =  map (\x -> 3 * x ) [1..20]
--            map (\x -> (x+1)/ x ) [1..20]

f algo = algo 4

--Consola: any f [odd.even.(>5)]
--         any (\algo -> algo 5)

data Perro = UnPerro {
    raza :: String,
    formaDeJugar :: Perro -> Bool
}
---saludarAlDueño :: Perro -> Bool
---saludarAlDueño
--sulta = UnPerro "caniche" saludarAlDueño

{-
(&&) :: Bool ->(Bool -> Bool)
(&&) unBool :: Bool -> Bool
-}



