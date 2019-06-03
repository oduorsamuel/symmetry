-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2019 at 10:26 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `high_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'machakos', 'machakos_school');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `article` varchar(100) NOT NULL,
  `club` varchar(40) NOT NULL,
  `time_date` varchar(10) NOT NULL,
  `author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `article`, `club`, `time_date`, `author`) VALUES
(1, 'National soccer Tournmaent', 'Over the years the soccer team has proven to be the best in the national games tournament and recent', 'Journalism', '23/06/2018', 'Brian Mcmillan'),
(2, 'Environment conservation', 'efjlwjefwl ewfnlwef wefnwef ewfnwe fewkfwe fnewfew fwefkewnfewk fwefkwenflew nslds sdlsd ', 'Wildlife Club', '26/08/2018', 'Dan Dan');

-- --------------------------------------------------------

--
-- Table structure for table `carousel_pics`
--

CREATE TABLE `carousel_pics` (
  `id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `short_message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carousel_pics`
--

INSERT INTO `carousel_pics` (`id`, `image`, `short_message`) VALUES
(4, 'Slide01.jpg', 'Admin'),
(5, 'Slide02.jpg', 'Library'),
(7, 'event_2.jpg', 'Library');

-- --------------------------------------------------------

--
-- Table structure for table `featured_news`
--

CREATE TABLE `featured_news` (
  `id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `time_date` varchar(10) NOT NULL,
  `details` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'picha/Machakos-Boys-Logo.fw_.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `featured_news`
--

INSERT INTO `featured_news` (`id`, `title`, `time_date`, `details`, `image`) VALUES
(1, 'Principal''s brief', '23/06/2018', 'jewfnlkfbne/lkjfnew/lskgnerkj.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabg.erkherjkbg jvk khbfwekjfbwkefbwekfjbwelfkjbwefkbf', 'Machakos-Boys-Logo.fw_.png');

-- --------------------------------------------------------

--
-- Table structure for table `featured_student`
--

CREATE TABLE `featured_student` (
  `id` int(10) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'picha/Machakos-Boys-Logo.fw_.png',
  `name` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `featured_student`
--

INSERT INTO `featured_student` (`id`, `image`, `name`, `title`, `details`) VALUES
(1, 'picha/Machakos-Boys-Logo.fw_.png', 'Malvin Okeyo', 'cleanest student', 'this is the cleanest student ');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_category`
--

CREATE TABLE `gallery_category` (
  `id` int(50) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_category`
--

INSERT INTO `gallery_category` (`id`, `category`) VALUES
(1, 'drama'),
(2, 'games');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news_events`
--

CREATE TABLE `news_events` (
  `id` int(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `time_date` varchar(10) NOT NULL,
  `details` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'picha/Machakos-Boys-Logo.fw_.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_events`
--

INSERT INTO `news_events` (`id`, `title`, `time_date`, `details`, `image`) VALUES
(3, 'AGM', '30/8/2018', 'All parents are required to attend', 'Machakos-Boys-Logo.fw_.png'),
(4, 'Zalego', '12/9/2017', 'This event wil be hosted by Zalego, a software company.\r\nIt will mostly benefit copm students', 'author.jpg'),
(5, 'HH', '4/9/2018', 'yoyoyoyuo', 'become.jpg'),
(6, 'Maths Contest', '12/02/2019', 'You are invited to participate', 'settings-icon-10.png');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) NOT NULL,
  `notice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice`) VALUES
(1, 'PTA meeting on Monday ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg'),
(2, 'Drama club fundraiser');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `exam` varchar(50) NOT NULL,
  `rank` int(10) NOT NULL,
  `adm` int(10) NOT NULL,
  `form` int(1) NOT NULL,
  `term` varchar(6) NOT NULL,
  `maths` varchar(10) NOT NULL,
  `eng` varchar(10) NOT NULL,
  `swa` varchar(10) NOT NULL,
  `bio` varchar(5) NOT NULL,
  `phy` varchar(5) NOT NULL,
  `chem` varchar(5) NOT NULL,
  `hist` varchar(5) NOT NULL,
  `geo` varchar(5) NOT NULL,
  `cre` varchar(5) NOT NULL,
  `art` varchar(5) NOT NULL,
  `agric` varchar(5) NOT NULL,
  `comp` varchar(5) NOT NULL,
  `fre` varchar(5) NOT NULL,
  `marks` varchar(10) NOT NULL,
  `grade` varchar(2) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`exam`, `rank`, `adm`, `form`, `term`, `maths`, `eng`, `swa`, `bio`, `phy`, `chem`, `hist`, `geo`, `cre`, `art`, `agric`, `comp`, `fre`, `marks`, `grade`, `id`) VALUES
('endterm', 1, 1001, 2, '1', '100', '99', '98', '97', '96', '95', '94', '', '92', '91', '90', '89', '88', '1129', 'A\r', 461),
('endterm', 2, 1000, 1, '1', '80', '79', '78', '77', '76', '60', '74', '73', '72', '0', '70', '69', '68', '891', 'B', 462),
('endterm', 3, 1002, 1, '1', '70', '69', '68', '67', '66', '65', '64', '63', '62', '61', '60', '', '58', '773', 'B\r', 463);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `adm` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `form` varchar(50) NOT NULL,
  `parent_contact` varchar(30) NOT NULL,
  `parent_name` varchar(50) NOT NULL,
  `student_password` varchar(255) NOT NULL,
  `parent_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`adm`, `name`, `form`, `parent_contact`, `parent_name`, `student_password`, `parent_password`) VALUES
(1000, 'Malvin Eric', '4w', '+254712599273', 'Okeyo Odour', '$2y$10$mRMjqQbM7L30J6e1KBoV5eYyGoe7vJTi.KLt2..cx0NAq52fQt26G', '$2y$10$mRMjqQbM7L30J6e1KBoV5eYyGoe7vJTi.KLt2..cx0NAq52fQt26G'),
(1004, 'Maxwell Maragia', '4N', '+254790432602', 'Onditi Maragia', 'fed33392d3a48aa149a87a38b875ba4a', 'fed33392d3a48aa149a87a38b875ba4a'),
(1005, '', '', '+254717128076', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_notice`
--

CREATE TABLE `student_notice` (
  `id` int(10) NOT NULL,
  `class` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_notice`
--

INSERT INTO `student_notice` (`id`, `class`, `message`, `file`) VALUES
(4, 'form 3', 'assignment', 'downloads/5b39f3309a83b5.93530349.docx'),
(5, 'form 1', 'the school trip scheduled for august has been postponed for further details chechk the file uploaded', 'downloads/5b39f399708c40.73670454.htm'),
(6, 'form 1', 'ahfshgsgfx', 'downloads/5b39f9622c8120.77334406.jpg'),
(7, 'form 4', 'cat i revision', 'downloads/5b39fa4ad24785.50038217.jpg'),
(8, 'form 1', 'mhbkhb', 'downloads/5b70e89b78ca42.41839330.pdf'),
(9, 'form 1', 'mhbkhb', 'downloads/5b70ea95678362.36510183.pdf'),
(10, 'form 1', 'mhbkhb', 'downloads/5b70eae0db5b65.17313263.pdf'),
(11, 'form 1', 'fanya kazi', 'downloads/5b70ed9be11db1.94200763.pdf'),
(12, 'form 1', 'fanya kazi', 'downloads/5b70edc4141cd5.39620203.pdf'),
(13, 'form 1', 'fanya kazi', 'downloads/5b70edd6d40451.30831873.pdf'),
(14, 'form 1', 'fanya kazi', 'downloads/5b70ee103237d6.21116762.pdf'),
(15, 'form 1', 'fanya kazi', 'downloads/5b70ee42ef9021.31132359.pdf'),
(16, 'form 1', 'fanya kazi', 'downloads/5b70ee7be29db3.22608907.pdf'),
(17, 'form 1', 'fanya kazi', 'downloads/5b70ee8d6cae20.39678974.pdf'),
(18, 'form 1', 'fanya kazi', 'downloads/5b70eea15911b6.10072153.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `job_id` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`job_id`, `name`, `password`) VALUES
('001', 'Malvin Eric', 'dc5c7986daef50c1e02ab09b442ee34f'),
('100', 'John Doe', '$2y$10$kXAYxr37YynlAHyywWgDbO9RIqKG5GczzVuqTSkCpSkn8Tz1XdM.a'),
('1008', 'Jane Okeyo', '1587965fb4d4b5afe8428a4a024feb0d');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `image`, `name`, `title`) VALUES
(1, 'picha/1 (1).jpg', 'Malvin Okeyo', 'Developer'),
(2, 'picha/1 (1).jpg', 'John Doe', 'School Captain');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carousel_pics`
--
ALTER TABLE `carousel_pics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_news`
--
ALTER TABLE `featured_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_student`
--
ALTER TABLE `featured_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_category`
--
ALTER TABLE `gallery_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_events`
--
ALTER TABLE `news_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`adm`);

--
-- Indexes for table `student_notice`
--
ALTER TABLE `student_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `carousel_pics`
--
ALTER TABLE `carousel_pics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `featured_news`
--
ALTER TABLE `featured_news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `featured_student`
--
ALTER TABLE `featured_student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `gallery_category`
--
ALTER TABLE `gallery_category`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news_events`
--
ALTER TABLE `news_events`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=464;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `adm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;
--
-- AUTO_INCREMENT for table `student_notice`
--
ALTER TABLE `student_notice`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
