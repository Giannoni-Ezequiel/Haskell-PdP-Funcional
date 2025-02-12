pesoPino :: Int -> Int
pesoPino altura
    | altura < 300 = altura * 3
    | altura >= 300 = (300*3) + ((altura-300) * 2)

esPesoUtil :: Int -> Bool
esPesoUtil peso = peso > 400 && peso < 1000

sirvePino :: Int -> Bool
sirvePino = esPesoUtil . pesoPino 