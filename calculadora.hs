-----------------FOLD---------------------
calculadora x operacion = foldl1 (.) operacion x
--calculadora 1 [(+3),(*2)]

factorial :: Float -> Float
factorial 0 = 1 
factorial n = n * factorial(n-1)

sumaTres :: Float -> Float
sumaTres 0 = 3
sumaTres n = n + 3

doble :: Float -> Float
doble 0 = 0
doble n = n * 2

potencia :: Float -> Float
potencia 0 = 0
potencia n = n * n
