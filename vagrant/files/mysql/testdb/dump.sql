-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: lw16.knpbmedia.com
-- Generation Time: Feb 14, 2016 at 08:37 PM
-- Server version: 5.5.44-log
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev_flexfiles`
--

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(10) UNSIGNED NOT NULL,
  `ux1` int(10) UNSIGNED DEFAULT NULL,
  `ux2` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `c` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msg` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `ux1`, `ux2`, `name`, `c`, `msg`) VALUES
(1, 1, NULL, 'one', 199, NULL),
(2, 1, NULL, 'two', 199, NULL),
(3, 1, 3, 'three', 199, NULL),
(4, 1, 4, 'four', 199, NULL),
(5, 5, NULL, 'blabla', 199, 'blabla'),
(7, 5, 6, NULL, 199, '-NULL-');

--
-- Triggers `test`
--
DROP TRIGGER IF EXISTS `trg_test_before_update`;
DELIMITER $$
CREATE TRIGGER `trg_test_before_update` BEFORE UPDATE ON `test` FOR EACH ROW BEGIN
    DECLARE m varchar(255);

    IF NEW.name IS NULL THEN
        SET m = '-NULL-';
    ELSE
        SET m = NEW.name;
    END IF;

    SET NEW.msg = m;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `test_ux` (`ux1`,`ux2`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
