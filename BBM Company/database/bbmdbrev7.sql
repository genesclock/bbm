-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 07:40 PM
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
-- Database: `bbmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(60) DEFAULT NULL,
  `admin_username` varchar(60) DEFAULT NULL,
  `admin_ps` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_username`, `admin_ps`) VALUES
(1, 'Kelvin Habal', 'kelvin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `co_id` int(11) NOT NULL,
  `username` varchar(60) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `pr_size` varchar(5) DEFAULT NULL,
  `co_status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`co_id`, `username`, `product_id`, `quantity`, `transaction_date`, `pr_size`, `co_status`) VALUES
(1, 'kelvin', 2, 1, '2024-06-08', '39', 'Delivered'),
(2, 'kelvin', 3, 1, '2024-06-08', '36', 'Delivered'),
(3, 'kelvin', 4, 1, '2024-06-11', '37', 'Delivered'),
(4, 'kelvin', 5, 1, '2024-06-11', '36', 'Delivered'),
(5, 'kelvin', 1, 1, '2024-06-11', '36', 'Delivered'),
(6, 'kelvin', 1, 1, '2024-06-11', '37', 'Delivered'),
(7, 'john', 21, 1, '2024-06-11', '37', 'Delivered'),
(8, 'john', 9, 1, '2024-06-11', '37', 'Delivered'),
(9, 'john', 1, 1, '2024-06-11', '37', 'Delivered'),
(10, 'john', 2, 3, '2024-06-11', '36', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_description` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image_url` text DEFAULT NULL,
  `category` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_description`, `quantity`, `price`, `image_url`, `category`) VALUES
(1, 'BBM Leather Sandals', 'Summertime, Daily, Class', 2, 249.99, 'stckimg/men1.jpg', 'cat1'),
(2, 'BBM To Go - White Rubber Shoes', 'To go in any season', 3, 449.99, 'stckimg/men2.jpg', 'cat1'),
(3, 'BBM Go Stroll Slipper Sandals', 'Summertime, Daily, Class', 3, 249.99, 'stckimg/men3.jpg', 'cat1'),
(4, 'BBM To Go - Gray Rubber Shoes', 'To go in any season', 3, 449.99, 'stckimg/men4.jpg', 'cat1'),
(5, 'BBM Go Stroll Sneakers', 'To go in any season', 3, 399.99, 'stckimg/men5.jpg', 'cat1'),
(6, 'BBM Feminism Slippers', 'Summertime, Daily, Class', 3, 199.99, 'stckimg/lady1.jpg', 'cat2'),
(7, 'BBM Go Slay Boots', 'Wear,Slay, Conquer', 3, 599.99, 'stckimg/lady2.jpg', 'cat2'),
(8, 'BBM Collection of Imelda - White Heels', 'Be on top, of everyone', 3, 399.99, 'stckimg/lady3.jpg', 'cat2'),
(9, 'BBM Collection of Imelda - Black Heels', 'Be on top, of everyone', 2, 399.99, 'stckimg/lady4.jpg', 'cat2'),
(10, 'BBM Run Women - Brown', 'Run with your collection, Hawaii Friendly', 3, 449.99, 'stckimg/lady5.jpg', 'cat2'),
(11, 'BBM Kiddie Sandals - Black and White', 'Go Round and Round with BBM', 3, 249.99, 'stckimg/kids1.jpg', 'cat3'),
(12, 'BBM Go Run - Colorful Gray Boots', 'Start Young, Go Run', 3, 349.99, 'stckimg/kids2.jpg', 'cat3'),
(13, 'BBM Collection of Imelda - Kiddie Sandals', 'Like Mother, Like Daughter', 3, 399.99, 'stckimg/kids3.jpg', 'cat3'),
(14, 'BBM Collection of Imelda - Pink High Cut', 'Like Mother, Like Daughter', 3, 449.99, 'stckimg/kids4.jpg', 'cat3'),
(15, 'BBM Collection of Imelda - Kiddie Black Shoes', 'Slay While Young, Slay Until the End of Time', 3, 399.99, 'stckimg/kids5.jpg', 'cat3'),
(16, 'BBM Raise them Right Sandals - Blue Shiny', 'Nurture them, Teach them, Unite Them', 3, 349.99, 'stckimg/todd1.jpg', 'cat4'),
(17, 'BBM Raise them Right Sandals - Blue Semi-Leather', 'Nurture them, Teach them, Unite Them', 3, 349.99, 'stckimg/todd2.jpg', 'cat4'),
(18, 'BBM Raise them Right Shoe - Pink', 'Nurture them, Teach them, Unite Them', 3, 399.99, 'stckimg/todd3.jpg', 'cat4'),
(19, 'BBM Raise them Right Shoe - Green Frog', 'Nurture them, Teach them, Unite Them', 3, 399.99, 'stckimg/todd4.jpg', 'cat4'),
(20, 'BBM Raise them Right Shoe - Brown Boots', 'Nurture them, Teach them, Unite Them', 3, 449.99, 'stckimg/todd5.jpg', 'cat4'),
(21, 'BBM Gets Comfy Socks - Neutral', 'Always Rest and Watch the Rest', 2, 99.99, 'stckimg/accessory1.jpg', 'cat5'),
(22, 'BBM Wear Me - Night Anklet', 'Be Shiny, Be Seen, Go Party', 3, 199.99, 'stckimg/accessory2.jpg', 'cat5'),
(23, 'BBM Wear Me - Sea Anklet', 'Be Shiny, Be Seen, Go Party', 3, 229.99, 'stckimg/accessory3.jpg', 'cat5'),
(24, 'BBM Be BOLD - Barefoot Sandals', 'Be Shiny, Be Seen, Go Party', 3, 199.99, 'stckimg/accessory4.jpg', 'cat5'),
(25, 'BBM Gets Comfy Socks - Neutral', 'Always Rest and Watch the Rest', 3, 99.99, 'stckimg/accessory5.jpg', 'cat5');

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `pr_id` int(11) NOT NULL,
  `co_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review_text` text DEFAULT NULL,
  `review_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`pr_id`, `co_id`, `product_id`, `username`, `rating`, `review_text`, `review_status`) VALUES
(1, 3, 4, 'kelvin', 3, 'Goods lang\r\n', 'done'),
(2, 3, 4, 'kelvin', 4, 'keri lang', 'done'),
(3, 1, 2, 'kelvin', 5, 'omg maganda\r\n', 'done'),
(4, 2, 3, 'kelvin', 2, 'wow, wow talaga hahaha', 'done'),
(5, 4, 5, 'kelvin', 4, 'k lang', 'done'),
(6, 5, 1, 'kelvin', 2, 'goods\r\n', 'done'),
(7, 7, 21, 'john', 4, 'ganduhhh\r\n', 'done'),
(8, 9, 1, 'john', 5, '123456', 'done'),
(9, 8, 9, 'john', 5, 'fsaeafa', 'done'),
(10, 10, 2, 'john', 5, 'dasfnkwaf', 'done');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `pr_size` varchar(5) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `username`, `product_id`, `quantity`, `pr_size`, `transaction_date`) VALUES
(93, 'kelvin', 5, 1, '38', '2024-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`first_name`, `last_name`, `username`, `email`, `birthdate`, `password`) VALUES
('', 'Alvarer', 'gene', '', '2000-01-01', '1234'),
('', 'Sabater', 'john', '', '2000-01-01', '1234'),
('kelvin', 'habal', 'kelvin', 'kelvin@gmail.com', '2000-01-01', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`co_id`),
  ADD KEY `username` (`username`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`pr_id`),
  ADD KEY `co_id` (`co_id`),
  ADD KEY `username` (`username`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `username` (`username`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `checkout`
--
ALTER TABLE `checkout`
  ADD CONSTRAINT `checkout_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `checkout_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product_review`
--
ALTER TABLE `product_review`
  ADD CONSTRAINT `product_review_ibfk_1` FOREIGN KEY (`co_id`) REFERENCES `checkout` (`co_id`),
  ADD CONSTRAINT `product_review_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `product_review_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
