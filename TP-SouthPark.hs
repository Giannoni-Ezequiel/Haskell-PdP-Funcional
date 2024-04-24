data Personajes = UnPersonaje {
    nombrePj :: [String],
    cantDinero :: Float,
    lvlFelicidad :: Int

}

data Trabajos = UnTrabajo {
    nombreTr :: [String],
    dobleTurno :: Bool
}
--Los personajes pueden realizar diversas actividades que los afectan de la siguiente manera:

--Funcion Ir a la escuela primaria de South Park:
irAlaEscuela :: Personajes -> Personajes
irAlaEscuela personaje = personaje { lvlFelicidad = lvlFelicidad personaje - 20} 
-- resta 20 de felicidad al personaje, a excepción de Butters, quien aumenta su felicidad en la misma cantidad.

--Funcion Comer una cierta cantidad de Cheesy Poofs:
comerCheesyPoofs :: Personajes -> Float -> Personajes
comerCheesyPoofs personaje cantCheesyPoofs = personaje { lvlFelicidad = lvlFelicidad personaje + 10, cantDinero = cantDinero personaje - (cantCheesyPoofs * 10) } 
--aumenta 10 de felicidad y resta 10$ por cada Cheesy Poof consumido.

--Funcion Ir a trabajar:
--tipoTrabajo ::
irAtrabajar :: Personajes -> Float -> Personajes
irAtrabajar personaje ganancia = personaje { cantDinero = cantDinero personaje + ganancia} 
-- ganan una cantidad de dinero dependiendo del trabajo. Si es en el "Restaurante de City Wok", ganan 23$ porque tiene 23 caracteres.