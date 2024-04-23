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

puedeVer :: (Ord (Nomu -> c), Num (Nomu -> c)) => (Int -> c) -> Bool
puedeVer nomu = nomu.ojos > 0
--(probCritico(1/100)*cantDaño)

entrenar :: Float -> Nomu -> Nomu
entrenar tiempo nomu = nomu { 
    ojos = ojos nomu, 
    alas = alas nomu,
    fuerza = fuerza nomu + tiempo,
    mBrazos = True,
    vida = vida nomu,
    colorPiel = colorPiel nomu 
     } 

entrenar1 :: Float -> Nomu -> Nomu
entrenar1 tiempo nomu = nomu { 
    fuerza = fuerza nomu + tiempo,
    mBrazos = not (mBrazos nomu)
     } 

potencia :: Nomu -> Float
potencia nomu = fuerza nomu + vida nomu -- Independiente de la estructura interna

potencia2 :: Nomu -> Float
potencia2 (UnNomu fuerza _ _ _ colorPiel vida) = fuerza + vida + fromIntegral(length colorPiel) -- con Pattern Matching, impacta mas un cambio

--map fuerza [nomu1, nomu2]
--PARTE 1
--1) Averiguar la probabilidad de daño crítico del último poder que un Nomu consiguió.
--2) Saber si un poder es usado cuerpo a cuerpo, esto está definido por su rango de ataque, siendo cuerpo a cuerpo si el rango es menor a 100.
--3) Saber si un poder es solamente de curación(esto pasa cuando no tiene cantidad de daño por uso y si tiene curación por uso)

--PARTE 2
--1) dada una lista de nomus, se quiere hacer que todos vayan al gimnasio
--2) dada una lista de nomus, queremos saber quienes tienen alas
--3) dada una lista de nomus, queremos saber si todos son poderosos
  --un nomus es poderoso cuando su fuerza es mayor a 35
--4) dada una lista de nomus se quiere saber si los que tienen mas de un brazo son poderosos
--5) dada una de lista se quiere saber si despues de ir al gimnasio quienes son poderosos
 
 --irAlGimnasio :: Nomu -> Int -> Nomu
 