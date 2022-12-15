-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 02:46 AM
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
-- Database: `motorgate`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `mobile_no` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_email`, `password`, `mobile_no`) VALUES
('abdelrahman@gmail.com', '202003150', '01159443692'),
('omar@gmail.com', '2020030049', '01145484026'),
('yara@gmail.com', '2020030167', '01006759909');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(11) NOT NULL,
  `car_name` varchar(255) NOT NULL,
  `car_type` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `Engine` varchar(30) DEFAULT NULL,
  `Transmission` varchar(30) DEFAULT NULL,
  `Colour` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_type`, `image`, `price`, `capacity`, `status`, `Engine`, `Transmission`, `Colour`) VALUES
(1, 'Mercedes Benz', 'Mercedes Benz', 'Mercedes-Benz_C292_fr.jpg ', 2000000, 5, 'new', 'desel', 'auto', 'silver'),
(2, 'Range Rover', 'LandRover', 'car2.jpg', 3500000, 6, 'new', 'petrol', 'maniual', 'black'),
(3, 'Harrier', 'Toyota', 'car3.jpg', 280000, 6, 'used', 'petrol', 'auto', 'red'),
(5, 'LandCruiser V8', 'LandCruiser ', 'images (2).jpg', 2000000, 5, 'new', 'petrol', 'maniual', 'blue'),
(6, 'Security Vehicles', 'Hammar Cars', 'sonkort2.png', 3900000, 8, 'new', 'desel', 'auto', 'orang'),
(7, 'nissan', 'kicks', ' Nissan-Kicks-Right-Front-Three-Quarter-159680.jpg', 450000, 10, 'used', 'desel', 'maniual', 'gold'),
(8, 'hyundi', 'elentra', 'hyundai.jpg.jpg', 550000, 10, 'used', 'desel', 'auto', 'white');

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
(3, 'N_1P_1R_1i_1m_1', 'audi', 'dark blue', 'new', 'shobra', '180000', '0', 'automatic', 'x_', 1),
(4, 'A_4C_3T_34_99_6', 'mitsubishi', 'red', 'new', 'helwan', '150000', '0', 'automatic', 'x_', 10123456),
(5, 'B_2a_2b_2k_88_5', 'nissan', 'gold ', 'new', 'bolak', '120000', '0', 'automatic', 'x_', 11234567),
(6, 'C_1P_1R_1i_77_4', 'mercedes benz', 'gray', 'new', 'maady', '280000', '0', 'automatic', 'x_', 12123456),
(7, 'D_3G_3H_34_66_7', 'BMW', 'white', 'new', '10th0framadan', '350000', '0', 'automatic', 'x_', 11213457),
(8, 'E_2a_2b_2k_55_8', 'MG', 'green', 'new', 'almaza', '130000', '0', 'automatic', 'x_', 11123458),
(9, 'F_1P_1R_1i_44_9', 'renoult', 'yellow', 'used', 'elnozha', '140000', '0', 'automatic', 'x_', 12123459),
(10, 'G_3G_3H_34_33_1', 'Jeep', 'orang', ' used', 'ismalia', '1000000', '0', 'automatic', 'x_', 10213456),
(11, 'H_2a_2b_2k_22_3', 'lexas', 'gray', ' used', 'masara', '100000', '0', 'automatic', 'x_', 113124567),
(12, 'I_1P_1R_1i_11_0', 'haval', 'blue', ' used', 'nasrcity', '190000', '0', 'automatic', 'x_', 12314567),
(13, 'G_3G_3H_34_00_10', 'audi', 'tan', ' used', 'obourcity', '150000', '0', 'automatic', 'x_', 10314568),
(14, 'K_2a_2b_2k_10g_12', 'fiat', 'purple', ' used', 'tanta', '130000', '0', 'automatic', 'x_', 11314568),
(15, 'L_1P_1R_1i_11f_11', 'ford', 'silver', ' used', 'alex', '5800000', '0', 'automatic', 'x_', 12314568),
(16, 'M_1P_1R_1i_12d_13', 'honda', 'red', ' used', 'mansora', '380000', '0', 'automatic', 'x_', 1096843361),
(0, '', '', '', '', '', '', '0', '', '', 0),
(0, '', '', '', '', '', '', '0', '', '', 0),
(0, '', '', '', '', '', '', '0', '', '', 0),
(0, '', '', '', '', '', '', '0', '', '', 0),
(0, '', '', '', '', '', '', '0', '', '', 0),
(0, '', '', '', '', '', '', '0', '', '', 0),
(0, '', '', '', '', '', '', '0', '', '', 0),
(0, '', '', '', '', '', '', '1000', '', '', 0),
(0, '', '', '', '', '', '', '1200', '', '', 0),
(0, '', '', '', '', '', '', '1300', '', '', 0),
(0, '', '', '', '', '', '', '1400', '', '', 0),
(0, '', '', '', '', '', '', '1500', '', '', 0),
(0, '', '', '', '', '', '', '1600', '', '', 0),
(0, '', '', '', '', '', '', '1700', '', '', 0),
(0, '', '', '', '', '', '', '1800', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `email_sender` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `message` varchar(400) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`email_sender`, `name`, `message`) VALUES
('sameh@gmail.com', 'sameh', 'help with profil'),
('adaam@gmail.com', 'adaam', 'help with buy'),
('khaled@gmail.com', 'khaled', 'help with payment'),
('sara@gmail.com', 'sara', 'helo with log in'),
('bahy@gmail.com', 'bahy', 'help with car details'),
('sola@gmail.com', 'sola', 'help with car rent'),
('gamel@gmail.com', 'gamel', 'help with sale car');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `city` varchar(300) NOT NULL,
  `state` varchar(300) NOT NULL,
  `Zip_code` int(200) NOT NULL,
  `Name_on_card` varchar(200) NOT NULL,
  `credit_card_num` int(200) NOT NULL,
  `Exp_month` int(30) NOT NULL,
  `Exp_year` year(4) NOT NULL,
  `CVV` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `full_name`, `email`, `address`, `city`, `state`, `Zip_code`, `Name_on_card`, `credit_card_num`, `Exp_month`, `Exp_year`, `CVV`) VALUES
(1, 'sameh ali akram', 'sameh@gmail.com', '5th statment', 'cairo', 'egypt', 123456, 'sameh ali akram', 9867, 1, 2023, 1234),
(2, 'adaam mahmoud nasr', 'adaam@gmail.com', 'shikh zaid', 'giza', 'egypt', 654321, 'adaam mahmoud nasr', 1234, 3, 2026, 3456),
(4, 'khaled mohamed shebl', 'khaled@gmail.com', 'rehab', 'cairo', 'egypt', 987654, 'khaled mohamed shebl', 4321, 6, 2029, 7890),
(5, 'sara gamal hafiz', 'sara@gmail.com', 'katamia', 'cairo', 'egypt', 456789, 'sara gamal hafiz', 6789, 8, 2033, 987),
(6, 'bahy glal foad', 'bahy@gmail.com', 'maadi', 'cairo', 'egypt', 876543, 'bahy glal foad', 1357, 9, 2036, 6543),
(7, 'sola ashref karam', 'sola@gmail.com', 'nasr city', 'egypt', 'cairo', 345678, 'sola ashref karam', 2468, 11, 2039, 4321),
(8, 'gamel mansor atta', 'gamel@gmail.com', 'shoubra', 'cairo', 'egypt', 124578, 'gamel mansor atta', 1591, 5, 2043, 1357);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id_sup` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id_sup`, `firstname`, `lastname`, `email`, `password`) VALUES
(1, 'abdelrahman', 'ashraf', 'abdelrahman@gmail.com', '202003150'),
(2, 'omar', 'mohamed', 'omar@gmail.com', '2020030049'),
(3, 'mahmoud', 'esam', 'mahmoud@gmail.com', '2020030076'),
(4, 'ali', 'mohsen', 'ali@gmail.com', '2020030153'),
(5, 'adham', 'naser', 'adham@gmail.com', '2020030138'),
(6, 'rawan', 'ghanem', 'rawang@gmail.com', '2020030100'),
(7, 'yara', 'ramadan', 'yara@gmail.com', '2020030167'),
(8, 'rawan', 'foad', 'rawanf@gmail.com', '2020030146'),
(9, 'nefesa', 'emad', 'nefesa@gmail.com', '2020030166'),
(10, 'menna', 'ahmed', 'menna@gmail.com', '2020030164'),
(11, 'salma', 'ehab', 'salma@gmail.com', '2020030102'),
(12, 'shaima', 'mostafa', 'shaimaa@gmail.com', '2020030149'),
(13, 'sola', 'amer', 'sola@gmail.com', '2020030065'),
(14, 'gharam', 'gameel', 'gharam@gmail.com', '2020030103'),
(15, 'saad', 'sameh', 'saad@gmail.com', '2020030104'),
(16, 'adam', 'arafa', 'adam@gmail.com', '2020030105'),
(17, 'sumana', 'shafik', 'sumana@gmail.com', '2020030106'),
(18, 'mohamed', 'abdelatif', 'mohamed@gmail.com', '2020030111'),
(19, 'bahy', 'farid', 'bahy@gmail.com', '2020030107'),
(20, 'karam', 'khaled', 'karam@gmail.com', '2020030108'),
(21, 'mohamed', 'ahmed', 'moahmed@gmail.com', '2020030109'),
(22, 'raghad', 'elsayed', 'raghad@gmail.com', '2020030110'),
(23, 'moaaz', 'khalifa', 'moaaz@gmail.com', '2020030111'),
(24, 'hassan', 'mahroos', 'hassan@gmail.com', '2020030112');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `DateOfBirth`, `gender`) VALUES
('01', 'sameh@gmail.com', '01234567', '1980-05-12', 'male'),
('02', 'adaam@gmail.com', '04567123', '1985-07-10', 'male'),
('04', 'khaled@gmail.com', '078986532', '1975-11-01', 'male'),
('05', 'sara@gmail.com', '095863178', '1990-08-07', 'female'),
('06', 'bahy@gmail.com', '0565666865', '1988-03-01', 'male'),
('07', 'sola@gmail.com', '078987456', '2001-09-17', 'female'),
('08', 'gamel@gmail.com', '09876543', '1968-03-20', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `car_rent_details`
--
ALTER TABLE `car_rent_details`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `car_sale_details`
--
ALTER TABLE `car_sale_details`
  ADD KEY `kilometer_driven` (`kilometer_driven`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`email_sender`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id_sup`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password` (`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
