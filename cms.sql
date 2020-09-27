-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2020 at 05:15 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Category 1'),
(2, 'Category 2'),
(3, 'Category 3'),
(4, 'Category 4'),
(5, 'Category 5');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(5, 2, 'Svetoslav Manchev', 'svetoslav@gmail.com', 'This is my first comment', 'Approved', '2020-09-12'),
(7, 13, 'John Doe', 'joh@gmail.com', 'The article explained everytihn to me!', 'Approved', '2020-09-21'),
(8, 3, 'svm', 'asdasd@gmail.com', 'Very nice!', 'Approved', '2020-09-27'),
(9, 3, 'svm', 'asdasd@gmail.com', 'Very nice!', 'Rejected', '2020-09-27');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'Draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(2, 1, 'This is another post example', 'Svetoslav M', '2020-09-27', 'dark.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dictum consequat libero. Donec vestibulum tincidunt lectus non feugiat. Maecenas gravida eget augue a venenatis. Nulla porttitor blandit lorem, non porttitor mi tempus eget. Maecenas sollicitudin elit quis dolor accumsan ultricies ut nec ex. Praesent elementum ut felis eu fringilla. Nullam lectus elit, venenatis a gravida eu, placerat non nulla. Sed sed ante elementum augue hendrerit finibus eget et felis. In tempus eros sit amet velit aliquet convallis vel non nibh. In condimentum, nulla et convallis volutpat, felis dolor commodo magna, nec fermentum enim libero vitae tellus. Etiam purus leo, venenatis nec vulputate sed, venenatis nec orci. Praesent ex lorem, tristique in volutpat in, hendrerit nec ipsum. Mauris posuere et dolor quis eleifend. Aliquam ultricies nisi vel leo cursus sodales nec sed leo. Nam urna leo, tempor et eleifend et, pellentesque eu elit.\r\n\r\nPraesent quis pulvinar enim, nec consectetur elit. Aliquam dui ante, hendrerit et eleifend sit amet, semper et nunc. Fusce accumsan est nisi, nec faucibus nisl posuere nec. In id dictum nunc. Sed in nisi sed velit efficitur tempor id volutpat elit. Sed lobortis, odio non cursus condimentum, tortor neque consectetur est, vitae fringilla ligula ipsum non quam. Sed eu urna in erat posuere tempor eget pretium arcu. Praesent ac erat at enim faucibus cursus at vitae leo. Sed accumsan ipsum sit amet orci ullamcorper, at eleifend turpis efficitur. Integer elementum leo a erat placerat, at tincidunt magna vestibulum. In semper tortor mauris, vitae faucibus justo eleifend quis. Vestibulum et dapibus velit. In ex orci, rutrum at nibh vel, eleifend aliquam neque. Proin gravida, erat sit amet finibus tincidunt, nunc enim cursus urna, in tempus nisi est vitae orci.\r\n\r\nFusce mattis nisi id malesuada scelerisque. Nullam scelerisque dui nec odio finibus, sed semper lectus venenatis. Mauris nisl lorem, placerat sed rhoncus nec, varius quis sapien. Nulla ut varius urna. Mauris et augue ut mauris tincidunt vestibulum. Suspendisse nec ex ac mauris iaculis porta. Phasellus vestibulum erat vel justo euismod, placerat tristique urna ullamcorper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin efficitur egestas arcu, at semper massa semper et. Fusce imperdiet sem a est commodo vestibulum.', 'tag2', 1, 'published'),
(3, 1, 'This is a third post example', 'Sv. Manchev', '2020-09-27', 'waterfall.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dictum consequat libero. Donec vestibulum tincidunt lectus non feugiat. Maecenas gravida eget augue a venenatis. Nulla porttitor blandit lorem, non porttitor mi tempus eget. Maecenas sollicitudin elit quis dolor accumsan ultricies ut nec ex. Praesent elementum ut felis eu fringilla. Nullam lectus elit, venenatis a gravida eu, placerat non nulla. Sed sed ante elementum augue hendrerit finibus eget et felis. In tempus eros sit amet velit aliquet convallis vel non nibh. In condimentum, nulla et convallis volutpat, felis dolor commodo magna, nec fermentum enim libero vitae tellus. Etiam purus leo, venenatis nec vulputate sed, venenatis nec orci. Praesent ex lorem, tristique in volutpat in, hendrerit nec ipsum. Mauris posuere et dolor quis eleifend. Aliquam ultricies nisi vel leo cursus sodales nec sed leo. Nam urna leo, tempor et eleifend et, pellentesque eu elit.\r\n\r\nPraesent quis pulvinar enim, nec consectetur elit. Aliquam dui ante, hendrerit et eleifend sit amet, semper et nunc. Fusce accumsan est nisi, nec faucibus nisl posuere nec. In id dictum nunc. Sed in nisi sed velit efficitur tempor id volutpat elit. Sed lobortis, odio non cursus condimentum, tortor neque consectetur est, vitae fringilla ligula ipsum non quam. Sed eu urna in erat posuere tempor eget pretium arcu. Praesent ac erat at enim faucibus cursus at vitae leo. Sed accumsan ipsum sit amet orci ullamcorper, at eleifend turpis efficitur. Integer elementum leo a erat placerat, at tincidunt magna vestibulum. In semper tortor mauris, vitae faucibus justo eleifend quis. Vestibulum et dapibus velit. In ex orci, rutrum at nibh vel, eleifend aliquam neque. Proin gravida, erat sit amet finibus tincidunt, nunc enim cursus urna, in tempus nisi est vitae orci.\r\n\r\nFusce mattis nisi id malesuada scelerisque. Nullam scelerisque dui nec odio finibus, sed semper lectus venenatis. Mauris nisl lorem, placerat sed rhoncus nec, varius quis sapien. Nulla ut varius urna. Mauris et augue ut mauris tincidunt vestibulum. Suspendisse nec ex ac mauris iaculis porta. Phasellus vestibulum erat vel justo euismod, placerat tristique urna ullamcorper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin efficitur egestas arcu, at semper massa semper et. Fusce imperdiet sem a est commodo vestibulum.', 'tag3, tag4', 6, 'published'),
(13, 1, 'This is an example post', 'Svetoslav Manchev', '2020-09-27', 'it.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dictum consequat libero. Donec vestibulum tincidunt lectus non feugiat. Maecenas gravida eget augue a venenatis. Nulla porttitor blandit lorem, non porttitor mi tempus eget. Maecenas sollicitudin elit quis dolor accumsan ultricies ut nec ex. Praesent elementum ut felis eu fringilla. Nullam lectus elit, venenatis a gravida eu, placerat non nulla. Sed sed ante elementum augue hendrerit finibus eget et felis. In tempus eros sit amet velit aliquet convallis vel non nibh. In condimentum, nulla et convallis volutpat, felis dolor commodo magna, nec fermentum enim libero vitae tellus. Etiam purus leo, venenatis nec vulputate sed, venenatis nec orci. Praesent ex lorem, tristique in volutpat in, hendrerit nec ipsum. Mauris posuere et dolor quis eleifend. Aliquam ultricies nisi vel leo cursus sodales nec sed leo. Nam urna leo, tempor et eleifend et, pellentesque eu elit.\r\n\r\nPraesent quis pulvinar enim, nec consectetur elit. Aliquam dui ante, hendrerit et eleifend sit amet, semper et nunc. Fusce accumsan est nisi, nec faucibus nisl posuere nec. In id dictum nunc. Sed in nisi sed velit efficitur tempor id volutpat elit. Sed lobortis, odio non cursus condimentum, tortor neque consectetur est, vitae fringilla ligula ipsum non quam. Sed eu urna in erat posuere tempor eget pretium arcu. Praesent ac erat at enim faucibus cursus at vitae leo. Sed accumsan ipsum sit amet orci ullamcorper, at eleifend turpis efficitur. Integer elementum leo a erat placerat, at tincidunt magana vestibulum. In semper tortor mauris, vitae faucibus justo eleifend quis. Vestibulum et dapibus velit. In ex orci, rutrum at nibh vel, eleifend aliquam neque. Proin gravida, erat sit amet finibus tincidunt, nunc enim cursus urna, in tempus nisi est vitae orci.\r\n\r\nFusce mattis nisi id malesuada scelerisque. Nullam scelerisque dui nec odio finibus, sed semper lectus venenatis. Mauris nisl lorem, placerat sed rhoncus nec, varius quis sapien. Nulla ut varius urna. Mauris et augue ut mauris tincidunt vestibulum. Suspendisse nec ex ac mauris iaculis porta. Phasellus vestibulum erat vel justo euismod, placerat tristique urna ullamcorper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin efficitur egestas arcu, at semper massa semper et. Fusce imperdiet sem a est commodo vestibulum.', 'tag1', 0, 'published'),
(14, 1, 'Sample post 3', 'az', '2020-09-26', '', '<h2>Sample Text</h2><ol><li>asd</li><li>asd</li><li>asd</li></ol><p> </p><p>asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd</p><p>asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasda \r\n\r\n\r\n\r\nsdasdasdasdasdasdasdasdasdasdasdasdasdasdasd</p><p>asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd</p><p>asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd</p><p> </p>', 'notag', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(3, 'svm', '123456', 'Svetoslav', 'Manchev', 'svetoslav@gmaa.com', '', 'admin', ''),
(6, 'Ivan', '123465', 'Ivan', 'Ivanov', 'ivan@gmail.com', '', 'subscriber', ''),
(7, 'georgi', '12345678', 'Georgi', 'Georgiev', 'ggeorgiev@gmail.com', '', 'subscriber', ''),
(8, 'peter', '123132123', 'Peter', 'Petrov', 'peter@gmail.com', '', 'subscriber', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
