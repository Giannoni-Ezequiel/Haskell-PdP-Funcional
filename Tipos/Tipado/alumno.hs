data Alumno = Alu 
    (nombre String), (legajo String), 
    (nota Int) deriving (Show, Eq)

--nombre (Alu elNombre _ _) = elNombre
--nota (Alu _ _ laNota) = laNota
--legajo (Alu _ elLegajo _) = elLegajo


promociona :: Alumno -> Bool
--promociona (Alu _ _ laNota) = laNota >= 8 --pattern matching (acoplamiento a la forma de algo)
promociona alumno = nota alumno >= 8 --usando Funciones

--Se prefiere utilizar funciones, ya que se si rompe la estructura
--solo tendre que modificar la funcion y no todos los accesos...
--en caso de agregar un campo mas, por ejemplo, tendria que ir a modificar en
--todo lugar donde defini o utilice el data para agregarle el nuevo campo
--quedan acopladas...

--con Funciones todo es mas Transparente

-----TYPE ALIAS

data Alumni = Alum Nombre Legajo Nota deriving (Show, Eq)
type Nombre = String
type Legajo = String
type Nota = Int

---Azucar sintactico, forma mas sencilla de escribir

data Alumno = Alu {
    nombre :: String
    legajo :: String
    nota :: Int
} deriving (Show, Eq)

id:: Nota -> Nota
id(Nota elValor elDetalle) = Nota elValor elDetalle

id:: Nota -> Nota
id nota@(Nota valor observaciones) = nota

notaFinal :: Alumno -> Nota
