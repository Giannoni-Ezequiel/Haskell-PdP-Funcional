data Material = UnMaterial {
    nombreMat :: String,
    cantidad :: Int
}deriving Show

data Personaje = UnPersonaje {
    nombre :: String,
    puntaje :: Int,
    inventario :: [Material]
}deriving Show 

data Crafteo = UnCrafteo {
    objeto :: String,
    materialesNeces :: [Material],
    tiempoDemorado :: Int
}
craftearObjeto :: Crafteo -> Personaje
craftearObjeto objeto = 

