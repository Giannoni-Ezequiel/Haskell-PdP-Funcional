{-
 En un lugar muy lejano, existen aventureros que recorren un peligroso camino lleno de encuentes especiales.
 Cada encuentro es con un ser o situacion que promete cambiar el estado del aventurero:
 aliviar su carga,
 aumentar su salud o
 modificar su coraje.
 Cada aventurero tiene un criterio para decidir si acepta o no los cambios propuestos.
 Queremos modelar todo este proceso.
-}
{-
    Punto 1 - Una aventura es mas divertida si huele a peligro...
    De cada aventurero nos interesa conocer:
    Nombre
    Carga, un numero que indica la carga en kilos que lleva el aventurero.
    Salud, un numero entre 0 y 100 que representa su nivel de salud actual.
    Coraje, que indica si el aventurero conserva el coraje o lo perdio.
    Criterio de Seleccion de Encuentros, que dado el estado resultante del aventurero tras un encuentro,
    determina si el aventurero esta conforme.

    Criterios de Eleccion:
    Conformista: Le viene bien cualquier resultado posible.
    Valiente: Acepta si despuesta del encuentro el aventurero tiene coraje o si su salud es mayor que 50.
    LightPacker: Acepta si la carga final es menor a un valor umbral configurable. Por ejemplo puede pretender quedar con una carga menor a 15 kilos.
    otros puende ser mas exigentes y preferir con menos de 12 kilos

    Se pide definir un aventurero y sus criterios
-}

data Aventurero = UnAventurero {
    nombre :: String
    carga :: Float
    coraje :: Int
    criterio :: [Criterios] 
} deriving (Eq, Show)

{-
    Punto 2 - Casi Raiders of the lost Ark
    Dada una lista de aventureros y utilizando exclusivamente funciones de orden superior y aplicacion parcial(sin recursividad) se pide:
    a) Determinar si existe algun aventurero cuyo nombre contenga mas de 5 letras
    b) Sumar la carga total de todos los aventureros cuya carga sea un numero par.
-}