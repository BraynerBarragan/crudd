
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
  `estado` tinyint(1) DEFAULT NULL COMMENT '1 = activo, 0 = inactivo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla flask_mvc.productos: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio_compra`, `precio_venta`, `estado`) VALUES
	(1, 'cerveza', NULL, NULL, NULL, NULL),
	(2, 'gasceosa', NULL, NULL, NULL, NULL),
	(3, 'jugo', NULL, NULL, NULL, NULL),
	(4, 'bray', NULL, NULL, NULL, NULL),
	(5, 'papas', NULL, NULL, NULL, NULL),
	(6, 'mechera', NULL, NULL, NULL, NULL),
	(7, 'zapatillas', 'deportivo dama', 200000.00, 250000.00, 1),
	(8, 'camisa', 'camisa dama ', 60000.00, 90000.00, 0),
	(9, 'pantalon', 'pantalon dama', 90000.00, 120000.00, 1),
	(10, 'carro', NULL, NULL, NULL, NULL),
	(11, 'cuaderno', 'cuaderno de 100 hojas', 4000.00, 5000.00, 1),
	(12, 'papas', 'papas fritas', 5000.00, 6000.00, 0),
	(13, 'galletas', 'galletas chocolate', 2000.00, 2200.00, 1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
