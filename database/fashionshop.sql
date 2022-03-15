-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th3 15, 2022 lúc 05:35 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fashionshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `amount_discounts`
--

CREATE TABLE `amount_discounts` (
  `id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_details`
--

CREATE TABLE `cart_details` (
  `cart_id` int(11) NOT NULL,
  `clothing_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
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
-- Cấu trúc bảng cho bảng `clothes`
--

CREATE TABLE `clothes` (
  `id` int(11) NOT NULL,
  `status` enum('hide','active','delete') NOT NULL,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `sex` enum('men','women','kid','unisex') NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `clothes`
--

INSERT INTO `clothes` (`id`, `status`, `img`, `title`, `description`, `category`, `sex`, `price`, `quantity`) VALUES
(1, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_1.jpg?alt=media&token=1c3da31a-7bd5-4a27-8322-82c482887182', 'Collar Pleated Dress', 'Spend the brunch with your super gang in this neutral elegant piece. This midi dress is cut from pleated poly georgette. It has a peterpan collar neckline, sheer billowy three-quarter sleeves, and a toned buckle waist to balance the sweeping accordion ski', 5, 'women', 20, 0),
(2, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_2.jpg?alt=media&token=ab937868-8e65-48b1-82cc-06f811dc0672', 'Ethnic Maxi Dress', 'Red and blue floral print fit & flare dress V-neck', 5, 'women', 25, 0),
(3, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_3.jpg?alt=media&token=9d66edf6-ae60-49b6-9d29-793d5528554a', 'Neck Fit And Flared Dress', 'White floral print fit & flare dress Tie-up neck', 5, 'women', 25, 0),
(4, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_4.jpg?alt=media&token=16d4a0bc-b40f-43f8-bc12-a8c820074e82', 'Drop Dead Gorgeous Cocktail Dress', 'Drop Dead Gorgeous Cocktail Dress', 5, 'women', 25, 0),
(5, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_5.jpg?alt=media&token=aa2d5915-1bf9-4cf9-abe6-b1a83ed9a493', 'Women Classic Cream Colourblocked Tulle Dress', 'Look stunning when you wear this modish dress. Tailored with attractive shoulder straps and a sleeveless design, this dress will lend you a stylish look. ', 5, 'women', 25, 0),
(6, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/shoe_1.jpg?alt=media&token=e00fccae-2f4a-4ca6-9d2c-254653d5f25b', 'Nike Air Max 270 G', 'Look legendary in the Nike Air Max 270 G. The silhouette is a stitch-for-stitch reconstruction of the original big Air icon', 6, 'unisex', 250, 0),
(7, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/shoe_2.jpg?alt=media&token=4cf57221-bfb3-4bac-aa90-218ad06dd4ea', 'Nike Air Max Presto', 'Look legendary in the Nike Air Max 270 G. The silhouette is a stitch-for-stitch reconstruction of the original big Air icon', 6, 'unisex', 180, 0),
(8, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/shoe_3.jpg?alt=media&token=62002560-c0ce-49db-8ff9-e405fcacd57c', 'Kyrie Infinity', 'Look legendary in the Nike Air Max 270 G. The silhouette is a stitch-for-stitch reconstruction of the original big Air icon', 6, 'unisex', 220, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
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
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `clothing_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `percentage_discounts`
--

CREATE TABLE `percentage_discounts` (
  `id` int(11) NOT NULL,
  `percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
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
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `dateOfBirth`, `email`, `role`, `password`, `image`, `status`, `address`, `phone_no`) VALUES
(1, 'John Doe', '1996-04-16 00:00:00', 'johndue@gmail.com', 'client', '123456', NULL, 1, '88 Dong Khoi, District 1, HCM, Viet Nam', '0909909909'),
(2, 'Micheal Rechardo', '1996-04-16 00:00:00', 'mirechardo@gmail.com', 'client', '123456', NULL, 1, '188 Dong Khoi, District 1, HCM, Viet Nam', '0909990990'),
(3, 'Micheal William', '1996-04-16 00:00:00', 'miwill@gmail.com', 'client', '123456', NULL, 1, '189 Dong Khoi, District 1, HCM, Viet Nam', '0909912990'),
(4, 'Jason Rockie', '1996-04-16 00:00:00', 'rockie9090@gmail.com', 'client', '123456', NULL, 1, '289 Dong Khoi, District 1, HCM, Viet Nam', '0933912990'),
(5, 'Jason Samatham', '1996-04-16 00:00:00', 'Samatham090@gmail.com', 'client', '123456', NULL, 1, '289 Dong Khoi, District 1, HCM, Viet Nam', '0919912990');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `amount_discounts`
--
ALTER TABLE `amount_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`cart_id`,`clothing_id`),
  ADD KEY `clothing_id` (`clothing_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `voucher` (`voucher`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`clothing_id`),
  ADD KEY `clothing_id` (`clothing_id`);

--
-- Chỉ mục cho bảng `percentage_discounts`
--
ALTER TABLE `percentage_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `clothing_id` (`clothing_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `clothes`
--
ALTER TABLE `clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `amount_discounts`
--
ALTER TABLE `amount_discounts`
  ADD CONSTRAINT `amount_discounts_ibfk_1` FOREIGN KEY (`id`) REFERENCES `vouchers` (`id`);

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `cart_details_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `cart_details_ibfk_2` FOREIGN KEY (`clothing_id`) REFERENCES `clothes` (`id`);

--
-- Các ràng buộc cho bảng `clothes`
--
ALTER TABLE `clothes`
  ADD CONSTRAINT `clothes_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`voucher`) REFERENCES `vouchers` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`clothing_id`) REFERENCES `clothes` (`id`);

--
-- Các ràng buộc cho bảng `percentage_discounts`
--
ALTER TABLE `percentage_discounts`
  ADD CONSTRAINT `percentage_discounts_ibfk_1` FOREIGN KEY (`id`) REFERENCES `vouchers` (`id`);

--
-- Các ràng buộc cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`clothing_id`) REFERENCES `clothes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
