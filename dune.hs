type Titulo = String

data Fremen = UnFremen {
    nombreFremen :: String,
    lvlTolerancia :: Int,
    titulos :: [Titulo],
    cantReconocimientos :: Int
} deriving (Eq, Show) 

nuevoReconocimiento :: Fremen -> Fremen
nuevoReconocimiento fremen = fremen{cantReconocimientos = cantReconocimientos fremen + 1}

fremen1 = UnFremen "Stilgar" 80 ["Guia"] 3
fremen2 = UnFremen "Pepe" 70 ["Domador"] 4
-- a) consulta: nuevoReconocimiento fremen1


candidatos = filter(esCandidato)

type Tribu = [Fremen]

candidatoAserElegido :: Tribu -> Bool
candidatoAserElegido tribu  = not (null (candidatos tribu))

tieneTitulo :: String -> Fremen -> Bool
tieneTitulo titulo fremen = any(==titulo) (titulos fremen)

esCandidato :: Fremen -> Bool
esCandidato fremen = tieneTitulo "domador" fremen && (lvlTolerancia fremen >= 100)

hallarElegido :: Tribu -> Fremen
hallarElegido tribu = candidatoConMayorReconocimientos tribu 

type Candidatos = [Fremen]
candidatoConMayorReconocimientos :: Candidatos -> Fremen
candidatoConMayorReconocimientos candidatos = foldl1 compararPorReconocimiento candidatos
--fold1 compara entre si
compararPorReconocimiento :: Fremen -> Fremen -> Fremen
compararPorReconocimiento fremen1 fremen2 
    | (cantReconocimientos fremen1 >= cantReconocimientos fremen2) = fremen1
    | otherwise = fremen2

data Gusano = UnGusano {
    longitud :: Float,
    lvlHidratacion :: Int,
    descripcion :: String
} deriving (Eq, Show)

gusano1 = UnGusano 10 5 "rojo con lunares"
gusano2 = UnGusano 8 1 "dientes puntiagudos"
reproducirGusanos :: Gusano -> Gusano -> Gusano
reproducirGusanos gusano1 gusano2 = UnGusano{longitud = longitudMax gusano1 gusano2, lvlHidratacion = 0 , descripcion = concatenarDescripciones gusano1 gusano2} 

longitudMax :: Gusano -> Gusano -> Float
longitudMax gusano1 gusano2 = max(longitud gusano1) (longitud gusano2) * 0.1

concatenarDescripciones :: Gusano -> Gusano -> String
concatenarDescripciones gusano1 gusano2 = descripcion gusano1 ++ descripcion gusano2 

-------
 -----------------------MISIONES-------------
data Mision = UnaMision {
    fremen :: Fremen,
    gusano :: Gusano
} deriving (Show)


domarGusano :: Mision -> Fremen
domarGusano mision1
    | lvlTolerancia fremen mision1 >= longitud gusano mision1 = (titulo = "Domador") fremen mision1
    | otherwise        =