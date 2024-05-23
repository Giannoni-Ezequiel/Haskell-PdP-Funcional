-------Factorial de un numero
{-
    f :: Int -> Int
    f 0 = 1
    --f n = n * f(n-1)
    --------composicion
    f n = ((n *).f.(+)(-1))n
-}
--------Lista del Factorial de un Numero
f :: Int -> [Int]
f 0 = [] 
f n = n : f(n-1)
{- 
    1:[]  a la derecha esta la cola y a la izq esta lista
    Haskell llama a f y despues la evalua
    (f 0)!!1  Devuelve la posicion, secuencialmente
-}
-------Evaluacion diferida, solo evalua lo necesario. Difirie hasta que sea necesario
g :: Float -> Float -> Float
g 0 x = x
g y x = x + y
h :: Float -> Float -> Float
h 0 x = 0
h y x = x + y

--------Funcion last
ultimo [] = error "lista vacia"
ultimo [x] = x
ultimo (cabeza:cola) = ultimo cola
---Analisis
cuello(x:xs) = xs --Desarma

agregar x xs = x:xs --Arma

---------RECURSIVIDAD
ff a b [] = b
ff a b (x:xs) = ff a (a b x) xs

ff2 a b [] = b
ff2 a b (x:xs) = a x (ff2 a b xs)
--Ejemplo: ff2 (+) 2 [1,2,3]
--------------------------------
data Persona = UnaPersona {
    cansancio :: Float,
    nombre :: String
} deriving Show

trabajar :: Persona -> Float -> Persona
trabajar alguien trabajo  = alguien{cansancio = cansancio alguien + 50}--foldl
trabajar2 :: Float -> Persona -> Persona
trabajar2 trabajo alguien = alguien{cansancio = cansancio alguien + 50}--foldr
jose = UnaPersona 50 "jose perez"
ana = UnaPersona 80 "ana perez"

-- ejemplo: 
-- ff trabajar jose [10,20]
-- ff2 trabajar jose [10,20,7] 

--fold = aplicar sucesivamente una funcion
--foldl = a izquierda  Agregar algo a lo anterior  foldr = a derecha
--foldl (+) 0 [1..10]
--foldl (++) "" ["hola","que","tal"]
--foldl1 = evalua entre dos el que "gana" queda, y lo evalua con el siguiente "competidor", es una operacion cerrada
--a contrario del map, el map crea cada elemento al que aplica
