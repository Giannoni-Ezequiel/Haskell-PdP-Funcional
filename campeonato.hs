data Obras = UnaObra {
    nombre :: String,
    puntaje :: Float
} deriving Show
obra1 = UnaObra "Cortazar" 90
obra2 = UnaObra "Borges" 80
obra3 = UnaObra "Marx" 70

mejorObra obra puntaje = obra{puntaje = puntaje obra + 10 }

ganadorQueda obra mejorObra = foldl1 (.) mejorObra obra