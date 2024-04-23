--Definí la función pesoPino, que recibe la altura de un pino en metros y devuelve su peso. Dividir en subtareas. Pista: las funciones max o min pueden serte de ayuda.
--Los pinos se usan para llevarlos a una fábrica de muebles, a la que le sirven árboles de entre 400 y 1000 kilos, un pino fuera de este rango no le sirve a la fábrica. Definí la función esPesoUtil, que recibe un peso en kg y responde si un pino de ese peso le sirve a la fábrica
--Definí la función sirvePino, que recibe la altura de un pino y responde si un pino de ese peso le sirve a la fábrica. Si ya conocés el concepto de composición, esta función debe definirse usando composición.


pesoPinoMenosDe3:: Float -> Float
pesoPinoMenosDe3 altura = min 3 altura

metrosRestantes:: Float -> Float
metrosRestantes altura = max 0 (altura - 3)

pesoPino:: Float -> Float
pesoPino altura = (pesoPinoMenosDe3 altura * 300) + (metrosRestantes altura * 200)

--esPesoUtil:: Float -> Bool
--sirvePino:: Float -> Bool