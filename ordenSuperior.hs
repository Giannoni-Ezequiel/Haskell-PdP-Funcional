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