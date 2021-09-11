-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2021 at 05:54 PM
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
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'hello', 'karan_desai', 'dhairyashil_desai', '2021-09-11 21:21:09', 'no', 34),
(2, 'whats up!!', 'karan_desai', 'dhairyashil_desai', '2021-09-11 21:21:26', 'no', 34),
(3, 'nothing special', 'karan_desai', 'dhairyashil_desai', '2021-09-11 21:21:37', 'no', 34),
(4, 'welcome then', 'dhairyashil_desai', 'dhairyashil_desai', '2021-09-11 21:23:00', 'no', 35);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES
(1, 'caec', 'dhairyashil_desai', 'none', '2021-08-08 17:30:37', 'no', 'no', 0),
(2, 'evbiaec', 'dhairyashil_desai', 'none', '2021-08-08 17:31:06', 'no', 'no', 0),
(32, 'bceave', 'dhairyashil_desai', 'none', '2021-08-08 17:31:42', 'no', 'no', 0),
(33, 'vaeva', 'dhairyashil_desai', 'none', '2021-08-08 17:34:30', 'no', 'no', 0),
(34, 'hey there karan', 'dhairyashil_desai', 'none', '2021-09-11 21:20:37', 'no', 'no', 0),
(35, 'new on V-met', 'dhairyashil_desai', 'none', '2021-09-11 21:22:40', 'no', 'no', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `gr_no` int(10) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `year` varchar(12) NOT NULL,
  `branch` varchar(6) NOT NULL,
  `phone` int(10) NOT NULL,
  `date_of_birth` date NOT NULL,
  `friend_array` text NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `no_likes` int(11) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `gr_no`, `first_name`, `last_name`, `username`, `gender`, `email`, `password`, `year`, `branch`, `phone`, `date_of_birth`, `friend_array`, `profile_pic`, `no_likes`, `num_posts`, `user_closed`) VALUES
(1, 1181, 'Dhairyashil', 'Desai', 'dhairyashil_desai', ':\"choi', 'dhairyashil.desai18@vit.edu', '827ccb0eea8a706c4c34a16891f84e7b', 'B.Tech', 'CS', 1123456789, '2021-08-14', ',karan_desai,', 'assets/images/profile_pics/default/head_wet_asphalt.png', 0, 33, 'no'),
(2, 118122, 'Karan', 'Desai', 'karan_desai', ':\"choi', 'karan.desai18@vit.edu', '827ccb0eea8a706c4c34a16891f84e7b', 'FY', 'CS', 1123456789, '2021-08-18', ',dhairyashil_desai,', 'assets/images/profile_pics/default/head_amethyst.png', 0, 0, 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
