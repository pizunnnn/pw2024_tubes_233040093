-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 13, 2024 at 03:56 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pw2024_tubes_233040093`
--

-- --------------------------------------------------------

--
-- Table structure for table `hak akses`
--

CREATE TABLE `hak akses` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hak akses`
--

INSERT INTO `hak akses` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'pizun', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `isi wisata`
--

CREATE TABLE `isi wisata` (
  `id` int NOT NULL,
  `review tempat` varchar(255) NOT NULL,
  `tempat rekomendasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tempat wisata`
--

CREATE TABLE `tempat wisata` (
  `id` int NOT NULL,
  `halaman awal` varchar(255) NOT NULL,
  `nama tempat` varchar(255) NOT NULL,
  `nama jalan` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hak akses`
--
ALTER TABLE `hak akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isi wisata`
--
ALTER TABLE `isi wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempat wisata`
--
ALTER TABLE `tempat wisata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hak akses`
--
ALTER TABLE `hak akses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `isi wisata`
--
ALTER TABLE `isi wisata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tempat wisata`
--
ALTER TABLE `tempat wisata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `isi wisata`
--
ALTER TABLE `isi wisata`
  ADD CONSTRAINT `isi wisata_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tempat wisata` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tempat wisata`
--
ALTER TABLE `tempat wisata`
  ADD CONSTRAINT `tempat wisata_ibfk_1` FOREIGN KEY (`id`) REFERENCES `hak akses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
