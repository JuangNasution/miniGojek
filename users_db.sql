-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2019 at 06:19 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `gofood_table`
--

CREATE TABLE `gofood_table` (
  `id` int(11) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL DEFAULT current_timestamp(),
  `pesanan` varchar(200) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `ongkos` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `voucher` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gofood_table`
--

INSERT INTO `gofood_table` (`id`, `uname`, `tanggal`, `jam`, `pesanan`, `tujuan`, `ongkos`, `total`, `voucher`) VALUES
(1, 'uname', '2019-10-26', '02:04:37', '', 'Medan Timur', 3000, 8000, ''),
(2, 'uname', '2019-10-26', '02:14:20', '1 Bakso\n0 Sate\n0Soto', 'Medan Barat', 4000, 9000, NULL),
(3, 'uname', '2019-10-26', '02:14:56', '1 Bakso\n0 Sate\n0Soto', 'Medan Barat', 3400, 8400, 'ongkir');

-- --------------------------------------------------------

--
-- Table structure for table `goride_table`
--

CREATE TABLE `goride_table` (
  `id` int(11) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `voucher` varchar(50) DEFAULT NULL,
  `biaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goride_table`
--

INSERT INTO `goride_table` (`id`, `uname`, `tanggal`, `jam`, `lokasi`, `tujuan`, `voucher`, `biaya`) VALUES
(1, 'abc', '0000-00-00', '00:00:00', 'Medan Timur', 'Medan Tengah', 'ovomdn', 2500),
(2, 'abc', '2019-10-24', '21:03:13', 'Medan Barat', 'Medan Tengah', '', 25000),
(3, 'abc', '2019-10-25', '21:03:45', 'Medan Barat', 'Medan Tengah', '', 25000),
(4, 'junst', '2019-10-25', '21:21:47', 'Medan Selatan', 'Medan Barat', 'ovomdn', 15000),
(5, 'abc', '2019-10-26', '01:31:35', 'Medan Barat', 'Medan Timur', '', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `image` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `FullName`, `username`, `password`, `phone`, `gender`, `image`) VALUES
(1, '', 'abc', '123', '', '', NULL),
(2, 'asvd', 'asdfe', '41212', '123', 'Male', NULL),
(4, 'juangnasution', 'junst', 'loawki77', '081237776631', 'Male', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gofood_table`
--
ALTER TABLE `gofood_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goride_table`
--
ALTER TABLE `goride_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gofood_table`
--
ALTER TABLE `gofood_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `goride_table`
--
ALTER TABLE `goride_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
