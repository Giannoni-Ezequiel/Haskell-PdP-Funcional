-- La composicion es entre funciones, por eso utilizo parentesis.

(not . even) 7
not . even $ 7

--El operador $ sirve para aplicar y tiene menor precedencia que el operador . 

-- Se lee de derecha a izquierda, considerar que parametros espera cada funcion.

not.even.length "hola" ---ERROR

not . (even . length) $ "hola"
not(even (length "hola"))