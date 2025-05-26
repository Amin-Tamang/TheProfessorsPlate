-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2025 at 09:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `the_professors_plate`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `order_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `user_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL,
  `delivery_person` varchar(50) NOT NULL,
  `delivery_status` enum('pending','dispatched','in-transit','delivered') NOT NULL,
  `delivery_phone` varchar(15) NOT NULL,
  `delivery_time` date NOT NULL,
  `delivery_location` varchar(255) NOT NULL,
  `payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `discount_id` int(11) NOT NULL,
  `discount_name` varchar(50) NOT NULL,
  `discount_percentage` decimal(5,2) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL,
  `discount_period` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `food_id` int(11) NOT NULL,
  `food_name` varchar(100) NOT NULL,
  `food_description` text NOT NULL,
  `food_price` decimal(10,2) NOT NULL,
  `food_category` varchar(255) NOT NULL,
  `food_image` varchar(255) NOT NULL,
  `discount_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_details`
--

CREATE TABLE `menu_details` (
  `user_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_status` enum('pending','confirmed','preparing','delivered','cancelled') NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method` enum('cash','esewa') NOT NULL,
  `payment_status` enum('pending','completed','failed','refunded') NOT NULL,
  `payment_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `review_date` datetime NOT NULL,
  `review_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_details`
--

CREATE TABLE `review_details` (
  `user_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_role` varchar(20) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `user_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `user_role`, `user_email`, `phone_number`, `user_image`) VALUES
(2, 'RyanKhan777', 'lbJaR6/2NF8nPQvy92+uWS37BvkzLyuVrS5cTNHTWC2dOEvnLIqgNTkER5OdFs9neHZ6TA==', 'admin', 'Ryankhan770@gmail.com', '9866214499', 'resources/usersImage/user/.jpg'),
(10, 'test', 'z5K/Lq73eFa8TDzZ9/AN2mUE2/GCst1VqlrFfshdiz+aE4eoMrAboGSwAdDUM1hu9MC8sA==', 'customer', 'test@gmail.com', '9866214444', NULL),
(11, 'Ryankhan', 'o0KZnqK139pQLLQ/f/C7lfAgt3Am0Tetr1EU8p5uEGzhfmIUgRIrIksQPeGniWMyE/9lHQ==', 'customer', 'khan@gmail.com', '9866213723', NULL),
(12, 'Aminhero', 'vrKRlzGmJZkwf5JcEzDhYsmfk8mQ1zn1dqS/UYcefLXIZnf21DEnFtBxeNwleeO23Xrr/0I=', 'customer', 'Amin@gmail.com', '9866214599', NULL),
(13, 'newuser', '9wpmf33ZbthGH2udsMjJ2TZ1haJVmbnqE27T2DpVQcI3CagafJryAzWWlUhB8wjMOu3Gu28S', 'customer', 'new@user.com', '9866219944', NULL),
(14, 'sanjay', 'b3uDad+K60uCSMcz5fce/pJ3pkPQrBYJsWopIG9jsKsd6kcrrMdWnC/livU4CN8Ecw0GSIug', 'customer', 'sanjay@gmail.com', '9866212121', 'resources/usersImage/user/ef33c663-1b16-4dbb-be51-03e8cd0918d1.jpg'),
(15, 'bivek', 'Nf6lO78Bu9+u/Xv6rNPDx1ZIqAuviZMZkrWz6gCfb0beYkNV5KQCz+aabU4j5rr4LVAr4gXN', 'customer', 'bivek@gmail.com', '9869216997', 'resources/usersImage/user/c7c43ef0-4fcc-4230-8f0e-a2812c499572.jpg'),
(16, 'newuser1', 'nF9KMIgA5PrCAhNb7DxC0v2ILgW6lm5BlO556eiaO9P2S7IbwlqWxI1KRKs+w8cKif8Pkgce', 'customer', 'new1@user.com', '9866214400', NULL),
(17, 'tester', 'XVhtKUBiVIsnWEeRjcbSOs88Ql0bZt64E21n8L4XH1m/0apW0hODqol2HlAgf4cgbtSiMBQT', 'customer', 'tester@gmail.com', '9866211111', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_orders_fk` (`order_id`),
  ADD KEY `cart_delivery_fk` (`delivery_id`),
  ADD KEY `cart_payment_fk` (`payment_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD KEY `cart_details_user_fk` (`user_id`),
  ADD KEY `cart_details_menu_fk` (`food_id`),
  ADD KEY `cart_details_cart_fk` (`cart_id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`),
  ADD KEY `delivery_payment_fk` (`payment_id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`food_id`),
  ADD KEY `menu_discount_fk` (`discount_id`);

--
-- Indexes for table `menu_details`
--
ALTER TABLE `menu_details`
  ADD KEY `menu_details_user_fk` (`user_id`),
  ADD KEY `menu_details_menu_fk` (`food_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `orders_delivery_fk` (`delivery_id`),
  ADD KEY `orders_payment_fk` (`payment_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `review_details`
--
ALTER TABLE `review_details`
  ADD KEY `review_details_user_fk` (`user_id`),
  ADD KEY `review_details_review_id` (`review_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_delivery_fk` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`delivery_id`),
  ADD CONSTRAINT `cart_orders_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `cart_payment_fk` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`);

--
-- Constraints for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `cart_details_cart_fk` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
  ADD CONSTRAINT `cart_details_menu_fk` FOREIGN KEY (`food_id`) REFERENCES `menu` (`food_id`),
  ADD CONSTRAINT `cart_details_user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_payment_fk` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_discount_fk` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`discount_id`);

--
-- Constraints for table `menu_details`
--
ALTER TABLE `menu_details`
  ADD CONSTRAINT `menu_details_menu_fk` FOREIGN KEY (`food_id`) REFERENCES `menu` (`food_id`),
  ADD CONSTRAINT `menu_details_user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_delivery_fk` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`delivery_id`),
  ADD CONSTRAINT `orders_payment_fk` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`);

--
-- Constraints for table `review_details`
--
ALTER TABLE `review_details`
  ADD CONSTRAINT `review_details_review_id` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`),
  ADD CONSTRAINT `review_details_user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
