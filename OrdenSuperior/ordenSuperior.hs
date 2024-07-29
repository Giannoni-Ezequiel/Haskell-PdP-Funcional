{-
     -funciones que reciben funciones por parámetro o bien devuelven una función como resultado.

     -La función filter recibe por parámetro una función f y una lista 
     y retorna una nueva lista que contiene aquellos elementos que al ser aplicados como parámetros 
     a f devuelven verdadero. 
     La función f debe tener entonces paridad 1 y devolver un valor booleano.
                filter :: (a -> Bool) -> [a] -> [a]

*Funciones de Orden Superior 
    MAP
    FILTER
    ALL
    ANY
    FOLD
    (.) Composicion ej (.) f g x = f (g x)
    FLIP ej flip f x y = f y x
    funciones de ordenamiento o búsqueda

    Currificar = Operacion inversa a (.)
    f :: (X->Y) -> Z ----- curry(f) :: X -> (Y->Z) 
    
    $ que lo que hace es aplicarle un parámetro a una función.
    ($) :: (a -> b) -> a -> b ej ($) f x = f x
    ($) funcion parametro = funcion parametro

-}


--doble x = 2 * x
--MAP doble [1,2]
caracteres p1 = length p1
--cantidadPalabrasConMasDe3Caracteres p1 = caracteres > 3
cantidadPalabrasConMasDe3Caracteres palabras = length(filter mayorA3 palabras)
mayorA3 num = length num > 3
--map caracteres1 = ["hola", "que", "tal"]
--totalDeCaracteres lista = ["hola", "que", "tal"]
--concatenar (++) :: [a] -> [a] -> [a] y contar length :: [a] -> Int **

--sumar lista = length[0] + length[1] + length[2]
--totalDeCaracteres lista = length[0] + length[1] + length[2]
totalDeCaracteres lista = sum(map caracteres lista)
cantidad x = (length x > 3)