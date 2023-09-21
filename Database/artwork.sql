-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2021 at 02:08 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` varchar(20) NOT NULL,
  `admin_pwd` varchar(20) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `admin_phone` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_pwd`, `admin_name`, `email_id`, `admin_phone`) VALUES
('admin', 'admin', 'Yashasvi GM', '1js20cs187@gmail.com', 8892235305);

-- --------------------------------------------------------

--
-- Table structure for table `art_info`
--

CREATE TABLE `art_info` (
  `art_id` int(10) NOT NULL,
  `art_name` varchar(50) NOT NULL,
  `art_category` varchar(20) NOT NULL,
  `art_price` int(20) NOT NULL,
  `art_discount` int(10) NOT NULL,
  `art_photo` varchar(50) NOT NULL,
  `art_detail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `art_info`
--

INSERT INTO `art_info` (`art_id`, `art_name`, `art_category`, `art_price`, `art_discount`, `art_photo`, `art_detail`) VALUES
(1, 'Black sand beach', 'Painting', 90000, 10000, ' ..\img\painting1.jpg', 'Artist: Shina Choi'),
(2, 'The Indian Door', 'Painting', 15000, 17000, ' ..\img\painting2.jpg', '	Artist:  Ram Onkar'),
(3, 'Ganesha Pencil Carving', 'Pencil Carving', 6999, 7500, '..\img\pc6.png', 'Artist: Bhuvan Patel'),
(4, 'Awakening Light', 'Mandala', 55500,57999, '..\img\mandala7.jpg', 'Artist: Raghav Joshi'),
(5, 'The Vintage Car', 'Photography', 2000, 3500, '..\img\p3.jpg', 'Artist: Paul Williams'),
(6, 'Zen Meditation Mandala', 'Mandala', 30000, 33000, '..\img\mandala4.jpg', 'Artist: Preeti Kashyap'),
(7, 'The Blue Eyes', 'Fine Art', 39000, 40000, '..\img\fineart5.jpg', 'Artist: Krishna Sharma'),
(8, 'Jaymahal Palace ', 'Photography', 3299, 3500, '..\img\p2.jpg', 'Artist: Prateek J T'),
(9, 'The City of New York', 'Painting', 39999, 41999, '..\img\painting4.jpg', 'Artist: Nischith Gowda'),
(10, 'RadhaKrishna', 'Folk', 13499, 14000, '..\img\folk2.jpeg','Artist: Keshav Kumar'),
(11, 'Dragon Pencil Carving', 'Pencil Carving', 4000, 5000, '..\img\pc2.jpg', 'Artist: Diya Khan'),
(12, 'Native Folk Dance', 'Folk',24699 ,26299 , '..\img\folk3.jpg', 'Artist: Kruthika Kamra'),
(13, 'The Full Moon Night', 'Painting', 22999, 23599, '..\img\painting3.jpg', 'Artist: Aditi Sen'),
(14, 'Seven Wonders', 'Pencil Carving', 29999, 34999, '..\img\pc4.jpg', 'Artist: Bhuvan Patel'),
(15, 'Still Life', 'Fine Art', 11999, 13000, '..\img\fineart4.jpg', 'Artist: Suhana Pathak'),
(16, 'Mandala Art', 'Mandala', 67400, 69500, '..\img\manadala5.jpg', 'Artist: Sneha N S'),
(17, 'Native Lifestyle', 'Folk', 13000, 14000, '..\img\folk4.jpg', 'Artist: Keshav Kumar'),
(18, 'Rose-Black and White', 'Photography', 7000, 8000, '..imgphoto1.jpg', 'Artist: Prateek J T'),
(19,'Dimensional Mandala Art', 'Mandala', 80999, 84799, '..\img\manadala6.jpg', 'Artist: Sneha N S'),
(20, 'The Two Faces', 'Fine Art', 12000, 13000, '..\img\fineart1.jpg', 'Artist: Kuldeep Singh'),
(21, 'Adorable Dogs', 'Photography', 3999, 4500, '..\img\photo5.jpg', 'Artist: Nisha Singh'),
(22, 'A Rainy Day', 'Fine Art', 18000, 20000, '..\img\fineart2.jpg', 'Artist: Suhana Pathak');
-- --------------------------------------------------------

--
-- Table structure for table `booking_info`
--

CREATE TABLE `booking_info` (
  `bart_id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `art_id` int(10) NOT NULL,
  `Name` text NOT NULL,
  `bart_name` varchar(50) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `delivery_address` varchar(50) NOT NULL,
  `bart_quantity` int(10) NOT NULL,
  `bart_date` varchar(30) NOT NULL DEFAULT 'CURRENT_TIMESTAMP(50)',
  `bart_price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `booking_info`
--

INSERT INTO `booking_info` (`bart_id`, `cust_id`, `art_id`, `Name`, `bart_name`, `order_status`, `delivery_address`, `bart_quantity`, `bart_date`, `bart_price`) VALUES
(16, 9, 14, 'Yashasvi', 'Seven Wonders', 'Available', 'bangalore', 2, '2023-01-19 16:51:59', 59998),
(17, 9, 2, 'Yashasvi', 'The Indian Door', 'Available', 'bangalore', 1, '2023-01-19 19:24:06', 15000),
(18, 10, 1, 'Sneha', 'Black sand beach', 'Available', 'bangalore', 1, '2023-01-19 22:04:29', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `cust_id` int(10) NOT NULL,
  `cust_pwd` varchar(20) NOT NULL,
  `cust_email` varchar(50) NOT NULL,
  `cust_Fname` varchar(10) NOT NULL,
  `cust_Lname` varchar(10) NOT NULL,
  `cust_gender` varchar(10) NOT NULL,
  `cust_phone` bigint(10) NOT NULL,
  `cust_state` varchar(20) NOT NULL,
  `cust_place` varchar(20) NOT NULL,
  `cust_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`cust_id`, `cust_pwd`, `cust_email`, `cust_Fname`, `cust_Lname`, `cust_gender`, `cust_phone`, `cust_state`, `cust_place`, `cust_address`) VALUES
(9, 'yash', '1js20cs187@gmail.com', 'Yashasvi', 'GM', 'Female', 8892235305, 'karnataka', 'india', 'bangalore');
(10, 'sneha', '1js20cs161@gmail.com', 'Sneha', 'M', 'Female', 1234567890, 'karnataka', 'india', 'bangalore');
-- --------------------------------------------------------

--
-- Table structure for table `exhibition_events`
--

CREATE TABLE `exhibition_events` (
  `ex_id` int(100) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_about` varchar(500) NOT NULL,
  `event_category` varchar(100) NOT NULL,
  `event_venue` varchar(500) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` varchar(500) NOT NULL,
  `event_photo` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exhibition_events`
--

INSERT INTO `exhibition_events` (`ex_id`, `event_name`, `event_about`, `event_category`, `event_venue`, `event_date`, `event_time`, `event_photo`) VALUES
(100, 'India Art Festival - 2023', 'Group Event', 'Mandala , Folk', 'New Delhi', '2021-02-16', '11:00 AM', '..\img\eventimages\iaf.png'),
(101, 'The Museum of Art and Photography', 'Group Event', 'Photography , Pencil Carving', 'M G Road, Bangalore', '2023-03-05', '12:00 PM', '..\img\eventimages\map.png'),
(102, 'Art Grooves', 'Group Event', 'Fine Art, Painting', 'Sublime Galleria, Mumbai', '2021-03-23', ' 11:00 AM', '..\img\eventimages\artgrooves.png'),
(103, 'International Art Expo', 'Group Event', 'All Kind of Arts', 'Panaji, Goa', '2023-03-26', '12:00 PM', '..\img\eventimages\aeg.jpg');


-- --------------------------------------------------------

--
-- Table structure for table `feedback_info`
--

CREATE TABLE `feedback_info` (
  `feed_id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `Feed_Status` varchar(50) NOT NULL,
  `Feed_Response` varchar(50) NOT NULL,
  `Feed_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

CREATE TABLE `payment_info` (
  `pay_id` int(10) NOT NULL,
  `bart_id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `pay_amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `payment_info`
--

INSERT INTO `payment_info` (`pay_id`, `bart_id`, `cust_id`, `pay_amount`) VALUES
(15, 15, 9, 2000),
(16, 16, 9, 59998),
(17, 18, 10, 9000);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `Login_id` (`email_id`);

--
-- Indexes for table `art_info`
--
ALTER TABLE `art_info`
  ADD PRIMARY KEY (`art_id`);

--
-- Indexes for table `booking_info`
--
ALTER TABLE `booking_info`
  ADD PRIMARY KEY (`bart_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `art_id` (`art_id`),
  ADD KEY `cust_id_2` (`cust_id`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `cust_email` (`cust_email`),
  ADD UNIQUE KEY `cust_id_4` (`cust_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `cust_id_2` (`cust_id`),
  ADD KEY `cust_id_3` (`cust_id`);

--
-- Indexes for table `exhibition_events`
--
ALTER TABLE `exhibition_events`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `feedback_info`
--
ALTER TABLE `feedback_info`
  ADD PRIMARY KEY (`feed_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `bart_id` (`bart_id`,`cust_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `art_info`
--
ALTER TABLE `art_info`
  MODIFY `art_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `booking_info`
--
ALTER TABLE `booking_info`
  MODIFY `bart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `cust_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exhibition_events`
--
ALTER TABLE `exhibition_events`
  MODIFY `ex_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `feedback_info`
--
ALTER TABLE `feedback_info`
  MODIFY `feed_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_info`
--
ALTER TABLE `payment_info`
  MODIFY `pay_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_info`
--
ALTER TABLE `booking_info`
  ADD CONSTRAINT `booking_info_ibfk_1` FOREIGN KEY (`art_id`) REFERENCES `art_info` (`art_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_info_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customer_info` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback_info`
--
ALTER TABLE `feedback_info`
  ADD CONSTRAINT `feedback_info_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer_info` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD CONSTRAINT `payment_info_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer_info` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_info_ibfk_2` FOREIGN KEY (`bart_id`) REFERENCES `booking_info` (`bart_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
