--Funcion que guarda el Sueldo basico de un docente universitario de UTN
cargo:: String -> Float
cargo "titular" = 149000
cargo "adjunto" = 116000
cargo "ayudante" = 66000


--Funcion años de antigûedad
--antiguedad :: Int -> Bool
--antiguedad aniosAnt
--    | aniosAnt >= 24 = aniosAnt1 = 1
--    | aniosAnt >= 10 = aniosAnt2 = 2
--    | aniosAnt >= 5 = aniosAnt3
--    | aniosAnt >=3 = aniosAnt4
--    | otherwise = 1 = aniosAnt0
--Funcion sueldoFinal recibe años de antiguedad y el titulo de su cargo, para calcular adicional correspondiente
sueldoFinal:: Float -> String -> Float -> Float
sueldoFinal aniosAnt titulo horas
    | aniosAnt >= 3 = (cargo titulo * 1.2) * cantHoras horas
    | aniosAnt >= 5 = (cargo titulo * 1.3) * cantHoras horas
    | aniosAnt >= 10 = (cargo titulo * 1.5) * cantHoras horas
    | aniosAnt >= 24  = (cargo titulo * 2.2) * cantHoras horas
    | otherwise = 1

--Funcion que segun la Cantidad de horas
cantHoras:: Float -> Float
cantHoras horas
    | horas >= 10 = 1
    | horas >= 25 = 3
    | horas >= 20 = 2
    | horas >= 35 = 4
    | otherwise = 0
 
