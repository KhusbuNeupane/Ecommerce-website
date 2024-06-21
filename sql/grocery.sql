-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2018 at 04:26 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`, `confirmCode`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '6464651', 'Jhapa', 'admin@001', 'admin', '789456'),
(2, 'Dipika', 'Bhattarai', 'deepikabhattarai569@gmail.com', '9807973589', 'Birtamode', 'Dipika@569', 'admin', '131527'),
(3, 'Khusbu', 'Neupane', 'khusbuneupane08@gmail.com', '9824011642', 'Birtamode', 'Khusbu@011642', 'admin', '139474');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `uid`, `pid`, `quantity`) VALUES
(11, 2, 12, 0),
(12, 0, 46, 0),
(15, 43, 47, 0),
(19, 42, 54, 0),
(20, 42, 53, 0),
(21, 0, 47, 0),
(22, 0, 99, 0),
(23, 46, 81, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` date NOT NULL,
  `ddate` date NOT NULL,
  `delivery` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `piece` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `piece`, `description`, `available`, `category`, `type`, `item`, `pCode`, `picture`) VALUES
(77, 'RARA Instant Noodles (Pack of 12)', 240, 12, 100, 'noodles', 'aa', 'rara.PNG'),
(78, ' Preeti Noodles Meal Pack 6pcs', 120, 6, '6pcs', 100, '', '', 'noodles', 'bb', 'preeti.PNG'),
(79, '2PM Akabare Chicken flavour hot n spicy noodles', 200, 6, '100g/pack ', 100, '', '', 'noodles', 'cc', '2pm.PNG'),
(80, 'Current Hot and Spicy Noodles', 250, 5, '175g set of 5pcs', 100, '', '', 'noodles', 'dd', '	currentnoodles.PNG'),
(81, 'Rumpum Instant Noodles Veg and Non-veg', 50, 2, '70g 2pcs', 100, 'noodles', 'ee', 'rumpum.PNG'),
(82, 'Wai Wai Instant Noodles, Chicken Flavor', 120, 6, '75g /packs', 100, '', '', 'noodles', 'ff', 'waiwai.PNG'),
(83, 'Magic Sarap 4packs', 185, 4, '8g set of 4', 100, '', '', 'seasoning', 'qq', '1539232659.PNG'),
(84, 'Real Fruit Juice (Guava, Mango, Mix, pomegranat', 230, 5, '1L 5pcs', 100, '', '', 'drink', 'qwe', 'realjuice.PNG'),
(85, 'Fruit Gems Drink 250ml', 90, 12, '250ml 12pcs', 100, '', '', 'drink', 'qwer', 'fruitgems.PNG'),
(86, 'Fanta 1 Litre Pack of 6', 160, 6, '1ltr/6 bottles', 100, '', '', 'drink', 'qwrt', 'fanta.PNG'),
(87, 'Coke 1.5L  6bottles', 290, 6, 'coke 1.5L', 100, '', '', 'drink', 'ryrty', 'coke.PNG'),
(88, 'Coke 1.5L  5bottles', 290, 5, 'coke 1.5L 5B', 100, '', '', 'drink', 'mnb', '1539405194.jpg'),
(90, 'Sprite 2.25L   5bottless', 260, 5, '2.25L/5bottles', 100, '', '', 'drink', 'ads', 'Sprite-2.webp'),
(91, 'Pran Potata Spicy Biscuits', 120, 2, ' 2 Packs of 100 Grams Each', 100, '', 'other', 'snack', 'asdaa', 'potata.PNG'),
(92, 'Current Cheese Balls ', 40, 10, 'White 60g/packs', 100, '', 'other', 'snack', 'adf', 'cheeseballs.PNG'),
(93, 'Kurkure Masala Munch ', 100, 2, 'Kurkure Masala Munch ', 100, '', '', 'snack', 'gfhjgj', 'kurkure.PNG'),
(94, 'Doritos Hot & Spicy', 120, 7, 'Mix Variety Pack 200g', 100, '', '', 'snack', 'lkfjd', 'doritos.PNG'),
(95, 'Lays', 680, 9, 'Yellow,green,blue 9packs/3sets 30g each', 100, '', '', 'snack', 'lk', 'lays.PNG'),
(96, 'Dairy Milk Silk  ', 140, 3, '3sets 137g', 100, '', '', 'sweet', 'po', 'dairymilk.PNG'),
(97, 'kitkat ', 160, 4, 'kitkat bars', 100, '', '', 'sweet', 'n', 'kitkat.PNG'),
(98, 'Snickers Bar', 150, 8, 'Snickers Bar Peanut, Kesar pista, Almond 45g /8set..', 100, '', '', 'sweet', 'b', 'snickers.PNG'),
(99, 'Pantene Pro-V Shampoo And Conditioner (38 Oz)', 899, 2, '600ml', 100, '', 'other', 'shampoo', 'r', 'Pantene.PNG'),
(100, 'Sunsilk Shampoo 340ml', 300, 4, '4sets 340ml', 100, '', '', 'shampoo', 'v', 'sunsilk.png'),
(101, 'Head and Shoulders shampoo 180ml ', 250, 1, '1set 180ml', 100, '', '', 'shampoo', 'e', 'headandshoulders.PNG'),
(102, 'Dettol Original Soap 75g', 60, 6, '75g Pack of 6', 100, '', '', 'soap', 'a', 'dettol.PNG'),
(103, 'dove bar soap 3sets 100g', 220, 3, '3sets 100g', 100, '', '', 'soap', 'nl', '1539660980.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(120) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `confirmCode`, `activation`) VALUES
(1, 'Khusbu', 'Neupane', 'khusbuneupane08@gmail.com', '9807973589', 'Birtamode', '$2y$10$ErKn21Lwbv8xDAboCRIwee7qeuAy8CRVZA.oQwv0Ltk...', '0', 'yes'),
(2, 'gaurab', 'shrestha', 'gaurabstha444@gmail.com', '9811235909', 'bharatpur-20', '$2y$10$ekWoIf5H/YU.RkSiQl6JlOJ7IXWfkanxBvqw7QNjbZi...', '289477', 'no'),
(3, 'Dipika', 'Bhattarai', 'deepikabhattarai569@gmail.com', '+9779824011642', 'Bhadrapur', '$2y$10$qqpTpf0Q87ms3GGCPn5TX.CEgIokYYxdlPkt/Dbu4Rg...', '0', 'yes'),
(4, 'Khusbu', 'Neupane', 'khusbuneupane022@gmail.com', '9824011642', 'Bhadrapur', '$2y$10$fEnwbJ.OXaa0GD1F.fnCUOA0sc9dLA5QV/3z9TNY1Mh...', '0', 'yes'),
(5, 'Sijala', 'Bhattarai', 'sijala@gmail.com', '9815038804', 'birtamode', '$2y$10$DLcJA7fAnMq8iNtsn4ibe.dxumjYU7lsFtOM.S4gRsv...', '0', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
