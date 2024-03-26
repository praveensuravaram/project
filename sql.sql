-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 07:50 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmps1`
--

-- --------------------------------------------------------

--
-- Table structure for table `abstractppt`
--

CREATE TABLE `abstractppt` (
  `batch_id` int(11) NOT NULL,
  `title` int(11) DEFAULT NULL,
  `nature` int(11) DEFAULT NULL,
  `abstractfile` int(11) DEFAULT NULL,
  `abstractppt` int(11) DEFAULT NULL,
  `designppt` int(11) DEFAULT NULL,
  `implementationppt` int(11) DEFAULT NULL,
  `finalppt` int(11) DEFAULT NULL,
  `report` int(11) DEFAULT NULL,
  `publishedpaper` int(11) DEFAULT NULL,
  `certificates` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `abstract_file`
--

CREATE TABLE `abstract_file` (
  `batch_id` int(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `size` bigint(20) NOT NULL,
  `upload_time` date NOT NULL,
  `content` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `batch_id` int(11) NOT NULL,
  `team_leader_rollno` varchar(255) DEFAULT NULL,
  `team_member1_rollno` varchar(255) DEFAULT NULL,
  `team_member2_rollno` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cerificates`
--

CREATE TABLE `cerificates` (
  `batch_id` int(11) NOT NULL,
  `title` int(11) DEFAULT NULL,
  `nature` int(11) DEFAULT NULL,
  `abstractfile` int(11) DEFAULT NULL,
  `abstractppt` int(11) DEFAULT NULL,
  `designppt` int(11) DEFAULT NULL,
  `implementationppt` int(11) DEFAULT NULL,
  `finalppt` int(11) DEFAULT NULL,
  `report` int(11) DEFAULT NULL,
  `publishedpaper` int(11) DEFAULT NULL,
  `certificates` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `designppt`
--

CREATE TABLE `designppt` (
  `batch_id` int(11) NOT NULL,
  `title` int(11) DEFAULT NULL,
  `nature` int(11) DEFAULT NULL,
  `abstractfile` int(11) DEFAULT NULL,
  `abstractppt` int(11) DEFAULT NULL,
  `designppt` int(11) DEFAULT NULL,
  `implementationppt` int(11) DEFAULT NULL,
  `finalppt` int(11) DEFAULT NULL,
  `report` int(11) DEFAULT NULL,
  `publishedpaper` int(11) DEFAULT NULL,
  `certificates` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `batch_id` int(11) NOT NULL,
  `domain` varchar(500) DEFAULT NULL,
  `guide_name` varchar(255) DEFAULT NULL,
  `nature` varchar(255) DEFAULT NULL,
  `project_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `name` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `size` int(11) NOT NULL,
  `data` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `finalppt`
--

CREATE TABLE `finalppt` (
  `batch_id` int(11) NOT NULL,
  `title` int(11) DEFAULT NULL,
  `nature` int(11) DEFAULT NULL,
  `abstractfile` int(11) DEFAULT NULL,
  `abstractppt` int(11) DEFAULT NULL,
  `designppt` int(11) DEFAULT NULL,
  `implementationppt` int(11) DEFAULT NULL,
  `finalppt` int(11) DEFAULT NULL,
  `report` int(11) DEFAULT NULL,
  `publishedpaper` int(11) DEFAULT NULL,
  `certificates` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `name` varchar(255) NOT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `implementationppt`
--

CREATE TABLE `implementationppt` (
  `batch_id` int(11) NOT NULL,
  `title` int(11) DEFAULT NULL,
  `nature` int(11) DEFAULT NULL,
  `abstractfile` int(11) DEFAULT NULL,
  `abstractppt` int(11) DEFAULT NULL,
  `designppt` int(11) DEFAULT NULL,
  `implementationppt` int(11) DEFAULT NULL,
  `finalppt` int(11) DEFAULT NULL,
  `report` int(11) DEFAULT NULL,
  `publishedpaper` int(11) DEFAULT NULL,
  `certificates` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `project_coordinator`
--

CREATE TABLE `project_coordinator` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `published_paper`
--

CREATE TABLE `published_paper` (
  `batch_id` int(11) NOT NULL,
  `title` int(11) DEFAULT NULL,
  `nature` int(11) DEFAULT NULL,
  `abstractfile` int(11) DEFAULT NULL,
  `abstractppt` int(11) DEFAULT NULL,
  `designppt` int(11) DEFAULT NULL,
  `implementationppt` int(11) DEFAULT NULL,
  `finalppt` int(11) DEFAULT NULL,
  `report` int(11) DEFAULT NULL,
  `publishedpaper` int(11) DEFAULT NULL,
  `certificates` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `batch_id` int(11) NOT NULL,
  `title` int(11) DEFAULT NULL,
  `nature` int(11) DEFAULT NULL,
  `abstractfile` int(11) DEFAULT NULL,
  `abstractppt` int(11) DEFAULT NULL,
  `designppt` int(11) DEFAULT NULL,
  `implementationppt` int(11) DEFAULT NULL,
  `finalppt` int(11) DEFAULT NULL,
  `report` int(11) DEFAULT NULL,
  `publishedpaper` int(11) DEFAULT NULL,
  `certificates` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `rollno` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students_remaining`
--

CREATE TABLE `students_remaining` (
  `rollno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `values`
--

CREATE TABLE `values` (
  `sno` int(11) NOT NULL,
  `count_of_batches_deleted` int(11) NOT NULL DEFAULT 0,
  `login` int(11) NOT NULL DEFAULT 0,
  `logout` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `verify`
--

CREATE TABLE `verify` (
  `batch_id` int(11) NOT NULL,
  `title` int(11) DEFAULT NULL,
  `nature` int(11) DEFAULT NULL,
  `abstractfile` int(11) DEFAULT NULL,
  `abstractppt` int(11) DEFAULT NULL,
  `designppt` int(11) DEFAULT NULL,
  `implementationppt` int(11) DEFAULT NULL,
  `finalppt` int(11) DEFAULT NULL,
  `report` int(11) DEFAULT NULL,
  `publishedpaper` int(11) DEFAULT NULL,
  `certificates` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abstractppt`
--
ALTER TABLE `abstractppt`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `abstract_file`
--
ALTER TABLE `abstract_file`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_coordinator`
--
ALTER TABLE `project_coordinator`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `students_remaining`
--
ALTER TABLE `students_remaining`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `values`
--
ALTER TABLE `values`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `verify`
--
ALTER TABLE `verify`
  ADD PRIMARY KEY (`batch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
