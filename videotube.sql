-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3310
-- Generation Time: 19-Mar-2019 às 18:19
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `videotube`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Film & Animation'),
(2, 'Autos & Vehicles'),
(3, 'Music'),
(4, 'Pets & Animals'),
(5, 'Sports'),
(6, 'Travel & Events'),
(7, 'Gaming'),
(8, 'People & Blogs'),
(9, 'Comedy'),
(10, 'Entertainment'),
(11, 'News & Politics'),
(12, 'Howto & Style'),
(13, 'Education'),
(14, 'Science & Technology'),
(15, 'Nonprofits & Activism');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postedBy` varchar(50) COLLATE utf8_bin NOT NULL,
  `videoId` int(11) NOT NULL,
  `responseTo` int(11) NOT NULL,
  `body` text COLLATE utf8_bin NOT NULL,
  `datePosted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `comments`
--

INSERT INTO `comments` (`id`, `postedBy`, `videoId`, `responseTo`, `body`, `datePosted`) VALUES
(1, 'jmgl1988', 17, 0, 'ertert', '2019-03-19 09:56:48'),
(2, 'jmgl1988', 17, 1, 'ertert', '2019-03-19 09:56:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `commentId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dislikes`
--

INSERT INTO `dislikes` (`id`, `username`, `commentId`, `videoId`) VALUES
(2, 'jmgl1988', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `commentId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `likes`
--

INSERT INTO `likes` (`id`, `username`, `commentId`, `videoId`) VALUES
(1, 'jmgl1988', 0, 17),
(2, 'jmgl1988', 2, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `userTo` varchar(50) COLLATE utf8_bin NOT NULL,
  `userFrom` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `subscribers`
--

INSERT INTO `subscribers` (`id`, `userTo`, `userFrom`) VALUES
(5, 'reece-kenney', 'donkey-kong'),
(8, 'donkey-kong', 'jmgl1988');

-- --------------------------------------------------------

--
-- Estrutura da tabela `thumbnails`
--

CREATE TABLE `thumbnails` (
  `id` int(11) NOT NULL,
  `videoId` int(11) NOT NULL,
  `filePath` varchar(250) COLLATE utf8_bin NOT NULL,
  `selected` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `thumbnails`
--

INSERT INTO `thumbnails` (`id`, `videoId`, `filePath`, `selected`) VALUES
(37, 14, 'uploads/videos/thumbnails/14-5c8fbf10486b2.jpg', 1),
(38, 14, 'uploads/videos/thumbnails/14-5c8fbf118369d.jpg', 0),
(39, 14, 'uploads/videos/thumbnails/14-5c8fbf13ca8f0.jpg', 0),
(40, 15, 'uploads/videos/thumbnails/15-5c8fbf658c7dc.jpg', 1),
(41, 15, 'uploads/videos/thumbnails/15-5c8fbf68760e7.jpg', 0),
(42, 15, 'uploads/videos/thumbnails/15-5c8fbf6e32e0d.jpg', 0),
(43, 16, 'uploads/videos/thumbnails/16-5c8fbfde4bbac.jpg', 1),
(44, 16, 'uploads/videos/thumbnails/16-5c8fbfdf048b5.jpg', 0),
(45, 16, 'uploads/videos/thumbnails/16-5c8fbfe04dc39.jpg', 0),
(46, 17, 'uploads/videos/thumbnails/17-5c8fc0672bfbe.jpg', 1),
(47, 17, 'uploads/videos/thumbnails/17-5c8fc06bbdd9b.jpg', 0),
(48, 17, 'uploads/videos/thumbnails/17-5c8fc074b7936.jpg', 0),
(49, 23, 'uploads/videos/thumbnails/23-5c90b8444881b.jpg', 1),
(50, 23, 'uploads/videos/thumbnails/23-5c90b8466d256.jpg', 0),
(51, 23, 'uploads/videos/thumbnails/23-5c90b84a91a98.jpg', 0),
(52, 24, 'uploads/videos/thumbnails/24-5c90b8a9f1fe5.jpg', 0),
(53, 24, 'uploads/videos/thumbnails/24-5c90b8ac4f3b5.jpg', 1),
(54, 24, 'uploads/videos/thumbnails/24-5c90b8b079f8d.jpg', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) COLLATE utf8_bin NOT NULL,
  `lastName` varchar(25) COLLATE utf8_bin NOT NULL,
  `username` varchar(25) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `signUpDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `profilePic` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'Reece', 'Keeney', 'reece-kenney', 'reece@gmail.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', '2019-03-15 10:20:09', 'assets/images/profilePictures/default-male.png'),
(2, 'Donkey', 'Kong', 'donkey-kong', 'dk@gmail.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', '2019-03-15 10:23:55', 'assets/images/profilePictures/default-male.png'),
(3, 'Jose', 'Loureiro', 'jmgl1988', 'jj@jj.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', '2019-03-15 15:01:58', 'assets/images/profilePictures/default-male.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `uploadedBy` varchar(50) COLLATE utf8_bin NOT NULL,
  `title` varchar(70) COLLATE utf8_bin NOT NULL,
  `description` varchar(1000) COLLATE utf8_bin NOT NULL,
  `privacy` int(11) NOT NULL,
  `filePath` varchar(250) COLLATE utf8_bin NOT NULL,
  `category` int(11) NOT NULL,
  `uploadDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int(11) NOT NULL,
  `duration` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `videos`
--

INSERT INTO `videos` (`id`, `uploadedBy`, `title`, `description`, `privacy`, `filePath`, `category`, `uploadDate`, `views`, `duration`) VALUES
(14, 'reece-kenney', 'Welcome Android', 'Welcome Android', 1, 'uploads/videos/5c8fbef31436f.mp4', 13, '2019-03-18 15:53:23', 17, '02:12'),
(15, 'reece-kenney', 'Interface Overview', 'Interface Overview', 1, 'uploads/videos/5c8fbf3ab3e1d.mp4', 14, '2019-03-18 15:54:34', 3, '05:55'),
(16, 'donkey-kong', 'Introduction to this section', 'Introduction to this section', 1, 'uploads/videos/5c8fbfd023dba.mp4', 13, '2019-03-18 15:57:04', 2, '01:05'),
(17, 'donkey-kong', 'Install Android Studio', 'Install Android Studio', 1, 'uploads/videos/5c8fc021b9c0b.mp4', 14, '2019-03-18 15:58:25', 1, '09:35'),
(18, 'jmgl1988', 'teste', 'teste', 1, 'uploads/videos/5c90b6fc45894.mp4', 13, '2019-03-19 09:31:40', 0, ''),
(19, 'jmgl1988', 'teste', 'teste', 1, 'uploads/videos/5c90b74660240.mp4', 13, '2019-03-19 09:32:54', 0, ''),
(20, 'jmgl1988', 'teste', 'teste', 1, 'uploads/videos/5c90b75ad0eec.mp4', 13, '2019-03-19 09:33:14', 0, ''),
(21, 'jmgl1988', 'teste', 'teste', 1, 'uploads/videos/5c90b7e796b3c.mp4', 13, '2019-03-19 09:35:35', 0, ''),
(22, 'jmgl1988', 'a', 'a', 0, 'uploads/videos/5c90b7f0775cb.mp4', 1, '2019-03-19 09:35:44', 0, ''),
(23, 'jmgl1988', 's', 's', 0, 'uploads/videos/5c90b824436b2.mp4', 1, '2019-03-19 09:36:36', 0, '04:20'),
(24, 'jmgl1988', 'JDKS PARA ANDROID 32 BITS WINDOWS', 'JDKS PARA ANDROID 32 BITS WINDOWS', 0, 'uploads/videos/5c90b88b135b6.mp4', 13, '2019-03-19 09:38:19', 3, '04:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `thumbnails`
--
ALTER TABLE `thumbnails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
