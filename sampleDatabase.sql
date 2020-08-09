-- --------------------------------------------------------
-- Sunucu:                       localhost
-- Sunucu sürümü:                5.7.24 - MySQL Community Server (GPL)
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- enuygun_case.developer: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `developer` DISABLE KEYS */;
INSERT INTO `developer` (`id`, `title`, `duration`, `level`) VALUES
	(1, 'DEV 1', 1, 1),
	(2, 'DEV 2', 1, 2),
	(3, 'DEV 3', 1, 3),
	(4, 'DEV 4', 1, 4),
	(5, 'DEV 5', 1, 5);
/*!40000 ALTER TABLE `developer` ENABLE KEYS */;

-- enuygun_case.doctrine_migration_versions: ~3 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20200808164353', '2020-08-08 17:03:41', 696),
	('DoctrineMigrations\\Version20200808171010', '2020-08-08 17:10:15', 103),
	('DoctrineMigrations\\Version20200809191108', '2020-08-09 19:11:22', 722);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;

-- enuygun_case.task: ~134 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` (`id`, `title`, `level`, `duration`) VALUES
	(1, 'IT Task 0', 3, 6),
	(2, 'IT Task 1', 4, 6),
	(3, 'IT Task 2', 3, 10),
	(4, 'IT Task 3', 4, 4),
	(5, 'IT Task 4', 3, 5),
	(6, 'IT Task 5', 1, 12),
	(7, 'IT Task 6', 1, 4),
	(8, 'IT Task 7', 5, 6),
	(9, 'IT Task 8', 3, 8),
	(10, 'IT Task 9', 1, 6),
	(11, 'IT Task 10', 2, 10),
	(12, 'IT Task 11', 1, 6),
	(13, 'IT Task 12', 4, 11),
	(14, 'IT Task 13', 5, 3),
	(15, 'IT Task 14', 1, 11),
	(16, 'IT Task 15', 4, 6),
	(17, 'IT Task 16', 5, 4),
	(18, 'IT Task 17', 3, 11),
	(19, 'IT Task 18', 2, 11),
	(20, 'IT Task 19', 3, 8),
	(21, 'IT Task 20', 3, 11),
	(22, 'IT Task 21', 1, 5),
	(23, 'IT Task 22', 4, 5),
	(24, 'IT Task 23', 2, 7),
	(25, 'IT Task 24', 2, 6),
	(26, 'IT Task 25', 3, 9),
	(27, 'IT Task 26', 4, 6),
	(28, 'IT Task 27', 4, 7),
	(29, 'IT Task 28', 1, 4),
	(30, 'IT Task 29', 4, 5),
	(31, 'IT Task 30', 5, 9),
	(32, 'IT Task 31', 2, 5),
	(33, 'IT Task 32', 2, 5),
	(34, 'IT Task 33', 2, 6),
	(35, 'IT Task 34', 5, 6),
	(36, 'IT Task 35', 1, 10),
	(37, 'IT Task 36', 1, 10),
	(38, 'IT Task 37', 1, 10),
	(39, 'IT Task 38', 5, 12),
	(40, 'IT Task 39', 4, 12),
	(41, 'IT Task 40', 2, 6),
	(42, 'IT Task 41', 3, 8),
	(43, 'IT Task 42', 5, 10),
	(44, 'IT Task 43', 3, 10),
	(45, 'IT Task 44', 5, 8),
	(46, 'IT Task 45', 5, 9),
	(47, 'IT Task 46', 3, 3),
	(48, 'IT Task 47', 4, 4),
	(49, 'IT Task 48', 1, 12),
	(50, 'IT Task 49', 1, 7),
	(51, 'IT Task 50', 1, 4),
	(52, 'IT Task 51', 1, 10),
	(53, 'IT Task 52', 4, 8),
	(54, 'IT Task 53', 3, 3),
	(55, 'IT Task 54', 4, 10),
	(56, 'IT Task 55', 4, 12),
	(57, 'IT Task 56', 3, 10),
	(58, 'IT Task 57', 2, 11),
	(59, 'IT Task 58', 1, 7),
	(60, 'IT Task 59', 2, 4),
	(61, 'IT Task 60', 3, 4),
	(62, 'IT Task 61', 1, 3),
	(63, 'IT Task 62', 1, 6),
	(64, 'IT Task 63', 3, 3),
	(65, 'IT Task 64', 4, 12),
	(66, 'IT Task 65', 2, 11),
	(67, 'IT Task 66', 3, 10),
	(68, 'Business Task 0', 1, 7),
	(69, 'Business Task 1', 3, 4),
	(70, 'Business Task 2', 1, 6),
	(71, 'Business Task 3', 5, 4),
	(72, 'Business Task 4', 2, 7),
	(73, 'Business Task 5', 5, 7),
	(74, 'Business Task 6', 4, 5),
	(75, 'Business Task 7', 2, 11),
	(76, 'Business Task 8', 4, 12),
	(77, 'Business Task 9', 1, 4),
	(78, 'Business Task 10', 2, 7),
	(79, 'Business Task 11', 4, 3),
	(80, 'Business Task 12', 3, 10),
	(81, 'Business Task 13', 1, 3),
	(82, 'Business Task 14', 2, 10),
	(83, 'Business Task 15', 2, 12),
	(84, 'Business Task 16', 3, 9),
	(85, 'Business Task 17', 4, 9),
	(86, 'Business Task 18', 1, 7),
	(87, 'Business Task 19', 4, 4),
	(88, 'Business Task 20', 5, 4),
	(89, 'Business Task 21', 4, 4),
	(90, 'Business Task 22', 2, 5),
	(91, 'Business Task 23', 5, 9),
	(92, 'Business Task 24', 5, 12),
	(93, 'Business Task 25', 3, 9),
	(94, 'Business Task 26', 2, 12),
	(95, 'Business Task 27', 3, 9),
	(96, 'Business Task 28', 1, 7),
	(97, 'Business Task 29', 4, 4),
	(98, 'Business Task 30', 4, 4),
	(99, 'Business Task 31', 1, 7),
	(100, 'Business Task 32', 4, 7),
	(101, 'Business Task 33', 3, 9),
	(102, 'Business Task 34', 2, 9),
	(103, 'Business Task 35', 1, 9),
	(104, 'Business Task 36', 5, 3),
	(105, 'Business Task 37', 4, 5),
	(106, 'Business Task 38', 1, 9),
	(107, 'Business Task 39', 5, 7),
	(108, 'Business Task 40', 1, 6),
	(109, 'Business Task 41', 1, 5),
	(110, 'Business Task 42', 5, 9),
	(111, 'Business Task 43', 1, 9),
	(112, 'Business Task 44', 5, 8),
	(113, 'Business Task 45', 5, 8),
	(114, 'Business Task 46', 1, 9),
	(115, 'Business Task 47', 1, 12),
	(116, 'Business Task 48', 1, 3),
	(117, 'Business Task 49', 5, 7),
	(118, 'Business Task 50', 5, 12),
	(119, 'Business Task 51', 1, 11),
	(120, 'Business Task 52', 3, 7),
	(121, 'Business Task 53', 1, 3),
	(122, 'Business Task 54', 4, 10),
	(123, 'Business Task 55', 2, 11),
	(124, 'Business Task 56', 4, 9),
	(125, 'Business Task 57', 3, 7),
	(126, 'Business Task 58', 2, 4),
	(127, 'Business Task 59', 4, 9),
	(128, 'Business Task 60', 2, 10),
	(129, 'Business Task 61', 3, 8),
	(130, 'Business Task 62', 1, 10),
	(131, 'Business Task 63', 4, 11),
	(132, 'Business Task 64', 4, 5),
	(133, 'Business Task 65', 3, 9),
	(134, 'Business Task 66', 1, 3);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
