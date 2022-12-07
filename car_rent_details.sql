-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 08:50 PM
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
-- Table structure for table `car_rent_details`
--

CREATE TABLE `car_rent_details` (
  `car_id` int(11) NOT NULL,
  `car_code` varchar(200) NOT NULL,
  `car_brand` varchar(200) NOT NULL,
  `exterior_color` varchar(100) NOT NULL,
  `city` varchar(200) NOT NULL,
  `price_for_h` int(200) NOT NULL,
  `price_for_d` varchar(200) NOT NULL,
  `foul` varchar(200) NOT NULL,
  `transmission` varchar(100) NOT NULL,
  `phone` int(20) NOT NULL,
  `payment_optin` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `car_rent_details`
--

INSERT INTO `car_rent_details` (`car_id`, `car_code`, `car_brand`, `exterior_color`, `city`, `price_for_h`, `price_for_d`, `foul`, `transmission`, `phone`, `payment_optin`) VALUES
(1, 'B_3G_3H_34_39_3', 'mercedez benz', 'black', 'cairo', 0, ' 4500', 'desel', 'automatic', 10987654, 'cash'),
(2, 'L_2a_2b_2k_26_2', 'hyundi', 'gray', 'giza', 2250, '0', 'gas', 'automatic', 119687543, 'credit'),
(3, 'N_1P_1R_1i_1m_1', 'audi', 'dark blue', 'shobra', 0, '3500', 'gas', 'maniual', 12567984, 'cash'),
(4, 'A_4C_3T_34_99_6', 'mitsubishi', 'red', 'helwan', 1550, '0', 'gas', 'automatic', 10123456, 'credit'),
(5, 'B_2a_2b_2k_88_5', 'nissan', 'gold ', 'bolak', 0, '1750', 'gas', 'maniual', 11234567, 'credit'),
(6, 'C_1P_1R_1i_77_4', 'mercedes benz', 'gray', 'maady', 5000, '0', 'desel', 'automatic', 12123456, 'cash'),
(7, 'D_3G_3H_34_66_7', 'BMW', 'white', '10th0framadan', 0, '2500', 'gas', 'automatic', 11213457, 'credit'),
(8, 'E_2a_2b_2k_55_8', 'MG', 'green', 'almaza', 1300, '0', 'gas', 'automatic', 11123458, 'credit'),
(9, 'F_1P_1R_1i_44_9', 'renoult', 'yellow', 'elnozha', 0, 'gas', '1000', 'automatic', 12123459, 'cash'),
(10, 'G_3G_3H_34_33_1', 'Jeep', 'orang', 'ismalia', 8000, '0', 'desel', 'automatic', 10213456, 'credit'),
(11, 'H_2a_2b_2k_22_3', 'lexas', 'gray', 'masara', 0, '3300', 'desel', 'automatic', 113124567, 'credit'),
(12, 'I_1P_1R_1i_11_0', 'haval', 'blue', 'nasrcity', 2900, '0', 'gas', 'maniual', 12314567, 'cash'),
(13, 'G_3G_3H_34_00_10', 'audi', 'tan', 'obourcity', 0, '2000', 'desel', 'automatic', 10314568, 'credit'),
(14, 'K_2a_2b_2k_10g_12', 'fiat', 'purple', 'tanta', 1300, '0', 'gas', 'maniual', 11314568, 'credit'),
(15, 'L_1P_1R_1i_11f_11', 'ford', 'silver', 'alex', 0, '8500', 'desel', 'automatic', 12314568, 'cash'),
(16, 'M_1P_1R_1i_12d_13', 'honda', 'red', 'mansora', 3800, '0', 'desel', 'maniual', 1096843361, 'credit');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
