-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2022 a las 22:38:21
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `falconsexpress`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepedido`
--

CREATE TABLE `detallepedido` (
  `idDetallePedido` int(11) NOT NULL,
  `idProductoFK` int(11) NOT NULL,
  `cantidadProducto` int(11) NOT NULL,
  `precioProducto` double NOT NULL,
  `subtotalProducto` double NOT NULL,
  `idPedidoFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallepedido`
--

INSERT INTO `detallepedido` (`idDetallePedido`, `idProductoFK`, `cantidadProducto`, `precioProducto`, `subtotalProducto`, `idPedidoFK`) VALUES
(1, 0, 2, 5000, 10000, 0),
(2, 0, 4, 10000, 40000, 0),
(3, 0, 2, 7000, 14000, 0),
(4, 0, 2, 8000, 16000, 0),
(5, 0, 2, 10000, 20000, 0),
(6, 0, 2, 15000, 30000, 0),
(7, 0, 4, 9000, 36000, 0),
(8, 0, 4, 6000, 24000, 0),
(9, 0, 2, 9000, 18000, 0),
(10, 0, 2, 6000, 12000, 0),
(11, 0, 2, 4000, 8000, 0),
(12, 0, 4, 5000, 20000, 0),
(13, 0, 4, 3000, 12000, 0),
(14, 0, 4, 7000, 28000, 0),
(15, 0, 4, 28000, 112000, 0),
(16, 0, 2, 9000, 18000, 0),
(17, 0, 2, 11000, 22000, 0),
(18, 0, 2, 25000, 50000, 0),
(19, 0, 2, 19000, 38000, 0),
(20, 0, 2, 24000, 48000, 0),
(21, 0, 4, 7000, 28000, 0),
(22, 0, 4, 11000, 44000, 0),
(23, 0, 2, 8000, 16000, 0),
(24, 0, 2, 50000, 100000, 0),
(25, 0, 2, 5000, 10000, 0),
(26, 0, 2, 75000, 150000, 0),
(27, 0, 2, 60000, 120000, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domiciliario`
--

CREATE TABLE `domiciliario` (
  `idDomiciliario` int(11) NOT NULL,
  `tipoDocDomiciliario` varchar(30) NOT NULL,
  `numdocDomiciliario` varchar(20) NOT NULL,
  `nombreDomiciliario` varchar(50) NOT NULL,
  `apellidoDomiciliario` varchar(50) NOT NULL,
  `direccionDomiciliario` varchar(80) NOT NULL,
  `telefonoDomiciliario` varchar(20) NOT NULL,
  `correoDomiciliario` varchar(70) NOT NULL,
  `passwordDomiciliario` varchar(20) NOT NULL,
  `fotoDomiciliario` blob DEFAULT NULL,
  `estadoDomiciliario` varchar(30) NOT NULL,
  `idDomiciliarioFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `domiciliario`
--

INSERT INTO `domiciliario` (`idDomiciliario`, `tipoDocDomiciliario`, `numdocDomiciliario`, `nombreDomiciliario`, `apellidoDomiciliario`, `direccionDomiciliario`, `telefonoDomiciliario`, `correoDomiciliario`, `passwordDomiciliario`, `fotoDomiciliario`, `estadoDomiciliario`, `idDomiciliarioFK`) VALUES
(1, 'Cedula', '23474225', 'Adriana', 'Hernandez', 'Crr 57', '3142041733', 'adrianahernandez@gmail.com', 'fgtiYq', NULL, 'Activo', 0),
(2, 'Cedula', '22484226', 'Alejandro', 'Acevedo', 'Cll 145', '3223869855', 'alejandroacevedo@gmail.com', 'Hgkuql', NULL, 'Activo', 0),
(3, 'Cedula', '21376890', 'Jose', 'Huertas', 'Avenida 47', '3112943028', 'josehuertas@gmail.com', 'jkTrwql', NULL, 'Inactivo', 0),
(4, 'Cedula', '20987654', 'Dylan', 'Hernandez', 'Cll 128', '3142041733', 'dylanhernandez@gmail.com', 'uytFghj', NULL, 'Activo', 0),
(5, 'Cedula', '25687234', 'Federico', 'Rodriguez', 'Cll 135B', '2143908745', 'federicorodriguez@gmail.com', 'jmKrtio', NULL, 'Activo', 0),
(6, 'Cedula', '21476890', 'Alberto', 'Posada', 'Crr 57', '212367890', 'albertoposada@gmail.com', 'Zxvnpl', NULL, 'Activo', 0),
(7, 'Cedula', '23487654', 'Andres', 'Huertas', 'Cll 145C', '312594780', 'andreshuertas@gmail.com', 'kjGfvm', NULL, 'Activo', 0),
(8, 'Cedula', '26789456', 'Camilo', 'Castro', 'Crr 26-41', '313245890', 'camilocastro@gmail.com', 'mncxZu', NULL, 'Inactivo', 0),
(9, 'Cedula', '22759076', 'Pedro', 'Aguilar', 'Cll 150', '3302587654', 'pedroaguilar@gmail.com', 'khgFasd', NULL, 'Activo', 0),
(10, 'Cedula', '21794312', 'Miguel', 'Villa', 'Cll 139C', '3223869855', 'miguelvilla@gmail.com', 'uihgFasd', NULL, 'Inactivo', 0),
(11, 'Cedula', '21356908', 'Diego', 'Ruiz', 'Cll 190A', '3152598756', 'diegoruiz@gmail.com', 'jbxcZnm', NULL, 'Activo', 0),
(12, 'Cedula', '23487908', 'Ernesto', 'Cruz', 'Cll 156B', '3120987654', 'ernestocruz@gmail.com', 'ouytGfds', NULL, 'Activo', 0),
(13, 'Cedula', '21890456', 'Horacio', 'Perez', 'Cll 170C', '3128765428', 'horacioperez@gmail.com', 'kiouYtgf', NULL, 'Activo', 0),
(14, 'Cedula', '26789345', 'Federico', 'Sanchez', 'Cll 160B', '2111601823', 'federicosanchez@gmail.com', 'klhGfmn', NULL, 'Activo', 0),
(15, 'Cedula', '22474225', 'Steven', 'Barriga', 'Cll 135C', '314587908', 'stevenbarriga@gmail.com', 'yhjBvfs', NULL, 'Activo', 0),
(16, 'Cedula', '22897065', 'Angelo', 'Murphy', 'Cll 45', '311786543', 'angelomurphy@gmail.com', 'ouyVgfs', NULL, 'Activo', 0),
(17, 'Cedula', '26789321', 'Alex', 'Sierra', 'Cll 122', '314890564', 'alexsierra@gmail.com', 'fgtiYq', NULL, 'Activo', 0),
(18, 'Cedula', '24589604', 'Elizabeth', 'Hernandez', 'Cll 78', '316786345', 'elizabethhernandez@gmail.com', 'jkYtger', NULL, 'Inactivo', 0),
(19, 'Cedula', '21589478', 'Jose', 'Rodriguez', 'Cll 136', '316789234', 'joserodriguez@gmail.com', 'hgfTeqw', NULL, 'Activo', 0),
(20, 'Cedula', '24890532', 'Heidy', 'Sanchez', 'Cll172', '3168659080', 'heidysanchez@gmail.com', 'hgkLyq', NULL, 'Inactivo', 0),
(21, 'Cedula', '21289076', 'Mafe', 'Yopasa', 'Cll 28', '311489046', 'mafeyopasa@gmail.com', 'ihgUsfg', NULL, 'Inactivo', 0),
(22, 'Cedula', '21753592', 'Jhon', 'Doe', 'Cll 55', '317842764', 'jhondoe@gmail.com', 'ohgfKmvl', NULL, 'Inactivo', 0),
(23, 'Cedula', '24275894', 'Gabo', 'Delgado', 'Cll 188C', '311698456', 'gabodelgado@gmail.com', 'jmbcvd', NULL, 'Activo', 0),
(24, 'Cedula', '21765945', 'Julian', 'Castaño', 'Cll 142', '3129534333', 'juliancastaño@gmail.com', 'ghjmFasd', NULL, 'Activo', 0),
(25, 'Cedula', '23876408', 'Jhonathan', 'Fernando', 'Cll 38', '312589743', 'jhonathanfernando@gmail.com', 'jhgTqer', NULL, 'Inactivo', 0),
(26, 'Cedula', '24698094', 'Baron', 'Hurtado', 'Cll 136', '311689056', 'baronhurtado@gmail.com', 'kmnGxc', NULL, 'Activo', 0),
(27, 'Cedula', '21789056', 'Ramiro', 'Olluela', 'Cll 148C', '311509987', 'ramiroolluela@gmail.com', 'iuhgtRlks', NULL, 'Activo', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio`
--

CREATE TABLE `domicilio` (
  `idDomicilio` int(11) NOT NULL,
  `horaDomicilio` time NOT NULL,
  `estadoDomicilio` varchar(30) NOT NULL,
  `idPedidoFK` int(11) NOT NULL,
  `idDomiciliarioFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `domicilio`
--

INSERT INTO `domicilio` (`idDomicilio`, `horaDomicilio`, `estadoDomicilio`, `idPedidoFK`, `idDomiciliarioFK`) VALUES
(1, '23:00:10', 'Entregado', 0, 0),
(2, '12:05:10', 'Entregado', 0, 0),
(3, '19:10:30', 'Entregado', 0, 0),
(4, '15:40:59', 'Entregado', 0, 0),
(5, '13:24:05', 'Entregado', 0, 0),
(6, '14:45:54', 'Entregado', 0, 0),
(7, '16:09:12', 'Entregado', 0, 0),
(8, '11:00:00', 'Entregado', 0, 0),
(9, '10:29:43', 'Entregado', 0, 0),
(10, '20:16:10', 'Entregado', 0, 0),
(11, '00:45:29', 'Entregado', 0, 0),
(12, '21:08:14', 'Entregado', 0, 0),
(13, '18:50:10', 'Entregado', 0, 0),
(14, '19:45:28', 'Entregado', 0, 0),
(15, '15:59:30', 'Entregado', 0, 0),
(16, '16:29:19', 'Entregado', 0, 0),
(17, '12:00:01', 'Entregado', 0, 0),
(18, '10:05:20', 'Entregado', 0, 0),
(19, '09:20:59', 'Entregado', 0, 0),
(20, '08:09:40', 'Entregado', 0, 0),
(21, '15:38:10', 'Entregado', 0, 0),
(22, '19:40:35', 'Entregado', 0, 0),
(23, '08:57:08', 'Entregado', 0, 0),
(24, '23:11:29', 'Entregado', 0, 0),
(25, '21:58:59', 'Entregado', 0, 0),
(26, '09:15:08', 'Entregado', 0, 0),
(27, '00:25:09', 'Entregado', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `fechaPedido` date NOT NULL,
  `horaPedido` time NOT NULL,
  `totalPedido` double NOT NULL,
  `estadoPedido` varchar(30) NOT NULL,
  `pedidoaDomicilio` char(3) DEFAULT NULL,
  `idUsuarioFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idPedido`, `fechaPedido`, `horaPedido`, `totalPedido`, `estadoPedido`, `pedidoaDomicilio`, `idUsuarioFK`) VALUES
(1, '2021-06-21', '13:09:12', 50000, 'Entregado', 'Si', 0),
(2, '2021-06-21', '17:18:12', 150000, 'Activo', 'Si', 0),
(3, '2021-06-23', '16:04:01', 25000, 'Entregado', 'Si', 0),
(4, '2021-06-25', '13:09:05', 75000, 'Entregado', 'Si', 0),
(5, '2021-06-26', '12:19:30', 41000, 'Entregado', 'Si', 0),
(6, '2021-06-28', '14:11:20', 89000, 'Entregado', 'Si', 0),
(7, '2021-06-30', '18:18:09', 49000, 'Entregado', 'Si', 0),
(8, '2021-06-30', '19:21:30', 67950, 'Entregado', 'Si', 0),
(9, '2021-07-01', '15:12:05', 46780, 'Entregado', 'Si', 0),
(10, '2021-07-05', '12:45:03', 34950, 'Entregado', 'Si', 0),
(11, '2021-07-06', '20:19:30', 68750, 'Entregado', 'Si', 0),
(12, '2021-07-08', '22:20:15', 990500, 'Entregado', 'Si', 0),
(13, '2021-07-09', '00:05:02', 112050, 'Entregado', 'Si', 0),
(14, '2021-07-10', '11:49:10', 115500, 'Entregado', 'Si', 0),
(15, '2021-07-12', '09:18:21', 170550, 'Entregado', 'Si', 0),
(16, '2021-07-13', '07:29:45', 165550, 'Entregado', 'Si', 0),
(17, '2021-07-15', '19:35:29', 122540, 'Entregado', 'Si', 0),
(18, '2021-07-16', '15:40:59', 137650, 'Entregado', 'Si', 0),
(19, '2021-07-17', '14:59:59', 153450, 'Entregado', 'Si', 0),
(20, '2021-07-19', '12:41:14', 125650, 'Entregado', 'Si', 0),
(21, '2021-07-20', '07:12:32', 156850, 'Entregado', 'Si', 0),
(22, '2021-07-21', '09:12:53', 250150, 'Entregado', 'Si', 0),
(23, '2021-07-22', '10:07:43', 280650, 'Entregado', 'Si', 0),
(24, '2021-07-24', '09:23:51', 58650, 'Entregado', 'Si', 0),
(25, '2021-07-26', '15:49:09', 10150, 'Entregado', 'Si', 0),
(26, '2021-07-28', '21:29:59', 79500, 'Entregado', 'Si', 0),
(27, '2021-07-30', '23:59:12', 81550, 'Entregado', 'Si', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `descripProducto` varchar(100) NOT NULL,
  `precioProducto` double NOT NULL,
  `categoriaProducto` varchar(40) NOT NULL,
  `estadoProducto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `descripProducto`, `precioProducto`, `categoriaProducto`, `estadoProducto`) VALUES
(1, 'Leche', 3400, 'Bebidas', 'Activo'),
(2, 'Cereal', 10200, 'Comidas', 'Activo'),
(3, 'Panela', 1400, 'Comidas', 'Activo'),
(4, 'Banano', 500, 'Frutas', 'Activo'),
(5, 'Yogurt', 4200, 'Bebidas', 'Activo'),
(6, 'Cerveza_Aguila', 2100, 'Bebidas_Alcoholicas', 'Activo'),
(7, 'Cerveza_Poker', 2400, 'Bebidas_Alcoholicas', 'Activo'),
(8, 'Cerveza_Corona', 2600, 'Bebidas_Alcoholicas', 'Activo'),
(9, 'Atun', 2100, 'Comidas', 'Activo'),
(10, 'Salsa', 5100, 'Comidas', 'Activo'),
(11, 'Cebolla', 2500, 'Comidas', 'Activo'),
(12, 'Manzana', 1200, 'Frutas', 'Activo'),
(13, 'Naranja', 1300, 'Frutas', 'Activo'),
(14, 'Mandarina', 900, 'Frutas', 'Activo'),
(15, 'CocaCola', 3500, 'Bebidas', 'Activo'),
(16, 'Sprite', 3800, 'Bebidas', 'Activo'),
(17, 'Sepillo_De_Dientes', 6000, 'Aseo', 'Activo'),
(18, 'Blanqueador', 8000, 'Aseo', 'Activo'),
(19, 'Alcohol', 5000, 'Aseo', 'Activo'),
(20, 'Listerine', 4500, 'Aseo', 'Activo'),
(21, 'Tapabocas', 1200, 'Elementos_Ortodoxos', 'Activo'),
(22, 'Shampoo', 6000, 'Aseo', 'Activo'),
(23, 'Jabon', 5400, 'Aseo', 'Activo'),
(24, 'Carne', 4500, 'Comidas', 'Activo'),
(25, 'Aerosol', 7000, 'Aseo', 'Activo'),
(26, 'Gel', 5500, 'Aseo', 'Activo'),
(27, 'Papel_Higienico', 4000, 'Aseo', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rolusuario`
--

CREATE TABLE `rolusuario` (
  `idRolUsuario` int(11) NOT NULL,
  `descripRolUsuario` varchar(30) NOT NULL,
  `estadoRolUsuario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rolusuario`
--

INSERT INTO `rolusuario` (`idRolUsuario`, `descripRolUsuario`, `estadoRolUsuario`) VALUES
(1, 'Administrador', 'Inactivo'),
(2, 'Cliente', 'Activo'),
(3, 'Domiciliario', 'Activo'),
(4, 'Administrador', 'Activo'),
(5, 'Cliente', 'Inactivo'),
(6, 'Domiciliario', 'Inactivo'),
(7, 'Administrador', 'Activo'),
(8, 'Cliente', 'Inactivo'),
(9, 'Domiciliario', 'Activo'),
(10, 'Administrador', 'Inactivo'),
(11, 'Cliente', 'Activo'),
(12, 'Domiciliario', 'Activo'),
(13, 'Administrador', 'Activo'),
(14, 'Cliente', 'Activo'),
(15, 'Domiciliario', 'Inactivo'),
(16, 'Administrador', 'Activo'),
(17, 'Cliente', 'Inactivo'),
(18, 'Domiciliario', 'Activo'),
(19, 'Administrador', 'Inactivo'),
(20, 'Cliente', 'Inactivo'),
(21, 'Domiciliario', 'Inactivo'),
(22, 'Administrador', 'Inactivo'),
(23, 'Cliente', 'Activo'),
(24, 'Domiciliario', 'Activo'),
(25, 'Administrador', 'Activo'),
(26, 'Cliente', 'Activo'),
(27, 'Domiciliario', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idRolUsuario` int(11) NOT NULL,
  `tipoDocUsuario` varchar(30) NOT NULL,
  `numdocUsuario` varchar(20) NOT NULL,
  `nombreUsuario` varchar(50) NOT NULL,
  `apellidoUsuario` varchar(50) NOT NULL,
  `direccionUsuario` varchar(80) NOT NULL,
  `telefonoUsuario` varchar(20) NOT NULL,
  `correoUsuario` varchar(70) NOT NULL,
  `passwordUsuario` varchar(20) NOT NULL,
  `fotoUsuario` blob DEFAULT NULL,
  `estadoUsuario` varchar(30) NOT NULL,
  `idUsuarioFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idRolUsuario`, `tipoDocUsuario`, `numdocUsuario`, `nombreUsuario`, `apellidoUsuario`, `direccionUsuario`, `telefonoUsuario`, `correoUsuario`, `passwordUsuario`, `fotoUsuario`, `estadoUsuario`, `idUsuarioFK`) VALUES
(2, 'Cedula', '23474225', 'Adriana', 'Hernandez', 'Crr 57', '3142041733', 'adrianahernandez@gmail.com', 'fgtiYq', NULL, 'Activo', 0),
(3, 'Cedula', '22484226', 'Alejandro', 'Acevedo', 'Cll 145', '3223869855', 'alejandroacevedo@gmail.com', 'Hgkuql', NULL, 'Activo', 0),
(4, 'Cedula', '21376890', 'Jose', 'Huertas', 'Avenida 47', '3112943028', 'josehuertas@gmail.com', 'jkTrwql', NULL, 'Inactivo', 0),
(5, 'Cedula', '20987654', 'Dylan', 'Hernandez', 'Cll 128', '3142041733', 'dylanhernandez@gmail.com', 'uytFghj', NULL, 'Activo', 0),
(6, 'Cedula', '25687234', 'Federico', 'Rodriguez', 'Cll 135B', '2143908745', 'federicorodriguez@gmail.com', 'jmKrtio', NULL, 'Activo', 0),
(7, 'Cedula', '21476890', 'Alberto', 'Posada', 'Crr 57', '212367890', 'albertoposada@gmail.com', 'Zxvnpl', NULL, 'Activo', 0),
(8, 'Cedula', '23487654', 'Andres', 'Huertas', 'Cll 145C', '312594780', 'andreshuertas@gmail.com', 'kjGfvm', NULL, 'Activo', 0),
(9, 'Cedula', '26789456', 'Camilo', 'Castro', 'Crr 26-41', '313245890', 'camilocastro@gmail.com', 'mncxZu', NULL, 'Inactivo', 0),
(10, 'Cedula', '22759076', 'Pedro', 'Aguilar', 'Cll 150', '3302587654', 'pedroaguilar@gmail.com', 'khgFasd', NULL, 'Activo', 0),
(11, 'Cedula', '21794312', 'Miguel', 'Villa', 'Cll 139C', '3223869855', 'miguelvilla@gmail.com', 'uihgFasd', NULL, 'Inactivo', 0),
(12, 'Cedula', '21356908', 'Diego', 'Ruiz', 'Cll 190A', '3152598756', 'diegoruiz@gmail.com', 'jbxcZnm', NULL, 'Activo', 0),
(13, 'Cedula', '23487908', 'Ernesto', 'Cruz', 'Cll 156B', '3120987654', 'ernestocruz@gmail.com', 'ouytGfds', NULL, 'Activo', 0),
(14, 'Cedula', '21890456', 'Horacio', 'Perez', 'Cll 170C', '3128765428', 'horacioperez@gmail.com', 'kiouYtgf', NULL, 'Activo', 0),
(15, 'Cedula', '26789345', 'Federico', 'Sanchez', 'Cll 160B', '2111601823', 'federicosanchez@gmail.com', 'klhGfmn', NULL, 'Activo', 0),
(16, 'Cedula', '22474225', 'Steven', 'Barriga', 'Cll 135C', '314587908', 'stevenbarriga@gmail.com', 'yhjBvfs', NULL, 'Activo', 0),
(17, 'Cedula', '22897065', 'Angelo', 'Murphy', 'Cll 45', '311786543', 'angelomurphy@gmail.com', 'ouyVgfs', NULL, 'Activo', 0),
(18, 'Cedula', '26789321', 'Alex', 'Sierra', 'Cll 122', '314890564', 'alexsierra@gmail.com', 'fgtiYq', NULL, 'Activo', 0),
(19, 'Cedula', '24589604', 'Elizabeth', 'Hernandez', 'Cll 78', '316786345', 'elizabethhernandez@gmail.com', 'jkYtger', NULL, 'Inactivo', 0),
(20, 'Cedula', '21589478', 'Jose', 'Rodriguez', 'Cll 136', '316789234', 'joserodriguez@gmail.com', 'hgfTeqw', NULL, 'Activo', 0),
(21, 'Cedula', '24890532', 'Heidy', 'Sanchez', 'Cll172', '3168659080', 'heidysanchez@gmail.com', 'hgkLyq', NULL, 'Inactivo', 0),
(22, 'Cedula', '21289076', 'Mafe', 'Yopasa', 'Cll 28', '311489046', 'mafeyopasa@gmail.com', 'ihgUsfg', NULL, 'Inactivo', 0),
(23, 'Cedula', '21753592', 'Jhon', 'Doe', 'Cll 55', '317842764', 'jhondoe@gmail.com', 'ohgfKmvl', NULL, 'Inactivo', 0),
(24, 'Cedula', '24275894', 'Gabo', 'Delgado', 'Cll 188C', '311698456', 'gabodelgado@gmail.com', 'jmbcvd', NULL, 'Activo', 0),
(25, 'Cedula', '21765945', 'Julian', 'Castaño', 'Cll 142', '3129534333', 'juliancastaño@gmail.com', 'ghjmFasd', NULL, 'Activo', 0),
(26, 'Cedula', '23876408', 'Jhonathan', 'Fernando', 'Cll 38', '312589743', 'jhonathanfernando@gmail.com', 'jhgTqer', NULL, 'Inactivo', 0),
(27, 'Cedula', '24698094', 'Baron', 'Hurtado', 'Cll 136', '311689056', 'baronhurtado@gmail.com', 'kmnGxc', NULL, 'Activo', 0),
(28, 'Cedula', '21789056', 'Ramiro', 'Olluela', 'Cll 148C', '311509987', 'ramiroolluela@gmail.com', 'iuhgtRlks', NULL, 'Activo', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD PRIMARY KEY (`idDetallePedido`);

--
-- Indices de la tabla `domiciliario`
--
ALTER TABLE `domiciliario`
  ADD PRIMARY KEY (`idDomiciliario`);

--
-- Indices de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD PRIMARY KEY (`idDomicilio`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `rolusuario`
--
ALTER TABLE `rolusuario`
  ADD PRIMARY KEY (`idRolUsuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idRolUsuario`),
  ADD UNIQUE KEY `idRolUsuario` (`idRolUsuario`),
  ADD KEY `idUsuarioFK` (`idUsuarioFK`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  MODIFY `idDetallePedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `domiciliario`
--
ALTER TABLE `domiciliario`
  MODIFY `idDomiciliario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  MODIFY `idDomicilio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `rolusuario`
--
ALTER TABLE `rolusuario`
  MODIFY `idRolUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idRolUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
