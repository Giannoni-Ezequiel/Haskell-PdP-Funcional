--------Funcionamiento
-- comentario
{- comentarios-}
--- ghci para correr
--- stack ghci
--- :r para recargar
--- :q salir
--- :t tipo(*3) (*3) :: Num a => a -> a
--------TIPADO
--Consola : enésimoCaracter 5 "Hola Mundo"
enésimoCaracter n palabra = palabra !! n

--------INFERENCIA
--f :: ? -> ? -> ?
--f x y = x && not y
f :: Bool -> Bool -> Bool
f x y = x && not y

--------VARIABLES DE TIPO
id :: a -> a 
id x = x

ignorarElPrimero :: p1 -> p2 -> p2
ignorarElPrimero x y = y

doble :: a -> a
doble x = x * 2

-----TYPE CLASSES
doble1 :: Num a => a -> a
doble1 x = x * 2
{-
    Fun(a->b)   
    Eq (==)       Int,Float,Char,String,Complex
       (/=)
       (>)
    Ord(<)        Char,String,Int,Float
       (>=)
       (<=)
       (+)
    Num(-)        Int,Float,Complex
       (*)
       ...
-}


estaElem letra = elem (letra "alfonso") --se fija que si lo que pasamos como letra, se encuentre como caracter en el string.
 