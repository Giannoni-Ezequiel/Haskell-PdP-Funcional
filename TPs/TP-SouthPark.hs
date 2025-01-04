data Personajes = UnPersonaje {
    nombrePj :: [String],
    cantDinero :: Float,
    lvlFelicidad :: Int,
    fama :: Int
}

--Los personajes pueden realizar diversas actividades que los afectan de la siguiente manera:

--Funcion Ir a la escuela primaria de South Park:
irAlaEscuela :: Personajes -> Personajes
irAlaEscuela personaje = personaje { 
    lvlFelicidad = lvlFelicidad personaje - 20} 
-- resta 20 de felicidad al personaje, a excepción de Butters, quien aumenta su felicidad en la misma cantidad.

--Funcion Comer una cierta cantidad de Cheesy Poofs:
comerCheesyPoofs :: Personajes -> Float -> Personajes
comerCheesyPoofs personaje cantCheesyPoofs = personaje { 
    lvlFelicidad = lvlFelicidad personaje + 10, 
    cantDinero = cantDinero personaje - (cantCheesyPoofs * 10) } 
--aumenta 10 de felicidad y resta 10$ por cada Cheesy Poof consumido.

--Funcion Ir a trabajar:
tipoTrabajo :: String -> Int
tipoTrabajo nombreTrabajo = length(nombreTrabajo)
irAtrabajar :: Personajes -> String -> Personajes
irAtrabajar personaje nombreTrabajo = personaje { 
    cantDinero = cantDinero personaje + fromIntegral(tipoTrabajo nombreTrabajo)} 
-- ganan una cantidad de dinero dependiendo del trabajo. Si es en el "Restaurante de City Wok", ganan 23$ porque tiene 23 caracteres.

--Funcion Hacer doble turno:
dobleTurno :: Personajes -> String -> Personajes
dobleTurno personaje nombreTrabajo = personaje { 
    cantDinero = cantDinero personaje + fromIntegral(tipoTrabajo nombreTrabajo)*2, 
    lvlFelicidad = lvlFelicidad personaje - fromIntegral(tipoTrabajo nombreTrabajo)}
-- implica ir a trabajar el doble de tiempo y restar tanta felicidad como caracteres tenga el trabajo.

--Funcion Jugar World of Warcraft:
jugarWoW :: Personajes -> Int -> Personajes
jugarWoW personaje cantAmigos = personaje { 
    lvlFelicidad = lvlFelicidad personaje + (cantAmigos * 10),
    cantDinero = cantDinero personaje - fromIntegral(cantAmigos * 10)
}
--por cada amigo con el que juega cada hora aumenta 10 de felicidad, y por cada hora pierde $10. A partir de las 5 horas no aumenta más la felicidad, pero el dinero sigue disminuyendo. 

--Funcion Aumenta la Fama
upFama :: Personajes -> Int -> Personajes
upFama personaje cantConocidos = personaje {
    fama = fama personaje + (cantConocidos + cantConocidos)
} 
--por cada persona que conoces crece tu fama 2ptos