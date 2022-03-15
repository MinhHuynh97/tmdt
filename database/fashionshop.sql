-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2022 at 01:47 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashionshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `amount_discounts`
--

CREATE TABLE `amount_discounts` (
  `id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `cart_id` int(11) NOT NULL,
  `clothing_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'sportwear'),
(2, 'fashion'),
(3, 'household'),
(4, 'bag'),
(5, 'clothing'),
(6, 'shoe');

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE `clothes` (
  `id` int(11) NOT NULL,
  `status` enum('hide','active','delete') NOT NULL,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `sex` enum('men','women','kid','unisex') NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`id`, `status`, `img`, `title`, `description`, `category`, `sex`, `price`) VALUES
(1, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_1.jpg?alt=media&token=1c3da31a-7bd5-4a27-8322-82c482887182', 'Collar Pleated Dress', 'Spend the brunch with your super gang in this neutral elegant piece. This midi dress is cut from pleated poly georgette. It has a peterpan collar neckline, sheer billowy three-quarter sleeves, and a toned buckle waist to balance the sweeping accordion ski', 5, 'women', 20),
(2, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_2.jpg?alt=media&token=ab937868-8e65-48b1-82cc-06f811dc0672', 'Ethnic Maxi Dress', 'Red and blue floral print fit & flare dress V-neck', 5, 'women', 25),
(3, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_3.jpg?alt=media&token=9d66edf6-ae60-49b6-9d29-793d5528554a', 'Neck Fit And Flared Dress', 'White floral print fit & flare dress Tie-up neck', 5, 'women', 25),
(4, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_4.jpg?alt=media&token=16d4a0bc-b40f-43f8-bc12-a8c820074e82', 'Drop Dead Gorgeous Cocktail Dress', 'Drop Dead Gorgeous Cocktail Dress', 5, 'women', 25),
(5, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_5.jpg?alt=media&token=aa2d5915-1bf9-4cf9-abe6-b1a83ed9a493', 'Women Classic Cream Colourblocked Tulle Dress', 'Look stunning when you wear this modish dress. Tailored with attractive shoulder straps and a sleeveless design, this dress will lend you a stylish look. ', 5, 'women', 25),
(6, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/shoe_1.jpg?alt=media&token=e00fccae-2f4a-4ca6-9d2c-254653d5f25b', 'Nike Air Max 270 G', 'Look legendary in the Nike Air Max 270 G. The silhouette is a stitch-for-stitch reconstruction of the original big Air icon', 6, 'unisex', 250),
(7, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/shoe_2.jpg?alt=media&token=4cf57221-bfb3-4bac-aa90-218ad06dd4ea', 'Nike Air Max Presto', 'Look legendary in the Nike Air Max 270 G. The silhouette is a stitch-for-stitch reconstruction of the original big Air icon', 6, 'unisex', 180),
(8, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/shoe_3.jpg?alt=media&token=62002560-c0ce-49db-8ff9-e405fcacd57c', 'Kyrie Infinity', 'Look legendary in the Nike Air Max 270 G. The silhouette is a stitch-for-stitch reconstruction of the original big Air icon', 6, 'unisex', 220);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('confirmed','cancelled','completed','shipping') DEFAULT NULL,
  `voucher` int(11) DEFAULT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `clothing_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `percentage_discounts`
--

CREATE TABLE `percentage_discounts` (
  `id` int(11) NOT NULL,
  `percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `clothing_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20220302020516-create-user.js'),
('20220302020517-create-category.js'),
('20220302020518-voucher.js'),
('20220302020520-create-percentage-discount.js'),
('20220302020521-create-amount-discount.js'),
('20220302023042-create-clothing.js'),
('20220302083707-create-cart.js'),
('20220302083708-create-order.js'),
('20220302083851-create-rating.js'),
('20220302140743-create-cart-detail.js'),
('20220302140908-create-order-detail.js');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateOfBirth` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('client','admin') NOT NULL DEFAULT 'client',
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `address` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `dateOfBirth`, `email`, `role`, `password`, `image`, `status`, `address`, `phone_no`) VALUES
(1, 'John Doe', '1996-04-16 00:00:00', 'johndue@gmail.com', 'client', '123456', NULL, 1, '88 Dong Khoi, District 1, HCM, Viet Nam', '0909909909'),
(2, 'Micheal Rechardo', '1996-04-16 00:00:00', 'mirechardo@gmail.com', 'client', '123456', NULL, 1, '188 Dong Khoi, District 1, HCM, Viet Nam', '0909990990'),
(3, 'Micheal William', '1996-04-16 00:00:00', 'miwill@gmail.com', 'client', '123456', NULL, 1, '189 Dong Khoi, District 1, HCM, Viet Nam', '0909912990'),
(4, 'Jason Rockie', '1996-04-16 00:00:00', 'rockie9090@gmail.com', 'client', '123456', NULL, 1, '289 Dong Khoi, District 1, HCM, Viet Nam', '0933912990'),
(5, 'Jason Samatham', '1996-04-16 00:00:00', 'Samatham090@gmail.com', 'client', '123456', NULL, 1, '289 Dong Khoi, District 1, HCM, Viet Nam', '0919912990');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amount_discounts`
--
ALTER TABLE `amount_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`cart_id`,`clothing_id`),
  ADD KEY `clothing_id` (`clothing_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `voucher` (`voucher`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`clothing_id`),
  ADD KEY `clothing_id` (`clothing_id`);

--
-- Indexes for table `percentage_discounts`
--
ALTER TABLE `percentage_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `clothing_id` (`clothing_id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clothes`
--
ALTER TABLE `clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `amount_discounts`
--
ALTER TABLE `amount_discounts`
  ADD CONSTRAINT `amount_discounts_ibfk_1` FOREIGN KEY (`id`) REFERENCES `vouchers` (`id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `cart_details_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `cart_details_ibfk_2` FOREIGN KEY (`clothing_id`) REFERENCES `clothes` (`id`);

--
-- Constraints for table `clothes`
--
ALTER TABLE `clothes`
  ADD CONSTRAINT `clothes_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`voucher`) REFERENCES `vouchers` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`clothing_id`) REFERENCES `clothes` (`id`);

--
-- Constraints for table `percentage_discounts`
--
ALTER TABLE `percentage_discounts`
  ADD CONSTRAINT `percentage_discounts_ibfk_1` FOREIGN KEY (`id`) REFERENCES `vouchers` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`clothing_id`) REFERENCES `clothes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
