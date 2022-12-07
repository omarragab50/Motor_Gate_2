CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);
COMMIT;
