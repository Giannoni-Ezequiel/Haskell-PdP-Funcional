dispersion :: Int -> Int -> Int -> Int
dispersion a b c = (max(max a b)c) - (min(min a b)c)

diasParejos :: Int -> Int -> Int -> Bool
diasParejos a b c = (dispersion a b c) < 30
diasLocos :: Int -> Int -> Int -> Bool
diasLocos a b c = (dispersion a b c) > 100
diasNormales :: Int -> Int -> Int -> Bool
diasNormales a b c = not(diasParejos a b c) && not(diasLocos a b c)