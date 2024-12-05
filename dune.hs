type Titulo = String

data Fremen = UnFremen {
    nombreFremen :: String,
    lvlTolerancia :: Int,
    titulos :: [Titulo],
    cantReconocimientos :: Int
}deriving Show

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

