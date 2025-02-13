aceleracionGravitatoria :: Double
aceleracionGravitatoria = 10
aceleracionDelObjeto :: Double -> Double
aceleracionDelObjeto tiempo = tiempo * aceleracionGravitatoria
distanciaRecorrida :: Double -> Double
distanciaRecorrida tiempo =
    1/2 * aceleracionGravitatoria * tiempo ^ 2
llegoAlPiso :: Double -> Double -> Bool
llegoAlPiso altura tiempo =
    altura < distanciaRecorrida tiempo