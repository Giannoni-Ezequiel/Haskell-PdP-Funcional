{-
Definir la función haceFrioF/1, indica si una temperatura expresada en grados Fahrenheit es fría. Decimos que hace frío si la temperatura es menor a 8 grados Celsius. 

-}
haceFrioF :: Float -> Bool
haceFrioF grados = (fahrToCelsius grados) < 8

fahrToCelsius :: Float -> Float
fahrToCelsius grados = (grados + 32) * (9/5)