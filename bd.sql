-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.5.8-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para flask_mvc
CREATE DATABASE IF NOT EXISTS `flask_mvc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `flask_mvc`;

-- Volcando estructura para tabla flask_mvc.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio_compra` float(14,2) DEFAULT NULL,
  `precio_venta` float(14,2) DEFAULT NULL,
  `ganancia` float(14,2) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL COMMENT '1 = activo, 0 = inactivo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla flask_mvc.productos: ~21 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio_compra`, `precio_venta`, `ganancia`, `estado`) VALUES
	(1, 'cerveza', 'cerveza poker', 1500.00, 1995.00, 33.00, 1),
	(2, 'agua', 'agua por 51 litros', 3570.00, 4284.00, 20.00, 0),
	(3, 'jugo', 'jugo natural', 2000.00, 2500.00, 25.00, 0),
	(4, 'flores', 'flores girasol', 3140.00, 3862.00, 23.00, 1),
	(5, 'papas', 'papas fritas', 2709.00, 3400.00, 26.00, 0),
	(6, 'mechera', NULL, NULL, NULL, NULL, NULL),
	(7, 'zapatillas', 'deportivo dama', 200000.00, 268000.00, 34.00, 1),
	(8, 'camisa', 'camisa dama ', 60000.00, 90000.00, NULL, 0),
	(9, 'pantalon', 'pantalon dama', 90000.00, 120000.00, NULL, 1),
	(10, 'cigarrillos', 'de los que dan risa', 1400.00, 2000.00, 43.00, 1),
	(11, 'cuaderno', 'cuaderno de 100 hojas', 4000.00, 5000.00, NULL, 1),
	(12, 'papas', 'papas fritas', 5000.00, 6000.00, NULL, 0),
	(13, 'galletas', 'fdgfgfdg', 2000.00, 2460.00, 23.00, 1),
	(14, 'platos', 'platos soperos', 30000.00, 39000.00, NULL, 30),
	(15, 'posillos', 'posillos grandes', 2000.00, 2500.00, NULL, 25),
	(16, 'tenedores', 'tenedores de plata', 25000.00, 33750.00, 35.00, 1),
	(17, 'mesa', 'mesa rectangular ', 400000.00, 540000.00, 35.00, 0),
	(18, 'papel', 'dgffdg', 3000.00, 3930.00, 31.00, 0),
	(19, 'vasos', 'vasos transparentes', 2000.00, 2640.00, 32.00, 1),
	(20, 'jabón ', 'jabón de baño', 5460.00, 6098.00, 12.00, 1),
	(21, 'sofa', 'sofacama', 503000.00, 618690.00, 23.00, 1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
