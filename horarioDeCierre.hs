--Dado un dia y un booleano(que indica si es feriado o no)
-- quiero saber el horario de cierre del super.

type Dia = String
type Hora = Int

horaCierre :: Dia -> Bool -> Hora
horaCierre "domingo" True = 13
horaCierre "sabado" False = 21
horaCierre dia True = 20 -- no me importa el dia podria ir una varibale anonima _
horaCierre dia False = 12 + length dia

