cuadrado::Float -> Float
cuadrado x = x * x
cuadrado 1 = 1
cuadrado 2 = 4
cuadrado 3 = 9


doble,triple::Float -> Float
doble x = x + x
triple x = x * 3

esCero::Int -> Bool
esCero 0 = True
esCero 1 = False

apellido::String -> String
apellido "juan" = "perez"
apellido alguien = "sin apellido"

funcion x = cuadrado x + triple x

------------------HEAD--------------------
inicial::String -> Char
inicial palabra = head palabra
------------------------------------------

--pi = 3.14
superficie:: Float -> Float
superficie radio = pi * cuadrado radio

-----------------RESTO-MOD----------------
--esPar x = (0 || multiploDe2 (x)) == mod 2 x
esPar,esImpar:: Int -> Bool
esPar x = 0 == mod x 2
esImpar x = 1 == mod x 2

multiploDe2,multiploDe3::Int -> Int
multiploDe2 x = x * 2
multiploDe3 x = x * 3

factorial :: Integer -> Integer
factorial 0 = 1
factorial 1 = 1
factorial x = x * factorial(x - 1)
-------------------------------------------
--pesoPino,metrosRestantes,pesoPinoMenosDe3:: Int -> Int
--pesoPinoHasta3 altura = altura*300
--pesoPinoMasDe3:: Int -> Int
--pesoPinoMasDe3 altura>3 = altura*200+300
--pesoPino peso = peso*200
-----------------------MIN-----------------
pesoPinoMenosDe3:: Float -> Float
pesoPinoMenosDe3 altura = min 3 altura
-----------------------MAX-----------------
metrosRestantes:: Float -> Float
metrosRestantes altura = max 0 (altura - 3)

--pesoPino:: (metrosRestantes->pesoPino) -> (pesoPinoMenosDe3->metrosRestantes) -> (pesoPinoMenosDe3->pesoPino)
pesoPino:: Float -> Float
pesoPino altura = (pesoPinoMenosDe3 altura * 300) + (metrosRestantes altura * 200)
--esPesoUtil:: Int -> Bool
--------------------------------------------

--esBisiesto:: Int -> Bool
--esBisiesto anio = (esDivisible anio 4) && not(esDivisible anio 100)