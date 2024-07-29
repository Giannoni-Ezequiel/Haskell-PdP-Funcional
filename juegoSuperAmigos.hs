data Carta = Carta {
    nombre :: String,
    velocidad :: Int,
    altura :: Int,
    peso :: Int,
    fuerza :: Int,
    peleas :: Int
} deriving (Eq, Show)
{-
ganaSegunVelocidad :: Carta -> Carta -> Carta
ganaSegunVelocidad carta1 carta2 | velocidad carta1 > velocidad carta2 = carta1
                                 | otherwise = carta2
ganaSegunAltura :: Carta -> Carta -> Carta
ganaSegunAltura carta1 carta2 | altura carta1 > altura carta2 = carta1
                                 | otherwise = carta2
ganaSegunPeso :: Carta -> Carta -> Carta
ganaSegunPeso carta1 carta2 | peso carta1 > peso carta2 = carta1
                                 | otherwise = carta2

...
-}
-----Orden superior, las funciones pueden ser pasadas por parametros
{-ganaSegun???? :: Carta -> Carta -> Carta
ganaSegun???? carta1 carta2 | _ carta1 > _ carta2 = carta1
                            | otherwise = carta2
-}
ganaSegunCriterio :: (Carta->Int) -> (Carta -> Carta -> Carta)
ganaSegunCriterio criterio carta1 carta2 | criterio carta1 > criterio carta2 = carta1
                            | otherwise = carta2
ganaSegunVelocidad = ganaSegunCriterio velocidad
ganaSegunAltura = ganaSegunCriterio altura
ganaSegunPeso = ganaSegunCriterio peso
ganaSegunFuerza = ganaSegunCriterio fuerza
ganaSegunPeleas = ganaSegunCriterio peleas
{-
ganaSegunIMC = ganaSegunCriterio imc
imc carta = peso carta `div` altura carta ^ 2
-}
-----Expresiones LAMBDA, funcion anonima, valor momentaneo (\<parametro> -> <expresiòn>)  \ = Lambda
ganaSegunIMC = ganaSegunCriterio (\carta -> peso carta `div` altura carta ^ 2)

----MAP
nombres :: [Carta] -> [String]
nombres cartas = map nombre cartas
fuerzas :: [Carta] -> [Int]
fuerzas cartas = map fuerza cartas
longitudDeNombres :: [Carta] -> [Int]
longitudDeNombres cartas = map (length . nombre) cartas

---FILTER filter :: (a->Bool)-->[a]->[a]
nuevos :: [Carta] -> [Carta]
nuevos cartas = filter ((==0) . peleas) cartas
conX :: [Carta] -> [Carta]
conX cartas = filter (elem 'X' . nombre) cartas
pesadas :: [Carta] -> [Carta]
pesadas cartas = filter (\c -> peso c > altura c) cartas

---ALL all :: (a->Bool)->[a]->Bool
todosConX :: [Carta] -> Bool
todosConX cartas = all (elem 'X' . nombre) cartas

---ANY any :: (a->Bool)->[a]->Bool
hayNuevos :: [Carta] -> Bool
hayNuevos cartas = any ((==0) . peleas) cartas
hayPesadas :: [Carta] -> Bool
hayPesadas cartas = any (\c -> peso c > altura c) cartas

---FOLD fold :: (a->b->b)->b->([a]->b)
--fold (+) 0 [1,2,3]
peleasTotales :: [Carta] -> Int
peleasTotales cartas = fold(\carta acum -> acum + peleas carta) 0 cartas
--Quiero todos los nombres en un string  intercalados con ";"
nombreSeparados :: [Carta] -> String
nombreSeparados cartas = fold(\carta acum -> nombre carta ++ ";" ++ acum) "" cartas
--Quiero la carta que tenga la mayor fuerza
masFuerte :: [Carta] -> Carta
masFuerte cartas = fold(\carta acum -> carta) (head cartas) (tail cartas)
