--Funcion que guarda el Sueldo basico de un docente universitario de UTN
cargo:: String -> Float
cargo "titular" = 149000
cargo "adjunto" = 116000
cargo "ayudante" = 66000
cargo otro = 0

--Funcion antiguedad recibe años de antiguedad y el titulo de su cargo, para calcular adicional correspondiente
sueldoFinal:: Float -> String -> Float -> Float
sueldoFinal aniosAnt titulo horas
    | aniosAnt >= 3 && aniosAnt <= 5 = (cargo titulo * 1.2) * cantHoras horas
    | aniosAnt > 5 && aniosAnt < 10 = (cargo titulo * 1.3) * cantHoras horas
    | aniosAnt >= 10 && aniosAnt < 24 = (cargo titulo * 1.5) * cantHoras horas
    | aniosAnt >= 24 = (cargo titulo * 2.2) * cantHoras horas

--Funcion que segun la Cantidad de horas
cantHoras:: Float -> Float
cantHoras horas
    | horas >= 10 && horas < 20 = 1
    | horas > 25 && horas <= 35 = 3
    | horas >= 20 && horas <= 25 = 2
    | horas > 35 && horas > 50 = 4
    | horas < 5 || horas >= 50 = 0
 
