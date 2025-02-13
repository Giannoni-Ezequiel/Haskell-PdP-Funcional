# Haskell-PdP
Ejercicios del paradigma funcional, 
en lenguaje Haskell.

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

vamos a utilizar ghci>. 
Si quieres tener el mismo apuntador ejecuta :
set prompt "ghci> "

Funcionamiento de la consola:
-- comentario
{- comentarios-}
---> ghci para correr
---> stack ghci
---> :r para recargar
---> :q salir
---> :t tipo(*3) (*3) :: Num a => a -> a

Pruebas:
5 * (-3)

Funciones infijas:
 * es una función que toma dos números y los multiplica. Como ya has visto, lo llamamos haciendo un sándwich sobre él. 
 Esto lo llamamos funciones infijas. 
 Muchas funciones que no son usadas con números son prefijas.

    ghci> succ 8
    9
La función succ toma cualquier cosa que tenga definido un sucesor y devuelve ese sucesor. 

Las funciones min y max, 
toman dos cosas que puedan ponerse en orden (¡cómo los números!), 
y devuelven uno de ellos.

La aplicación de funciones, 
(llamar a una función poniendo un espacio después de ella y luego escribir sus parámetros), 
tiene la máxima prioridad.
Si una función toma dos parámetros, 
también podemos llamarla como una función infija rodeándola con acentos abiertos. 
Por ejemplo, la función div toma dos enteros y realiza una división entera entre ellos. 
Haciendo div 92 10 obtendríamos 9. 
Pero cuando la llamamos así, 
puede haber alguna confusión como que número está haciendo la división, 
y cual está siendo dividido. 
De manera que nosotros la llamamos como una función infija haciendo 92 `div` 10.

Rutas

Practica
cd Practica/Composicion-AplicacionParcial
ghci nombreArchivo.hs