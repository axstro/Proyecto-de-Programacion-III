# SQL Manager 2005 for MySQL 3.6.5.1
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : icafe


SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE icafe;
use icafe;
#
# Structure for the `catempleado` table : 
#
use icafe;

CREATE TABLE `catempleado` (
  `idCatEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  PRIMARY KEY (`idCatEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Structure for the `catproducto` table : 
#

CREATE TABLE `catproducto` (
  `idCatProducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  PRIMARY KEY (`idCatProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



#
# Structure for the `pedido` table : 
#

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `cantidad` int(11) NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `producto_idProducto` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `producto` table : 
#

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `precio` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `catproducto_idcatproducto` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `imagen` varchar(500) NOT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Structure for the `ticket` table : 
#

CREATE TABLE `ticket` (
  `idTicket` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_emision` date NOT NULL,
  `hora_emision` time NOT NULL,
  `total` double DEFAULT NULL,
  `descuento_iddescuento` int(11) NOT NULL,
  PRIMARY KEY (`idTicket`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `usuario` table : 
#

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `dui` varchar(10) NOT NULL,
  `nit` varchar(17) NOT NULL,
  `tel1` varchar(9) NOT NULL,
  `tel2` varchar(9) DEFAULT NULL,
  `direccion` varchar(200) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `catempleado_idcatempleado` int(11) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for the `catempleado` table  (LIMIT 0,500)
#

INSERT INTO `catempleado` (`idCatEmpleado`, `nombre`, `descripcion`) VALUES 
  (1,'Administrativo A','Registraciones y control de operaciones de la empresa.'),
  (2,'Administrativo B','Preparación de documentación para realización trámites internos y/o externos.'),
  (3,'Administrativo C','Realización de trámites simples : depósitos, pago de impuestos y servicios varios.');

COMMIT;

#
# Data for the `catproducto` table  (LIMIT 0,500)
#

INSERT INTO `catproducto` (`idCatProducto`, `nombres`, `descripcion`) VALUES 
(1,'Café','Donde se encuentran incluídos todos los tipos de cafés.'),
(2,'Chocolate o té','Donde se encuentran incluídos todos los tipos de chocolate o tés.'),
(3,'Refresco o soda','Donde se encuentran incluídos jugos, bebidas carbonatas o algún té helado.'),
(4,'Postre','Donde se encuentran incluídos los pasteles, muffins o cupcakes.'),
(5,'Snacks dulce','Donde se encuentran incluídos, por ejemplo: los panques.'),
(6,'Snacks salado o pan salado', 'Donde se incluyen alimentos como papas fritas o pan con pollo.');

COMMIT;

#
# Data for the `descuento` table  (LIMIT 0,500)
#



COMMIT;

#
# Data for the `producto` table  (LIMIT 0,500)
#

INSERT INTO `producto` (`idProducto`, `nombre`, `descripcion`, `precio`, `cantidad`, `catproducto_idcatproducto`, `tipo`, `imagen`) VALUES 
  (1,'Café Espresso','Es la verdadera esencia del café en la forma más concentrada.',2.00, 300,1, 'Promoción', 'CafeEspresso.jpg'),
  (2,'Cappuccino Espresso','Nuestra carga de espresso acompañada con abundante espuma de leche',2.50, 300,1, 'Normal', 'CappuccinoEspresso.jpg' ),
  (3,'Café Latte','Leche cremosa y espresso, ligeramente recubierto con suave espuma de leche.',2.75, 300,1, 'Promoción', 'CafeLatte.jpg'),
  (4,'Vanilla Latte','Delicioso café espresso con leche caliente y dulces toques de vainilla. Todo esto cubierto con una sutil capa de espuma de leche',2.75, 300,1, 'Normal', 'VanillaLatte.jpg'),
  (5,'Café Mocha','Delicioso e intenso chocolate, espresso y leche cremosa, cubierto con crema batida.',2.90, 300,1, 'Normal', 'CafeMocha.jpg'),
  (6,'Café Mocha Blanco','Irresistible combinación de mocha blanco con nuestra carga de espresso y leche caliente, cubierto con crema batida',3.00, 300,1, 'Normal', 'CafeMochaBlanco.jpg'),
  (7,'Café Espresso Doble','Es la verdadera esencia del café en la forma más concentrada al doble.',2.00, 300,1, 'Promoción', 'CafeEspressoDoble.jpg'),
  (8,'Green Tea','Delicioso té que envuelve los usos milenarios de la cultura asiática',1.90, 300,2, 'Normal', 'GreenTea.jpg'),
  (9,'Coca Cola','Bebida Carbonata',1.00, 300,3, 'Normal', 'CocaCola.jpg'),
  (10,'Pepsi','Bebida Carbonata',1.00, 300,3, 'Normal', 'Pepsi.jpg'),
  (11,'Cupcake de Nutella','Exquisito para los amantes del chocolate',0.50, 300,4, 'Normal', 'CupcakedeNutella.jpg'),
  (12,'Cupcake de manzana al caramelo','Rellenos de crema de caramelo cubiertos con buttercream de toffee y decorados con salsa de caramelo y chocolatinas.',0.60, 300,4, 'Promoción', 'Cupcakedemanzanaalcaramelo.jpg'),
  (13,'Pizza calzone','Es una especialidad de la cocina italiana originaria de Nápoles',3.20, 100,6, 'Normal', 'Pizzacalzone.jpg'),
  (14,'Sándwich de Pollo','Delicioso sándwich con pollo a tu gusto',2.90, 100,6, 'Normal', 'SandwichdePollo.jpg');

COMMIT;

#
# Data for the `usuario` table  (LIMIT 0,500)
#

INSERT INTO `usuario` (`idUsuario`, `nombres`, `apellidos`, `dui`, `nit`, `tel1`, `tel2`, `direccion`, `usuario`, `contraseña`, `catempleado_idcatempleado`) VALUES 
  (2,'Paolo','Guerrero','03254753-2','0102-140998-101-2','7450-3596','7450-3597','Santa Tecla','paolo','paolo1234',1),
  (3,'Alexander','Castro','05464772-3','0608-241296-102-0','7666-3525','2310-0796','Quezaltepeque','alex','alex1234',1),
  (4,'Gerson','Blanco','05464721-4','0605-241123-101-1','7608-5771','2310-0791','Santa Tecla','gerson','gerson1234',1),
  (5,'Lázaro','Hernández','05334772.3','0608-030596-102-0','7264-7733','2220-0296','San Salvador','lazaro','lazaro1234',1),
  (6,'Luis','Menéndez','09898989-9','0608-030596-102-0','7252-9674','2412-0000','Soyapango','luis','luis1234',1);

COMMIT;


CREATE TABLE `promociones` (
  `idPromocion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  PRIMARY KEY (`idPromocion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DELIMITER // 
		create procedure selectProductos()
			begin 
			select * from producto;
              end 
//

DELIMITER //
	create procedure selectProducto(
    in _idproducto int 
    )
    begin
    select * from producto where idproducto = _idproducto; 
    end
// 



DELIMITER //
		create procedure selectPedidos()
			begin
			SELECT pedido.idPedido, pedido.fecha, pedido.hora, pedido.cantidad, pedido.cliente, producto.nombre, pedido.estado FROM pedido INNER JOIN producto ON pedido.producto_idproducto = producto.idproducto where pedido.estado = 0;
			end
//



DELIMITER //
	create procedure selectPedido(
    in _idpedido int
    )
    begin
    SELECT pedido.idPedido, pedido.fecha, pedido.hora, pedido.cantidad, pedido.cliente, producto.nombre, pedido.estado FROM pedido INNER JOIN producto ON pedido.producto_idproducto = producto.idproducto where pedido.idpedido = pedido._idpedido AND pedido.estado = 0;	
    end
//


