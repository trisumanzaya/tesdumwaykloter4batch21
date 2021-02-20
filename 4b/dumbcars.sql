-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2021 at 03:40 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dumbcars`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'Toyota'),
(2, 'Honda'),
(3, 'Daihatsu'),
(4, 'Nissan'),
(7, 'Datsun');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand_id` int(100) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `color` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `create_time` time(6) NOT NULL,
  `update_time` time(6) NOT NULL,
  `stock` int(100) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `brand_id`, `image`, `color`, `description`, `create_time`, `update_time`, `stock`, `price`) VALUES
(1, 'Xenia', 3, 'https://cms.daihatsu.co.id/uploads/product/performance_image%201587972102656.png', 'white', 'Model: Daihatsu Xenia\r\nDimensi: 4.190 mm P x 1.660 mm L x 1.695 mm T\r\nSistem penggerak roda: Penggerak roda belakang\r\nUkuran velg: 14\" diameter, 5\" lebar\r\nKapasitas tangki BBM: 45 l', '00:00:00.000000', '00:00:00.000000', 3, 'Rp 208.000.000'),
(2, 'Terios', 3, 'http://p.ipricegroup.com/uploaded_b2917d1e25bb4ab4e95b27c83fd2af5d.jpg', 'Bronze Metalic', 'Dimensi: 4.435 mm P x 1.695 mm L x 1.705 mm T\r\nMerek: Daihatsu\r\nKapasitas tangki BBM: 45 l\r\nUkuran velg: 16-17\" diameter, 6\" lebar', '00:00:00.000000', '00:00:00.000000', 2, 'Rp 214.000.000'),
(3, 'Civic', 2, 'https://d2pa5gi5n2e1an.cloudfront.net/id/images/car_models/Honda_Civic/10/exterior/exterior_2L_1.jpg', 'Black', 'Dimensi: 4.501-4.648 mm P x 2.076 mm L x 1.418-1.434 mm T\r\nKapasitas tangki BBM: 46 sampai 47 l\r\nMesin: 1,5L 4-silinder, 2L 4-silinder', '00:00:00.000000', '00:00:00.000000', 3, 'Rp 499.000.000'),
(4, 'Accord', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTa4Pn9c2-Ivxn6SA_chItirQRHDn3M_f1qg&usqp=CAU', 'Red', 'Harga: Mulai Rp 729,6 juta\r\nDimensi: 4.894 mm P x 1.862 mm L x 1.450 mm T\r\nKapasitas tangki BBM: 56 l\r\nMerek: Honda\r\nUkuran velg: 18\" diameter, 8\" lebar\r\nDaya kuda: 190 HP', '00:00:00.000000', '00:00:00.000000', 2, 'Rp 729.000.000'),
(5, 'Fortuner', 1, 'https://cdn.rentalmobilbali.net/wp-content/uploads/2020/10/Harga-Fortuner-Baru-Feature-Image.jpg', 'White', 'Dimensions: 4,795 mm L x 1,855 mm W x 1,835 mm H\r\nMake: Toyota\r\nHorsepower: 150 to 163 hp\r\nEngine: 4-cylinder diesel, 4-cylinder', '00:00:00.000000', '00:00:00.000000', 5, 'Rp509.000.000'),
(8, 'datsun', 7, 'https://imgd.aeplcdn.com/664x374/cw/ec/36449/Datsun-Go-Exterior-138944.jpg?wm=0&q=85', 'Orange', 'Performa: 67 Hp (tenaga), 104 Nm (torsi)\r\nDimensi: 3.788 mm (panjang), 1.636 mm (lebar), 1.507 mm (tinggi)\r\nJenis ban: Radial.', '00:00:00.000000', '00:00:00.000000', 3, 'Rp. 120.000.000'),
(9, 'datsun', 7, 'https://imgd.aeplcdn.com/664x374/cw/ec/36449/Datsun-Go-Exterior-138944.jpg?wm=0&q=85', 'Orange', 'Performa: 67 Hp (tenaga), 104 Nm (torsi)\r\nDimensi: 3.788 mm (panjang), 1.636 mm (lebar), 1.507 mm (tinggi)\r\nJenis ban: Radial.', '00:00:00.000000', '00:00:00.000000', 3, 'Rp. 120.000.000');

-- --------------------------------------------------------

--
-- Table structure for table `costumer`
--

CREATE TABLE `costumer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `costumer`
--

INSERT INTO `costumer` (`id`, `name`, `email`, `address`) VALUES
(1, 'depri', 'depri@gmail.com', 'baradatu, waykanan, lampung'),
(2, 'joko', 'joko@gmail.com', 'umbulkapuk,lampung selatan'),
(3, 'painem', 'painem@gmail.com', 'umbulkurung,natar, lampung selatan'),
(4, 'karjo', 'karjo@gmail.com', 'kampungcina,lampung'),
(5, 'adit', 'adit@gmail.com', 'umbulkurung, bandar lampung'),
(6, 'rock', 'trisumanzaya93@gmail.com', 'waykanan'),
(7, 'bejo', 'bejo@gmail.com', 'kampung cina, bandar lampung');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pasword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pasword`) VALUES
(1, 'defriansyah', 'defriansyah@gmail.com', 'qwerty'),
(2, 'yoga', 'yoga@gmail.com', '123456'),
(3, 'aris', 'aris@gmail.com', 'zxcvbnm'),
(4, 'yosi', 'yosi@gmail.com', 'ytrewq'),
(9, 'koplo', 'ayizaya@gmail.com', ''),
(10, 'rock', 'trisumanzaya93@gmail.com', '098765'),
(0, 'purnomo', 'purnomo@gmail.com', 'mnbvcxz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `costumer`
--
ALTER TABLE `costumer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `costumer`
--
ALTER TABLE `costumer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
