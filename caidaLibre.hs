aceleracionGravitaria :: Double
aceleracionGravitaria = 10
aceleracionDelObjeto :: Double -> Double
aceleracionDelObjeto tiempo = tiempo * aceleracionGravitaria
distanciaRecorrida :: Double -> Double
distanciaRecorrida tiempo =
    1/2 * aceleracionGravitaria * tiempo ^ 2
llegoAlPiso :: Double -> Double -> Bool
llegoAlPiso altura tiempo =
    altura < distanciaRecorrida tiempo