data Auto = UnAuto {
    color :: String,
    velocidad :: Int,
    distancia :: Int
} deriving (Eq, Show)

type Carrera = [Auto]

auto1 = UnAuto "Rojo" 80 10
auto2 = UnAuto "Verde" 80 10
--a)
estaCerca :: Auto -> Auto -> Bool
estaCerca auto1 auto2
    | auto1 /= auto2 = abs(distancia auto1 - distancia auto2) < 10

--B)
vaTranquilo :: Auto -> Carrera -> Bool
vaTranquilo auto carrera = all (not.(estaCerca auto)) carrera && (distancia auto) == maximum (listaDistancias carrera)

listaDistancias = map distancia

--c)
puesto :: Auto -> Carrera -> Int
puesto auto carrera = (length carrera) - (length.(filter(not.adelante auto))) carrera + 1

adelante :: Auto -> Auto -> Int
adelante auto otroAuto = distancia auto > distancia otroAuto

---2)
--a)
correr :: Auto -> Int -> Auto
correr auto tiempo = auto{distancia = (distancia auto) + (tiempo * velocidad auto)}

--b) i.
alterarVelocidad :: (Number -> Number) -> Auto -> Auto
alterarVelocidad funcion auto = auto{velocidad = max 0 (funcion (velocidad auto))}

-- ii.
bajarVelocidad  :: Number -> Auto -> Auto
bajarVelocidad numero auto = alterarVelocidad (flip (-) numero) auto

--3)
type PowerUps = Auto -> Carrera -> Carrera

afectarALosQueCumplen :: (a -> Bool) -> (a -> a) -> [a] -> [a]
afectarALosQueCumplen criterio efecto lista
  = (map efecto . filter criterio) lista ++ filter (not.criterio) lista
--a)
terremoto :: PowerUps 
terremoto auto carrera = afectarALosQueCumplen (estaCerca auto) (bajarVelocidad 50) carrera
--b)
miguelitos :: Int -> PowerUps
miguelitos cantidad auto carrera = afectarALosQueCumplen (adelante auto) (bajarVelocidad cantidad) carrera
--c)
jetPack :: Int -> PowerUp
jetPack tiempo auto carrera = afectarALosQueCumplen (==auto) (cambiosJetPack tiempo) carrera

cambiosJetPack :: Int -> Auto -> Auto
cambiosJetPack tiempo auto = auto {distancia = distancia (correr tiempo (alterarVelocidad (*2) auto))}

--4)

