{-
   (.)::(b->c)->(a->b)->(a->c)
    g :: a -> b
    f :: b -> c
f . g :: a -> c

Funciones que puedan conectarse un extremo de una con la otra (mismo tipo)
-}
-------------------------------------
doble x = 2*x
cuadrados x = x**2

cuadrado = (doble.cuadrado)
--map(doble.cuadrado)[1,2,3,4]
--filter (even.cuadrado)[1,2,3,4,5,6]
-------------------------------------
{-
nota :: Alumno -> Int
esMenorAOcho :: Int -> Bool
not :: Bool -> Bool
promociona :: ALumno -> Bool
--
promociona alumno = not (esMenorAOcho (nota alumno))
-- composicion Bool<-Bool<-Int<-Alumno   (de derecha a izq)
promociona alumno = (not.esMenorAOcho.nota) alumno
-}
--------------------------------------
-- Currificacion
--conversion automatica de una funcion que recibe muchos parametros a una que devuelve uno
--f :: a -> (b -> (c -> d))
--f x y z
--((f x) y) z