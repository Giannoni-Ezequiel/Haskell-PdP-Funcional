{-
    mcm :: Float -> Float
    mcm x y = 
-}

tabla n = [n, 2*n ..]
tabla' n i = n*i: tabla' n (i + 1)

-- filter (<100) (map (2*) [1..])