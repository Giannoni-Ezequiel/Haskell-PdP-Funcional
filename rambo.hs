data Arma = Arma {
    balas :: Int,
    tamanioCargador :: Int
} deriving (Eq, Show)

data Rambo :: Rambo {
    armaPrincipal :: Arma,
    armaSecundaria :: Arma,
} deriving (Eq, Show)

balasTotales :: Rambo -> Int
balasTotales (Rambo (Armas balasP _)(Arma balasS _)) = balasP + balasS
balasTotales rambo = balas (armaPrincipal rambo) + 
                     balas (armaSecundaria rambo) 
-- en la 2da si rambo se modifica, no se me rompe la funcion

disparar :: Arma -> Arma
disparar arma
    | balas arma == tamanioCargador arma = arma{balas = balas arma -2}
    | balas arma > 0                     = arma{balas = balas arma -1}
    | otherwise                          = arma       

dispararTodo :: Rambo -> Rambo
dispararTodo rambo = rambo {
                    armaPrincipal = disparar (armaPrincipal rambo),
                    armaSecundaria = disparar (armaSecundaria rambo)
                            }                                                                                                                                                                                                                                                                                                                                             
