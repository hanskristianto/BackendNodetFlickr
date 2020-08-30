-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for db_flickr
DROP DATABASE IF EXISTS `db_flickr`;
CREATE DATABASE IF NOT EXISTS `db_flickr` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_flickr`;

-- Dumping structure for table db_flickr.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_flickr.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
	(1, 'hans', 'hans@email.com', '123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table db_flickr.wishlist
DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_flickr.wishlist: ~5 rows (approximately)
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` (`id`, `user_id`, `image_url`, `status`) VALUES
	(1, 1, 'https://live.staticflickr.com/65535/50282586401_f4fc208a6b_m.jpg', '1'),
	(2, 1, 'https://live.staticflickr.com/65535/50283802058_3e63cb0c68_m.jpg', '1'),
	(3, 1, 'https://live.staticflickr.com/65535/50283807628_1f8d378733_m.jpg', '1'),
	(4, 1, 'https://live.staticflickr.com/65535/50283807868_44bbdfa375_m.jpg', '1'),
	(6, 1, 'https://live.staticflickr.com/65535/50283990133_59618806c6_m.jpg', '1'),
	(7, 1, 'https://live.staticflickr.com/65535/11445143054_a9a6d51707_m.jpg', '1');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
