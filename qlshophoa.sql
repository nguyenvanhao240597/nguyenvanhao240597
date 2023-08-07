-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2023 at 06:15 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlshophoa`
--

-- --------------------------------------------------------

--
-- Table structure for table `chude`
--

CREATE TABLE `chude` (
  `macd` varchar(5) NOT NULL,
  `tencd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chude`
--

INSERT INTO `chude` (`macd`, `tencd`) VALUES
('CD01', 'Hoa cúng mày'),
('CD02', 'Hoa tình yêu'),
('CD03', 'Hoa cưới'),
('CD04', 'Hoa khai trương'),
('CD05', 'Hoa giảm giá'),
('CD07', 'Hoa mùa thu'),
('CD08', 'Hoa mùa hạ'),
('CD09', 'Hoa mùa đông'),
('H006', 'Hoa tết');

-- --------------------------------------------------------

--
-- Table structure for table `hoa`
--

CREATE TABLE `hoa` (
  `mahoa` varchar(10) NOT NULL,
  `tenhoa` varchar(50) NOT NULL,
  `macd` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `giaban` varchar(10) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `hinh` varchar(30) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `hoa`
--

INSERT INTO `hoa` (`mahoa`, `tenhoa`, `macd`, `giaban`, `mota`, `hinh`) VALUES
('99', 'Hoa hồng xanh trắng111', 'CD03', '520000', 'hoa giả nha', 'images/H04.jpg'),
('CD10', 'Hoa hồng xanh trắng', 'CD03', '520000', 'hoa giả nha', 'images/H04.jpg'),
('CD11', 'Hoa hồng xanh đen', 'CD02', '520000', 'hoa giả nha', 'images/H01.jpg'),
('H001', 'Hoa hồng xanh', 'CD02', '500000', 'hoa giả nha', 'images/H03.jpg'),
('H002', 'Yêu kiều', 'CD01', '290000', 'Bó hoa gồm có: 15 bông hồng kem pastel, Hoa thạch thảo trắng, Các loại lá phụ khác', 'images/H02.jpg'),
('H003', 'Tuổi hồng', 'CD01', '380000', 'Bó hoa gồm có: hoa cẩm chướng hồng và Các loại lá phụ khác', 'images/h05.jpg'),
('H004', 'Giấc mơ ngọt ngào', 'CD02', '500000', 'Bó hoa gồm có: 15 bông hồng kem pastel, Hoa baby trắng, Các loại lá phụ khác', 'images/H06.jng'),
('H005', 'Chung đôi', 'CD02', '870000', 'Bó hoa gồm có: 50 hồng đỏ, hoa baby viền xung quanh', 'images/H07.jpg'),
('H006', 'Only You', 'CD02', '470000', 'Bó hoa gồm có: 15 hoa hồng xanh dương, hoa baby viền xung quanh', 'images/H08.jpg'),
('H007', 'Vạn lộc', 'CD04', '900000', 'Lẵng hoa khai trương Vạn Lộc gồm có: Sen thái trắng, Hoa hướng dương, Hồng vàng, Lan mokara, Hồng môn xanh', 'images/H09.jpg'),
('H008', 'Chúc thành công', 'CD04', '850000', 'Mẫu hoa gồm có: Hồng pastel, Hồng trắng, Thủy tiên, Green Wicky, Cúc trắng', 'images/H10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `Id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`Id`, `name`, `pass`) VALUES
(1, 'admin', '123'),
(2, 'Phuc', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chude`
--
ALTER TABLE `chude`
  ADD PRIMARY KEY (`macd`);

--
-- Indexes for table `hoa`
--
ALTER TABLE `hoa`
  ADD PRIMARY KEY (`mahoa`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
