-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 02, 2023 at 12:53 PM
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
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(6, 'Zadidul Ahmed', 'Zadidul');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `heading1` varchar(255) NOT NULL,
  `heading2` varchar(255) NOT NULL,
  `btn_txt` varchar(255) DEFAULT NULL,
  `btn_link` varchar(55) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `order_no` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `heading1`, `heading2`, `btn_txt`, `btn_link`, `image`, `order_no`, `status`) VALUES
(1, 'ZAK apple store', 'the best way to buy the apple products you love', 'Share Now', 'cart.php', '724360962_360477.jpg', 2, 1),
(2, 'ZAK apple store', 'the best way to buy the apple products you love', '', '', '163630926_2.png', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(5, 'iphone', 1),
(6, 'Ipad', 1),
(7, 'iwatch', 1),
(8, 'Accessories', 1),
(9, 'MAC', 1),
(10, 'Airpods', 1);

-- --------------------------------------------------------

--
-- Table structure for table `color_master`
--

CREATE TABLE `color_master` (
  `id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `color_master`
--

INSERT INTO `color_master` (`id`, `color`, `status`) VALUES
(7, 'Red', 1),
(8, 'White', 1),
(9, 'Coral', 1),
(10, 'Black', 1),
(11, 'Blue', 1),
(13, 'Green', 1),
(14, 'yellow', 1),
(15, 'purple', 1),
(16, 'Gold', 1),
(17, 'Space Gray', 1),
(18, 'Silver', 1),
(19, 'Midnight Green', 1),
(20, 'Graphite', 1),
(21, 'pacific blue', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'Vishal', 'vishal@gmail.com', '1234567890', 'Test Query', '2020-01-14 00:00:00'),
(2, 'vishal@gmail.com', '', '1234567890', 'testing', '2020-01-19 07:59:38'),
(3, 'Vishal', 'vishal@gmail.com', '1234567890', 'testing', '2020-01-19 08:00:09'),
(4, 'test', 'test@gmail.com', '9990413778', 'test', '2020-05-01 09:21:37'),
(5, 'farjana', 'resh6reshma@gmail.com', '7780747497', 'lovely product', '2023-05-28 04:33:28'),
(6, 'zr', 'zr@gmail.com', '7780747497', 'zara', '2023-05-31 12:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_master`
--

CREATE TABLE `coupon_master` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_type` varchar(10) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `coupon_master`
--

INSERT INTO `coupon_master` (`id`, `coupon_code`, `coupon_value`, `coupon_type`, `cart_min_value`, `status`) VALUES
(4, 'First20', 10, 'Rupee', 70000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `length` float NOT NULL,
  `breadth` float NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `txnid` varchar(200) NOT NULL,
  `mihpayid` varchar(200) NOT NULL,
  `ship_order_id` int(11) NOT NULL,
  `ship_shipment_id` int(11) NOT NULL,
  `payu_status` varchar(10) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_value` varchar(50) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `length`, `breadth`, `height`, `weight`, `txnid`, `mihpayid`, `ship_order_id`, `ship_shipment_id`, `payu_status`, `coupon_id`, `coupon_value`, `coupon_code`, `added_on`) VALUES
(1, 0, '', '', 0, 'payu', 0, 'Success', 1, 0, 0, 0, 0, '', '', 0, 0, '', 0, '', '', '0000-00-00 00:00:00'),
(2, 2, 'urmillanagar', 'vijayawada', 520012, 'COD', 1050, 'pending', 1, 0, 0, 0, 0, 'f5c8f66036ae0d9f5aee', '', 0, 0, '', 0, '', '', '2023-05-28 12:54:17'),
(3, 2, 'urmillanagar', 'vijayawada', 520012, 'COD', 2399, 'pending', 1, 0, 0, 0, 0, '521e30106aa7be025843', '', 0, 0, '', 0, '', '', '2023-05-28 01:02:42'),
(4, 2, 'urmillanagar', 'vijayawada', 520012, 'instamojo', 2399, 'pending', 1, 0, 0, 0, 0, '0037e5ab70bb8196296d', '', 0, 0, '', 0, '', '', '2023-05-28 01:03:12'),
(5, 2, 'urmillanagar', 'vijayawada', 520012, 'instamojo', 2399, 'pending', 1, 0, 0, 0, 0, 'fb37e3d9a8bc50ef2a1c', '', 0, 0, '', 0, '', '', '2023-05-28 01:03:19'),
(6, 2, 'urmillanagar', 'vijayawada', 520012, 'COD', 2399, 'pending', 4, 0, 0, 0, 0, 'cfc070f69fcef2502f55', '', 0, 0, '', 0, '', '', '2023-05-28 01:03:25'),
(7, 3, 'barpetta', 'assam', 12345, 'COD', 3000, 'pending', 1, 0, 0, 0, 0, 'c0ad8a5c28ec80589b91', '', 0, 0, '', 0, '', '', '2023-05-28 01:06:33'),
(8, 2, 'urmillanagar', 'vijayawada', 520012, 'instamojo', 3000, 'complete', 1, 0, 0, 0, 0, '3034444821ed4120b7209767700b1fb6', 'MOJO3528V05A98374339', 0, 0, '', 0, '', '', '2023-05-28 04:05:05'),
(9, 3, 'noida', 'noida', 78654, 'instamojo', 1120, 'complete', 1, 0, 0, 0, 0, '4457cb6c79b94690a6e2e9e21e46ae92', 'MOJO3528N05A98374340', 0, 0, '', 0, '', '', '2023-05-28 04:22:01'),
(10, 3, 'nepal', 'nepal', 123458, 'instamojo', 1350, 'complete', 3, 1, 2.4, 43, 3, '7d849f43662f4e939889a5bfb482f4c8', 'MOJO3528R05A98374342', 0, 0, '', 0, '', '', '2023-05-28 04:25:21'),
(11, 3, 'barpetta', 'assam', 12345, 'COD', 4798, 'pending', 1, 0, 0, 0, 0, '577e9cde31f7f9d7249f', '', 0, 0, '', 0, '', '', '2023-05-28 05:03:51'),
(12, 2, 'kerala', 'kerala', 528273, 'COD', 32999, 'pending', 1, 0, 0, 0, 0, '5e9185537f761b66ee54', '', 0, 0, '', 0, '', '', '2023-05-29 10:20:11'),
(13, 2, 'kerala', 'kerala', 528273, 'instamojo', 32999, 'pending', 1, 0, 0, 0, 0, '7d5ecae04943523bcfc2', '', 0, 0, '', 0, '', '', '2023-05-29 10:20:21'),
(14, 2, 'urmillanagar', 'vijayawada', 520012, 'instamojo', 32999, 'pending', 1, 0, 0, 0, 0, '4ceedd4b90acd3e8b51b', '', 0, 0, '', 0, '', '', '2023-05-29 10:20:28'),
(15, 2, 'urmillanagar', 'vijayawada', 520012, 'instamojo', 32999, 'complete', 1, 0, 0, 0, 0, 'e28a08efcc7942558bec82e97be52dc4', 'MOJO3529B05A16553259', 0, 0, '', 0, '', '', '2023-05-29 10:21:12'),
(16, 2, 'urmillanagar', 'vijayawada', 520012, 'COD', 32999, 'pending', 1, 0, 0, 0, 0, 'fde5b18c760a34a4e7b1', '', 0, 0, '', 0, '', '', '2023-05-29 07:00:38');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_attr_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `product_attr_id`, `qty`, `price`) VALUES
(1, 1, 7, 5, 10, 333),
(2, 2, 8, 4, 1, 1050),
(3, 3, 5, 10, 1, 2399),
(4, 4, 5, 10, 1, 2399),
(5, 5, 5, 10, 1, 2399),
(6, 6, 5, 10, 1, 2399),
(7, 7, 6, 8, 2, 1500),
(8, 8, 6, 8, 2, 1500),
(9, 9, 8, 2, 1, 1120),
(10, 10, 7, 6, 1, 1350),
(11, 11, 5, 10, 2, 2399),
(12, 12, 18, 11, 1, 32999),
(13, 13, 18, 11, 1, 32999),
(14, 14, 18, 11, 1, 32999),
(15, 15, 18, 11, 1, 32999),
(16, 16, 39, 170, 1, 32999);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`) VALUES
(18, 5, 4, 'iPhone XR', 0, 0, 0, '982535634_Apple iPhone XR red.jpg', 'The iPhone XR display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.06 inches diagonally (actual viewable area is less).', 'The iPhone XR display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.06 inches diagonally (actual viewable area is less).', 1, 'iphonexr', 'iphonexr', 'iphonexr', 0, 1),
(21, 5, 7, 'iPhone 11 Pro Max', 0, 0, 0, '597984677_568323645_332899305_457926432_697347005_2__1538219531_49.204.69.38_600x.jpg', 'The iPhone 11 Pro Max display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.46 inches diagonally (actual viewable area is less).', 'The iPhone 11 Pro Max display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.46 inches diagonally (actual viewable area is less).', 1, 'iphone 11 Pro Max', 'iphone 11 Pro Max', 'iphone 11 Pro Max', 0, 1),
(26, 5, 6, 'iPhone 11 Pro', 0, 0, 0, '516526451_309027777_Floral-Print-Polo-T-shirt.jpg', 'The iPhone 11 Pro display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 5.85 inches diagonally (actual viewable area is less).', 'The iPhone 11 Pro display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 5.85 inches diagonally (actual viewable area is less).', 0, 'iphone11pro', 'iphone11pro', 'iphone11pro', 0, 1),
(27, 5, 5, 'iPhone 11', 0, 0, 0, '282593199_309027777_Floral-Print-Polo-T-shirt.jpg', 'The iPhone 11 display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.06 inches diagonally (actual viewable area is less).', 'The iPhone 11 display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.06 inches diagonally (actual viewable area is less).', 0, 'iphone11', 'iphone11', 'iphone11', 0, 1),
(28, 5, 11, 'iPhone 12 Pro Max', 0, 0, 0, '241447965_309027777_Floral-Print-Polo-T-shirt.jpg', 'The iPhone 12 Pro Max display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.68 inches diagonally (actual viewable area is less).', 'The iPhone 12 Pro Max display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.68 inches diagonally (actual viewable area is less).', 1, 'iphone12promax', 'iphone12promax', 'iphone12promax', 0, 1),
(29, 5, 10, 'iPhone 12 Pro', 0, 0, 0, '193040597_309027777_Floral-Print-Polo-T-shirt.jpg', 'The iPhone 12 Pro display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.06 inches diagonally (actual viewable area is less).', 'The iPhone 12 Pro display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.06 inches diagonally (actual viewable area is less).', 1, 'iPhone12Pro', 'iPhone12Pro', 'iPhone12Pro', 0, 1),
(30, 5, 9, 'iPhone 12 mini', 0, 0, 0, '472161019_309027777_Floral-Print-Polo-T-shirt.jpg', 'test', 'test', 0, 'test', 'test', 'test', 0, 1),
(31, 5, 8, 'iPhone 12', 0, 0, 0, '377284524_332899305_457926432_697347005_2__1538219531_49.204.69.38_600x.jpg', 'test', 'test', 0, 'test', 'test', 'test', 0, 1),
(32, 5, 14, 'iPhone 13 Pro Max', 0, 0, 0, '797192926_568323645_332899305_457926432_697347005_2__1538219531_49.204.69.38_600x.jpg', 'test', 'test', 1, 'test', 'test', 'test', 0, 1),
(33, 5, 13, 'iPhone 13 Pro', 0, 0, 0, '604925971_309027777_Floral-Print-Polo-T-shirt.jpg', 'test', 'test', 1, 'test', 'test', 'test', 0, 1),
(34, 5, 12, 'iPhone 13 Mini', 0, 0, 0, '239436510_567328558_samsung-galaxy-s10-plus-1tb-ceramic-white-12gb-ram-.jpg', 'test', 'test', 1, 'test', 'test', 'test', 0, 1),
(35, 5, 21, 'iPhone 13', 0, 0, 0, '559295045_651584201_Floral-Embroidered-Polo-T-shirt.jpg', 'test', 'test', 1, 'test', 'test', 'test', 0, 1),
(36, 5, 18, 'iPhone 14 Pro Max', 0, 0, 0, '523378717_568323645_332899305_457926432_697347005_2__1538219531_49.204.69.38_600x.jpg', 'test', 'test', 1, 'test', 'test', 'test', 0, 1),
(37, 5, 17, 'iPhone 14 Pro', 0, 0, 0, '313517165_568323645_332899305_457926432_697347005_2__1538219531_49.204.69.38_600x.jpg', 'test', 'test', 1, 'test', 'test', 'test', 0, 1),
(38, 5, 16, 'iPhone 14 Plus', 0, 0, 0, '988786741_526258680_Floral-Print-Polo-T-shirt1.jpg', 'test', 'test', 0, 'test', 'test', 'test', 0, 1),
(39, 5, 15, 'iPhone 14', 0, 0, 0, '404678980_568323645_332899305_457926432_697347005_2__1538219531_49.204.69.38_600x.jpg', 'test', 'test', 1, 'test', 'test', 'test', 0, 1),
(40, 6, 22, 'Apple iPad mini (2019) wifi only (wi-fi+4G)', 0, 0, 0, '785604791_345935156_309027777_Floral-Print-Polo-T-shirt.jpg', 'test', 'test', 0, 'test', 'test', 'test', 0, 1),
(41, 6, 23, 'Apple iPad Pro 2020(2nd Gen) wifi  (wi-fi+4G) (wi-fi+5G)', 0, 0, 0, '316247725_345935156_309027777_Floral-Print-Polo-T-shirt.jpg', 'test', 'test', 0, 'test', 'test', 'test', 0, 1),
(42, 6, 24, 'Apple iPad Pro 2021 (5nd Gen) wifi  only (wi-fi+4G)', 0, 0, 0, '875086418_332899305_457926432_697347005_2__1538219531_49.204.69.38_600x.jpg', 'test', 'test', 0, 'test', 'test', 'test', 0, 1),
(43, 6, 25, 'Apple iPad Pro (4TH Gen) wifi Only (wi-fi+4G)', 0, 0, 0, '987390825_332899305_457926432_697347005_2__1538219531_49.204.69.38_600x.jpg', 'test', 'test', 0, 'test', 'test', 'test', 0, 1),
(44, 6, 26, 'Apple iPad Pro (6th Gen) wifi Only (wi-fi+5G)', 0, 0, 0, '773031974_697347005_2__1538219531_49.204.69.38_600x.jpg', 'test', 'test', 0, 'test', 'test', 'test', 0, 1),
(45, 6, 27, 'Apple iPad mini (6th Gen) wifi Only (wi-fi+5G)', 0, 0, 0, '518994074_332899305_457926432_697347005_2__1538219531_49.204.69.38_600x.jpg', 'test', 'test', 0, 'test', 'test', 'test', 0, 1),
(46, 6, 29, 'Apple iPad Air (4th Gen) wifi Only (wi-fi+4G)', 0, 0, 0, '800953363_568323645_332899305_457926432_697347005_2__1538219531_49.204.69.38_600x.jpg', 'test', 'test', 0, 'test', 'test', 'test', 0, 1),
(47, 6, 28, 'Apple iPad Air (5th Gen) wifi Only', 0, 0, 0, '538237885_568323645_332899305_457926432_697347005_2__1538219531_49.204.69.38_600x.jpg', 'test', 'test', 0, 'test', 'test', 'test', 0, 1),
(48, 6, 30, 'Apple iPad  (10th Gen) wifi Only (wi-fi+5G)', 0, 0, 0, '987249447_309027777_Floral-Print-Polo-T-shirt.jpg', 'test', 'test', 1, 'test', 'test', 'test', 0, 1),
(49, 6, 31, 'Apple iPad  (9th Gen) wifi Only (wi-fi+5G)', 0, 0, 0, '275010023_332899305_457926432_697347005_2__1538219531_49.204.69.38_600x.jpg', 'test', 'test', 1, 'test', 'test', 'test', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `mrp` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `size_id`, `color_id`, `mrp`, `price`, `qty`) VALUES
(1, 8, 5, 3, 1900, 1120, 10),
(2, 8, 4, 5, 1900, 1120, 8),
(3, 8, 2, 3, 1900, 1120, 9),
(4, 8, 4, 3, 1800, 1050, 4),
(5, 7, 0, 3, 1900, 1350, 10),
(6, 7, 0, 5, 1900, 1350, 8),
(7, 7, 0, 4, 1900, 1350, 6),
(8, 6, 5, 0, 1999, 1500, 10),
(9, 6, 4, 0, 1989, 1490, 9),
(10, 5, 0, 0, 2799, 2399, 10),
(11, 18, 7, 7, 32999, 32999, 10),
(12, 18, 8, 7, 41699, 41699, 10),
(13, 18, 7, 11, 33999, 33999, 10),
(14, 18, 8, 8, 40999, 40999, 10),
(15, 19, 7, 10, 41490, 41490, 10),
(16, 19, 8, 10, 41490, 41490, 10),
(17, 19, 7, 13, 41490, 41490, 10),
(18, 19, 7, 13, 41490, 41490, 10),
(19, 19, 7, 14, 41490, 41490, 10),
(20, 19, 8, 14, 41490, 41490, 10),
(21, 19, 7, 15, 41490, 41490, 10),
(22, 19, 8, 15, 41490, 41490, 10),
(23, 19, 7, 8, 41490, 41490, 10),
(24, 19, 8, 8, 41490, 41490, 10),
(25, 20, 7, 16, 79899, 79899, 5),
(26, 20, 7, 17, 79899, 79899, 5),
(27, 20, 7, 18, 79899, 79899, 2),
(28, 20, 7, 19, 79899, 79899, 3),
(29, 20, 9, 16, 86900, 86900, 3),
(30, 20, 9, 17, 86900, 86900, 3),
(32, 20, 9, 18, 86900, 86900, 5),
(33, 20, 9, 19, 86900, 86900, 2),
(34, 20, 10, 16, 131900, 131900, 4),
(35, 20, 10, 17, 131900, 131900, 8),
(36, 20, 10, 18, 131900, 131900, 5),
(37, 20, 10, 19, 131900, 131900, 4),
(38, 21, 7, 16, 95699, 95699, 5),
(39, 21, 7, 17, 95699, 95699, 5),
(40, 21, 7, 18, 95699, 95699, 4),
(41, 21, 7, 19, 95699, 95699, 7),
(42, 21, 9, 16, 94900, 94900, 9),
(43, 21, 9, 17, 94900, 94900, 1),
(44, 21, 9, 18, 94900, 94900, 2),
(45, 21, 9, 19, 94900, 94900, 4),
(46, 21, 10, 16, 131900, 131900, 3),
(47, 21, 10, 16, 131900, 131900, 2),
(48, 21, 10, 17, 131900, 131900, 12),
(49, 21, 10, 18, 131900, 131900, 23),
(50, 21, 10, 19, 131900, 131900, 18),
(51, 22, 7, 10, 53999, 53999, 2),
(52, 22, 7, 8, 53999, 53999, 3),
(53, 22, 7, 7, 53999, 53999, 5),
(54, 22, 7, 13, 53999, 53999, 7),
(55, 22, 7, 11, 53999, 53999, 3),
(56, 22, 7, 15, 53999, 53999, 10),
(57, 22, 8, 10, 57900, 57900, 7),
(58, 22, 8, 8, 57900, 57900, 8),
(59, 22, 8, 7, 57900, 57900, 3),
(60, 22, 8, 13, 57900, 57900, 7),
(61, 22, 8, 11, 57900, 57900, 3),
(62, 22, 8, 15, 57900, 57900, 6),
(63, 22, 9, 10, 66999, 66999, 7),
(64, 22, 9, 8, 66999, 66999, 7),
(65, 22, 9, 7, 66999, 66999, 8),
(66, 22, 9, 13, 66999, 66999, 5),
(67, 22, 9, 11, 66999, 66999, 6),
(68, 22, 9, 15, 66999, 66999, 9),
(69, 23, 7, 10, 50999, 50999, 7),
(70, 23, 7, 8, 50999, 50999, 9),
(71, 23, 7, 7, 50999, 50999, 6),
(72, 23, 7, 13, 50999, 50999, 5),
(73, 23, 7, 11, 50999, 50999, 4),
(74, 23, 7, 15, 50999, 50999, 3),
(75, 23, 8, 10, 55999, 55999, 7),
(76, 23, 8, 8, 55999, 55999, 7),
(77, 23, 8, 8, 55999, 55999, 5),
(78, 23, 8, 7, 55999, 55999, 4),
(79, 23, 8, 13, 55999, 55999, 5),
(80, 23, 8, 11, 55999, 55999, 3),
(81, 23, 8, 15, 55999, 55999, 8),
(82, 23, 9, 10, 94900, 94900, 6),
(83, 23, 9, 8, 94900, 94900, 7),
(84, 23, 9, 7, 94900, 94900, 8),
(85, 23, 9, 13, 94900, 94900, 8),
(86, 23, 9, 11, 94900, 94900, 9),
(87, 23, 9, 15, 94900, 94900, 6),
(88, 24, 8, 18, 78899, 78899, 2),
(89, 24, 8, 20, 78899, 78899, 7),
(90, 24, 8, 16, 78899, 78899, 8),
(91, 24, 8, 21, 78899, 78899, 5),
(92, 24, 9, 18, 129900, 129900, 9),
(93, 24, 9, 20, 129900, 129900, 8),
(94, 24, 9, 16, 129900, 129900, 8),
(95, 24, 9, 21, 129900, 129900, 4),
(96, 24, 9, 18, 106699, 106699, 5),
(97, 24, 9, 20, 106699, 106699, 9),
(98, 24, 9, 16, 106699, 106699, 4),
(99, 24, 9, 21, 106699, 106699, 9),
(100, 25, 8, 18, 78899, 78899, 1),
(101, 25, 8, 20, 78899, 78899, 3),
(102, 25, 8, 16, 78899, 78899, 3),
(103, 25, 8, 21, 78899, 78899, 4),
(104, 25, 9, 18, 129900, 129900, 4),
(105, 25, 9, 20, 129900, 129900, 8),
(106, 25, 9, 16, 129900, 129900, 3),
(107, 25, 9, 21, 129900, 129900, 1),
(108, 25, 10, 18, 106699, 106699, 7),
(109, 25, 10, 16, 106699, 106699, 4),
(110, 25, 10, 21, 106699, 106699, 2),
(111, 25, 10, 20, 106699, 106699, 1),
(112, 26, 7, 16, 79899, 79899, 4),
(113, 26, 7, 17, 79899, 79899, 3),
(114, 26, 7, 18, 79899, 79899, 2),
(115, 26, 7, 19, 79899, 79899, 2),
(116, 26, 9, 16, 113900, 113900, 3),
(117, 26, 9, 17, 113900, 113900, 3),
(118, 26, 9, 18, 113900, 113900, 4),
(119, 26, 9, 19, 113900, 113900, 4),
(120, 26, 10, 16, 131900, 131900, 3),
(121, 26, 10, 17, 131900, 131900, 3),
(122, 26, 10, 18, 131900, 131900, 3),
(123, 26, 10, 19, 131900, 131900, 3),
(124, 27, 7, 10, 41199, 41199, 3),
(125, 27, 7, 13, 41199, 41199, 3),
(126, 27, 7, 14, 41199, 41199, 3),
(127, 27, 7, 15, 41199, 41199, 4),
(128, 27, 7, 15, 41199, 41199, 4),
(129, 27, 7, 7, 41199, 41199, 2),
(130, 27, 7, 8, 41199, 41199, 4),
(131, 27, 8, 10, 45490, 45490, 5),
(132, 27, 8, 13, 45490, 45490, 6),
(133, 27, 8, 14, 45490, 45490, 6),
(134, 27, 8, 15, 45490, 45490, 12),
(135, 27, 8, 8, 45490, 45490, 11),
(136, 27, 8, 7, 45490, 45490, 3),
(137, 28, 8, 18, 129900, 129900, 4),
(138, 28, 8, 20, 129900, 129900, 5),
(139, 28, 8, 16, 129900, 129900, 7),
(140, 28, 8, 21, 129900, 129900, 3),
(141, 28, 9, 18, 139900, 139900, 6),
(142, 28, 9, 20, 139900, 139900, 4),
(143, 28, 9, 16, 139900, 139900, 6),
(144, 28, 9, 21, 139900, 139900, 1),
(145, 28, 10, 18, 159900, 159900, 5),
(146, 28, 10, 20, 159900, 159900, 6),
(147, 28, 10, 16, 159900, 159900, 5),
(148, 28, 10, 21, 159900, 159900, 5),
(149, 29, 8, 18, 78899, 78899, 12),
(150, 29, 8, 20, 78899, 78899, 13),
(151, 29, 8, 16, 78899, 78899, 13),
(152, 29, 8, 21, 78899, 78899, 2),
(153, 29, 9, 18, 129900, 129900, 4),
(154, 29, 9, 20, 129900, 129900, 8),
(155, 29, 9, 16, 129900, 129900, 10),
(156, 29, 9, 21, 129900, 129900, 8),
(157, 29, 10, 18, 106699, 106699, 9),
(158, 29, 10, 20, 106699, 106699, 10),
(159, 29, 10, 16, 106699, 106699, 22),
(160, 29, 10, 21, 106699, 106699, 4),
(161, 30, 7, 14, 12, 11, 2),
(162, 31, 7, 8, 12, 11, 1),
(163, 32, 7, 8, 12, 11, 19),
(164, 33, 7, 8, 10, 9, 12),
(165, 34, 7, 7, 10, 9, 12),
(166, 35, 7, 8, 10, 9, 12),
(167, 36, 7, 8, 10, 8, 12),
(168, 37, 7, 10, 32999, 32999, 12),
(169, 38, 7, 17, 32999, 32999, 11),
(170, 39, 7, 8, 32999, 32999, 12),
(171, 40, 7, 10, 100, 89, 10),
(172, 41, 8, 10, 100, 90, 1),
(173, 42, 7, 10, 10, 9, 10),
(174, 43, 7, 10, 32999, 32999, 10),
(175, 44, 7, 10, 32999, 32999, 10),
(176, 45, 7, 10, 32999, 32999, 10),
(177, 46, 7, 10, 32999, 32999, 7),
(178, 47, 7, 10, 32999, 32999, 10),
(179, 48, 7, 10, 32999, 32999, 10),
(180, 49, 7, 10, 32999, 32999, 10);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_images` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `product_images`) VALUES
(1, 8, '479197953_526258680_Floral-Print-Polo-T-shirt1.jpg'),
(2, 8, '301120849_309027777_Floral-Print-Polo-T-shirt.jpg'),
(4, 18, '913967645_iphone-xr-yellow.png'),
(5, 18, '554424351_Apple iPhone XR red.jpg'),
(6, 18, '838025263_Apple-iPhone-XR-White.jpg'),
(7, 18, '413126573_iphone-xr-blue.jpg'),
(8, 18, '668823428_iphone-xr-black.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `review` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`id`, `product_id`, `user_id`, `rating`, `review`, `status`, `added_on`) VALUES
(8, 18, 2, 'Good', 'I love the service', 1, '2023-05-29 10:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `shiprocket_token`
--

CREATE TABLE `shiprocket_token` (
  `id` int(11) NOT NULL,
  `token` varchar(500) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shiprocket_token`
--

INSERT INTO `shiprocket_token` (`id`, `token`, `added_on`) VALUES
(1, '', '2019-04-09 00:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `size_master`
--

CREATE TABLE `size_master` (
  `id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `order_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `size_master`
--

INSERT INTO `size_master` (`id`, `size`, `status`, `order_by`) VALUES
(7, '64GB', 1, 1),
(8, '128GB', 1, 2),
(9, '256GB', 1, 3),
(10, '512GB', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `sub_categories`, `status`) VALUES
(1, 2, 'T-Shirt', 1),
(2, 2, 'Trouser', 1),
(3, 4, 'Shirt', 1),
(4, 5, 'iphone XR', 1),
(5, 5, 'Iphone 11', 1),
(6, 5, 'Iphone 11 Pro', 1),
(7, 5, 'Iphone 11 Pro Max', 1),
(8, 5, 'Iphone 12', 1),
(9, 5, 'Iphone 12 mini', 1),
(10, 5, 'Iphone 12 Pro', 1),
(11, 5, 'Iphone 12 Pro Max', 1),
(12, 5, 'Iphone 13 mini', 1),
(13, 5, 'Iphone 13 Pro', 1),
(14, 5, 'Iphone 13 Pro Max', 1),
(15, 5, 'Iphone 14', 1),
(16, 5, 'Iphone 14 Plus', 1),
(17, 5, 'Iphone 14 Pro', 1),
(18, 5, 'Iphone 14 Pro Max', 1),
(19, 5, 'iphone SE', 1),
(20, 5, 'iphone SE2', 1),
(21, 5, 'Iphone 13', 1),
(22, 6, 'Apple iPad mini (2019)', 1),
(23, 6, 'Apple ipad pro 2020 (2nd gen)', 1),
(24, 6, 'Apple iPad Pro (2021) 5th gen', 1),
(25, 6, 'Apple iPad Pro (4th Gen)', 1),
(26, 6, 'Apple iPad Pro (6th Gen)', 1),
(27, 6, 'Apple iPad mini (6th Gen)', 1),
(28, 6, 'Apple iPad Air (5th Gen)', 1),
(29, 6, 'Apple iPad  Air (4th Gen)', 1),
(30, 6, 'Apple iPad   (10th Gen)', 1),
(31, 6, 'Apple iPad   (9th Gen)', 1),
(32, 6, 'Apple iPad  Pro 2021 (5th Gen)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(1, 'Vishal Gupta', 'vishal', 'ytlearnwebdevelopment@gmail.com', '1234567890', '2020-05-13 00:00:00'),
(2, 'Amit', 'amit', 'amir@gmail.com', '1234567890', '2020-05-14 00:00:00'),
(3, 'reshu', '123', 'aa@gmail.com', '9540608104', '2021-04-15 03:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `added_on`) VALUES
(1, 1, 12, '2021-04-08 01:53:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_master`
--
ALTER TABLE `color_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_master`
--
ALTER TABLE `coupon_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shiprocket_token`
--
ALTER TABLE `shiprocket_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size_master`
--
ALTER TABLE `size_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `color_master`
--
ALTER TABLE `color_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupon_master`
--
ALTER TABLE `coupon_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shiprocket_token`
--
ALTER TABLE `shiprocket_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `size_master`
--
ALTER TABLE `size_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
