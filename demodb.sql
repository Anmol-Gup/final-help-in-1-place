-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220722.bbf4e29d52
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2022 at 09:01 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `id` int(11) NOT NULL,
  `don_name` text NOT NULL,
  `don_email` varchar(100) NOT NULL,
  `don_contact` varchar(10) NOT NULL,
  `donation_ngotype` varchar(100) NOT NULL,
  `don_address` varchar(200) NOT NULL,
  `don_city` varchar(100) NOT NULL,
  `donation_state` varchar(100) NOT NULL,
  `don_pan` varchar(6) NOT NULL,
  `don_dateOfBirth` date NOT NULL,
  `don_amount` varchar(200) NOT NULL,
  `don_option` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`id`, `don_name`, `don_email`, `don_contact`, `donation_ngotype`, `don_address`, `don_city`, `donation_state`, `don_pan`, `don_dateOfBirth`, `don_amount`, `don_option`) VALUES
(1, 'Sneha Tripathi', 'tripathisneha809@gmail.com', '6394496154', 'Adarsh', 'LC 116/3 A.D.A Colony naini', 'Prayagraj', 'UP', '211008', '0000-00-00', '200', 'upi'),
(2, 'smita tripathi', 'snehacs9936797947@gmail.com', '6394496154', '3D', 'LC 116/3 A.D.A Colony naini', 'Prayagraj', 'UP', '211008', '2022-05-17', '200', 'emandate'),
(3, 'Surya', 'tripathisneha809@gmail.com', '6394496154', '15', 'LC 116/3 A.D.A Colony naini', 'Prayagraj', 'UP', '211008', '2022-06-05', '200', 'emandate'),
(4, 'Piyush', 'tripathisneha809@gmail.com', '6394496154', '15', 'LC 116/3 A.D.A Colony naini', 'Prayagraj', 'UP', '211008', '2000-05-09', '200', 'emandate'),
(5, 'Prayagraj', 'tripathisneha809@gmail.com', '6394496154', '17', 'LC 116/3 A.D.A Colony naini', 'Prayagraj', 'UP', '211008', '2003-06-01', '40', 'credit');

-- --------------------------------------------------------

--
-- Table structure for table `ebook`
--

CREATE TABLE `ebook` (
  `id` int(11) NOT NULL,
  `uploader_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `book_desc` varchar(200) DEFAULT NULL,
  `author` varchar(30) NOT NULL,
  `yop` int(11) NOT NULL,
  `pdf` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ebook`
--

INSERT INTO `ebook` (`id`, `uploader_id`, `title`, `book_desc`, `author`, `yop`, `pdf`) VALUES
(1, 0, 'XYZ', 'Qwerty', 'Surya', 2021, 'ebooks/CertificateOfCompletion_Learning Java 2018.pdf'),
(2, 0, 'ABC', 'Pqrs', 'Anmol', 2020, 'ebooks/Adhar-converted-compressed.pdf'),
(3, 0, 'ABC', 'Qwerty', 'Anmol', 2021, 'ebooks/CertificateOfCompletion_Learning Java 2018.pdf'),
(4, 0, 'qewnejerwenj', 'wrwejrbwj', 'wnjwejfgnwj', 1234, 'ebooks/Adhar-converted-compressed.pdf'),
(5, 0, 'Pqrs', '', 'KK Mohan', 2021, 'ebooks/AKTU marksheet-converted.pdf'),
(6, 0, 'sql', '', 'abc', 2021, 'ebooks/Assignment (Email).pdf'),
(7, 0, 'Hindu', 'holy book', 'sona pandey', 1894, 'ebooks/KCS751A_Lab_Manual_AI.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `password`, `email`) VALUES
(1, 'Surya', '$2y$10$2V.h6PSPdbkPJNFf3A.OjeMeJ3nlkbh82jlB9vNsNlS.ZazQnH4Ma', 'sp43@gmail.com'),
(2, 'anmol', '$2y$10$TAG8sAGROAGS7DtgkIS1N.hWCG5cOwM/af4ayNlNs.PEskTy0stN2', 'anmol@yahoo.com'),
(3, 'pallavi', '$2y$10$Q.8QJ2RqBxQYlLAElztLr.ojQ9qewvLJltP8nwX1.LSEUhH55//Gy', 'pallavi@gmail.com'),
(4, 'sneha tripathi', '$2y$10$HQOgjph3UTKYMFv7tHh5ouwJuuPjZJ0Zo0hmoMvrPgd5PBE.VeR.y', 'tripathisneha809@gmail.com'),
(5, 'Sneha', '$2y$10$NjIoXzY/DO9p0CHGmmLttuu4YvCRKaLmrHwstCfHA0c7CS7VY4SVC', 'snehacs9936797947@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `newseventform`
--

CREATE TABLE `newseventform` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `start_date_time` datetime NOT NULL,
  `end_date_time` datetime NOT NULL,
  `event_link` mediumtext NOT NULL,
  `image_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newseventform`
--

INSERT INTO `newseventform` (`id`, `title`, `description`, `venue`, `start_date_time`, `end_date_time`, `event_link`, `image_url`) VALUES
(2, 'Painting', 'painting', 'ADA', '2022-03-23 03:53:00', '2022-03-30 06:57:00', 'https://www.united.ac.in/', ''),
(3, 'Painting', 'painting', 'ADA', '2022-03-23 03:53:00', '2022-03-30 06:57:00', 'https://www.united.ac.in/', ''),
(4, 'Painting', 'painting', 'ADA', '2022-03-23 03:53:00', '2022-03-30 06:57:00', 'https://www.united.ac.in/', ''),
(5, 'Painting', 'painting', 'ADA', '2022-03-23 03:53:00', '2022-03-30 06:57:00', 'https://www.united.ac.in/', ''),
(6, 'Painting', 'painting', 'ADA', '2022-03-23 03:53:00', '2022-03-30 06:57:00', 'https://www.united.ac.in/', ''),
(7, 'paint', 'paint', 'ada', '2022-03-23 09:38:00', '2022-03-25 09:38:00', 'https://www.united.ac.in/', 'uploads/new_default.jpg'),
(8, 'Women power', 'womens', 'ada', '2022-03-24 05:26:00', '2022-03-24 16:26:00', 'https://www.united.ac.in/', ''),
(9, 'Helping', 'food help', 'Arail Ghat', '2022-04-29 17:58:00', '2022-05-03 18:58:00', '', 'uploads/new_default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ngo_register`
--

CREATE TABLE `ngo_register` (
  `ngoid` int(11) NOT NULL,
  `ngo_name` varchar(50) NOT NULL,
  `ngo_domain` varchar(150) DEFAULT NULL,
  `act_name` varchar(50) NOT NULL,
  `registration_no` varchar(12) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `founder_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `aadhar` varchar(12) NOT NULL,
  `pan` varchar(10) NOT NULL,
  `ngo_address` varchar(100) NOT NULL,
  `ngo_city` varchar(50) NOT NULL,
  `ngo_state` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `ngo_mobile` varchar(10) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `ngo_email` varchar(50) NOT NULL,
  `registration_date` date NOT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `ngo_desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ngo_register`
--

INSERT INTO `ngo_register` (`ngoid`, `ngo_name`, `ngo_domain`, `act_name`, `registration_no`, `city`, `state`, `founder_name`, `email`, `mobile`, `aadhar`, `pan`, `ngo_address`, `ngo_city`, `ngo_state`, `pincode`, `ngo_mobile`, `url`, `ngo_email`, `registration_date`, `profile_photo`, `ngo_desc`) VALUES
(7, 'Aadarsh Mahila Mandal', 'Eduaction, Health', '1973', '4156', 'BHOPAL', 'Bihar', 'NUSRAT SULTAN', 'nusrat@gmail.com', '9900990099', '123456789011', 'EEEEE5350E', 'Vill-Ladugama, PO-Agai, Block-Benipatti Dist - Madhunami, Bihar - PIN 847303', 'Madhunami', 'Bihar', 847303, '9835082013', 'http://www.adarshmahilamandalladugama.org/', 'ammladoogama@gmail.com', '1996-12-06', 'ngo_profile/about.jpg', 'Adarsh Mahila Mandal is a non-profit organisation, established in 2000 that works primarily in the domain of Gender, Tribes, Food & Nutrition, Health, Education, Specially Abled and Child & Youth Development. Its primary office is in Valsad, Gujarat.'),
(8, 'AANYA FOUNDATION', 'Art & Culture,Children,Education & Literacy,Environment & Forests,Health & Family Welfare', '1860', '2244', 'Lucknow', 'Uttar Pradesh', 'Ashok Singh', 'ashok123@gmail.com', '8800880088', '123456789022', 'FFFFF5350F', '12/506, Indira Nagar, Lucknow, Uttar Pradesh 226016', 'Lucknow', 'Uttar Pradesh', 226016, '8303684230', 'https://aanyafoundation.business.site/', 'aanyafoundationindia@gmail.com', '2020-10-09', 'ngo_profile/about.jpg', 'न्यास के द्वारा हर प्रकार का वह कार्य करना जिससे समाज की भलाई, विकास और उत्थान हो ।'),
(9, 'Adarsh Shiksha Samiti', 'Education & Literacy,Vocational Training', 'Societies Registration Act, 1860', '14844', 'Aligarh', 'Uttar Pradesh', 'Amar Singh', 'amarsingh@gmail.com', '7700770077', '123456789033', 'VVVVV5340V', 'Village Post Dadon, Aligarh', 'Aligarh', 'Uttar Pradesh', 313027, '8534966685', 'http://www.adarshshikshango.org/', 'dy8373968@gmail.com', '2000-07-27', 'ngo_profile/about.jpg', 'Adarsh Shiksha Samiti is a non-profit organisation, established in 1985 that works primarily in the domain of Child & Youth Development. Its primary office is in Dewas, Madhya Pradesh.'),
(10, '3D SEWA SANSTHAN', 'Education, Health, Animal, others', '1860', '2059', 'Bilgram', 'Uttar Pradesh', 'Shailesh Kumar Dixit', 'shaileshdixit2019@gmail.com', '9919070432', '123456789044', 'BBBBB6360B', 'Bilgram, Hardoi, Uttar Pradesh - 241301', 'Hardoi', 'Uttar Pradesh', 241301, '9919070432', 'http://www.doaram.com/organization/3d-sewa-sansthan', 'shaileshdixit2019@gmail.com', '2014-12-18', 'ngo_profile/about.jpg', '3D Sewa Sansthan is established and administered by the President, Shailesh Kumar Dixit. It is incorporated in the year 2014. The organisation is being located at Hardoi, Uttar Pradesh.'),
(11, 'CARE FOUNDATION', 'Art & Culture,Children,Dalit Upliftment,Education & Literacy,Environment & Forests,Women\'s Development & Empowerment', '1860', '2844', 'mumbai', 'Maharashtra', 'Aniket Ghanshyam Bhankal', 'connect@care.org.in', '9326013252', '123456789055', 'DDDDD5350D', '227 3/4, Behind Bldg No. 91/LA, Teen Bungalow, J.P Road, Khar (East), Mumbai – 400 051, India.', 'mumbai', 'Maharashtra', 400051, '8779175537', 'https://care.org.in/', 'carefoundation410@gmail.com', '2018-10-04', 'ngo_profile/about.jpg', 'CARE refers to \"Cultural Association for Recreation and Education\".\r\nEstablished in December 2011 under the Leadership of Mr. Aniket Ghanshyam Bhankal (Co-Founder Chairman).'),
(12, 'AIM', 'Education, Livelihood Development, Empowerment and Emergency Relief', 'Indian Trust Act- 1882', '408/2015', 'Lucknow', 'Uttar Pradesh', 'Anwarul Haq', 'aimlucknow@gmail.com', '9415121462', '123456789066', 'EEEEE5350E', '61, Vasudev Nagar, Kamta, Chinhat Lucknow-226028 U.P.India', 'Lucknow', 'Uttar Pradesh', 226028, '9415121462', 'https://aimindiatrust.org/', 'aimlucknow@gmail.com', '2015-06-15', 'ngo_profile/about.jpg', 'Aim Trust is an association of people working towards the development, empowerment and fulfillment, protection and respect of rights of men, women and children and to ensure that it reaches the marginalized sections of society including children, dalits.'),
(13, 'YUVRAJ FOUNDATION', 'Animal Husbandry, Dairying & Fisheries', '21,1860', '210/2014', 'MEERUT', 'Uttar Pradesh', 'RITURAJ CHAUDHARY', 'yuvrajfoundationngo@gmail.com', '9927814789', '123456789017', 'FFFFF5350G', 'VILLAGE POST NILOHA TEHSIL MAWANA DISTRICT MEERUT PIN 250401', 'meerut', 'Uttar Pradesh', 250401, '9927814789', 'http://www.yuvrajfoundation.org', 'yuvrajfoundationngo@gmail.com', '2014-06-02', 'ngo_profile/about.jpg', 'NONE'),
(14, 'WOMEN WELLNESS FOUNDATION', 'Women healthcare camps', 'Women Wellness Foundation', '8393', 'Lucknow', 'Uttar Pradesh', 'Anurag Vidyarthi', 'anurag.vidyarthi@gmail.com', '9307911627', '123456789018', 'HHHHH5350H', 'L III / 115 , Sector- D ,Aliganj, Lucknow', 'Lucknow', 'Uttar Pradesh', 111222, '9307911627', 'http://www.swasthyanivesh.in/', 'anurag.vidyarthi@gmail.com', '2017-06-30', 'ngo_profile/about.jpg', 'World Sports & Culture Development Foundation is a Device Trademark filed on 25 September 2017 in Punjab through Delhi IP Office. The Trademark was registered to World Sports & Culture Development Foundation Trust Details: Satinder Sandhu, Harneet Kaur.'),
(15, 'Vikramaditya Foundation', 'Children,Women\'s Development & Empowerment', 'Indian trust act 1882', '412/2020', 'Gautam Buddha Nagar', 'Uttar Pradesh', 'Vikramaditya', 'vikramadityafoundationindia@gmail.com', '7027033066', '123456789099', 'GGGGG5350G', 'Gautam Buddha University Greater Noida', 'Gautam Buddha Nagar', 'Uttar Pradesh', 222111, '7027033066', 'https://www.vikramadityafoundation.org/', 'vikramadityafoundationindia@gmail.com', '2020-06-27', 'ngo_profile/about.jpg', 'we’ve been driven by the same ideas we initially founded our Women & Child Welfare NGO upon Education, support, empowerment, and progress. Learn more about our mission, our vision, and how we go about making the changes we want to see.'),
(16, 'Utsav Kanya Vivah Foundation', 'Women\'s Development & Empowerment', 'turst 12AA', '102', 'MEERUT', 'Uttar Pradesh', 'Anonymous', 'shaajob@gmail.com', '9548351014', '123456789000', 'IIIII5350I', 'BADHLA KAITWADA POST -SISOLI MEERUT', 'MEERUT', 'Uttar Pradesh', 333222, '9548351014', 'https://utsavvivah.com/', 'shaajob@gmail.com', '2021-12-27', 'ngo_profile/about.jpg', 'Utsav foundation working towards providing girls\' education & helping underprivileged women to get married & lead a better life.'),
(17, 'Umang Foundation', 'Art & Culture,Education & Literacy,Environment & Forests', '21,1860', 'LUC/09273', 'LUCKNOW', 'Uttar Pradesh', 'Ashish Goyal', 'umangfoundation.co.in@gmail.com', '9170008717', '123456789001', 'AAAAA5350A', '545KA/D-723NEW PARA COLONY,RAJAJIPURAM,LUCKNOW.LUCKNOW,226017', 'Lucknow', 'Uttar Pradesh', 226017, '9170008717', 'https://umang-foundation.co.in/', 'umangfoundation.co.in@gmail.com', '2021-03-03', 'ngo_profile/about.jpg', '1. We have help poor people and gave them blankets and food. 2. we have made people aware about Arogya setu app and help them download it ans how to use its feature. 3.we gave foods and fruits in old age house .');

-- --------------------------------------------------------

--
-- Table structure for table `otp_table`
--

CREATE TABLE `otp_table` (
  `id` int(11) NOT NULL,
  `otp` int(11) NOT NULL,
  `is_expired` int(11) NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `otp_table`
--

INSERT INTO `otp_table` (`id`, `otp`, `is_expired`, `create_at`) VALUES
(1, 123456, 1, '2022-04-06 19:14:11'),
(2, 123456, 1, '2022-04-06 19:16:51'),
(3, 123456, 1, '2022-04-06 19:18:58'),
(4, 123456, 1, '2022-04-06 19:49:14'),
(5, 123456, 1, '2022-04-06 23:40:14'),
(6, 123456, 1, '2022-04-06 23:41:21'),
(7, 123456, 1, '2022-04-06 23:43:12'),
(8, 123456, 1, '2022-04-06 23:44:13'),
(9, 123456, 1, '2022-04-06 23:44:20'),
(10, 123456, 1, '2022-04-06 23:44:47'),
(11, 123456, 1, '2022-04-06 23:46:03'),
(12, 123456, 1, '2022-04-06 23:46:25'),
(13, 123456, 1, '2022-04-06 23:46:40'),
(14, 123456, 1, '2022-04-06 23:48:45'),
(15, 123456, 1, '2022-04-06 23:49:13'),
(16, 123456, 1, '2022-04-06 23:49:29'),
(17, 123456, 1, '2022-04-06 23:50:17'),
(18, 123456, 1, '2022-04-06 23:50:34'),
(19, 123456, 1, '2022-04-06 23:52:02'),
(20, 123456, 1, '2022-04-06 23:53:40'),
(21, 123456, 1, '2022-04-06 23:54:28'),
(22, 123456, 1, '2022-04-06 23:56:09'),
(23, 123456, 1, '2022-04-06 23:57:50'),
(24, 123456, 1, '2022-04-09 13:17:38'),
(25, 123456, 1, '2022-04-09 13:17:50'),
(26, 123456, 1, '2022-04-09 13:18:01'),
(27, 123456, 1, '2022-04-09 13:18:16'),
(28, 123456, 1, '2022-04-09 13:18:48'),
(29, 123456, 1, '2022-04-09 13:20:07'),
(30, 123456, 1, '2022-04-09 13:20:11'),
(31, 123456, 1, '2022-04-09 13:20:14'),
(32, 123456, 1, '2022-04-09 13:20:55'),
(33, 123456, 1, '2022-04-09 13:30:21'),
(34, 123456, 1, '2022-04-09 13:30:46'),
(35, 123456, 1, '2022-04-09 13:31:30'),
(36, 123456, 1, '2022-04-09 13:32:27'),
(37, 123456, 1, '2022-04-09 13:32:46'),
(38, 123456, 1, '2022-04-09 13:33:10'),
(39, 123456, 1, '2022-04-09 13:34:40'),
(40, 123456, 1, '2022-04-09 13:36:01'),
(41, 123456, 1, '2022-04-09 13:37:04'),
(42, 123456, 1, '2022-04-09 13:39:29'),
(43, 123456, 1, '2022-04-09 13:42:25'),
(44, 123456, 1, '2022-04-09 13:43:23'),
(45, 123456, 1, '2022-04-09 13:43:54'),
(46, 123456, 1, '2022-04-09 13:44:23'),
(47, 123456, 1, '2022-04-09 13:44:36'),
(48, 123456, 1, '2022-04-09 13:47:02'),
(49, 123456, 1, '2022-04-09 13:47:39'),
(50, 123456, 1, '2022-04-09 13:48:08'),
(51, 123456, 1, '2022-04-09 13:48:33'),
(52, 123456, 1, '2022-04-09 13:49:05'),
(53, 123456, 1, '2022-04-09 14:34:50'),
(54, 123456, 1, '2022-04-09 14:35:55'),
(55, 123456, 1, '2022-04-09 14:36:27'),
(56, 123456, 1, '2022-04-09 14:37:08'),
(57, 123456, 1, '2022-04-09 14:38:31'),
(58, 123456, 1, '2022-04-09 16:09:00'),
(59, 123456, 1, '2022-04-09 16:14:37'),
(60, 123456, 1, '2022-04-09 16:15:22'),
(61, 123456, 1, '2022-04-09 16:34:41'),
(62, 123456, 1, '2022-04-09 18:49:09'),
(63, 123456, 1, '2022-04-09 19:50:30'),
(64, 123456, 1, '2022-04-09 19:52:31'),
(65, 123456, 1, '2022-04-09 19:54:33'),
(66, 123456, 1, '2022-04-09 19:59:47'),
(67, 123456, 1, '2022-04-09 20:03:22'),
(68, 123456, 1, '2022-04-09 20:25:43'),
(69, 123456, 1, '2022-04-09 22:08:56'),
(70, 123456, 1, '2022-04-09 23:22:29'),
(71, 123456, 1, '2022-04-09 23:28:05'),
(72, 123456, 1, '2022-04-09 23:56:07'),
(73, 123456, 1, '2022-04-10 00:00:42'),
(74, 123456, 1, '2022-04-10 00:01:05'),
(75, 123456, 1, '2022-04-10 00:01:30'),
(76, 123456, 1, '2022-04-10 00:01:50'),
(77, 123456, 1, '2022-04-10 00:06:34'),
(78, 123456, 1, '2022-04-10 00:08:03'),
(79, 123456, 1, '2022-04-10 00:09:05'),
(80, 123456, 1, '2022-04-10 00:09:34'),
(81, 123456, 1, '2022-04-10 00:10:46'),
(82, 123456, 1, '2022-04-10 00:11:18'),
(83, 123456, 1, '2022-04-10 00:14:15'),
(84, 123456, 1, '2022-04-10 00:14:51'),
(85, 123456, 1, '2022-04-10 00:16:24'),
(86, 123456, 1, '2022-04-10 00:17:38'),
(87, 123456, 1, '2022-04-10 00:21:01'),
(88, 123456, 1, '2022-04-10 00:23:07'),
(89, 123456, 1, '2022-04-10 00:30:00'),
(90, 123456, 1, '2022-04-10 00:30:45'),
(91, 123456, 1, '2022-04-10 00:31:35'),
(92, 123456, 1, '2022-04-10 00:32:32'),
(93, 123456, 1, '2022-04-10 00:36:49'),
(94, 123456, 1, '2022-04-10 00:38:29'),
(95, 123456, 1, '2022-04-10 00:39:17'),
(96, 123456, 1, '2022-04-10 00:39:38'),
(97, 123456, 1, '2022-04-10 00:40:01'),
(98, 123456, 1, '2022-04-10 00:41:01'),
(99, 123456, 1, '2022-04-10 00:44:46'),
(100, 123456, 1, '2022-04-10 00:45:12'),
(101, 123456, 1, '2022-04-10 00:46:49'),
(102, 123456, 1, '2022-04-10 00:47:27'),
(103, 123456, 1, '2022-04-10 09:05:31'),
(104, 123456, 1, '2022-04-10 09:07:01'),
(105, 123456, 1, '2022-04-10 10:03:44'),
(106, 123456, 1, '2022-04-10 15:31:59'),
(107, 123456, 1, '2022-04-27 16:58:00'),
(108, 123456, 1, '2022-04-30 08:52:00'),
(109, 123456, 1, '2022-04-30 10:23:56'),
(110, 123456, 1, '2022-04-30 10:24:17'),
(111, 123456, 1, '2022-04-30 10:26:33'),
(112, 123456, 1, '2022-04-30 10:27:25'),
(113, 123456, 1, '2022-04-30 10:58:28'),
(114, 123456, 1, '2022-04-30 11:00:49'),
(115, 123456, 1, '2022-04-30 11:02:46'),
(116, 123456, 1, '2022-04-30 11:59:58'),
(117, 123456, 1, '2022-04-30 12:42:14'),
(118, 123456, 1, '2022-04-30 12:42:41'),
(119, 123456, 1, '2022-04-30 12:42:52'),
(120, 123456, 1, '2022-05-01 23:48:20'),
(121, 123456, 1, '2022-05-05 10:10:12'),
(122, 123456, 1, '2022-05-30 12:33:17'),
(123, 123456, 1, '2022-05-31 23:55:28'),
(124, 123456, 1, '2022-05-31 23:57:27'),
(125, 123456, 1, '2022-06-01 10:35:26'),
(126, 123456, 1, '2022-06-01 10:40:22'),
(127, 123456, 1, '2022-06-01 10:41:20'),
(128, 123456, 1, '2022-06-01 10:45:42'),
(129, 123456, 1, '2022-06-01 10:48:53'),
(130, 123456, 1, '2022-06-01 10:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_reg`
--

CREATE TABLE `volunteer_reg` (
  `volunteer_gender` varchar(6) NOT NULL,
  `vol_dob` date NOT NULL,
  `vol_contact` varchar(10) NOT NULL,
  `vol_address` varchar(100) NOT NULL,
  `vol_city` varchar(50) NOT NULL,
  `vol_state` varchar(50) NOT NULL,
  `vol_occ` varchar(50) NOT NULL,
  `other_occu` varchar(50) NOT NULL,
  `vol_dom_desc` varchar(200) NOT NULL,
  `vol_join_desc` varchar(200) NOT NULL,
  `resume` varchar(100) DEFAULT NULL,
  `ngo_id` int(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `mid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `volunteer_reg`
--

INSERT INTO `volunteer_reg` (`volunteer_gender`, `vol_dob`, `vol_contact`, `vol_address`, `vol_city`, `vol_state`, `vol_occ`, `other_occu`, `vol_dom_desc`, `vol_join_desc`, `resume`, `ngo_id`, `vid`, `mid`) VALUES
('male', '1999-08-12', '9876543210', 'qwerty 321', 'PRAYAGRAJ', 'UP', 'student', 'null', 'none', 'none', 'resume/Assignment (Email).pdf', 7, 1, 1),
('male', '2003-03-24', '9876543210', 'qwerty 321', 'PRAYAGRAJ', 'UP', 'student', 'null', 'none', 'none', 'resume/Assignment (Email).pdf', 8, 2, 1),
('male', '2003-03-11', '9876543212', 'abc 4321', 'gurgaon', 'UP', 'employee', 'null', 'none', 'none', 'resume/Assignment (Email).pdf', 10, 3, 2),
('male', '2003-03-08', '9935000000', 'qbc 12345', 'kanpur', 'UP', 'employee', 'null', 'none', 'none', 'resume/Assignment (Email).pdf', 10, 4, 1),
('female', '2003-03-01', '8800880011', 'wxyz 4321', 'varanasi', 'UP', 'employee', 'null', 'qwerty', 'qwerty', 'resume/Assignment (Email).pdf', 7, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `website_feedback`
--

CREATE TABLE `website_feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `descp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `website_feedback`
--

INSERT INTO `website_feedback` (`id`, `name`, `descp`, `email`) VALUES
(1, 'surya', 'sp@gmail.com', 'nice website'),
(3, 'Piyush', 'piyush@gmail.com', 'demo content'),
(5, 'Sneha', 'sneha@gmail.com', 'helpful website'),
(16, 'Anmol', 'anmol@yahoo.com', 'Demo content');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ebook`
--
ALTER TABLE `ebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newseventform`
--
ALTER TABLE `newseventform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngo_register`
--
ALTER TABLE `ngo_register`
  ADD PRIMARY KEY (`ngoid`);

--
-- Indexes for table `otp_table`
--
ALTER TABLE `otp_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteer_reg`
--
ALTER TABLE `volunteer_reg`
  ADD PRIMARY KEY (`vid`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `website_feedback`
--
ALTER TABLE `website_feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ebook`
--
ALTER TABLE `ebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `newseventform`
--
ALTER TABLE `newseventform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ngo_register`
--
ALTER TABLE `ngo_register`
  MODIFY `ngoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `otp_table`
--
ALTER TABLE `otp_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `volunteer_reg`
--
ALTER TABLE `volunteer_reg`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `website_feedback`
--
ALTER TABLE `website_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `volunteer_reg`
--
ALTER TABLE `volunteer_reg`
  ADD CONSTRAINT `volunteer_reg_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `member` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
