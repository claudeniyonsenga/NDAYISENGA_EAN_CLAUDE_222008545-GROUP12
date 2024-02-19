-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 01:39 PM
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
-- Database: `seeds_management_system`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteemployeeOrfarm` (IN `tableName` VARCHAR(50), IN `columnName` VARCHAR(50), IN `conditionValue` VARCHAR(100))   BEGIN
    DECLARE tableNameLowercase VARCHAR(50);
    SET tableNameLowercase = LOWER(tableName);
    SET @deleteQuery = CONCAT('DELETE FROM ', tableNameLowercase, ' WHERE ', columnName, ' = ?');
    PREPARE stmt FROM @deleteQuery;
    EXECUTE stmt USING conditionValue;
    DEALLOCATE PREPARE stmt;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DisplayAllTablesData` ()   BEGIN
select*from crop;
select*from farm;
select*from employee;
select*from seed_lot;
select*from login;
select*from seed;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DisplaySeedData` ()   BEGIN
    SELECT * FROM seed;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetseedInseed_lot` (IN `seed_lot_name` VARCHAR(100))   BEGIN
    SELECT Seed_type,quantity 
    FROM seed
    WHERE seed_id IN (
        SELECT seed_id
        FROM seed_lot
        WHERE seed_lot_id = (SELECT seed_lot_id FROM seed_lot WHERE seed_lot = seed_lot)
    );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertcrop` (IN `crop_name` VARCHAR(255), IN `seed_id` INT, IN `variety` VARCHAR(255), IN `planting_date` DATE, IN `harvest_date` DATE, IN `yield` INT, IN `market_value` DOUBLE, IN `pest_resistance` VARCHAR(255))   BEGIN
INSERT INTO crop (crop_name, seed_id,variety, planting_date, harvest_date, yield, market_value, pest_resistance)
VALUES(cropname, seedid,variety, plantingdate, harvestdate, yield, marketvalue, pestresistance);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertemployee` (`employee_id` INT, IN `employee_name` VARCHAR(255), IN `job_title` VARCHAR(255), IN `phone_number` VARCHAR(255), IN `email_address` VARCHAR(255), IN `address` VARCHAR(255), IN `date_of_birth` DATE, IN `education` VARCHAR(255), IN `training` VARCHAR(255), IN `role` VARCHAR(255), IN `permissions` VARCHAR(255))   BEGIN
INSERT INTO employee (employee_name, job_title, phone_number, email_address, address, date_of_birth, education, training, role, permissions)
VALUES (employeename, jobtitle, phonenumber, emailaddress, address, dateofbirth, education, training, role, permissions);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertfarm` (IN `farm_id` INT, IN `farm_name` VARCHAR(255), IN `location` VARCHAR(255), IN `owner` VARCHAR(255), IN `size` INT, IN `employee_id` INT, IN `soil_type` VARCHAR(255), IN `irrigation_system` VARCHAR(255), IN `crop_rotation_schedule` VARCHAR(255))   BEGIN
INSERT INTO farm (farm_id ,farm_name, location, owner, size,employee_id ,
 soil_type, irrigation_system, crop_rotation_schedule)
VALUES (farm_id ,farm_name, location, owner, size,employee_id ,
 soil_type, irrigation_system, crop_rotation_schedule);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertlogin` (IN `login_id` INT, IN `username` VARCHAR(255), IN `password` VARCHAR(255), IN `role` VARCHAR(255), IN `permissions` VARCHAR(255), IN `employee_id` INT)   BEGIN
INSERT INTO login ( login_id,username, password, role, permissions,employee_id)
VALUES (001,'pierre', 'password123', 'Farmer', 'All',1);

    INSERT INTO login ( login_id,username, password, role, permissions,employee_id) 
    VALUES (loginid,username, password, role, permissions,employeeid);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertSEED_LOT` (IN `seed_lot_number` INT, IN `seed_id` INT, IN `production_date` DATE, IN `supplier` VARCHAR(255), IN `lot_size` INT)   BEGIN
INSERT INTO seed_lot (seed_lot_number, seed_id, production_date, supplier, lot_size)
VALUES (seed_lotnumber, seedid, productiondate, supplier, lotsize);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateFarmData` (IN `farmId` INT, IN `newFarmName` VARCHAR(255), IN `newLocation` VARCHAR(255))   BEGIN
    UPDATE farm
    SET farm_name = newFarmName, location = newLocation
    WHERE farm_id = farmId;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateSeedData` (IN `seedId` INT, IN `newGerminationRate` DOUBLE, IN `newQuantity` INT)   BEGIN
    UPDATE seed
    SET germination_rate = newGerminationRate, quantity = newQuantity
    WHERE seed_id = seedId;
END$$

DELIMITER ;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
