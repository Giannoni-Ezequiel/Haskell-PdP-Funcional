data Alumno = Alumno {
    legajo :: String,
    plan :: Int,
    notaFuncional :: Nota,
    notaLogico :: Nota,
    notaObjetos :: Nota 
} deriving (Eq, Show)

data Nota = Nota {
    valor :: Int
    detalle :: String,
} deriving (Eq, Show)

------------FUNCIONES
id :: Nota -> Nota
id nota = nota
---explotar la nota en su patron, para devolver la nota
--no hay valores mutables, da igual si es la misma nota, lo reconstruyo
id (Nota elValor elDetalle) = Nota elValor elDetalle
--patron simpatico, para darle nombre a todo un patron
-- nota lo utilizo para referirme al tipo y al constructor
id nota@(Nota valor observaciones) = nota

notaFinal :: Alumno -> Nota 
notaFinal (Alumno _ _ (Nota fun _) (Nota log _) (Nota obj _)) = (fun + log + obj) `div` 3

notaFinal alumno = (notaFuncional valor + 
                    notaLogico valor + 
                    notaObjetos valor)
                    `div` 3

----implementancion condiciones, dominio partido, guardas
aprobado :: Alumno -> Bool
aprobado alumno
    | plan alumno >= 1995 = notaFinal alumno >= 6
    | otherwise           = notaFinal alumno >= 4
    --------DOMINIO-------
--solo utilizamos cuando queremos particionar el dominio

-----------EFECTO
--TRANSICIONES
subir :: Nota -> Nota
subir nota = Nota{valor = valor nota + 1, detalle = detalle nota} --una funcion, aca hay constructor

--azucar
-- cualquier detalle que no modifica queda igual
-- copia con algunas modificaciones
subir nota = nota{ valor = valor nota + 1} --aca no hay constructor