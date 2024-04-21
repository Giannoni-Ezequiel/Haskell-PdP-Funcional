data Nomu = UnNomu {
    fuerza::Float,
    alas :: Bool,
    mBrazos :: Bool,
    ojos :: Int,
    colorPiel :: String,
    vida :: Float
    --(unPoder c d r p) :: Poder
} deriving Show -- se puede mostrar

data Poder = UnPoder {
    cantCuracion :: Float,
    cantDaño :: Float,
    rango :: Float,
    probCritico :: Float
}

nomu1 :: Nomu
nomu1 = UnNomu 10000 True True 3 "pielRoja" 5400.300
--nomu1 = UnNomu {
--    fuerza = 10000, alas = True, mBrazos = True, ojos = 3, colorPiel = "pielRoja", vida = 5400.300 }
--get Fuerza(UnNomu F _ _ _ _ _ _ _) = F
    --categoria (UnNomu F _ _ _ _ _ _ _)
    -- | fuerza>=10000 = "High-end"
    -- | fuerza>=3000 = "Fuerte"
    -- | fuerza>=1000 = "Comun"
    -- | otherwise = "Pichi"

puedeVer UnNomu = ojos > 0
--(probCritico(1/100)*cantDaño)

entrenar tiempo nomu = nomu { 
    ojos = ojos nomu, 
    alas = alas nomu,
    fuerza = fuerza nomu + tiempo,
    brazos = True,
    vida = vida nomu,
    piel = piel nomu 
     } 

entrenar tiempo nomu = nomu { 

    fuerza = fuerza nomu + tiempo,
    mBrazos = not (mBrazos nomu)

     } 

potencia :: Nomu -> Int
potencia nomu = fuerza nomu + vida nomu -- Independiente de la estructura interna

potencia2 :: Nomu -> Int
potencia2 (UnNomu _ _ fuerza _ piel vida) = fuerza + vida + length piel -- con Pattern Matching, impacta mas un cambio

--map fuerza [nomu1, nomu2]