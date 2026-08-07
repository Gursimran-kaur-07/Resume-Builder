-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2025 at 04:32 AM
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
-- Database: `sitedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `ph` varchar(20) NOT NULL,
  `em` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `pname`, `ph`, `em`, `pass`) VALUES
(1, 'love', '7878787878', 'love@gmail.com', '$2y$10$m9463MgTI1XAB4hFjehZUOwe3o0VlrtdTdC9PJh..TfJRcG3ENshS'),
(2, 'sukh', '998989898', 'sukh@gmail.com', '$2y$10$1UwO.UVvUm4Axm.cUddTZOyhmgXx7Bqa7A7X47r9hHupYPEu7fCEO'),
(5, 'raj', '2345678901', 'raj@gmail.com', '$2y$10$7ar39.usAMv2IVz5khxYIeNC5UDFGPquMKH2rCr2n..afyaIibAJG');

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `qualification` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `hobbies` text DEFAULT NULL,
  `objective` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resumes`
--

INSERT INTO `resumes` (`id`, `name`, `email`, `contact`, `qualification`, `experience`, `skills`, `hobbies`, `objective`, `created_at`, `image`) VALUES
(1, 'demo', 'demo@gmail.com', '23413341134', 'bca\r\nmca', 'on', 'singing\r\nmusic', 'ddsd\r\ndcsd', 'sdsd\r\nsdsd', '2025-11-02 17:42:26', NULL),
(2, 'demo', 'demo@gmail.com', '23413341134', 'bca\r\nmca', 'on', 'singing\r\nmusic', 'ddsd\r\ndcsd', 'sdsd\r\nsdsd', '2025-11-02 17:45:12', NULL),
(3, 'demo', 'demo@gmail.com', '23413341134', 'bca,hh,2012\r\ncajjh,jij,2011', 'ssss', 'cdc\r\ncddd\r\ncdcd', 'dcdc\r\ndccdd\r\ndccd', 'dccd\r\ndcdcdc\r\ncdcd', '2025-11-02 17:51:24', NULL),
(4, 'demo', 'demo@gmail.com', '23413341134', 'bca,hh,2012\r\ncajjh,jij,2011', 'ssss', 'cdc\r\ncddd\r\ncdcd', 'dcdc\r\ndccdd\r\ndccd', 'dccd\r\ndcdcdc\r\ncdcd', '2025-11-02 17:51:30', NULL),
(5, 'demo', 'demo@gmail.com', '23413341134', 'bca,hh,2012\r\ncajjh,jij,2011', 'ssss', 'cdc\r\ncddd\r\ncdcd', 'dcdc\r\ndccdd\r\ndccd', 'dccd\r\ndcdcdc\r\ncdcd', '2025-11-02 17:51:35', NULL),
(6, 'demo', 'demo@gmail.com', '23413341134', 'bca,hh,2012\r\ncajjh,jij,2011', 'ssss', 'cdc\r\ncddd\r\ncdcd', 'dcdc\r\ndccdd\r\ndccd', 'dccd\r\ndcdcdc\r\ncdcd', '2025-11-02 17:52:29', NULL),
(7, 'demo', 'demo@gmail.com', 'dddd', 'bb,sss,ss\r\nssd,d,d,\r\nww,w,e', 'eed.\r\ndeedede', 'www\r\nwww\r\nww\r\nw', 'qqq\\\r\nqq\r\nrr', 'rew\r\n,,k\r\nnhj', '2025-11-02 18:06:18', NULL),
(8, 'demo', 'demo@gmail.com', 'dddd', 'bb,sss,ss\r\nssd,d,d,\r\nww,w,e', 'eed.\r\ndeedede', 'www\r\nwww\r\nww\r\nw', 'qqq\\\r\nqq\r\nrr', 'rew\r\n,,k\r\nnhj', '2025-11-02 18:07:50', NULL),
(9, 'demo', 'demo@gmail.com', 'dddd', 'bb,sss,ss\r\nssd,d,d,\r\nww,w,e', 'eed.\r\ndeedede', 'www\r\nwww\r\nww\r\nw', 'qqq\\\r\nqq\r\nrr', 'rew\r\n,,k\r\nnhj', '2025-11-02 18:09:09', NULL),
(10, 'demo', 'demo@gmail.com', 'dddd', 'bb,sss,ss\r\nssd,d,d,\r\nww,w,e', 'eed.\r\ndeedede', 'www\r\nwww\r\nww\r\nw', 'qqq\\\r\nqq\r\nrr', 'rew\r\n,,k\r\nnhj', '2025-11-02 18:09:39', NULL),
(11, 'demo', 'demo@gmail.com', 'dddd', 'bb,sss,ss\r\nssd,d,d,\r\nww,w,e', 'eed.\r\ndeedede', 'www\r\nwww\r\nww\r\nw', 'qqq\\\r\nqq\r\nrr', 'rew\r\n,,k\r\nnhj', '2025-11-02 18:12:11', NULL),
(12, 'demo', 'demo@gmail.com', 'dddd', 'bb,sss,ss\r\nssd,d,d,\r\nww,w,e', 'eed.\r\ndeedede', 'www\r\nwww\r\nww\r\nw', 'qqq\\\r\nqq\r\nrr', 'rew\r\n,,k\r\nnhj', '2025-11-02 18:12:23', NULL),
(13, 'demo', 'demo@gmail.com', 'dddd', 'bb,sss,ss\r\nssd,d,d,\r\nww,w,e', 'eed.\r\ndeedede', 'www\r\nwww\r\nww\r\nw', 'qqq\\\r\nqq\r\nrr', 'rew\r\n,,k\r\nnhj', '2025-11-02 18:12:41', NULL),
(14, 'raj', 'raj@gmail.com', '2345678901', 'bca, hmv ,2025', 'sssdasdaasdad', 'sadas', 'qwdad', 'qeqwew', '2025-11-03 03:28:30', '1762140510_Screenshot (247).png'),
(15, 'raj', 'raj@gmail.com', '2345678901', 'bca, hmv ,2025', 'sssdasdaasdad', 'sadas', 'qwdad', 'qeqwew', '2025-11-03 03:30:42', '1762140642_Screenshot (247).png'),
(16, 'raj', 'raj@gmail.com', '2345678901', 'bca, hmv ,2025', 'sssdasdaasdad', 'sadas', 'qwdad', 'qeqwew', '2025-11-03 03:30:51', '1762140651_Screenshot (247).png'),
(17, 'raj', 'raj@gmail.com', '2345678901', 'bca, hmv ,2025', 'sssdasdaasdad', 'sadas', 'qwdad', 'qeqwew', '2025-11-03 03:30:59', '1762140659_Screenshot (247).png'),
(18, 'raj', 'raj@gmail.com', '2345678901', 'bca, hmv ,2025', 'sssdasdaasdad', 'sadas', 'qwdad', 'qeqwew', '2025-11-03 03:31:13', '1762140673_Screenshot (247).png'),
(19, 'raj', 'raj@gmail.com', '2345678901', 'bca, hmv ,2025', 'sssdasdaasdad', 'sadas', 'qwdad', 'qeqwew', '2025-11-03 03:31:19', '1762140679_Screenshot (247).png'),
(20, 'raj', 'raj@gmail.com', '2345678901', 'bca, hmv ,2025', 'sssdasdaasdad', 'sadas', 'qwdad', 'qeqwew', '2025-11-03 03:31:25', '1762140685_Screenshot (247).png'),
(21, 'raj', 'raj@gmail.com', '2345678901', 'bca, hmv ,2025', 'sssdasdaasdad', 'sadas', 'qwdad', 'qeqwew', '2025-11-03 03:31:32', '1762140692_Screenshot (247).png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `em` (`em`);

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
