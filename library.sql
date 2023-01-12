-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 12, 2023 at 08:43 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `date_updated`) VALUES
(2, 'sally', '2023-01-13 03:40:04'),
(3, 'Susan', '2023-01-13 03:40:04'),
(4, 'Tasha', '2023-01-13 03:40:04'),
(5, 'Isak Azimov', '2023-01-13 03:40:04'),
(6, 'Limone', '2023-01-13 03:40:04'),
(7, 'JK Rowling', '2023-01-13 03:40:04'),
(8, 'こんにちは', '2023-01-13 03:40:04'),
(9, 'アリ', '2023-01-13 03:40:04'),
(10, '릴리', '2023-01-13 03:40:04'),
(11, '세영', '2023-01-13 03:40:04'),
(12, 'Юрий', '2023-01-13 03:40:04'),
(13, 'Хантре', '2023-01-13 03:40:04'),
(14, 'Ahmad', '2023-01-13 03:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `author_id` int(11) NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`, `date_updated`) VALUES
(1, 'I am Me', 3, '2023-01-12 19:40:04'),
(2, 'the world is calm', 4, '2023-01-12 19:40:04'),
(3, 'Let it go', 4, '2023-01-12 19:40:04'),
(4, 'The art of letting go', 2, '2023-01-12 19:40:04'),
(5, 'HELL is bad', 14, '2023-01-12 19:40:04'),
(6, 'End of spirit', 5, '2023-01-12 19:40:04'),
(7, 'Standard', 6, '2023-01-12 19:40:04'),
(8, 'Harry Potter 1', 7, '2023-01-12 19:40:04'),
(9, 'Harry Potter Deathly Hallow', 7, '2023-01-12 19:40:04'),
(10, '本はいいです', 8, '2023-01-12 19:40:04'),
(11, 'こんにちは世界', 9, '2023-01-12 19:40:04'),
(12, 'My heart', 10, '2023-01-12 19:40:04'),
(13, 'My brain', 10, '2023-01-12 19:40:04'),
(14, 'My lung', 10, '2023-01-12 19:40:04'),
(15, '추상 미술', 11, '2023-01-12 19:40:04'),
(16, 'искусство абстракции', 12, '2023-01-12 19:40:04'),
(17, 'а может быть', 12, '2023-01-12 19:40:04'),
(18, 'а может', 13, '2023-01-12 19:40:04'),
(19, 'Harry Potter style', 7, '2023-01-12 19:26:23'),
(20, 'Design in Harry Potter Hagward', 7, '2023-01-12 19:26:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `author_id` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
