-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 02:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ndayisenga jeanclaude_222008545_sms`
--
CREATE DATABASE IF NOT EXISTS `ndayisenga jeanclaude_222008545_sms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ndayisenga jeanclaude_222008545_sms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(7) NOT NULL,
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` int(25) NOT NULL,
  `Password` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `Firstname`, `Lastname`, `Email`, `Phone`, `Password`) VALUES
(1, 'jean', 'ndayisenga', 'jeanndayisenga88', 782758032, 222008545),
(2, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(3, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(4, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(5, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(6, 'jean', 'ndayisenga', 'jeanndayisenga@88gamil .com', 78258032, 222008545),
(7, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(8, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(9, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Id` int(7) NOT NULL,
  `Firstname` varchar(25) NOT NULL,
  `Lastname` varchar(25) NOT NULL,
  `Jobtitle` varchar(15) NOT NULL,
  `Phone` int(25) NOT NULL,
  `email` varchar(40) NOT NULL,
  `province` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `sector` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Id`, `Firstname`, `Lastname`, `Jobtitle`, `Phone`, `email`, `province`, `district`, `sector`) VALUES
(1, 'ndayiringiye', '', 'Farmer', 785551212, 'ndayir@gmail.com', 'huye', '0', '0'),
(2, 'Jane', '', 'Seed sales repr', 795552323, 'jane@gmail.com', 'musanze', '0', '0'),
(3, 'John', '', 'Farmer', 725551212, 'john@gmail.com', 'burera', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `farm`
--

CREATE TABLE `farm` (
  `Id` int(7) NOT NULL,
  `names` varchar(25) NOT NULL,
  `location` varchar(25) NOT NULL,
  `size` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `farm`
--
ALTER TABLE `farm`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `farm`
--
ALTER TABLE `farm`
  MODIFY `Id` int(7) NOT NULL AUTO_INCREMENT;
--
-- Database: `ndayisenga_jeanclaude_sms`
--
CREATE DATABASE IF NOT EXISTS `ndayisenga_jeanclaude_sms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ndayisenga_jeanclaude_sms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(7) NOT NULL,
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` int(25) NOT NULL,
  `Password` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `Firstname`, `Lastname`, `Email`, `Phone`, `Password`) VALUES
(1, 'jean', 'ndayisenga', 'jeanndayisenga88', 782758032, 222008545),
(2, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(3, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(4, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(5, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(6, 'jean', 'ndayisenga', 'jeanndayisenga@88gamil .com', 78258032, 222008545),
(7, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(8, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(9, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Id` int(7) NOT NULL,
  `Firstname` varchar(25) NOT NULL,
  `Lastname` varchar(25) NOT NULL,
  `Jobtitle` varchar(15) NOT NULL,
  `Phone` int(25) NOT NULL,
  `email` varchar(40) NOT NULL,
  `province` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `sector` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Id`, `Firstname`, `Lastname`, `Jobtitle`, `Phone`, `email`, `province`, `district`, `sector`) VALUES
(1, 'ndayiringiye', '', 'Farmer', 785551212, 'ndayir@gmail.com', 'huye', '0', '0'),
(2, 'Jane', '', 'Seed sales repr', 795552323, 'jane@gmail.com', 'musanze', '0', '0'),
(3, 'John', '', 'Farmer', 725551212, 'john@gmail.com', 'burera', '0', '0');
--
-- Database: `ndayisenga_jean_claude_222008545`
--
CREATE DATABASE IF NOT EXISTS `ndayisenga_jean_claude_222008545` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ndayisenga_jean_claude_222008545`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(7) NOT NULL,
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` int(25) NOT NULL,
  `Password` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `Firstname`, `Lastname`, `Email`, `Phone`, `Password`) VALUES
(1, 'jean', 'ndayisenga', 'jeanndayisenga88', 782758032, 222008545),
(2, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(3, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(4, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(5, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(6, 'jean', 'ndayisenga', 'jeanndayisenga@88gamil .com', 78258032, 222008545),
(7, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(8, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(9, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Id` int(7) NOT NULL,
  `Firstname` varchar(25) NOT NULL,
  `Lastname` varchar(25) NOT NULL,
  `Jobtitle` varchar(15) NOT NULL,
  `Phone` int(25) NOT NULL,
  `email` varchar(40) NOT NULL,
  `province` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `sector` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Id`, `Firstname`, `Lastname`, `Jobtitle`, `Phone`, `email`, `province`, `district`, `sector`) VALUES
(1, 'ndayiringiye', '', 'Farmer', 785551212, 'ndayir@gmail.com', 'huye', '0', '0'),
(2, 'Jane', '', 'Seed sales repr', 795552323, 'jane@gmail.com', 'musanze', '0', '0'),
(3, 'John', '', 'Farmer', 725551212, 'john@gmail.com', 'burera', '0', '0');
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"false\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"seeds_management_system\",\"table\":\"farm\"},{\"db\":\"seeds_management_system\",\"table\":\"payment\"},{\"db\":\"seeds_management_system\",\"table\":\"seed\"},{\"db\":\"seeds_management_system\",\"table\":\"employee\"},{\"db\":\"seeds_management_system\",\"table\":\"admin\"},{\"db\":\"seeds_management_system\",\"table\":\"seed_lot\"},{\"db\":\"seeds_management_system\",\"table\":\"crop\"},{\"db\":\"seeds_management_system\",\"table\":\"crop_with_date_inserted\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-02-08 11:20:58', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `seeds_management_system`
--
CREATE DATABASE IF NOT EXISTS `seeds_management_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `seeds_management_system`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(7) NOT NULL,
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` int(25) NOT NULL,
  `Password` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `Firstname`, `Lastname`, `Email`, `Phone`, `Password`) VALUES
(1, 'jean', 'ndayisenga', 'jeanndayisenga88', 782758032, 222008545),
(2, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(3, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(4, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(5, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(6, 'jean', 'ndayisenga', 'jeanndayisenga@88gamil .com', 78258032, 222008545),
(7, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(8, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545),
(9, 'jean', 'ndayisenga', 'jeanndayisenga88@gmail.com', 782758032, 222008545);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Id` int(7) NOT NULL,
  `Firstname` varchar(25) NOT NULL,
  `Lastname` varchar(25) NOT NULL,
  `Jobtitle` varchar(15) NOT NULL,
  `Phone` int(25) NOT NULL,
  `email` varchar(40) NOT NULL,
  `province` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `sector` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Id`, `Firstname`, `Lastname`, `Jobtitle`, `Phone`, `email`, `province`, `district`, `sector`) VALUES
(1, 'ndayiringiye', '', 'Farmer', 785551212, 'ndayir@gmail.com', 'huye', '0', '0'),
(2, 'Jane', '', 'Seed sales repr', 795552323, 'jane@gmail.com', 'musanze', '0', '0'),
(3, 'John', '', 'Farmer', 725551212, 'john@gmail.com', 'burera', '0', '0');

--
-- Triggers `employee`
--
DELIMITER $$
CREATE TRIGGER `AfterDeleteemployee` AFTER DELETE ON `employee` FOR EACH ROW BEGIN
    INSERT INTO employee_audit (employee_id, action, action_date)
    VALUES (OLD.employee_id, 'DELETE', NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `AfterUpdateemployee` AFTER UPDATE ON `employee` FOR EACH ROW BEGIN
    INSERT INTO employee_audit (employee_id, action, action_date)
    VALUES (NEW.employee_id, 'UPDATE', NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `farm`
--

CREATE TABLE `farm` (
  `Id` int(7) NOT NULL,
  `Names` varchar(50) NOT NULL,
  `location` varchar(25) NOT NULL,
  `size` int(12) NOT NULL,
  `employeeId` int(7) NOT NULL,
  `soiltype` varchar(10) NOT NULL,
  `phone` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farm`
--

INSERT INTO `farm` (`Id`, `Names`, `location`, `size`, `employeeId`, `soiltype`, `phone`) VALUES
(1, 'byumba', 'rwanda', 1500, 1, 'Sand', ''),
(2, 'ngoma', 'rwanda', 2000, 2, 'Loam', ''),
(3, 'kabale', 'uganda', 3000, 3, 'Clay', '');

--
-- Triggers `farm`
--
DELIMITER $$
CREATE TRIGGER `AfterInsertfarm` AFTER INSERT ON `farm` FOR EACH ROW BEGIN
    INSERT INTO farm_audit (farm_id, action, action_date)
    VALUES (NEW.farm_id, 'INSERT', NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Id` int(7) NOT NULL,
  `Date` datetime(6) NOT NULL,
  `farmId` int(7) NOT NULL,
  `Amount` double NOT NULL,
  `SeedId` int(7) NOT NULL,
  `phone` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seed`
--

CREATE TABLE `seed` (
  `Id` int(7) NOT NULL,
  `Name` varchar(12) NOT NULL,
  `farmId` int(7) NOT NULL,
  `quantity` int(10) NOT NULL,
  `Plantingdate` datetime(6) NOT NULL,
  `Harvestingdate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seed`
--

INSERT INTO `seed` (`Id`, `Name`, `farmId`, `quantity`, `Plantingdate`, `Harvestingdate`) VALUES
(1, 'Corn', 0, 10000, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(2, 'Soybeans', 0, 20000, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(3, 'Wheat', 0, 30000, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `farm`
--
ALTER TABLE `farm`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `e_id` (`employeeId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `farm_id` (`farmId`);

--
-- Indexes for table `seed`
--
ALTER TABLE `seed`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `farm_id` (`farmId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `farm`
--
ALTER TABLE `farm`
  MODIFY `Id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Id` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seed`
--
ALTER TABLE `seed`
  MODIFY `Id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
