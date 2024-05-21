(deftemplate smartphone
   (slot marca)
   (slot modelo)
   (slot color)
   (slot precio)
)

(deftemplate computadora
   (slot marca)
   (slot modelo)
   (slot color)
   (slot precio)
)

(deftemplate accesorio
   (slot tipo)
   (slot marca)
   (slot precio)
)

(deffacts smartphones
   (smartphone (marca "Apple") (modelo "iPhone15 plus") (color "Negro") (precio 11000))
   (smartphone (marca "Samsung") (modelo "A55 5G") (color "Blanco") (precio 7000))
   (smartphone (marca "Google") (modelo "Pixel 6 PRO") (color "Verde") (precio 5000))
   (smartphone (marca "OnePlus") (modelo "Nord N30 5G") (color "Rojo") (precio 6500))
   (smartphone (marca "Xiaomi") (modelo "POCO X6 Pro") (color "Azul") (precio 8000))
   (smartphone (marca "Sony") (modelo "Xperia 5") (color "Gris") (precio 9000))
   (smartphone (marca "Sony") (modelo "Xperia 6") (color "Gris") (precio 10000))
   (smartphone (marca "LG") (modelo "V6 ThinQ 5G") (color "Negro") (precio 3000))
   (smartphone (marca "Huawei") (modelo "PURA 70") (color "Dorado") (precio 11000))
   (smartphone (marca "Nokia") (modelo "G50 5G") (color "Azul") (precio 4500))
   (smartphone (marca "Motorola") (modelo "Moto G84") (color "Rojo") (precio 5000))
)

(deffacts computadoras
   (computadora (marca "Apple") (modelo "MacBook Pro") (color "Gris") (precio 1299))
   (computadora (marca "Dell") (modelo "XPS 13") (color "Plateado") (precio 11000))
   (computadora (marca "HP") (modelo "Spectre x360") (color "Negro") (precio 1199))
   (computadora (marca "Lenovo") (modelo "ThinkPad X1") (color "Negro") (precio 1099))
   (computadora (marca "Asus") (modelo "ZenBook 14") (color "Azul") (precio 7000))
   (computadora (marca "Acer") (modelo "Swift 3") (color "Blanco") (precio 8000))
   (computadora (marca "Microsoft") (modelo "Surface Laptop 4") (color "Negro") (precio 11000))
   (computadora (marca "Razer") (modelo "Blade 15") (color "Negro") (precio 1599))
   (computadora (marca "MSI") (modelo "Prestige 14") (color "Gris") (precio 1099))
   (computadora (marca "Samsung") (modelo "Galaxy Book Pro") (color "Plata") (precio 1049))
)

(deffacts accesorios
   (accesorio (tipo "Auriculares") (marca "Sony") (precio 299))
   (accesorio (tipo "Teclado") (marca "Logitech") (precio 99))
   (accesorio (tipo "Raton") (marca "Razer") (precio 79))
   (accesorio (tipo "Monitor") (marca "Dell") (precio 199))
   (accesorio (tipo "Cargador") (marca "Anker") (precio 49))
   (accesorio (tipo "Funda") (marca "Apple") (precio 39))
   (accesorio (tipo "Soporte para computador") (marca "Twelve South") (precio 89))
   (accesorio (tipo "Disco Duro Externo") (marca "Seagate") (precio 109))
   (accesorio (tipo "camara Web") (marca "Logitech") (precio 129))
   (accesorio (tipo "microfono") (marca "Blue") (precio 149))
)

(deftemplate cliente
   (slot id)
   (slot nombre)
   (slot edad)
   (slot telefono)
)

(deffacts clientes
   (cliente (id 1) (nombre "Carol Liso") (edad 30) (telefono "555-1234"))
   (cliente (id 2) (nombre "Elizabeth Rosado") (edad 25) (telefono "555-5678"))
   (cliente (id 3) (nombre "Carlos Herrera") (edad 35) (telefono "555-8765"))
   (cliente (id 4) (nombre "Eduardo Quiroz") (edad 28) (telefono "555-4321"))
   (cliente (id 5) (nombre "Saul Estrada") (edad 40) (telefono "555-6789"))
   (cliente (id 6) (nombre "Estrella Robledo") (edad 22) (telefono "555-9876"))
   (cliente (id 7) (nombre "Alan Carrillo") (edad 32) (telefono "555-3456"))
   (cliente (id 8) (nombre "Camil Ruiz") (edad 27) (telefono "555-6543"))
   (cliente (id 9) (nombre "Rosario Martinez") (edad 45) (telefono "555-2345"))
   (cliente (id 10) (nombre "Silvia Apolinar") (edad 29) (telefono "555-7890"))
)

(deftemplate tarjeta-credito
   (slot id)
   (slot numero)
   (slot titular)
   (slot banco)
   (slot grupo)
)

(deffacts tarjetas-credito
   (tarjeta-credito (id 1) (numero "1234-5678-9012-3456") (titular "Carol Liso") (banco "BBVA") (grupo "Visa"))
   (tarjeta-credito (id 2) (numero "2345-6789-0123-4567") (titular "Elizabeth Rosado") (banco "Liverpool") (grupo "Mastercard"))
   (tarjeta-credito (id 3) (numero "3456-7890-1234-5678") (titular "Carlos Herrera") (banco "HSBC") (grupo "Visa"))
   (tarjeta-credito (id 4) (numero "4567-8901-2345-6789") (titular "Eduardo Quiroz") (banco "America Express") (grupo "Mastercard"))
   (tarjeta-credito (id 5) (numero "5678-9012-3456-7890") (titular "Saul Estrada") (banco "BBVA") (grupo "Visa"))
   (tarjeta-credito (id 6) (numero "6789-0123-4567-8901") (titular "Estrella Robledo") (banco "Liverpool") (grupo "Mastercard"))
   (tarjeta-credito (id 7) (numero "7890-1234-5678-9012") (titular "Alan Carrillo") (banco "HSBC") (grupo "Visa"))
   (tarjeta-credito (id 8) (numero "8901-2345-6789-0123") (titular "Camil Ruiz") (banco "America Express") (grupo "Mastercard"))
   (tarjeta-credito (id 9) (numero "9012-3456-7890-1234") (titular "Rosario Martinez") (banco "BBVA") (grupo "Visa"))
   (tarjeta-credito (id 10) (numero "0123-4567-8901-2345") (titular "Silvia Apolinar") (banco "Liverpool") (grupo "Mastercard"))
)

(deftemplate vale
   (slot codigo)
   (slot titular)
   (slot descripcion)
)

(deffacts vales
   (vale (codigo "15ELEC") (titular "Carol Liso") (descripcion "15% Descuento en Computadoras"))
   (vale (codigo "ALLXIAOMI") (titular "Elizabeth Rosado") (descripcion "Protector y Mica en compra de un Xiaomi"))
   (vale (codigo "MI6XIAOMI") (titular "Carlos Herrera") (descripcion "Llevate un Mi Band 6 en compra de un Xiaomi Mi 11"))
   (vale (codigo "5AUXILIO") (titular "Eduardo Quiroz") (descripcion "5% Descuento en Auriculares"))
   (vale (codigo "100VALE") (titular "Saul Estrada") (descripcion "$100 en compras de accesorios mayores a $999"))
   (vale (codigo "F10DESC") (titular "Estrella Robledo") (descripcion "Funda gratis en compras mayores a $3000"))
   (vale (codigo "10BIENVENIDA") (titular "Alan Carrillo") (descripcion "10% Descuento en primer compra de mayor a $10000"))
   (vale (codigo "30MSI") (titular "Camil Ruiz") (descripcion "30% en compras a MSI de mayor a $999"))
   (vale (codigo "AUX899") (titular "Rosario Martinez") (descripcion "Accesorio sorpresa en compras mayores a $899"))
   (vale (codigo "12TAE") (titular "Silvia Apolinar") (descripcion "12 MSI + 12 TAE en compras mayores a $9999"))
)

(deftemplate orden-compra
   (slot cliente-id)
   (slot nombre-cliente)
   (slot telefono)
   (multislot producto)
   (slot cantidad)
   (slot metodo-pago)
)

(deffacts ordenes-compra
   (orden-compra (cliente-id 1) (nombre-cliente "Carol Liso") (telefono "555-1234") (producto smartphone "Apple" "iPhone15 plus" 11000) (cantidad 10) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 1) (nombre-cliente "Carol Liso") (telefono "555-1234") (producto smartphone "Samsung" "A55 5G" 7000) (cantidad 10) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 1) (nombre-cliente "Carol Liso") (telefono "555-1234") (producto smartphone "OnePlus" "Nord N30 5G" 6500) (cantidad 10) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 2) (nombre-cliente "Carlos Herrera") (telefono "555-5678") (producto smartphone "Samsung" "A55 5G" 7000) (cantidad 2) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 3) (nombre-cliente "Carlos Herrera") (telefono "555-8765") (producto computadora "Apple" "MacBook Pro" 1299) (cantidad 1) (metodo-pago "contado"))
   (orden-compra (cliente-id 4) (nombre-cliente "Eduardo Quiroz") (telefono "555-4321") (producto accesorio "Sony" "Auriculares" 299) (cantidad 2) (metodo-pago "contado"))
   (orden-compra (cliente-id 5) (nombre-cliente "Saul Estrada") (telefono "555-6789") (producto smartphone "Xiaomi" "POCO X6 Pro" 8000) (cantidad 1) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 6) (nombre-cliente "Estrella Robledo") (telefono "555-9876") (producto computadora "Dell" "XPS 13" 11000) (cantidad 1) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 7) (nombre-cliente "Alan Carrillo") (telefono "555-3456") (producto accesorio "Razer" "Raton" 79) (cantidad 1) (metodo-pago "contado"))
   (orden-compra (cliente-id 8) (nombre-cliente "Camil Ruiz") (telefono "555-6543") (producto smartphone "OnePlus" "Nord N30 5G" 6500) (cantidad 1) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 9) (nombre-cliente "Rosario Martinez") (telefono "555-2345") (producto accesorio "Logitech" "Teclado" 99) (cantidad 20) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 9) (nombre-cliente "Rosario Martinez") (telefono "555-2345") (producto accesorio "Sony" "Auriculares" 299) (cantidad 15) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 10) (nombre-cliente "Silvia Apolinar") (telefono "555-7890") (producto smartphone "Sony" "Xperia 5" 9000) (cantidad 1) (metodo-pago "contado"))
)

(defrule aplicar-descuento-xiaomi
   (orden-compra (nombre-cliente ?nombre) (producto $? (smartphone (marca "Xiaomi") (modelo "POCO X6 Pro")) $?))
   =>
   (assert (vale (codigo "MI6XIAOMI")(titular ?nombre)(descripcion (str-cat "Llevate un Mi Band 6 en compra de un Xiaomi Mi 11")))
)

(defrule aplicar-descuento-auriculares
   (orden-compra (nombre-cliente ?nombre) (producto $? (accesorio (tipo "Auriculares")) $?))
   =>
   (assert (vale (codigo "5AUXILIO") (titular ?nombre)(descripcion (str-cat "5% Descuento en Auriculares")))
)

(defrule aplicar-descuento-primer-compra
   (orden-compra (nombre-cliente ?nombre) (producto $?))
   (not (vale-aplicado (nombre-cliente ?nombre)))
   =>
   (assert (vale-aplicado (nombre-cliente ?nombre) (codigo "10BIENVENIDA")))
)

(defrule aplicar-descuento-computadoras
   (orden-compra (nombre-cliente ?nombre) (producto $? (computadora) $?))
   =>
   (assert (vale (codigo "15ELEC") (titular "Carol Liso") (descripcion "15% Descuento en Computadoras"))
)

(defrule mas-de-10-productos
    (orden-compra (nombre-cliente ?nombre) (cantidad ?cantidad&:(> ?cantidad 9)))
    (not (compro mas-de-10 ?nombre))
    =>
    (printout t "El cliente " ?nombre " ha comprado mas de 10 productos" crlf)
    (assert (compro mas-de-10 ?nombre))
)

(defrule mayorista-mas-de-10-productos
    (orden-compra (nombre-cliente ?nombre) (cantidad ?cantidad&:(> ?cantidad 9)))
    (compro mas-de-10 ?nombre)
    (not (es mayorista ?nombre))
    =>
    (printout t "El cliente " ?nombre " es un cliente mayorista por comprar mas de 10 productos mas de una vez" crlf)
    (assert (es mayorista ?nombre))
)

(defrule menos-de-10-productos
    (orden-compra (nombre-cliente ?nombre) (cantidad ?cantidad&:(< ?cantidad 10)))
    (not (es mayorista ?nombre))
    =>
    (printout t "El cliente " ?nombre " ha comprado menos de 10 productos y es un menudista" crlf)
    (assert (es menudista ?nombre))
)

(defrule clientes-sin-compra
    (cliente (nombre ?nombre))
    (not (orden-compra (nombre-cliente ?nombre)))
    =>
    (printout t "Aprovecha " ?nombre " y haz tu primer compra con 15% de descuento" crlf)
    (assert (vale (codigo "PRIMERAVEZ")(titular ?nombre) (descripcion (str-cat "Descuento del 15% en tu primera compra"))))
)

(defrule generar-vale-cashback
    (cliente (nombre ?nombre))
    (orden-compra (nombre-cliente ?nombre) (cliente-id ?id) (metodo-pago "tarjeta"))
    (tarjeta-credito (titular ?nombre) (banco "BBVA"))
    (not (vale (codigo "BBVADOBLE")(titular ?nombre) (descripcion "30% en Puntos Dobles en tu proxima compra")))
    =>
    (printout t ?nombre " por comprar con TDC BBVA recibe 30% de Puntos Dobles en tu proxima compra" crlf)
    (assert (vale (codigo "BBVADOBLE")(titular ?nombre) (descripcion "30% en Puntos Dobles en tu proxima compra")))
)

(defrule generar-vale-contado
    (cliente (nombre ?nombre) (telefono ?telefono))
    (not (orden-compra (nombre-cliente ?nombre) (metodo-pago "tarjeta")))
    (orden-compra (nombre-cliente ?nombre) (metodo-pago "contado"))
    =>
    (assert (vale (codigo "TDCPRIMERAVEZ")(titular ?nombre) (descripcion "Vale por 10% de descuento en tu proxima compra usando tarjeta")))
    (printout t ?nombre " usa tu tarjeta y aprovecha 10% de descuento" crlf)
)

(defrule cliente-compro-smartphones
    (cliente (nombre ?nombre))
    (orden-compra (nombre-cliente ?nombre) (producto smartphone $?))
    (not (compro smartphone ?nombre))
    =>
    (printout t "El cliente " ?nombre "ha comprado smartphone." crlf)
    (assert (compro smartphone ?nombre))
)

(defrule cliente-compro-smartphones-dos-veces
    (cliente (nombre ?nombre))
    (orden-compra (nombre-cliente ?nombre) (producto smartphone $?))
    (compro smartphone ?nombre)
    =>
    (printout t "El cliente " ?nombre " ha comprado smartphones al menos dos veces." crlf)
    (assert (consume smartphones ?nombre))
)

(defrule cliente-compro-computadoras
    (cliente (nombre ?nombre))
    (orden-compra (nombre-cliente ?nombre) (producto computadora $?))
    (not (compro computadora ?nombre))
    =>
    (printout t "El cliente " ?nombre "ha comprado computadora." crlf)
    (assert (compro computadora ?nombre))
)

(defrule cliente-compro-computadoras-dos-veces
    (cliente (nombre ?nombre))
    (orden-compra (nombre-cliente ?nombre) (producto computadora $?))
    (compro computadora ?nombre)
    =>
    (printout t "El cliente " ?nombre " ha comprado computadoras al menos dos veces." crlf)
    (assert (consume computadoras ?nombre))
)

(defrule cliente-compro-accesorios
    (cliente (nombre ?nombre))
    (orden-compra (nombre-cliente ?nombre) (producto accesorio $?))
    (not (compro accesorio ?nombre))
    =>
    (printout t "El cliente " ?nombre "ha comprado accesorio." crlf)
    (assert (compro accesorio ?nombre))
)

(defrule cliente-compro-accesorios-dos-veces
    (cliente (nombre ?nombre))
    (orden-compra (nombre-cliente ?nombre) (producto accesorio $?))
    (compro accesorio ?nombre)
    =>
    (printout t "El cliente " ?nombre " ha comprado accesorios al menos dos veces." crlf)
    (assert (consume accesorios ?nombre))
)

(defrule oferta-mayorista
    (es mayorista ?nombre)
    =>
    (printout t ?nombre "eres mayorista y recibiras 20% de descuento en tu siguiente compra de por lo menos 10 productos" crlf)
    (assert (vale (codigo "MAYORISTA")(titular ?nombre) (descripcion "20% de descuento en tu siguiente compra con cantidad minima de 10")))
)

(defrule asignar-vale-mastercard
   (tarjeta-credito (titular ?nombre) (grupo "Mastercard"))
   =>
   (printout t ?nombre "Utiliza tu TDC Mastercard para comprar" crlf)
   (assert (vale (codigo "MASTERCARD")(titular ?nombre) (descripcion "Usa tu TDC MasterCard y recibe 12 MSI")))
)

(defrule oferta-mastercard-smartphone
   (tarjeta-credito (titular ?nombre) (grupo "Mastercard"))
   (orden-compra (nombre-cliente ?nombre) (producto accesorio $?))
   =>
   (printout t ?nombre " por comprar un accesorio puedes usar tu TDC Mastercard para comprar otro con 10% cashback" crlf)
   (assert (vale (codigo "MASTERCARD")(titular ?nombre) (descripcion "Usa tu TDC MasterCard y recibe 10% cashback en accesorios")))
)

(defrule america-express
    (cliente (nombre ?nombre))
    (orden-compra (nombre-cliente ?nombre) (cliente-id ?id) (metodo-pago "tarjeta"))
    (tarjeta-credito (titular ?nombre) (banco "American Express"))
    =>
    (printout t ?nombre " por comprar con TDC American Express recibe 24 MSI en tu proxima compra" crlf)
    (assert (vale (codigo "AE24MSI")(titular ?nombre) (descripcion "24 MSI con American Express en proxima compra")))
)

(defrule liverpool
    (cliente (nombre ?nombre))
    (orden-compra (nombre-cliente ?nombre) (cliente-id ?id) (metodo-pago "tarjeta"))
    (tarjeta-credito (titular ?nombre) (banco "Liverpool"))
    =>
    (printout t ?nombre " por comprar con TDC Liverpool tu primer pago sera en 3 meses en tu proxima compra" crlf)
    (assert (vale (codigo "LIVERPOOL")(titular ?nombre) (descripcion "PAGO INICIAL EN 3 MESES")))
)

(defrule hsbc
    (cliente (nombre ?nombre))
    (orden-compra (nombre-cliente ?nombre) (cliente-id ?id) (metodo-pago "tarjeta"))
    (tarjeta-credito (titular ?nombre) (banco "HSBC"))
    =>
    (printout t ?nombre " por comprar con TDC HSCB tu proxima compra tiene 15% de cashback" crlf)
    (assert (vale (codigo "HSCBCASHBACK")(titular ?nombre) (descripcion "Recibe 15% de Cashback usando TDC HSBC")))
)

(defrule oferta-menudista
    (es menudista ?nombre)
    =>
    (printout t ?nombre "eres un vendedor casual y te daremos un vale de 10% de descuento si compras mas de 5 unidades de un producto" crlf)
    (assert (vale (codigo "CASUAL")(titular ?nombre) (descripcion "10% de descuento en tu siguiente compra con cantidad minima de 5")))
)

(defrule oferta-compra-mayor-900
   (orden-compra (nombre-cliente ?nombre) (producto ?tipo ?marca ?modelo ?precio&:(> ?precio 7000)))
   =>
   (printout t "Tu envio sera gratis por la compra mayor a 7000" crlf)
)
