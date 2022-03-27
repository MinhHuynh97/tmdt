-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2022 at 08:29 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

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

--
-- Dumping data for table `amount_discounts`
--

INSERT INTO `amount_discounts` (`id`, `amount`) VALUES
(1, '5');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `brieft` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `cmt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `brieft`, `content`, `img`, `date`, `author`, `cmt`) VALUES
(1, 'GIRLS PINK T SHIRT ARRIVED IN STORE', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.   Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.   Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.   Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', './images/blog/blog-one.jpg', '2022-03-22 23:50:04', 'Annie Davis', ''),
(2, 'GIRLS PINK T SHIRT ARRIVED IN STORE1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.   Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.   Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.   Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', './images/blog/blog-two.jpg', '2022-03-23 00:39:08', 'Annie Davis', ''),
(3, 'GIRLS PINK T SHIRT ARRIVED IN STORE', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.   Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.   Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.   Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', './images/blog/blog-three.jpg', '2022-03-23 00:39:08', 'Annie Davis', ''),
(18, 'asd', 'asd', 'asf', './images/blog/c5.jpeg', '2022-03-25 02:08:19', 'Minh', 'ca');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fee` int(11) DEFAULT NULL,
  `war_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `fee`, `war_id`, `district_id`) VALUES
(26, 1, NULL, NULL, NULL),
(27, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `cart_id` int(11) NOT NULL,
  `clothing_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_details`
--

INSERT INTO `cart_details` (`cart_id`, `clothing_id`, `quantity`) VALUES
(26, 1, 6),
(26, 2, 4),
(26, 3, 1),
(26, 4, 1),
(26, 5, 1),
(26, 6, 1),
(26, 7, 1),
(27, 1, 1);

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
  `status` enum('hide','active','delete') DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `sex` enum('men','women','kid','unisex') DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`id`, `status`, `img`, `title`, `description`, `category`, `sex`, `price`, `quantity`) VALUES
(1, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_1.jpg?alt=media&token=1c3da31a-7bd5-4a27-8322-82c482887182', 'Collar Pleated Dress', 'Spend the brunch with your super gang in this neutral elegant piece. This midi dress is cut from pleated poly georgette. It has a peterpan collar neckline, sheer billowy three-quarter sleeves, and a toned buckle waist to balance the sweeping accordion ski', 5, 'women', 20, 10),
(2, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_2.jpg?alt=media&token=ab937868-8e65-48b1-82cc-06f811dc0672', 'Ethnic Maxi Dress', 'Red and blue floral print fit & flare dress V-neck', 5, 'women', 25, 20),
(3, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_3.jpg?alt=media&token=9d66edf6-ae60-49b6-9d29-793d5528554a', 'Neck Fit And Flared Dress', 'White floral print fit & flare dress Tie-up neck', 5, 'women', 25, 30),
(4, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_4.jpg?alt=media&token=16d4a0bc-b40f-43f8-bc12-a8c820074e82', 'Drop Dead Gorgeous Cocktail Dress', 'Drop Dead Gorgeous Cocktail Dress', 5, 'women', 25, 5),
(5, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_5.jpg?alt=media&token=aa2d5915-1bf9-4cf9-abe6-b1a83ed9a493', 'Women Classic Cream Colourblocked Tulle Dress', 'Look stunning when you wear this modish dress. Tailored with attractive shoulder straps and a sleeveless design, this dress will lend you a stylish look. ', 5, 'women', 25, 6),
(6, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/shoe_1.jpg?alt=media&token=e00fccae-2f4a-4ca6-9d2c-254653d5f25b', 'Nike Air Max 270 G', 'Look legendary in the Nike Air Max 270 G. The silhouette is a stitch-for-stitch reconstruction of the original big Air icon', 6, 'unisex', 250, 7),
(7, 'active', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/shoe_2.jpg?alt=media&token=4cf57221-bfb3-4bac-aa90-218ad06dd4ea', 'Nike Air Max Presto', 'Look legendary in the Nike Air Max 270 G. The silhouette is a stitch-for-stitch reconstruction of the original big Air icon', 6, 'unisex', 180, 8),
(8, 'active', '../images/c1.jpeg', 'Kyrie', 'as', 5, 'women', 200, 7),
(11, 'active', '../images/aothun.jpg', 'Ao thun', 'sdf', 5, 'women', 100, 2);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`) VALUES
(1442, 'Quận 1'),
(1443, 'Quận 2'),
(1444, 'Quận 3'),
(1446, 'Quận 4'),
(1447, 'Quận 5'),
(1448, 'Quận 6'),
(1449, 'Quận 7'),
(1450, 'Quận 8'),
(1451, 'Quận 9'),
(1452, 'Quận 10'),
(1453, 'Quận 11'),
(1454, 'Quận 12'),
(1455, 'Quận Tân Bình'),
(1457, 'Quận Phú Nhuận'),
(1459, 'Huyện Hóc Môn'),
(1460, 'Huyện Củ Chi'),
(1461, 'Quận Gò Vấp'),
(1462, 'Quận Bình Thạnh'),
(1533, 'Huyện Bình Chánh'),
(1534, 'Huyện Nhà Bè'),
(2090, 'Huyện Cần Giờ'),
(3695, 'Thủ Đức');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('confirmed','cancelled','completed','shipping') DEFAULT NULL,
  `voucher` int(11) DEFAULT NULL,
  `total` int(11) NOT NULL,
  `ghn_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `voucher`, `total`, `ghn_id`) VALUES
(1, 1, 'confirmed', 1, 2000, NULL),
(3, 1, 'shipping', NULL, 40, NULL),
(6, 1, NULL, NULL, 363, NULL),
(7, 1, NULL, NULL, 53, NULL),
(8, 1, NULL, NULL, 23, NULL),
(9, 1, NULL, NULL, 28, NULL),
(10, 1, NULL, NULL, 28, NULL),
(11, 1, NULL, NULL, 23, NULL),
(12, 1, NULL, NULL, 23, NULL),
(13, 1, NULL, NULL, 78, NULL),
(14, 1, NULL, NULL, 43, NULL),
(15, 1, NULL, NULL, 23, NULL),
(16, 1, NULL, NULL, 23, NULL),
(17, 1, NULL, NULL, 63, NULL),
(18, 1, NULL, NULL, 23, NULL),
(19, 1, NULL, NULL, 23, NULL),
(20, 1, NULL, NULL, 28, NULL),
(23, 1, 'confirmed', NULL, 23, 'ZYBHI');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `clothing_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `clothing_id`, `quantity`) VALUES
(1, 3, 3),
(1, 4, 5),
(3, 1, 2),
(6, 7, 2),
(7, 4, 2),
(8, 1, 1),
(9, 3, 1),
(10, 2, 1),
(11, 1, 1),
(12, 1, 1),
(13, 2, 3),
(14, 1, 2),
(15, 1, 1),
(16, 1, 1),
(17, 1, 3),
(18, 1, 1),
(19, 1, 1),
(20, 2, 1),
(23, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `thanh_vien` varchar(100) NOT NULL COMMENT 'thành viên thanh toán',
  `money` float NOT NULL COMMENT 'số tiền thanh toán',
  `note` varchar(255) DEFAULT NULL COMMENT 'ghi chú thanh toán',
  `vnp_response_code` varchar(255) NOT NULL COMMENT 'mã phản hồi',
  `code_vnpay` varchar(255) NOT NULL COMMENT 'mã giao dịch vnpay',
  `code_bank` varchar(255) NOT NULL COMMENT 'mã ngân hàng',
  `time` datetime NOT NULL COMMENT 'thời gian chuyển khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `thanh_vien`, `money`, `note`, `vnp_response_code`, `code_vnpay`, `code_bank`, `time`) VALUES
(1, '742874161', 'abc', 100000, 'chinh chuyển khoản', '00', '13401455', 'NCB', '2020-10-10 01:00:00'),
(2, '608324672', 'abc', 1000000, 'test chuyển khoản', '00', '13401811', 'NCB', '2020-10-11 21:00:00'),
(3, '1134065293', 'CT2', 150000, 'học phí', '00', '13407163', 'NCB', '2020-10-22 23:00:00'),
(4, '596509313', 'CT2', 5000000, 'học phí', '00', '13407176', 'NCB', '2020-10-23 00:00:00'),
(5, '70267166', 'CT2', 5000000, 'học phí', '00', '13407178', 'NCB', '2020-10-23 00:00:00'),
(6, '1672349048', 'CT1', 150000, 'học phí', '00', '13407729', 'NCB', '2020-10-23 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `percentage_discounts`
--

CREATE TABLE `percentage_discounts` (
  `id` int(11) NOT NULL,
  `percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `percentage_discounts`
--

INSERT INTO `percentage_discounts` (`id`, `percent`) VALUES
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `id` int(11) NOT NULL,
  `first` text DEFAULT NULL,
  `second` text DEFAULT NULL,
  `img1` text DEFAULT NULL,
  `img2` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`id`, `first`, `second`, `img1`, `img2`) VALUES
(1, 'The perfect addition to your capsule wardrobe ~ the Poppy Skirt in Black & Cream Polka is crafted from an easy wear fabrication, and features additional support around the waist for a smooth finish. Pair with the Poppy Top in Black & Cream Polka for a complete look.', 'The perfect addition to your capsule wardrobe ~ the Poppy Skirt in Black & Cream Polka is crafted from an easy wear fabrication, and features additional support around the waist for a smooth finish. Pair with the Poppy Top in Black & Cream Polka for a complete look.', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_1.jpg?alt=media&token=1c3da31a-7bd5-4a27-8322-82c482887182', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_1.jpg?alt=media&token=1c3da31a-7bd5-4a27-8322-82c482887182'),
(2, 'The perfect addition to your capsule wardrobe ~ the Poppy Skirt in Black & Cream Polka is crafted from an easy wear fabrication, and features additional support around the waist for a smooth finish. Pair with the Poppy Top in Black & Cream Polka for a complete look.', 'The perfect addition to your capsule wardrobe ~ the Poppy Skirt in Black & Cream Polka is crafted from an easy wear fabrication, and features additional support around the waist for a smooth finish. Pair with the Poppy Top in Black & Cream Polka for a complete look.', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_2.jpg?alt=media&token=ab937868-8e65-48b1-82cc-06f811dc0672', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_2.jpg?alt=media&token=ab937868-8e65-48b1-82cc-06f811dc0672'),
(3, 'The perfect addition to your capsule wardrobe ~ the Poppy Skirt in Black & Cream Polka is crafted from an easy wear fabrication, and features additional support around the waist for a smooth finish. Pair with the Poppy Top in Black & Cream Polka for a complete look.', 'The perfect addition to your capsule wardrobe ~ the Poppy Skirt in Black & Cream Polka is crafted from an easy wear fabrication, and features additional support around the waist for a smooth finish. Pair with the Poppy Top in Black & Cream Polka for a complete look.', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_3.jpg?alt=media&token=9d66edf6-ae60-49b6-9d29-793d5528554a', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_3.jpg?alt=media&token=9d66edf6-ae60-49b6-9d29-793d5528554a'),
(4, 'The perfect addition to your capsule wardrobe ~ the Poppy Skirt in Black & Cream Polka is crafted from an easy wear fabrication, and features additional support around the waist for a smooth finish. Pair with the Poppy Top in Black & Cream Polka for a complete look.', 'The perfect addition to your capsule wardrobe ~ the Poppy Skirt in Black & Cream Polka is crafted from an easy wear fabrication, and features additional support around the waist for a smooth finish. Pair with the Poppy Top in Black & Cream Polka for a complete look.', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_4.jpg?alt=media&token=16d4a0bc-b40f-43f8-bc12-a8c820074e82', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_4.jpg?alt=media&token=16d4a0bc-b40f-43f8-bc12-a8c820074e82'),
(5, 'The perfect addition to your capsule wardrobe ~ the Poppy Skirt in Black & Cream Polka is crafted from an easy wear fabrication, and features additional support around the waist for a smooth finish. Pair with the Poppy Top in Black & Cream Polka for a complete look.', 'The perfect addition to your capsule wardrobe ~ the Poppy Skirt in Black & Cream Polka is crafted from an easy wear fabrication, and features additional support around the waist for a smooth finish. Pair with the Poppy Top in Black & Cream Polka for a complete look.', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_5.jpg?alt=media&token=aa2d5915-1bf9-4cf9-abe6-b1a83ed9a493', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/women_5.jpg?alt=media&token=aa2d5915-1bf9-4cf9-abe6-b1a83ed9a493'),
(6, 'Forget all you thought you knew about Nike\'s signature Air Max; the Air Max 270 edition boasts the tallest heel counter the shoe has ever seen, informed by the ergonomic expertise of archive cuts to engineer a silhouette that\'s entirely new. A sock-like knitted upper sets an almond toe design, optimising breathability with mesh panels. The design features a classic lace fastening, a brand embossed tongue, a branded pull tab at the rear and the signature Nike swoosh to the side, an ultra-cushioned interior set upon a signature Nike Air sole with a translucent visible air unit.', 'Forget all you thought you knew about Nike\'s signature Air Max; the Air Max 270 edition boasts the tallest heel counter the shoe has ever seen, informed by the ergonomic expertise of archive cuts to engineer a silhouette that\'s entirely new. A sock-like knitted upper sets an almond toe design, optimising breathability with mesh panels. The design features a classic lace fastening, a brand embossed tongue, a branded pull tab at the rear and the signature Nike swoosh to the side, an ultra-cushioned interior set upon a signature Nike Air sole with a translucent visible air unit.', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/shoe_1.jpg?alt=media&token=e00fccae-2f4a-4ca6-9d2c-254653d5f25b', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/shoe_1.jpg?alt=media&token=e00fccae-2f4a-4ca6-9d2c-254653d5f25b'),
(7, 'Just like magic, you\'ll be in for something special. These Air Presto low-top sneakers from Nike are a casual and comfortable pair, that feel like you\'re walking in the clouds. Just like air', 'These styles are supplied by a premium sneaker marketplace. Stocking only the most sought-after footwear, they source and curate some of the most hard to find sneakers from around the world.', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/shoe_2.jpg?alt=media&token=4cf57221-bfb3-4bac-aa90-218ad06dd4ea', 'https://firebasestorage.googleapis.com/v0/b/iot-nodejs-server.appspot.com/o/shoe_2.jpg?alt=media&token=4cf57221-bfb3-4bac-aa90-218ad06dd4ea');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `clothing_id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `value`, `comment`, `user_id`, `clothing_id`, `date`) VALUES
(1, 4, 'Nice dress', 1, 1, '2022-03-22');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `STT` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`STT`, `id`, `date`, `time`, `name`, `email`, `review`) VALUES
(1, 1, '2022-03-26', '18:02:00', 'EUGEN', '', 'Sản phẩm rất hoàn hảo, đường may tỉ mỉ, tinh tế. Khi mang vào rất tôn dáng. Giá cả cũng phải chăng.'),
(2, 1, '2022-03-26', '18:02:00', 'EUGEN', '', 'Nhân viên shop phục vụ rất chu đáo, giải thích rõ ràng'),
(3, 1, '2022-03-26', '18:02:00', 'EUGEN', '', 'Mua vào dịp được giảm giá nên giá cả rất rẻ và phải chăng'),
(4, 2, '2022-03-26', '18:02:00', 'EUGEN', '', 'Sản phẩm rất hoàn hảo, đường may tỉ mỉ, tinh tế. Khi mang vào rất tôn dáng. Giá cả cũng phải chăng.'),
(5, 2, '2022-03-26', '18:02:00', 'EUGEN', '', 'Nhân viên shop phục vụ rất chu đáo, giải thích rõ ràng'),
(6, 2, '2022-03-26', '18:02:00', 'EUGEN', '', 'Mua vào dịp được giảm giá nên giá cả rất rẻ và phải chăng'),
(7, 3, '2022-03-26', '18:02:00', 'EUGEN', '', 'Sản phẩm rất hoàn hảo, đường may tỉ mỉ, tinh tế. Khi mang vào rất tôn dáng. Giá cả cũng phải chăng.'),
(8, 3, '2022-03-26', '18:02:00', 'EUGEN', '', 'Nhân viên shop phục vụ rất chu đáo, giải thích rõ ràng'),
(9, 3, '2022-03-26', '18:02:00', 'EUGEN', '', 'Mua vào dịp được giảm giá nên giá cả rất rẻ và phải chăng'),
(10, 4, '2022-03-26', '18:02:00', 'EUGEN', '', 'Sản phẩm rất hoàn hảo, đường may tỉ mỉ, tinh tế. Khi mang vào rất tôn dáng. Giá cả cũng phải chăng.'),
(11, 4, '2022-03-26', '18:02:00', 'EUGEN', '', 'Nhân viên shop phục vụ rất chu đáo, giải thích rõ ràng'),
(12, 4, '2022-03-26', '18:02:00', 'EUGEN', '', 'Mua vào dịp được giảm giá nên giá cả rất rẻ và phải chăng'),
(13, 5, '2022-03-26', '18:02:00', 'EUGEN', '', 'Sản phẩm rất hoàn hảo, đường may tỉ mỉ, tinh tế. Khi mang vào rất tôn dáng. Giá cả cũng phải chăng.'),
(14, 5, '2022-03-26', '18:02:00', 'EUGEN', '', 'Nhân viên shop phục vụ rất chu đáo, giải thích rõ ràng'),
(15, 5, '2022-03-26', '18:02:00', 'EUGEN', '', 'Mua vào dịp được giảm giá nên giá cả rất rẻ và phải chăng'),
(16, 6, '2022-03-26', '18:02:00', 'EUGEN', '', 'Giày đúng chính hãng, nhân viên nhiệt tình'),
(17, 6, '2022-03-26', '18:02:00', 'EUGEN', '', 'Nhân viên shop phục vụ rất chu đáo, giải thích rõ ràng'),
(18, 6, '2022-03-26', '18:02:00', 'EUGEN', '', 'Mua vào dịp được giảm giá nên giá cả rất rẻ và phải chăng'),
(19, 7, '2022-03-26', '18:02:00', 'EUGEN', '', 'Giày đúng chính hãng, nhân viên nhiệt tình'),
(20, 7, '2022-03-26', '18:02:00', 'EUGEN', '', 'Nhân viên shop phục vụ rất chu đáo, giải thích rõ ràng'),
(21, 7, '2022-03-26', '18:02:00', 'EUGEN', '', 'Mua vào dịp được giảm giá nên giá cả rất rẻ và phải chăng'),
(23, 7, '2022-03-27', '13:14:00', 'Hải', '', 'This is a test review '),
(25, 2, '2022-03-27', '13:22:00', 'Minh', '', 'This is test 2\n '),
(26, 1, '2022-03-27', '13:26:00', 'Minh', '', 'Testing review ');

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
  `phone_no` varchar(255) NOT NULL,
  `createdAt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `dateOfBirth`, `email`, `role`, `password`, `image`, `status`, `address`, `phone_no`, `createdAt`) VALUES
(1, 'Kohn Doe', '1996-04-16 00:00:00', 'johndue@gmail.com', 'client', '123456', NULL, 1, '88 Dong Khoi, District 1, HCM, Viet Nam', '0909179911', '2022-03-22'),
(2, 'Micheal Rechardo', '1996-04-16 00:00:00', 'mirechardo@gmail.com', 'client', '123456', NULL, 1, '188 Dong Khoi, District 1, HCM, Viet Nam', '0909990990', '2022-03-22'),
(3, 'Micheal William', '1996-04-16 00:00:00', 'miwill@gmail.com', 'client', '123456', NULL, 1, '189 Dong Khoi, District 1, HCM, Viet Nam', '0909912990', '2022-03-22'),
(4, 'Jason Rockie', '1996-04-16 00:00:00', 'rockie9090@gmail.com', 'client', '123456', NULL, 1, '289 Dong Khoi, District 1, HCM, Viet Nam', '0933912990', '2022-03-22'),
(5, 'Jason Samatham', '1996-04-16 00:00:00', 'Samatham090@gmail.com', 'client', '123456', NULL, 1, '289 Dong Khoi, District 1, HCM, Viet Nam', '0919912990', '2022-03-22'),
(6, 'Minh', '2022-03-01 00:00:00', 'minh@gmail.com', 'admin', '123456', NULL, 1, 'TPHCM', '0909179911', '2022-03-22');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog`
--

CREATE TABLE `user_blog` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `role` enum('author','reader') NOT NULL,
  `content` text NOT NULL,
  `name` varchar(20) NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_blog`
--

INSERT INTO `user_blog` (`id`, `blog_id`, `role`, `content`, `name`, `date`) VALUES
(1, 1, 'author', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Annie Davis', '2022-03-23 02:39:49'),
(2, 2, 'author', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'JANIS GALLAGHER', '2022-03-23 02:39:49'),
(3, 3, 'author', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Mac Doe', '2022-03-23 02:39:49'),
(4, 1, 'reader', 'Nice', 'Minh', '2022-03-23 02:39:49'),
(5, 1, 'reader', 'Hay', 'Huynh', '2022-03-23 02:39:49'),
(7, 1, 'reader', '123', 'Minh', '2022-03-23 02:39:49'),
(13, 1, 'reader', 'hay', 'Hien', '2022-03-24 14:30:30'),
(14, 2, 'reader', 'asd', 'Nam', '2022-03-24 14:31:03'),
(15, 3, 'reader', 'hay', 'Hien', '2022-03-24 14:31:30');

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
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `code`, `start_time`, `end_time`, `quantity`) VALUES
(1, '123456', '2022-03-19 00:00:00', '2022-03-23 00:00:00', 5),
(2, '123457', '2022-03-14 00:00:00', '2022-03-25 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `war`
--

CREATE TABLE `war` (
  `id` int(11) NOT NULL,
  `id_district` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `war`
--

INSERT INTO `war` (`id`, `id_district`, `name`) VALUES
(20102, 1442, 'Phường Bến Thành'),
(20106, 1442, 'Phường Đa Kao'),
(20107, 1442, 'Phường Nguyễn Cư Trinh'),
(20108, 1442, 'Phường Nguyễn Thái Bình'),
(20109, 1442, 'Phường Phạm Ngũ Lão'),
(20110, 1442, 'Phường Tân Định'),
(22012, 1533, 'Xã Tân Kiên'),
(22013, 1533, 'Xã Tân Nhựt'),
(22014, 1533, 'Xã Tân Quý Tây'),
(22015, 1533, 'Xã Vĩnh Lộc A'),
(22016, 1533, 'Xã Vĩnh Lộc B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amount_discounts`
--
ALTER TABLE `amount_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `district_id_cart` (`district_id`),
  ADD KEY `war_id_cart` (`war_id`);

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
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `percentage_discounts`
--
ALTER TABLE `percentage_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `clothing_id` (`clothing_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`STT`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_blog`
--
ALTER TABLE `user_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `war`
--
ALTER TABLE `war`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_district_` (`id_district`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clothes`
--
ALTER TABLE `clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_blog`
--
ALTER TABLE `user_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `war`
--
ALTER TABLE `war`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22017;

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
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `district_id_cart` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`),
  ADD CONSTRAINT `war_id_cart` FOREIGN KEY (`war_id`) REFERENCES `war` (`id`);

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
-- Constraints for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `product_detail_ibfk_1` FOREIGN KEY (`id`) REFERENCES `clothes` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`clothing_id`) REFERENCES `clothes` (`id`);

--
-- Constraints for table `user_blog`
--
ALTER TABLE `user_blog`
  ADD CONSTRAINT `id_blogs_referrals` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`);

--
-- Constraints for table `war`
--
ALTER TABLE `war`
  ADD CONSTRAINT `id_district_` FOREIGN KEY (`id_district`) REFERENCES `districts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
