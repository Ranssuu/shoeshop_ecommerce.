-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2023 at 01:25 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoeshop_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_tbl`
--

CREATE TABLE `cart_tbl` (
  `userID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `productCat` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productPrice` varchar(255) NOT NULL,
  `productQty` varchar(255) NOT NULL,
  `productDes` varchar(255) NOT NULL,
  `productImg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_tbl`
--

INSERT INTO `cart_tbl` (`userID`, `productID`, `productCat`, `productName`, `productPrice`, `productQty`, `productDes`, `productImg`) VALUES
(5, 10, 'Adidas', 'Adidas 20k', '6000', '2', 'Adidas Shoes', '74947.jpg'),
(5, 7, 'Nike', 'Nike BB', '4400', '5', 'Nike BB', '59713.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products_tbl`
--

CREATE TABLE `products_tbl` (
  `productID` int(11) NOT NULL,
  `productCat` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productDes` varchar(255) NOT NULL,
  `productPrice` int(11) NOT NULL,
  `productQty` int(11) NOT NULL,
  `productImg` varchar(255) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_tbl`
--

INSERT INTO `products_tbl` (`productID`, `productCat`, `productName`, `productDes`, `productPrice`, `productQty`, `productImg`, `userID`) VALUES
(6, 'Nikey', 'Nikey 1000', 'Nike Shoes v5', 5000, 2, '77349.jpg', 0),
(7, 'Nike', 'Nike BB', 'Nike BB', 4400, 5, '59713.jpg', 0),
(8, 'New Balance', 'New Balance 1UP', 'New Balance One Up v1', 6000, 6, '37927.jpg', 0),
(10, 'Adidas', 'Adidas 20k', 'Adidas Shoes', 6000, 2, '74947.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `userID` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`userID`, `fullname`, `username`, `email`, `phone`, `address`, `city`, `password`, `pword`) VALUES
(5, 'ransuu tsumara', 'ransuu', 'ransuutsumara@gmail.com', '09876541320', 'Arellano Street', 'Manila', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e'),
(6, 'Lance Tumala', 'lanzester', 'lanzester@gmail.com', '09876543212', 'Arellano Street', 'Manila', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products_tbl`
--
ALTER TABLE `products_tbl`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products_tbl`
--
ALTER TABLE `products_tbl`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
