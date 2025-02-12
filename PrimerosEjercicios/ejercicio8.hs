haceFrioF :: Float -> Bool
haceFrioF grados = (fahrToCelsius grados) < 8

fahrToCelsius :: Float -> Float
fahrToCelsius grados = (grados + 32) * (9/5)