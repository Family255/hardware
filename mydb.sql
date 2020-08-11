-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2020 at 07:25 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `item_name` varchar(112) NOT NULL,
  `item_quantity` int(112) NOT NULL,
  `item_price` int(100) NOT NULL,
  `total_amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `item_name`, `item_quantity`, `item_price`, `total_amount`) VALUES
(64, 0, 'mouse', 12, 12000, '144,000.00'),
(65, 0, 'printer (EPSON)', 1, 243000, '243,000.00'),
(66, 0, 'printer (EPSON)', 1, 243000, '243,000.00'),
(67, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(68, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(69, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(70, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(71, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(72, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(73, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(74, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(75, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(76, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(77, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(78, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(79, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(80, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(81, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(82, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(83, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(84, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(85, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(86, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(87, 0, 'mouse', 10, 12000, '120,000.00'),
(88, 0, 'mouse', 10, 12000, '120,000.00'),
(89, 0, 'mouse', 10, 12000, '120,000.00'),
(90, 0, 'mouse', 10, 12000, '120,000.00'),
(91, 0, 'mouse', 10, 12000, '120,000.00'),
(92, 0, 'hp elitebook', 2, 5600000, '11,200,000.00'),
(93, 0, 'hp elitebook', 2, 5600000, '11,200,000.00'),
(94, 0, 'hp elitebook', 1, 5600000, '5,600,000.00'),
(95, 0, 'APPLE 6+', 12, 1200000, '14,400,000.00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(11) NOT NULL,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` int(100) NOT NULL,
  `p_qty` int(100) NOT NULL,
  `p_status` varchar(112) NOT NULL,
  `tr_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  `payment_number` int(112) NOT NULL,
  `transaction_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `user_id`, `total_amount`, `payment_number`, `transaction_id`) VALUES
(36, 0, '144,000.00', 789453445, 0),
(37, 0, '243,000.00', 0, 0),
(38, 0, '5,600,000.00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_cat` varchar(112) NOT NULL,
  `product_brand` varchar(112) NOT NULL,
  `product_title` text NOT NULL,
  `product_price` int(112) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(3, '2', '1', 'hp elitebook', 5600000, 'RAM 4GB HDD 500MB\r\nMicropcessor Speed 2.3GHz\r\nintel CORE i7', 'picture\\laptop\\images (9).jpeg', 'hp laptop simple and portable PC\r\n\r\n'),
(4, '2', '1', 'printer (EPSON)', 243000, 'Printer for printing\r\nscanning\r\nPhotocopying\r\nPrinting Images/pictures\r\nInk printer\r\nLong life working Hour\r\nORIGINAL.........', 'picture\\printer\\images (15).jpeg', 'EPSON PRINTER JET208T TEXT\r\n'),
(5, '12', '4', 'APPLE 6+', 1200000, 'RAM 4 GB\r\nHDD 500MB\r\nMicroprocessor speed 2.7GHz\r\nintel dual core2', 'picture\\laptop\\images (4).jpeg', 'APPLE FOR EFFICIENT\r\nCOMPUTING'),
(6, '4', '2', 'mouse', 12000, 'wireless mouse\r\nportable\r\nsimple click button', 'picture\\computer mouse\\images (17).jpeg\r\n\r\n', 'SMALL MOUSE ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(112) NOT NULL,
  `password` varchar(112) NOT NULL,
  `email` varchar(50) NOT NULL,
  `CellPhone` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `CellPhone`) VALUES
(1, 'jimama', '1f6419b1cbe79c71410cb320fc094775', 'jimamababa@gmail.com', 621698480),
(2, 'makangu', 'c25e9a36b62f62f58f847fa83c70dc91', 'makambomakangu@', 756043563),
(3, 'makeja', '3f78fa1cdb0e2fda88c2a935950ffdf1', 'makejacome@gmail.com', 765896754);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
