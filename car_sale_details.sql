-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 12:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `motor gate`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_sale_details`
--

CREATE TABLE `car_sale_details` (
  `car_id` int(20) NOT NULL,
  `car_code` varchar(200) NOT NULL,
  `car_brand` varchar(200) NOT NULL,
  `exterior_color` varchar(100) NOT NULL,
  `car_condition` varchar(100) NOT NULL,
  `city` varchar(200) NOT NULL,
  `car_price` varchar(200) NOT NULL,
  `kilometer_driven` varchar(200) NOT NULL,
  `transmission` varchar(100) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `user_phone` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `car_sale_details`
--

INSERT INTO `car_sale_details` (`car_id`, `car_code`, `car_brand`, `exterior_color`, `car_condition`, `city`, `car_price`, `kilometer_driven`, `transmission`, `user_id`, `user_phone`) VALUES
(1, 'B_3G_3H_34_39_3', 'mercedez benz', 'black', 'new', 'cairo', '450000', '0', 'automatic', 'x_', 1),
(2, 'L_2a_2b_2k_26_2', 'hyundi', 'gray', 'new', 'giza', '120000', '0', 'automatic', 'x_', 1),
(3, 'N_1P_1R_1i_1m_1', 'audi', 'dark blue', 'new', 'shobra', '180000', '0', 'maniual', 'x_', 1),
(4, 'A_4C_3T_34_99_6', 'mitsubishi', 'red', 'new', 'helwan', '150000', '0', 'automatic', 'x_', 10123456),
(5, 'B_2a_2b_2k_88_5', 'nissan', 'gold ', 'new', 'bolak', '120000', '0', 'maniual', 'x_', 11234567),
(6, 'C_1P_1R_1i_77_4', 'mercedes benz', 'gray', 'new', 'maady', '280000', '0', 'automatic', 'x_', 12123456),
(7, 'D_3G_3H_34_66_7', 'BMW', 'white', 'new', '10th0framadan', '350000', '0', 'automatic', 'x_', 11213457),
(8, 'E_2a_2b_2k_55_8', 'MG', 'green', 'new', 'almaza', '130000', '0', 'automatic', 'x_', 11123458),
(9, 'F_1P_1R_1i_44_9', 'renoult', 'yellow', 'used', 'elnozha', '140000', '1000', 'automatic', 'x_', 12123459),
(10, 'G_3G_3H_34_33_1', 'Jeep', 'orang', ' used', 'ismalia', '1000000', '1200', 'automatic', 'x_', 10213456),
(11, 'H_2a_2b_2k_22_3', 'lexas', 'gray', ' used', 'masara', '100000', '1300', 'automatic', 'x_', 113124567),
(12, 'I_1P_1R_1i_11_0', 'haval', 'blue', ' used', 'nasrcity', '190000', '1400', 'maniual', 'x_', 12314567),
(13, 'G_3G_3H_34_00_10', 'audi', 'tan', ' used', 'obourcity', '150000', '2000', 'automatic', 'x_', 10314568),
(14, 'K_2a_2b_2k_10g_12', 'fiat', 'purple', ' used', 'tanta', '130000', '2100', 'maniual', 'x_', 11314568),
(15, 'L_1P_1R_1i_11f_11', 'ford', 'silver', ' used', 'alex', '5800000', '2200', 'automatic', 'x_', 12314568),
(16, 'M_1P_1R_1i_12d_13', 'honda', 'red', ' used', 'mansora', '380000', '2300', 'maniual', 'x_', 1096843361);
 


--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_sale_details`
--
ALTER TABLE `car_sale_details`
  ADD KEY `kilometer_driven` (`kilometer_driven`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
