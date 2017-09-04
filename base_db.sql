-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2017 at 10:54 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `base_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `sql_cmds`
--

CREATE TABLE `sql_cmds` (
  `sql_cmd_id` int(4) NOT NULL,
  `sql_cmd_name` varchar(50) NOT NULL,
  `sql_cmd_stucture` varchar(500) NOT NULL,
  `sql_cmd_detail` varchar(1200) NOT NULL DEFAULT 'Detail will update soon !!'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_cmds`
--

INSERT INTO `sql_cmds` (`sql_cmd_id`, `sql_cmd_name`, `sql_cmd_stucture`, `sql_cmd_detail`) VALUES
(1, 'SELECT', 'SELECT * FROM [table_name];', 'The SELECT statement is used to select data from a database.'),
(2, 'SELECT DISTINCT', 'SELECT DISTINCT [column] FROM [table_name];', 'Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.\r\n\r\nThe SELECT DISTINCT statement is used to return only distinct (different) values.'),
(3, 'Seddfkj', 'kjdfjdjf', 'Detail will update soon !!'),
(4, 'sfnfndbfdsnb', 'dskjffsjfsjfsfjsfjsfds', 'Detail will update soon !!'),
(5, 'Sertreefgf', 'sdffsfsfdfsfsfsdf', 'Detail will update soon !!'),
(6, 'sfnfndbfdsnb', 'dskjffsjfsjfsfjsfjsfds', 'Detail will update soon !!'),
(7, 'Sertreefgf', 'sdffsfsfdfsfsfsdf', 'Detail will update soon !!'),
(8, 'shgggg', 'ggggg', 'Detail will update soon !!'),
(9, 'shgggg', 'ggggg', 'Detail will update soon !!');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(4) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `umail` varchar(80) NOT NULL,
  `uphone` varchar(15) NOT NULL,
  `upass` varchar(50) NOT NULL,
  `utype` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `uname`, `umail`, `uphone`, `upass`, `utype`) VALUES
(1, 'Krishna', 'itskd17@gmail.com', '8986887750', 'password', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sql_cmds`
--
ALTER TABLE `sql_cmds`
  ADD PRIMARY KEY (`sql_cmd_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sql_cmds`
--
ALTER TABLE `sql_cmds`
  MODIFY `sql_cmd_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
