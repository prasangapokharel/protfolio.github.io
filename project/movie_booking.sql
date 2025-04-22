-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2025 at 02:19 AM
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
-- Database: `movie_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `show_id` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `booking_status` enum('Pending','Confirmed','Cancelled') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_status` enum('pending','paid','failed','refunded') DEFAULT 'pending',
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `user_id`, `show_id`, `total_price`, `booking_status`, `created_at`, `payment_status`, `payment_method`, `payment_id`) VALUES
(57, 3, 434, 620.00, 'Confirmed', '2025-03-22 15:57:46', 'paid', 'khalti', 'ZRHGfrTHmcdWPvbi2rPxsV'),
(58, 3, 434, 820.00, 'Confirmed', '2025-03-22 16:00:36', 'paid', 'khalti', 'EekJsEJhapWF7JFWbqaSqa'),
(59, 3, 434, 1020.00, 'Confirmed', '2025-03-22 16:43:35', 'paid', 'khalti', 'UweHuCiTHV8kYvyr7oWjgd'),
(60, 3, 434, 1020.00, 'Confirmed', '2025-03-22 17:03:13', 'paid', 'khalti', 'cMqvP9ZdGRXzb3otXswMMc'),
(61, 3, 434, 420.00, 'Confirmed', '2025-03-24 01:04:26', 'paid', 'khalti', 'iyqhPT848sZyMu4kkc5tcb'),
(62, 2, 435, 320.00, 'Confirmed', '2025-03-24 15:34:25', 'paid', 'khalti', 'e8fdHtWSJS3Da4gXXT9xH7');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `poster_url` varchar(255) DEFAULT NULL,
  `trailer_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `director` varchar(255) DEFAULT NULL,
  `cast` text DEFAULT NULL,
  `certificate` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `title`, `genre`, `duration`, `release_date`, `description`, `rating`, `language`, `poster_url`, `trailer_url`, `created_at`, `director`, `cast`, `certificate`, `status`) VALUES
(5, 'Iron Man  4', 'Action', 180, '2025-02-22', 'After surviving an unexpected attack in enemy territory, jet-setting industrialist Tony Stark builds a high-tech suit of armor and vows to protect the world as Iron Man. Straight from the pages of the legendary comic book, Iron Man is a hero who is built - not born - to be unlike any other.', 4.0, 'Hindi', 'https://images.moviesanywhere.com/45589cb573be13bb984b078ed3e1cf9e/a0652686-b625-4b41-bdf1-f32c3d9471a6.webp?h=375&resize=fit&w=250', 'https://www.youtube.com/watch?app=desktop&v=32YiPrKh7AQ&t=36s', '2025-03-08 10:43:04', 'Jon Favreau', 'Robert Downey Jr., Terrence Howard, Jeff Bridges, Gwyneth Paltrow, Leslie Bibb, Shaun Toub, Faran Tahir, Clark Gregg, Bill Smitrovich, Sayed Badreya, Paul Bettany, Jon Favreau, Peter Billingsley, Tim Guinee, Will Lyman, Tom Morello, Marco Khan, Daston Kalili, Ido Ezra, Kevin Foster, Garrett Noel, Eileen Weisinger, Ahmed Ahmed, Fahim Fazli, Gerard Sanders, Tim Rigby, Russell Richardson, Nazanin Boniadi, Thomas Craig Plumer, Robert Berkman, Stacy Stas, Lauren Scyphers, Dr. Frank Nyi, Marvin Jordan, Jim Cramer, Donna Evans Merlo, Reid Harper, Summer Kylie Remington, Ava Rose Williams, Vladimir Kubr, Callie Marie Croughwell, Javan Tahir, Sahar Bibiyan, Patrick O\'Connell, Adam Harrington, Meera Simhan, Ben Newmark, Ricki Noel Lander, Jeannine Kaspar, Sarah Cahill, Stan Lee, Justin Rex, Zorianna Kit, Lana Kinnear, Nicole Lindeblad, Masha Lund, Gabrielle Tuite, Tim Griffin, Joshua Harto, Micah Hauptman, James Bethea', 'U', 'active'),
(6, 'Iron Man  4', 'Action', 180, '2025-02-22', 'After surviving an unexpected attack in enemy territory, jet-setting industrialist Tony Stark builds a high-tech suit of armor and vows to protect the world as Iron Man. Straight from the pages of the legendary comic book, Iron Man is a hero who is built - not born - to be unlike any other.', 4.0, 'Hindi', 'https://images.moviesanywhere.com/45589cb573be13bb984b078ed3e1cf9e/a0652686-b625-4b41-bdf1-f32c3d9471a6.webp?h=375&resize=fit&w=250', 'https://www.youtube.com/watch?app=desktop&v=32YiPrKh7AQ&t=36s', '2025-03-08 11:16:01', 'Jon Favreau', 'Robert Downey Jr., Terrence Howard, Jeff Bridges, Gwyneth Paltrow, Leslie Bibb, Shaun Toub, Faran Tahir, Clark Gregg, Bill Smitrovich, Sayed Badreya, Paul Bettany, Jon Favreau, Peter Billingsley, Tim Guinee, Will Lyman, Tom Morello, Marco Khan, Daston Kalili, Ido Ezra, Kevin Foster, Garrett Noel, Eileen Weisinger, Ahmed Ahmed, Fahim Fazli, Gerard Sanders, Tim Rigby, Russell Richardson, Nazanin Boniadi, Thomas Craig Plumer, Robert Berkman, Stacy Stas, Lauren Scyphers, Dr. Frank Nyi, Marvin Jordan, Jim Cramer, Donna Evans Merlo, Reid Harper, Summer Kylie Remington, Ava Rose Williams, Vladimir Kubr, Callie Marie Croughwell, Javan Tahir, Sahar Bibiyan, Patrick O\'Connell, Adam Harrington, Meera Simhan, Ben Newmark, Ricki Noel Lander, Jeannine Kaspar, Sarah Cahill, Stan Lee, Justin Rex, Zorianna Kit, Lana Kinnear, Nicole Lindeblad, Masha Lund, Gabrielle Tuite, Tim Griffin, Joshua Harto, Micah Hauptman, James Bethea', 'U', 'active'),
(7, 'K.G.F: Chapter 1', 'Action', 140, '2025-03-07', 'KGF Chapter 1 is a film based on the gold mines that represents absolute power. The film is based on power struggle to rule these fields which eventually becomes one man’s destiny and his final destination.', 4.8, 'Hindi', 'https://w0.peakpx.com/wallpaper/707/32/HD-wallpaper-kgf-legend-superstar-yash.jpg', 'https://www.youtube.com/watch?v=-KfsY-qwBS0', '2025-03-08 15:12:15', 'Prashanth Neel', 'Vijendra Ingalgi, Son of Anand Ingalgi continues the story of KGF and Rocky in Chapter 2. Rocky survives the attack by Vanaram’s guards after killing Garuda. He is a hero and a saviour to the people of Narachi. While trying to fulfil his promise to his mother, he must face many obstacles in the form of Adheera, Inayat Khalil and Ramika sen.', 'U', 'active'),
(8, 'Hostel 3', 'Romance, Drama', 160, '2025-03-09', 'Hostel 3 is the third installment from the movie franchise Hostel starring Paras Bam Thakuri, Ryhaan Giri, Padam Tamang & others, directed by Sashan Kandel.', 4.0, 'Nepali', 'https://m.media-amazon.com/images/M/MV5BNDkxYmRlYWYtOGQyYy00Mzk1LTg2OTctYzkxMDIyYjRhYzVkXkEyXkFqcGc@._V1_QL75_UY562_CR21,0,380,562_.jpg', 'https://youtu.be/9WTiSuyNq1Y', '2025-03-09 04:50:56', 'Sashan Kandel', 'Paras Bam Thakuri, Ryhaan Giri, Padam Tamang, Prabin Khatiwoda', 'U', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` enum('Cash','Esewa','Khalti','Bank Transfer') NOT NULL,
  `status` enum('Paid','Unpaid') NOT NULL DEFAULT 'Unpaid',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `user_id`, `booking_id`, `show_id`, `amount`, `payment_method`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 50, 434, 420.00, 'Khalti', 'Paid', '2025-03-22 14:56:47', '2025-03-22 14:56:47'),
(2, 2, 51, 434, 420.00, 'Khalti', 'Paid', '2025-03-22 15:10:03', '2025-03-22 15:10:03'),
(3, 3, 53, 434, 420.00, 'Khalti', 'Paid', '2025-03-22 15:22:47', '2025-03-22 15:22:47'),
(4, 3, 54, 434, 620.00, 'Khalti', 'Paid', '2025-03-22 15:25:33', '2025-03-22 15:25:33'),
(5, 3, 55, 434, 820.00, 'Khalti', 'Paid', '2025-03-22 15:35:08', '2025-03-22 15:35:08'),
(6, 3, 56, 434, 1220.00, 'Khalti', 'Paid', '2025-03-22 15:43:21', '2025-03-22 15:43:21'),
(7, 3, 57, 434, 620.00, 'Khalti', 'Paid', '2025-03-22 15:58:25', '2025-03-22 15:58:25'),
(8, 3, 58, 434, 820.00, 'Khalti', 'Paid', '2025-03-22 16:01:21', '2025-03-22 16:01:21'),
(9, 3, 59, 434, 1020.00, 'Khalti', 'Paid', '2025-03-22 16:44:14', '2025-03-22 16:44:14'),
(10, 3, 59, 434, 1020.00, 'Khalti', 'Paid', '2025-03-22 17:00:47', '2025-03-22 17:00:47'),
(11, 3, 60, 434, 1020.00, 'Khalti', 'Paid', '2025-03-22 17:03:49', '2025-03-22 17:03:49'),
(12, 3, 60, 434, 1020.00, 'Khalti', 'Paid', '2025-03-22 17:03:50', '2025-03-22 17:03:50'),
(13, 3, 61, 434, 420.00, 'Khalti', 'Paid', '2025-03-24 01:07:47', '2025-03-24 01:07:47'),
(14, 3, 61, 434, 420.00, 'Khalti', 'Paid', '2025-03-24 01:07:49', '2025-03-24 01:07:49'),
(15, 2, 62, 435, 320.00, 'Khalti', 'Paid', '2025-03-24 15:36:59', '2025-03-24 15:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `payment_logs`
--

CREATE TABLE `payment_logs` (
  `log_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `response_data` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_logs`
--

INSERT INTO `payment_logs` (`log_id`, `booking_id`, `user_id`, `amount`, `payment_method`, `payment_id`, `response_data`, `created_at`) VALUES
(3, 50, 3, 420.00, 'khalti', 'CINE50_1742654217', '{\"pidx\":\"HnP8pmzd8Ebkv8JUp5SZgd\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=HnP8pmzd8Ebkv8JUp5SZgd\",\"expires_at\":\"2025-03-22T20:51:56.547242+05:45\",\"expires_in\":1800}', '2025-03-22 20:21:58'),
(4, 50, 3, 420.00, 'khalti', 'CINE50_1742654387', '{\"pidx\":\"p7dY6S9ENErXLwPWcuJEhc\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=p7dY6S9ENErXLwPWcuJEhc\",\"expires_at\":\"2025-03-22T20:54:46.123739+05:45\",\"expires_in\":1800}', '2025-03-22 20:24:47'),
(5, 50, 3, 420.00, 'khalti', 'CINE50_1742654652', '{\"pidx\":\"HRJSLhcAqKbE2CDhr6SaFP\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=HRJSLhcAqKbE2CDhr6SaFP\",\"expires_at\":\"2025-03-22T20:59:11.652747+05:45\",\"expires_in\":1800}', '2025-03-22 20:29:13'),
(6, 50, 3, 420.00, 'khalti', 'CINE50_1742655370', '{\"pidx\":\"nUJjzdZ7zUpwvfpkgK8E8X\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=nUJjzdZ7zUpwvfpkgK8E8X\",\"expires_at\":\"2025-03-22T21:11:09.592256+05:45\",\"expires_in\":1800}', '2025-03-22 20:41:11'),
(7, 50, 3, 420.00, 'khalti', 'nUJjzdZ7zUpwvfpkgK8E8X', '{\"pidx\":\"nUJjzdZ7zUpwvfpkgK8E8X\",\"total_amount\":42000,\"status\":\"Completed\",\"transaction_id\":\"MKj6BBH4utG8fRUaarfoRa\",\"fee\":0,\"refunded\":false}', '2025-03-22 20:41:47'),
(8, 44, 3, 260.00, 'khalti', 'CINE44_1742655464', '{\"pidx\":\"5RJcd7PqKMupYnnig8EiRB\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=5RJcd7PqKMupYnnig8EiRB\",\"expires_at\":\"2025-03-22T21:12:43.358942+05:45\",\"expires_in\":1800}', '2025-03-22 20:42:45'),
(9, 51, 2, 420.00, 'khalti', 'CINE51_1742656167', '{\"pidx\":\"f4ctpkzwbn6RfUBhfUzxJn\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=f4ctpkzwbn6RfUBhfUzxJn\",\"expires_at\":\"2025-03-22T21:24:25.925851+05:45\",\"expires_in\":1800}', '2025-03-22 20:54:27'),
(10, 51, 2, 420.00, 'khalti', 'f4ctpkzwbn6RfUBhfUzxJn', '{\"pidx\":\"f4ctpkzwbn6RfUBhfUzxJn\",\"total_amount\":42000,\"status\":\"Completed\",\"transaction_id\":\"wcEGV3P7Q7vPmFdT8kFXD4\",\"fee\":0,\"refunded\":false}', '2025-03-22 20:55:03'),
(11, 52, 2, 420.00, 'khalti', 'CINE52_1742656327', '{\"pidx\":\"vLZ8RKxqNibi2uWkPVYxMU\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=vLZ8RKxqNibi2uWkPVYxMU\",\"expires_at\":\"2025-03-22T21:27:06.438354+05:45\",\"expires_in\":1800}', '2025-03-22 20:57:08'),
(12, 53, 3, 420.00, 'khalti', 'CINE53_1742656900', '{\"pidx\":\"JKPCkZXkvvmxADXTPzi4YG\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=JKPCkZXkvvmxADXTPzi4YG\",\"expires_at\":\"2025-03-22T21:36:39.264082+05:45\",\"expires_in\":1800}', '2025-03-22 21:06:41'),
(13, 53, 3, 420.00, 'khalti', 'CINE53_1742656941', '{\"pidx\":\"DF5sqbfBEnJwLynSMDjEx2\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=DF5sqbfBEnJwLynSMDjEx2\",\"expires_at\":\"2025-03-22T21:37:20.216793+05:45\",\"expires_in\":1800}', '2025-03-22 21:07:22'),
(14, 53, 3, 420.00, 'khalti', 'DF5sqbfBEnJwLynSMDjEx2', '{\"pidx\":\"DF5sqbfBEnJwLynSMDjEx2\",\"total_amount\":42000,\"status\":\"Completed\",\"transaction_id\":\"PWdnUsAkruh7XHz3SpnRA9\",\"fee\":0,\"refunded\":false}', '2025-03-22 21:07:47'),
(15, 54, 3, 620.00, 'khalti', 'CINE54_1742657105', '{\"pidx\":\"cPc9JJf3TK3PpWJmmMjXmX\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=cPc9JJf3TK3PpWJmmMjXmX\",\"expires_at\":\"2025-03-22T21:40:04.759327+05:45\",\"expires_in\":1800}', '2025-03-22 21:10:06'),
(16, 54, 3, 620.00, 'khalti', 'cPc9JJf3TK3PpWJmmMjXmX', '{\"pidx\":\"cPc9JJf3TK3PpWJmmMjXmX\",\"total_amount\":62000,\"status\":\"Completed\",\"transaction_id\":\"EjB3Att8m9FmHJnWJgcK5d\",\"fee\":0,\"refunded\":false}', '2025-03-22 21:10:33'),
(17, 54, 3, 620.00, 'khalti', 'CINE54?pidx=cPc9JJf3TK3PpWJmmMjXmX_1742657149', '{\"pidx\":\"hUHorjjDenET8hY4CdN3FB\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=hUHorjjDenET8hY4CdN3FB\",\"expires_at\":\"2025-03-22T21:40:48.214873+05:45\",\"expires_in\":1800}', '2025-03-22 21:10:50'),
(18, 55, 3, 820.00, 'khalti', 'CINE55_1742657666', '{\"pidx\":\"VNbA6pWSzTZqv2pbpDst2c\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=VNbA6pWSzTZqv2pbpDst2c\",\"expires_at\":\"2025-03-22T21:49:25.911647+05:45\",\"expires_in\":1800}', '2025-03-22 21:19:27'),
(19, 55, 3, 820.00, 'khalti', 'VNbA6pWSzTZqv2pbpDst2c', '{\"pidx\":\"VNbA6pWSzTZqv2pbpDst2c\",\"total_amount\":82000,\"status\":\"Completed\",\"transaction_id\":\"AdR2pGtCB7SRBen9FPyjhX\",\"fee\":0,\"refunded\":false}', '2025-03-22 21:20:08'),
(20, 56, 3, 1220.00, 'khalti', 'CINE56_1742658180', '{\"pidx\":\"jNtb32AbwpFeBBqYb5o7Ge\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=jNtb32AbwpFeBBqYb5o7Ge\",\"expires_at\":\"2025-03-22T21:57:59.139133+05:45\",\"expires_in\":1800}', '2025-03-22 21:28:00'),
(21, 56, 3, 1220.00, 'khalti', 'jNtb32AbwpFeBBqYb5o7Ge', '{\"pidx\":\"jNtb32AbwpFeBBqYb5o7Ge\",\"total_amount\":122000,\"status\":\"Completed\",\"transaction_id\":\"KkdkcExShL3CdnCBBHQJae\",\"fee\":0,\"refunded\":false}', '2025-03-22 21:28:21'),
(22, 56, 3, 1220.00, 'khalti', 'CINE56_1742658907', '{\"pidx\":\"QaYtThhPMECEct2R5f8FA3\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=QaYtThhPMECEct2R5f8FA3\",\"expires_at\":\"2025-03-22T22:10:06.459319+05:45\",\"expires_in\":1800}', '2025-03-22 21:40:08'),
(23, 56, 3, 1220.00, 'khalti', 'QaYtThhPMECEct2R5f8FA3', '{\"pidx\":\"QaYtThhPMECEct2R5f8FA3\",\"status\":\"Completed\"}', '2025-03-22 21:40:33'),
(24, 57, 3, 620.00, 'khalti', 'CINE57_1742659072', '{\"pidx\":\"ZRHGfrTHmcdWPvbi2rPxsV\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=ZRHGfrTHmcdWPvbi2rPxsV\",\"expires_at\":\"2025-03-22T22:12:51.699768+05:45\",\"expires_in\":1800}', '2025-03-22 21:42:53'),
(25, 57, 3, 620.00, 'khalti', 'ZRHGfrTHmcdWPvbi2rPxsV', '{\"pidx\":\"ZRHGfrTHmcdWPvbi2rPxsV\",\"status\":\"Completed\"}', '2025-03-22 21:43:25'),
(26, 58, 3, 820.00, 'khalti', 'CINE58_1742659243', '{\"pidx\":\"EekJsEJhapWF7JFWbqaSqa\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=EekJsEJhapWF7JFWbqaSqa\",\"expires_at\":\"2025-03-22T22:15:42.151051+05:45\",\"expires_in\":1800}', '2025-03-22 21:45:43'),
(27, 58, 3, 820.00, 'khalti', 'EekJsEJhapWF7JFWbqaSqa', '{\"pidx\":\"EekJsEJhapWF7JFWbqaSqa\",\"status\":\"Completed\"}', '2025-03-22 21:46:21'),
(28, 59, 3, 1020.00, 'khalti', 'CINE59_1742661825', '{\"pidx\":\"UweHuCiTHV8kYvyr7oWjgd\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=UweHuCiTHV8kYvyr7oWjgd\",\"expires_at\":\"2025-03-22T22:58:44.090172+05:45\",\"expires_in\":1800}', '2025-03-22 22:28:45'),
(29, 59, 3, 1020.00, 'khalti', 'UweHuCiTHV8kYvyr7oWjgd', '{\"pidx\":\"UweHuCiTHV8kYvyr7oWjgd\",\"status\":\"Completed\"}', '2025-03-22 22:29:14'),
(30, 59, 3, 1020.00, 'khalti', 'UweHuCiTHV8kYvyr7oWjgd', '{\"pidx\":\"UweHuCiTHV8kYvyr7oWjgd\",\"total_amount\":102000,\"status\":\"Completed\",\"transaction_id\":\"chWo8ZKjJok8Q8KV8BaVwc\",\"fee\":0,\"refunded\":false}', '2025-03-22 22:45:47'),
(31, 60, 3, 1020.00, 'khalti', 'CINE60_1742663004', '{\"pidx\":\"cMqvP9ZdGRXzb3otXswMMc\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=cMqvP9ZdGRXzb3otXswMMc\",\"expires_at\":\"2025-03-22T23:18:22.737214+05:45\",\"expires_in\":1800}', '2025-03-22 22:48:24'),
(32, 60, 3, 1020.00, 'khalti', 'cMqvP9ZdGRXzb3otXswMMc', '{\"pidx\":\"cMqvP9ZdGRXzb3otXswMMc\",\"status\":\"Completed\"}', '2025-03-22 22:48:49'),
(33, 60, 3, 1020.00, 'khalti', 'cMqvP9ZdGRXzb3otXswMMc', '{\"pidx\":\"cMqvP9ZdGRXzb3otXswMMc\",\"total_amount\":102000,\"status\":\"Completed\",\"transaction_id\":\"dKvrrBbxuMMdr2jVx4XweG\",\"fee\":0,\"refunded\":false}', '2025-03-22 22:48:50'),
(34, 61, 3, 420.00, 'khalti', 'CINE61_1742778281', '{\"pidx\":\"iyqhPT848sZyMu4kkc5tcb\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=iyqhPT848sZyMu4kkc5tcb\",\"expires_at\":\"2025-03-24T07:19:41.555783+05:45\",\"expires_in\":1800}', '2025-03-24 06:49:42'),
(35, 61, 3, 420.00, 'khalti', 'iyqhPT848sZyMu4kkc5tcb', '{\"pidx\":\"iyqhPT848sZyMu4kkc5tcb\",\"status\":\"Completed\"}', '2025-03-24 06:52:47'),
(36, 61, 3, 420.00, 'khalti', 'iyqhPT848sZyMu4kkc5tcb', '{\"pidx\":\"iyqhPT848sZyMu4kkc5tcb\",\"total_amount\":42000,\"status\":\"Completed\",\"transaction_id\":\"TpkZgL7gtt469WUFCSfy9X\",\"fee\":0,\"refunded\":false}', '2025-03-24 06:52:49'),
(37, 62, 2, 320.00, 'khalti', 'CINE62_1742830471', '{\"pidx\":\"e8fdHtWSJS3Da4gXXT9xH7\",\"payment_url\":\"https://test-pay.khalti.com/?pidx=e8fdHtWSJS3Da4gXXT9xH7\",\"expires_at\":\"2025-03-24T21:49:32.732628+05:45\",\"expires_in\":1800}', '2025-03-24 21:19:33'),
(38, 62, 2, 320.00, 'khalti', 'e8fdHtWSJS3Da4gXXT9xH7', '{\"pidx\":\"e8fdHtWSJS3Da4gXXT9xH7\",\"status\":\"Completed\"}', '2025-03-24 21:21:59');

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `seat_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `seat_number` varchar(10) NOT NULL,
  `status` enum('available','booked','holding') DEFAULT 'available',
  `booking_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`seat_id`, `show_id`, `seat_number`, `status`, `booking_id`, `created_at`) VALUES
(341, 423, 'B4', 'available', NULL, '2025-03-22 15:32:30'),
(342, 423, 'B5', 'available', NULL, '2025-03-22 15:32:30'),
(343, 423, 'B6', 'available', NULL, '2025-03-22 15:32:30'),
(344, 423, 'B7', 'available', NULL, '2025-03-22 15:32:30'),
(345, 423, 'C7', 'available', NULL, '2025-03-22 15:32:30'),
(346, 423, 'C8', 'available', NULL, '2025-03-22 15:32:30'),
(347, 423, 'C9', 'available', NULL, '2025-03-22 15:32:30'),
(348, 423, 'B3', 'booked', NULL, '2025-03-22 15:32:30'),
(349, 423, 'B4', 'booked', NULL, '2025-03-22 15:32:30'),
(350, 426, 'A1', 'available', NULL, '2025-03-22 15:32:30'),
(351, 426, 'B2', 'available', NULL, '2025-03-22 15:32:30'),
(352, 426, 'B3', 'available', NULL, '2025-03-22 15:32:30'),
(353, 426, 'A4', 'available', NULL, '2025-03-22 15:32:30'),
(354, 426, 'A5', 'available', NULL, '2025-03-22 15:32:30'),
(355, 426, 'A6', 'available', NULL, '2025-03-22 15:32:30'),
(356, 426, 'A7', 'available', NULL, '2025-03-22 15:32:30'),
(357, 426, 'A9', 'available', NULL, '2025-03-22 15:32:30'),
(358, 426, 'A10', 'available', NULL, '2025-03-22 15:32:30'),
(359, 426, 'B1', 'available', NULL, '2025-03-22 15:32:30'),
(360, 426, 'B4', 'available', NULL, '2025-03-22 15:32:30'),
(361, 426, 'B6', 'available', NULL, '2025-03-22 15:32:30'),
(362, 426, 'B8', 'available', NULL, '2025-03-22 15:32:30'),
(363, 426, 'B10', 'available', NULL, '2025-03-22 15:32:30'),
(364, 426, 'C1', 'available', NULL, '2025-03-22 15:32:30'),
(365, 426, 'C2', 'available', NULL, '2025-03-22 15:32:30'),
(366, 426, 'C3', 'available', NULL, '2025-03-22 15:32:30'),
(367, 426, 'C4', 'available', NULL, '2025-03-22 15:32:30'),
(368, 426, 'C5', 'available', NULL, '2025-03-22 15:32:30'),
(369, 426, 'C6', 'available', NULL, '2025-03-22 15:32:30'),
(370, 426, 'C7', 'available', NULL, '2025-03-22 15:32:30'),
(371, 426, 'C8', 'available', NULL, '2025-03-22 15:32:30'),
(372, 426, 'C9', 'available', NULL, '2025-03-22 15:32:30'),
(373, 426, 'C10', 'available', NULL, '2025-03-22 15:32:30'),
(374, 426, 'D1', 'available', NULL, '2025-03-22 15:32:30'),
(375, 426, 'D2', 'available', NULL, '2025-03-22 15:32:30'),
(376, 426, 'D3', 'available', NULL, '2025-03-22 15:32:30'),
(377, 426, 'D4', 'available', NULL, '2025-03-22 15:32:30'),
(378, 426, 'D5', 'available', NULL, '2025-03-22 15:32:30'),
(379, 426, 'D6', 'available', NULL, '2025-03-22 15:32:30'),
(380, 426, 'D7', 'available', NULL, '2025-03-22 15:32:30'),
(381, 426, 'D8', 'available', NULL, '2025-03-22 15:32:30'),
(382, 426, 'D9', 'available', NULL, '2025-03-22 15:32:30'),
(383, 426, 'D10', 'available', NULL, '2025-03-22 15:32:30'),
(384, 426, 'E1', 'available', NULL, '2025-03-22 15:32:30'),
(385, 426, 'E2', 'available', NULL, '2025-03-22 15:32:30'),
(386, 426, 'E3', 'available', NULL, '2025-03-22 15:32:30'),
(387, 426, 'E4', 'available', NULL, '2025-03-22 15:32:30'),
(388, 426, 'E5', 'available', NULL, '2025-03-22 15:32:30'),
(389, 426, 'E6', 'available', NULL, '2025-03-22 15:32:30'),
(390, 426, 'E7', 'available', NULL, '2025-03-22 15:32:30'),
(391, 426, 'E8', 'available', NULL, '2025-03-22 15:32:30'),
(392, 426, 'E9', 'available', NULL, '2025-03-22 15:32:30'),
(393, 426, 'E10', 'available', NULL, '2025-03-22 15:32:30'),
(394, 426, 'F1', 'available', NULL, '2025-03-22 15:32:30'),
(395, 426, 'F2', 'available', NULL, '2025-03-22 15:32:30'),
(396, 426, 'F3', 'available', NULL, '2025-03-22 15:32:30'),
(397, 426, 'F4', 'available', NULL, '2025-03-22 15:32:30'),
(398, 426, 'F5', 'available', NULL, '2025-03-22 15:32:30'),
(399, 426, 'F6', 'available', NULL, '2025-03-22 15:32:30'),
(400, 426, 'F7', 'available', NULL, '2025-03-22 15:32:30'),
(401, 426, 'F8', 'available', NULL, '2025-03-22 15:32:30'),
(402, 426, 'F9', 'available', NULL, '2025-03-22 15:32:30'),
(403, 426, 'F10', 'available', NULL, '2025-03-22 15:32:30'),
(404, 426, 'G5', 'available', NULL, '2025-03-22 15:32:30'),
(405, 426, 'G6', 'available', NULL, '2025-03-22 15:32:30'),
(406, 426, 'G7', 'available', NULL, '2025-03-22 15:32:30'),
(407, 426, 'A2', 'available', NULL, '2025-03-22 15:32:30'),
(408, 426, 'A3', 'available', NULL, '2025-03-22 15:32:30'),
(409, 426, 'B5', 'available', NULL, '2025-03-22 15:32:30'),
(410, 427, 'E4', 'booked', NULL, '2025-03-22 15:32:30'),
(411, 427, 'E5', 'booked', NULL, '2025-03-22 15:32:30'),
(412, 427, 'E6', 'booked', NULL, '2025-03-22 15:32:30'),
(413, 427, 'E7', 'booked', NULL, '2025-03-22 15:32:30'),
(414, 427, 'E8', 'booked', NULL, '2025-03-22 15:32:30'),
(415, 427, 'E9', 'booked', NULL, '2025-03-22 15:32:30'),
(416, 427, 'E10', 'booked', NULL, '2025-03-22 15:32:30'),
(417, 427, 'F5', 'booked', NULL, '2025-03-22 15:32:30'),
(418, 427, 'F6', 'booked', NULL, '2025-03-22 15:32:30'),
(419, 427, 'F7', 'booked', NULL, '2025-03-22 15:32:30'),
(420, 427, 'F8', 'booked', NULL, '2025-03-22 15:32:30'),
(421, 423, 'B5', 'booked', NULL, '2025-03-22 15:32:30'),
(422, 423, 'B6', 'booked', NULL, '2025-03-22 15:32:30'),
(423, 423, 'C5', 'booked', NULL, '2025-03-22 15:32:30'),
(424, 423, 'C6', 'booked', NULL, '2025-03-22 15:32:30'),
(425, 423, 'D5', 'booked', NULL, '2025-03-22 15:32:30'),
(426, 427, 'G4', 'booked', NULL, '2025-03-22 15:32:30'),
(427, 427, 'G5', 'booked', NULL, '2025-03-22 15:32:30'),
(428, 427, 'G6', 'booked', NULL, '2025-03-22 15:32:30'),
(429, 427, 'G7', 'booked', NULL, '2025-03-22 15:32:30'),
(430, 427, 'G8', 'booked', NULL, '2025-03-22 15:32:30'),
(431, 427, 'C2', 'booked', NULL, '2025-03-22 15:32:30'),
(432, 427, 'C3', 'booked', NULL, '2025-03-22 15:32:30'),
(433, 427, 'C5', 'booked', NULL, '2025-03-22 15:32:30'),
(434, 427, 'C6', 'booked', NULL, '2025-03-22 15:32:30'),
(435, 427, 'B2', 'booked', NULL, '2025-03-22 15:32:30'),
(436, 427, 'B3', 'booked', NULL, '2025-03-22 15:32:30'),
(437, 427, 'B4', 'booked', NULL, '2025-03-22 15:32:30'),
(438, 427, 'B5', 'booked', NULL, '2025-03-22 15:32:30'),
(439, 427, 'F3', 'booked', NULL, '2025-03-22 15:32:30'),
(440, 427, 'F4', 'booked', NULL, '2025-03-22 15:32:30'),
(441, 427, 'C7', 'booked', NULL, '2025-03-22 15:32:30'),
(442, 427, 'C8', 'booked', NULL, '2025-03-22 15:32:30'),
(443, 423, 'C3', 'booked', NULL, '2025-03-22 15:32:30'),
(444, 423, 'C4', 'booked', NULL, '2025-03-22 15:32:30'),
(445, 423, 'D3', 'booked', NULL, '2025-03-22 15:32:30'),
(446, 423, 'D4', 'booked', NULL, '2025-03-22 15:32:30'),
(447, 423, 'A1', 'booked', NULL, '2025-03-22 15:32:30'),
(448, 423, 'A2', 'booked', NULL, '2025-03-22 15:32:30'),
(449, 423, 'B9', 'booked', NULL, '2025-03-22 15:32:30'),
(450, 423, 'C1', 'booked', NULL, '2025-03-22 15:32:30'),
(451, 423, 'C8', 'booked', NULL, '2025-03-22 15:32:30'),
(452, 423, 'C9', 'booked', NULL, '2025-03-22 15:32:30'),
(453, 427, 'H4', 'booked', NULL, '2025-03-22 15:32:30'),
(454, 427, 'H5', 'booked', NULL, '2025-03-22 15:32:30'),
(455, 429, 'D5', 'booked', NULL, '2025-03-22 15:32:30'),
(456, 429, 'D6', 'booked', NULL, '2025-03-22 15:32:30'),
(457, 430, 'F1', 'booked', NULL, '2025-03-22 15:32:30'),
(458, 430, 'F2', 'booked', NULL, '2025-03-22 15:32:30'),
(459, 423, 'D6', 'booked', NULL, '2025-03-22 15:32:30'),
(460, 423, 'D7', 'booked', NULL, '2025-03-22 15:32:30'),
(461, 423, 'A4', 'booked', NULL, '2025-03-22 15:32:30'),
(462, 423, 'A5', 'booked', NULL, '2025-03-22 15:32:30'),
(463, 429, 'C5', 'booked', NULL, '2025-03-22 15:32:30'),
(464, 429, 'C6', 'booked', NULL, '2025-03-22 15:32:30'),
(465, 429, 'B5', 'booked', NULL, '2025-03-22 15:32:30'),
(466, 429, 'B6', 'booked', NULL, '2025-03-22 15:32:30'),
(467, 429, 'C2', 'booked', NULL, '2025-03-22 15:32:30'),
(468, 429, 'C3', 'booked', NULL, '2025-03-22 15:32:30'),
(469, 429, 'C4', 'booked', NULL, '2025-03-22 15:32:30'),
(470, 431, 'A3', 'booked', NULL, '2025-03-22 15:32:30'),
(471, 431, 'A4', 'booked', NULL, '2025-03-22 15:32:30'),
(472, 431, 'F3', 'booked', NULL, '2025-03-22 15:32:30'),
(473, 431, 'F4', 'booked', NULL, '2025-03-22 15:32:30'),
(474, 433, 'A2', 'booked', NULL, '2025-03-22 15:32:30'),
(475, 433, 'A3', 'booked', NULL, '2025-03-22 15:32:30'),
(476, 433, 'A4', 'booked', NULL, '2025-03-22 15:32:30'),
(477, 433, 'B6', 'booked', NULL, '2025-03-22 15:32:30'),
(478, 433, 'B7', 'booked', NULL, '2025-03-22 15:32:30'),
(479, 433, 'H3', 'booked', NULL, '2025-03-22 15:32:30'),
(480, 433, 'G3', 'booked', NULL, '2025-03-22 15:32:30'),
(481, 433, 'G4', 'booked', NULL, '2025-03-22 15:32:30'),
(482, 433, 'G6', 'booked', NULL, '2025-03-22 15:32:30'),
(483, 433, 'G7', 'booked', NULL, '2025-03-22 15:32:30'),
(484, 433, 'G8', 'booked', NULL, '2025-03-22 15:32:30'),
(485, 434, 'D3', 'booked', 60, '2025-03-22 15:32:30'),
(486, 434, 'D4', 'booked', 60, '2025-03-22 15:32:30'),
(487, 434, 'B5', 'booked', 57, '2025-03-22 15:32:30'),
(488, 434, 'B6', 'available', NULL, '2025-03-22 15:32:30'),
(489, 434, 'C4', 'booked', 60, '2025-03-22 15:32:30'),
(490, 434, 'C5', 'booked', 60, '2025-03-22 15:32:30'),
(491, 434, 'E3', 'available', NULL, '2025-03-22 15:32:30'),
(492, 434, 'E4', 'available', NULL, '2025-03-22 15:32:30'),
(493, 434, 'C3', 'available', NULL, '2025-03-22 15:32:30'),
(494, 434, 'C4', 'booked', 60, '2025-03-22 15:32:30'),
(495, 434, 'C5', 'booked', 60, '2025-03-22 15:32:30'),
(496, 434, 'F2', 'booked', 61, '2025-03-22 15:34:18'),
(497, 434, 'F3', 'booked', 61, '2025-03-22 15:34:18'),
(506, 434, 'B3', 'booked', 57, '2025-03-22 15:57:46'),
(507, 434, 'B4', 'booked', 57, '2025-03-22 15:57:46'),
(508, 434, 'B5', 'booked', 57, '2025-03-22 15:57:46'),
(509, 434, 'G2', 'booked', 58, '2025-03-22 16:00:36'),
(510, 434, 'G3', 'booked', 58, '2025-03-22 16:00:36'),
(511, 434, 'H2', 'booked', 58, '2025-03-22 16:00:36'),
(512, 434, 'H4', 'booked', 58, '2025-03-22 16:00:36'),
(513, 434, 'C6', 'booked', 59, '2025-03-22 16:43:35'),
(514, 434, 'C7', 'booked', 59, '2025-03-22 16:43:35'),
(515, 434, 'C8', 'booked', 59, '2025-03-22 16:43:35'),
(516, 434, 'C9', 'booked', 59, '2025-03-22 16:43:35'),
(517, 434, 'C10', 'booked', 59, '2025-03-22 16:43:35'),
(518, 434, 'C4', 'booked', 60, '2025-03-22 17:03:13'),
(519, 434, 'C5', 'booked', 60, '2025-03-22 17:03:13'),
(520, 434, 'D3', 'booked', 60, '2025-03-22 17:03:13'),
(521, 434, 'D4', 'booked', 60, '2025-03-22 17:03:13'),
(522, 434, 'D5', 'booked', 60, '2025-03-22 17:03:13'),
(523, 434, 'F2', 'booked', 61, '2025-03-24 01:04:26'),
(524, 434, 'F3', 'booked', 61, '2025-03-24 01:04:26'),
(525, 435, 'B4', 'booked', 62, '2025-03-24 15:34:25'),
(526, 435, 'B5', 'booked', 62, '2025-03-24 15:34:25'),
(527, 435, 'B6', 'booked', 62, '2025-03-24 15:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `show_id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `theater_id` int(11) NOT NULL,
  `show_time` datetime NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`show_id`, `movie_id`, `theater_id`, `show_time`, `price`, `created_at`) VALUES
(423, 5, 1, '2025-03-09 18:00:00', 150.00, '2025-03-08 10:52:55'),
(425, 7, 1, '2025-03-08 15:00:00', 150.00, '2025-03-08 15:12:58'),
(426, 7, 1, '2025-03-08 18:00:00', 200.00, '2025-03-08 15:14:43'),
(427, 7, 1, '2025-03-09 21:00:00', 200.00, '2025-03-08 15:51:59'),
(428, 7, 1, '2025-03-08 22:00:00', 230.00, '2025-03-08 16:09:50'),
(429, 8, 1, '2025-03-10 21:00:00', 120.00, '2025-03-09 04:54:06'),
(430, 8, 7, '2025-03-09 15:00:00', 200.00, '2025-03-09 06:56:56'),
(431, 7, 1, '2025-03-11 18:00:00', 120.00, '2025-03-10 15:46:05'),
(432, 7, 7, '2025-03-12 18:00:00', 1000.00, '2025-03-10 15:55:49'),
(433, 5, 1, '2025-03-22 12:00:00', 200.00, '2025-03-21 14:38:41'),
(434, 7, 1, '2025-03-28 21:00:00', 200.00, '2025-03-22 14:04:15'),
(435, 5, 7, '2025-03-25 12:00:00', 100.00, '2025-03-24 01:11:33'),
(436, 5, 1, '2025-03-26 18:00:00', 100.00, '2025-03-24 01:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `support_categories`
--

CREATE TABLE `support_categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `support_categories`
--

INSERT INTO `support_categories` (`category_id`, `name`, `description`) VALUES
(1, 'Booking Issues', 'Problems with booking tickets or reservations'),
(2, 'Payment Problems', 'Issues related to payments or refunds'),
(3, 'Account Access', 'Login problems or account recovery'),
(4, 'Website Errors', 'Technical issues with the website'),
(5, 'Movie Information', 'Questions about movies or showtimes'),
(6, 'General Inquiry', 'Other general questions');

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `message_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `message` text NOT NULL,
  `attachment_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `support_messages`
--

INSERT INTO `support_messages` (`message_id`, `ticket_id`, `sender_id`, `is_admin`, `message`, `attachment_url`, `created_at`, `is_read`) VALUES
(1, 1, 3, 0, 'Issue i already paid but not booked fixed this and refund \r\nTransaction id \r\n#EERY345H3', NULL, '2025-03-08 17:02:12', 1),
(2, 1, 2, 1, 'ok which payee method did you used?', NULL, '2025-03-08 17:17:21', 1),
(3, 1, 3, 0, 'khalti', NULL, '2025-03-08 17:17:51', 1),
(4, 2, 2, 0, 'hhh', NULL, '2025-03-08 17:22:10', 0),
(5, 3, 3, 0, 'ss', NULL, '2025-03-08 17:24:26', 0),
(6, 2, 2, 0, 'opp', NULL, '2025-03-09 01:10:03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `status` enum('Open','In Progress','Resolved','Closed') NOT NULL DEFAULT 'Open',
  `priority` enum('Low','Medium','High','Urgent') NOT NULL DEFAULT 'Medium',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`ticket_id`, `user_id`, `subject`, `status`, `priority`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 3, 'Rufund', 'Resolved', 'Medium', '2025-03-08 17:02:12', '2025-03-08 17:18:46', 2),
(2, 2, 'Payment', 'Open', 'Medium', '2025-03-08 17:22:10', '2025-03-09 01:10:03', 6),
(3, 3, 'rere', 'Open', 'High', '2025-03-08 17:24:26', '2025-03-08 17:24:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `temp_seat_selections`
--

CREATE TABLE `temp_seat_selections` (
  `id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `seat_number` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `temp_seat_selections`
--

INSERT INTO `temp_seat_selections` (`id`, `show_id`, `seat_number`, `user_id`, `timestamp`) VALUES
(660, 434, 'F4', 2, '2025-03-24 06:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `theaters`
--

CREATE TABLE `theaters` (
  `theater_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `screens` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `theater_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `theaters`
--

INSERT INTO `theaters` (`theater_id`, `name`, `location`, `capacity`, `address`, `city`, `state`, `screens`, `created_at`, `theater_image`) VALUES
(1, 'QFX', 'Itahari', 105, '', '', '', '', '2025-03-08 11:01:22', 'https://res.cloudinary.com/digddaiwf/images/w_720,h_480,c_scale/v1701580282/QFX-Cinemas-Nepal/QFX-Cinemas-Nepal.jpg?_i=AA'),
(7, 'FCUB', 'Morang', 120, 'Inaruwa-1, purwatole\r\nDuhabi road, 445H PK colony', 'Itahari', 'Morang', '1', '2025-03-09 06:56:26', 'uploads/theaters/1741503386_download.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `sms_enabled` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `phone`, `password_hash`, `role`, `created_at`, `sms_enabled`) VALUES
(1, 'Admin', 'admin@example.com', '9800000000', '$2y$10$e0NRtQHChZz4H3MXqX0F9eSH8g/hLDBv2qvG4i6SBlNRJXpUFEli.', 'admin', '2025-03-02 17:13:44', 1),
(2, 'Prasanga Pokharels', 'bhawana@gmail.com', '9765470926', '$2y$10$y.eBTA5amXz0AujGvZlcTuMzN5GtX.f4tYUZ2fiwnUxbN2wvUGrQC', 'user', '2025-03-02 18:05:46', 1),
(3, 'Jolie Potts', 'movie@gmail.com', '9765470926', '$2y$10$w/hA7ahu4O/34TTSU/cHOOarOC.FslZsIKaT3V37qUD9T.nzmbmvi', 'user', '2025-03-08 06:49:45', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Indexes for table `payment_logs`
--
ALTER TABLE `payment_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`seat_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`show_id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `idx_shows_theater_movie` (`theater_id`,`movie_id`),
  ADD KEY `idx_shows_datetime` (`show_time`);

--
-- Indexes for table `support_categories`
--
ALTER TABLE `support_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `temp_seat_selections`
--
ALTER TABLE `temp_seat_selections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_selection` (`show_id`,`seat_number`,`user_id`),
  ADD KEY `show_seat_idx` (`show_id`,`seat_number`),
  ADD KEY `user_idx` (`user_id`),
  ADD KEY `timestamp_idx` (`timestamp`);

--
-- Indexes for table `theaters`
--
ALTER TABLE `theaters`
  ADD PRIMARY KEY (`theater_id`),
  ADD KEY `idx_theater_location` (`location`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `payment_logs`
--
ALTER TABLE `payment_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `seat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=528;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `show_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=437;

--
-- AUTO_INCREMENT for table `support_categories`
--
ALTER TABLE `support_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `temp_seat_selections`
--
ALTER TABLE `temp_seat_selections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=678;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
