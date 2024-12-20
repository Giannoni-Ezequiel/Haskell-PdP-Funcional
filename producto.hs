data Cliente = Cliente {
    saldo :: Float,
    esVIP :: Bool,
    nombre :: String 
} deriving (Eq, Show)

data Producto = Producto {
    tipo :: String,
    precio :: Float
} deriving (Eq, Show)

cambiarSaldo cliente delta = cliente {
    saldo = saldo cliente + delta
}
--nuevo cliente vip
nuevoClienteVIP :: String -> Cliente
nuevoClienteVIP  = Cliente 0 True 
--compra de un producto
comprar :: Producto -> Cliente -> Cliente

--comprar productos en promocion
--comprarEnPromocion :: Producto -> Producto -> Monto -> Cliente -> Cliente
