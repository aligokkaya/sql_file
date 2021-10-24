-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 25, 2021 at 12:46 AM
-- Server version: 8.0.27
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hypegena_pmk`
--

-- --------------------------------------------------------

--
-- Table structure for table `hastag`
--

CREATE TABLE `hastag` (
  `hastagID` int NOT NULL,
  `hastagAd` varchar(256) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `hastag`
--

INSERT INTO `hastag` (`hastagID`, `hastagAd`, `user_id`) VALUES
(2, 'Atatürk', 'test5@gmail.com'),
(14, 'hastag123', 'test5@gmail.com'),
(23, 'emre', 'deneme@hotmail.com'),
(22, 'rte', 'deneme@hotmail.com'),
(19, 'deneme', 'test3@gmail.com'),
(21, 'dolar', 'test3@gmail.com'),
(24, 'sadsada', 'test5@gmail.com'),
(26, 'saddsadas', 'test5@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `rapor`
--

CREATE TABLE `rapor` (
  `id` int NOT NULL,
  `rapor_name` varchar(255) NOT NULL,
  `tarih_start` varchar(255) NOT NULL,
  `tarih_end` varchar(255) NOT NULL,
  `rapor_url` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rapor`
--

INSERT INTO `rapor` (`id`, `rapor_name`, `tarih_start`, `tarih_end`, `rapor_url`, `user_id`) VALUES
(148, 'Ak Parti Eskişehir İl Başkanlığıasddasdasdasaddadasdsa', '2021-10-01', '2021-10-24', './static/csv_folder/raporlar/test5@gmail.com_2021-10-24 19:28:39.988080.pdf', 'test5@gmail.com'),
(149, 'iamemreyildiz Kullanicisi 2021-10-01 Tarihi ile 2021-10-24 Tarihi Arasi Paylaştıgı deneme Hakkında Tweet Raporu', '2021-10-01', '2021-10-24', './static/csv_folder/raporlar/0.5644979323204821.pdf', 'test5@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `takip_eden`
--

CREATE TABLE `takip_eden` (
  `takipedenID` int NOT NULL,
  `takipedenAD` varchar(256) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `takipedenKulAd` varchar(256) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `takip_eden`
--

INSERT INTO `takip_eden` (`takipedenID`, `takipedenAD`, `takipedenKulAd`, `user_id`) VALUES
(22, 'aa', 'ofk__', 'test3@gmail.com'),
(23, 'Hasan Burgaz', 'HBurgaz', 'deneme@hotmail.com'),
(19, 'Ali Gökkaya', 'aligkky1', 'test5@gmail.com'),
(20, 'ali', 'aligkky1', 'test3@gmail.com'),
(18, 'Ömer Faruk Koç', 'ofk__', 'test5@gmail.com'),
(24, 'Hakan Çizmelioğlu', 'hcizmelioglu', 'deneme@hotmail.com'),
(25, 'Ali Acar', 'AAcar26', 'deneme@hotmail.com'),
(26, 'sdasdsa', 'sadsadas', 'test5@gmail.com'),
(27, 'saddasdsa', 'asdasdas', 'test5@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `takip_edilen`
--

CREATE TABLE `takip_edilen` (
  `takipID` int NOT NULL,
  `takipAd` varchar(256) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `takipKulAd` varchar(256) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `takip_edilen`
--

INSERT INTO `takip_edilen` (`takipID`, `takipAd`, `takipKulAd`, `user_id`) VALUES
(44, 'emre Yıldız', 'iamemreyildiz', 'test3@gmail.com'),
(52, 'Emre Yıldız', 'emre', 'test5@gmail.com'),
(49, 'Zihni Çalışkan', 'zihnicaliskan', 'deneme@hotmail.com'),
(53, 'sadasd', 'sadas', 'test5@gmail.com'),
(47, 'bercin', 'nbercinozkan', 'test3@gmail.com'),
(48, 'can', 'mahmuuttcaan', 'test3@gmail.com'),
(51, 'Emre Yıldız', 'iamemreyildiz', 'deneme@hotmail.com'),
(56, 'sasaddsa', 'sadsad', 'test5@gmail.com'),
(58, 'asdasd', 'asdsad', 'test5@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `name_surname` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `pass`, `mail`, `name_surname`) VALUES
(1, 'test', 'test', 'test3@gmail.com', 'Emre Yıldız'),
(2, 'test2', 'aaa', 'test5@gmail.com', 'Ömer Faruk Koç'),
(3, 'akparti_eskisehir', '2023', 'deneme@hotmail.com', 'AkParti Eskişehir'),
(4, 'ozkan', 'ozkan123', 'ozkan@gmail.com', 'Özkan Karanfil'),
(5, 'mustafa', 'mustafa123', 'mustafa@gmail.com', 'Mustafa Başkuş'),
(6, 'ugurdurukan', 'ugur123', 'ugur@gmail.com', 'Ugur Durukan'),
(7, 'Mehmet Altundag', 'mehmet123', 'mehmet@gmail.com', 'Mehmet Altundag');

-- --------------------------------------------------------

--
-- Table structure for table `user_sinir`
--

CREATE TABLE `user_sinir` (
  `ID` int NOT NULL,
  `mail` varchar(255) NOT NULL,
  `sinir` int NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_sinir`
--

INSERT INTO `user_sinir` (`ID`, `mail`, `sinir`, `date`) VALUES
(24, 'deneme@hotmail.com', 1, '2021-10-23 22:31:17'),
(23, 'deneme@hotmail.com', 1, '2021-10-23 22:28:27'),
(15, 'deneme@hotmail.com', 1, '2021-10-23 21:59:08'),
(29, 'deneme@hotmail.com', 1, '2021-10-23 23:27:24'),
(30, 'deneme@hotmail.com', 1, '2021-10-23 23:28:42'),
(31, 'deneme@hotmail.com', 1, '2021-10-23 23:31:00'),
(32, 'deneme@hotmail.com', 1, '2021-10-23 23:32:59'),
(33, 'deneme@hotmail.com', 1, '2021-10-23 23:37:20'),
(34, 'test5@gmail.com', 1, '2021-10-23 23:43:27'),
(35, 'test5@gmail.com', 1, '2021-10-23 23:43:59'),
(36, 'test5@gmail.com', 1, '2021-10-23 23:44:56'),
(37, 'test5@gmail.com', 1, '2021-10-23 23:55:53'),
(38, 'test5@gmail.com', 1, '2021-10-24 00:16:20'),
(39, 'test5@gmail.com', 1, '2021-10-24 10:37:17'),
(40, 'test5@gmail.com', 1, '2021-10-24 10:37:43'),
(41, 'ozkan@gmail.com', 1, '2021-10-24 11:47:56'),
(42, 'email', 1, '2021-10-24 19:11:52'),
(43, 'email', 1, '2021-10-24 19:19:10'),
(44, 'email', 1, '2021-10-24 19:21:13'),
(45, 'email', 1, '2021-10-24 19:21:56'),
(46, 'email', 1, '2021-10-24 19:22:35'),
(47, 'email', 1, '2021-10-24 19:24:47'),
(48, 'test5@gmail.com', 1, '2021-10-24 19:28:40'),
(49, 'test5@gmail.com', 1, '2021-10-24 19:36:25'),
(50, 'test5@gmail.com', 1, '2021-10-24 19:37:05');

-- --------------------------------------------------------

--
-- Table structure for table `yonetim`
--

CREATE TABLE `yonetim` (
  `yonetimID` int NOT NULL,
  `yonetimKulAd` varchar(256) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hastag`
--
ALTER TABLE `hastag`
  ADD PRIMARY KEY (`hastagID`);

--
-- Indexes for table `rapor`
--
ALTER TABLE `rapor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `takip_eden`
--
ALTER TABLE `takip_eden`
  ADD PRIMARY KEY (`takipedenID`),
  ADD UNIQUE KEY `user_id` (`takipedenID`);

--
-- Indexes for table `takip_edilen`
--
ALTER TABLE `takip_edilen`
  ADD PRIMARY KEY (`takipID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_sinir`
--
ALTER TABLE `user_sinir`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `yonetim`
--
ALTER TABLE `yonetim`
  ADD PRIMARY KEY (`yonetimID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hastag`
--
ALTER TABLE `hastag`
  MODIFY `hastagID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `rapor`
--
ALTER TABLE `rapor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `takip_eden`
--
ALTER TABLE `takip_eden`
  MODIFY `takipedenID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `takip_edilen`
--
ALTER TABLE `takip_edilen`
  MODIFY `takipID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_sinir`
--
ALTER TABLE `user_sinir`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `yonetim`
--
ALTER TABLE `yonetim`
  MODIFY `yonetimID` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
