-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2020 at 09:27 PM
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
(9, 3, 'svm', 'asdasd@gmail.com', 'Very nice!', 'approved', '2020-09-27'),
(10, 15, 'svm', 'asd@asdm.com', 'nice post', 'approved', '2020-09-27'),
(11, 15, 'svm', 'asd@asdm.com', 'nice post', 'Rejected', '2020-09-27'),
(12, 15, 'svm', 'asd@asdm.com', 'nice post', 'Rejected', '2020-09-27'),
(13, 16, 'svm', 'adasdasas@gmail.com', 'Just a comment', 'approved', '2020-09-27');

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
(2, 1, 'This is another post example', 'Svetoslav M', '2020-09-27', 'dark.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dictum consequat libero. Donec vestibulum tincidunt lectus non feugiat. Maecenas gravida eget augue a venenatis. Nulla porttitor blandit lorem, non porttitor mi tempus eget. Maecenas sollicitudin elit quis dolor accumsan ultricies ut nec ex. Praesent elementum ut felis eu fringilla. Nullam lectus elit, venenatis a gravida eu, placerat non nulla. Sed sed ante elementum augue hendrerit finibus eget et felis. In tempus eros sit amet velit aliquet convallis vel non nibh. In condimentum, nulla et convallis volutpat, felis dolor commodo magna, nec fermentum enim libero vitae tellus. Etiam purus leo, venenatis nec vulputate sed, venenatis nec orci. Praesent ex lorem, tristique in volutpat in, hendrerit nec ipsum. Mauris posuere et dolor quis eleifend. Aliquam ultricies nisi vel leo cursus sodales nec sed leo. Nam urna leo, tempor et eleifend et, pellentesque eu elit.</p><p>Praesent quis pulvinar enim, nec consectetur elit. Aliquam dui ante, hendrerit et eleifend sit amet, semper et nunc. Fusce accumsan est nisi, nec faucibus nisl posuere nec. In id dictum nunc. Sed in nisi sed velit efficitur tempor id volutpat elit. Sed lobortis, odio non cursus condimentum, tortor neque consectetur est, vitae fringilla ligula ipsum non quam. Sed eu urna in erat posuere tempor eget pretium arcu. Praesent ac erat at enim faucibus cursus at vitae leo. Sed accumsan ipsum sit amet orci ullamcorper, at eleifend turpis efficitur. Integer elementum leo a erat placerat, at tincidunt magna vestibulum. In semper tortor mauris, vitae faucibus justo eleifend quis. Vestibulum et dapibus velit. In ex orci, rutrum at nibh vel, eleifend aliquam neque. Proin gravida, erat sit amet finibus tincidunt, nunc enim cursus urna, in tempus nisi est vitae orci. Fusce mattis nisi id malesuada scelerisque.</p><p>Nullam scelerisque dui nec odio finibus, sed semper lectus venenatis. Mauris nisl lorem, placerat sed rhoncus nec, varius quis sapien. Nulla ut varius urna. Mauris et augue ut mauris tincidunt vestibulum. Suspendisse nec ex ac mauris iaculis porta. Phasellus vestibulum erat vel justo euismod, placerat tristique urna ullamcorper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin efficitur egestas arcu, at semper massa semper et. Fusce imperdiet sem a est commodo vestibulum.</p><p>Nullam scelerisque dui nec odio finibus, sed semper lectus venenatis. Mauris nisl lorem, placerat sed rhoncus nec, varius quis sapien. Nulla ut varius urna. Mauris et augue ut mauris tincidunt vestibulum. Suspendisse nec ex ac mauris iaculis porta. Phasellus vestibulum erat vel justo euismod, placerat tristique urna ullamcorper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin efficitur egestas arcu, at semper massa semper et. Fusce imperdiet sem a est commodo vestibulum.</p><p>Nullam scelerisque dui nec odio finibus, sed semper lectus venenatis. Mauris nisl lorem, placerat sed rhoncus nec, varius quis sapien. Nulla ut varius urna. Mauris et augue ut mauris tincidunt vestibulum. Suspendisse nec ex ac mauris iaculis porta. Phasellus vestibulum erat vel justo euismod, placerat tristique urna ullamcorper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin efficitur egestas arcu, at semper massa semper et. Fusce imperdiet sem a est commodo vestibulum.</p>', 'tag2', 1, 'published'),
(3, 2, 'This is a third post example', 'Sv. Manchev', '2020-09-27', 'waterfall.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dictum consequat libero. Donec vestibulum tincidunt lectus non feugiat. Maecenas gravida eget augue a venenatis. Nulla porttitor blandit lorem, non porttitor mi tempus eget. Maecenas sollicitudin elit quis dolor accumsan ultricies ut nec ex. Praesent elementum ut felis eu fringilla. Nullam lectus elit, venenatis a gravida eu, placerat non nulla. Sed sed ante elementum augue hendrerit finibus eget et felis. In tempus eros sit amet velit aliquet convallis vel non nibh. In condimentum, nulla et convallis volutpat, felis dolor commodo magna, nec fermentum enim libero vitae tellus. Etiam purus leo, venenatis nec vulputate sed, venenatis nec orci. Praesent ex lorem, tristique in volutpat in, hendrerit nec ipsum. Mauris posuere et dolor quis eleifend. Aliquam ultricies nisi vel leo cursus sodales nec sed leo. Nam urna leo, tempor et eleifend et, pellentesque eu elit. Praesent quis pulvinar enim, nec consectetur elit. Aliquam dui ante, hendrerit et eleifend sit amet, semper et nunc. Fusce accumsan est nisi, nec faucibus nisl posuere nec. In id dictum nunc. Sed in nisi sed velit efficitur tempor id volutpat elit. Sed lobortis, odio non cursus condimentum, tortor neque consectetur est, vitae fringilla ligula ipsum non quam. Sed eu urna in erat posuere tempor eget pretium arcu. Praesent ac erat at enim faucibus cursus at vitae leo. Sed accumsan ipsum sit amet orci ullamcorper, at eleifend turpis efficitur. Integer elementum leo a erat placerat, at tincidunt magna vestibulum. In semper tortor mauris, vitae faucibus justo eleifend quis. Vestibulum et dapibus velit. In ex orci, rutrum at nibh vel, eleifend aliquam neque. Proin gravida, erat sit amet finibus tincidunt, nunc enim cursus urna, in tempus nisi est vitae orci. Fusce mattis nisi id malesuada scelerisque. Nullam scelerisque dui nec odio finibus, sed semper lectus venenatis. Mauris nisl lorem, placerat sed rhoncus nec, varius quis sapien. Nulla ut varius urna. Mauris et augue ut mauris tincidunt vestibulum. Suspendisse nec ex ac mauris iaculis porta. Phasellus vestibulum erat vel justo euismod, placerat tristique urna ullamcorper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin efficitur egestas arcu, at semper massa semper et. Fusce imperdiet sem a est commodo vestibulum.</p>', 'tag3, tag4', 6, 'published'),
(13, 1, 'This is an example post', 'Svetoslav Manchev', '2020-09-27', 'it.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dictum consequat libero. Donec vestibulum tincidunt lectus non feugiat. Maecenas gravida eget augue a venenatis. Nulla porttitor blandit lorem, non porttitor mi tempus eget. Maecenas sollicitudin elit quis dolor accumsan ultricies ut nec ex. Praesent elementum ut felis eu fringilla. Nullam lectus elit, venenatis a gravida eu, placerat non nulla. Sed sed ante elementum augue hendrerit finibus eget et felis. In tempus eros sit amet velit aliquet convallis vel non nibh. In condimentum, nulla et convallis volutpat, felis dolor commodo magna, nec fermentum enim libero vitae tellus. Etiam purus leo, venenatis nec vulputate sed, venenatis nec orci. Praesent ex lorem, tristique in volutpat in, hendrerit nec ipsum. Mauris posuere et dolor quis eleifend. Aliquam ultricies nisi vel leo cursus sodales nec sed leo. Nam urna leo, tempor et eleifend et, pellentesque eu elit.&nbsp;</p><p>Praesent quis pulvinar enim, nec consectetur elit. Aliquam dui ante, hendrerit et eleifend sit amet, semper et nunc. Fusce accumsan est nisi, nec faucibus nisl posuere nec. In id dictum nunc. Sed in nisi sed velit efficitur tempor id volutpat elit. Sed lobortis, odio non cursus condimentum, tortor neque consectetur est, vitae fringilla ligula ipsum non quam. Sed eu urna in erat posuere tempor eget pretium arcu. Praesent ac erat at enim faucibus cursus at vitae leo. Sed accumsan ipsum sit amet orci ullamcorper, at eleifend turpis efficitur. Integer elementum leo a erat placerat, at tincidunt magana vestibulum. In semper tortor mauris, vitae faucibus justo eleifend quis. Vestibulum et dapibus velit. In ex orci, rutrum at nibh vel, eleifend aliquam neque. Proin gravida, erat sit amet finibus tincidunt, nunc enim cursus urna, in tempus nisi est vitae orci. Fusce mattis nisi id malesuada scelerisque. Nullam scelerisque dui nec odio finibus, sed semper lectus venenatis.&nbsp;</p><p>Mauris nisl lorem, placerat sed rhoncus nec, varius quis sapien. Nulla ut varius urna. Mauris et augue ut mauris tincidunt vestibulum. Suspendisse nec ex ac mauris iaculis porta. Phasellus vestibulum erat vel justo euismod, placerat tristique urna ullamcorper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin efficitur egestas arcu, at semper massa semper et. Fusce imperdiet sem a est commodo vestibulum.</p><p>Praesent quis pulvinar enim, nec consectetur elit. Aliquam dui ante, hendrerit et eleifend sit amet, semper et nunc. Fusce accumsan est nisi, nec faucibus nisl posuere nec. In id dictum nunc. Sed in nisi sed velit efficitur tempor id volutpat elit. Sed lobortis, odio non cursus condimentum, tortor neque consectetur est, vitae fringilla ligula ipsum non quam. Sed eu urna in erat posuere tempor eget pretium arcu. Praesent ac erat at enim faucibus cursus at vitae leo. Sed accumsan ipsum sit amet orci ullamcorper, at eleifend turpis efficitur. Integer elementum leo a erat placerat, at tincidunt magana vestibulum. In semper tortor mauris, vitae faucibus justo eleifend quis. Vestibulum et dapibus velit. In ex orci, rutrum at nibh vel, eleifend aliquam neque. Proin gravida, erat sit amet finibus tincidunt, nunc enim cursus urna, in tempus nisi est vitae orci. Fusce mattis nisi id malesuada scelerisque. Nullam scelerisque dui nec odio finibus, sed semper lectus venenatis.&nbsp;</p><p>Praesent quis pulvinar enim, nec consectetur elit. Aliquam dui ante, hendrerit et eleifend sit amet, semper et nunc. Fusce accumsan est nisi, nec faucibus nisl posuere nec. In id dictum nunc. Sed in nisi sed velit efficitur tempor id volutpat elit. Sed lobortis, odio non cursus condimentum, tortor neque consectetur est, vitae fringilla ligula ipsum non quam. Sed eu urna in erat posuere tempor eget pretium arcu. Praesent ac erat at enim faucibus cursus at vitae leo. Sed accumsan ipsum sit amet orci ullamcorper, at eleifend turpis efficitur. Integer elementum leo a erat placerat, at tincidunt magana vestibulum. In semper tortor mauris, vitae faucibus justo eleifend quis. Vestibulum et dapibus velit. In ex orci, rutrum at nibh vel, eleifend aliquam neque. Proin gravida, erat sit amet finibus tincidunt, nunc enim cursus urna, in tempus nisi est vitae orci. Fusce mattis nisi id malesuada scelerisque. Nullam scelerisque dui nec odio finibus, sed semper lectus venenatis.&nbsp;</p>', 'tag1', 0, 'published'),
(14, 3, 'Sample post 3', 'svm', '2020-09-27', 'slider2.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in sodales nulla, gravida tincidunt est. Cras luctus et purus non pellentesque. Maecenas sollicitudin luctus porta. Suspendisse sed cursus libero. Praesent aliquet nunc urna, id ultricies ligula feugiat eget. Cras eleifend quis turpis et elementum. Sed posuere lectus nec urna dictum, ac feugiat sem feugiat.</p><p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur ex massa, euismod ut imperdiet tempus, vulputate vitae massa. Proin finibus urna quam, eu ultricies odio aliquam sed. Aliquam erat volutpat. Proin et nibh laoreet, laoreet nulla nec, posuere diam. Quisque lacinia scelerisque massa, ut tincidunt dolor iaculis vel. Morbi interdum maximus luctus. Vivamus vestibulum vel nibh non interdum.</p><p>Nulla facilisi. Duis in mollis turpis, nec viverra urna. Donec enim odio, posuere ut risus nec, pulvinar sollicitudin dui. Donec at gravida ex, fermentum ultrices dui. Nam maximus cursus mauris scelerisque consequat. Nunc vel mi vulputate purus cursus mattis nec ut arcu. Donec ac sem laoreet, aliquet diam non, placerat ipsum. Fusce condimentum risus ut neque gravida, in lobortis urna venenatis. Vestibulum maximus finibus metus, id suscipit nibh. Vestibulum magna est, porttitor sed auctor quis, pulvinar sit amet lorem. Suspendisse suscipit est ut varius facilisis. Nunc imperdiet, sapien fermentum venenatis placerat, leo mauris eleifend magna, in consequat massa velit ut arcu. Integer malesuada orci at risus iaculis congue. Donec sagittis sem mi, sit amet pulvinar nisl finibus sed. Etiam tortor magna, posuere vel velit eu, commodo tincidunt dolor.</p><p>Nam condimentum leo ut ex fermentum lobortis. Phasellus ac volutpat sem, non eleifend nisi. Suspendisse turpis neque, varius ac arcu a, vulputate gravida magna. Praesent vel ultrices mauris, vel iaculis ipsum. Proin eu fermentum enim, eu scelerisque felis. Sed purus turpis, venenatis vitae felis in, rutrum tincidunt elit. Suspendisse rhoncus consectetur dolor tincidunt facilisis. Phasellus semper interdum dui eget tincidunt. Phasellus quam ex, tincidunt et luctus sed, ultrices in erat. In hac habitasse platea dictumst.</p><p>Suspendisse ac pulvinar lectus. Aliquam pulvinar finibus aliquam. Etiam auctor sapien sed tincidunt pellentesque. Vestibulum bibendum ligula eget cursus hendrerit. Nulla facilisi. Morbi sed purus vel turpis ullamcorper iaculis sit amet laoreet nisi. Quisque fringilla, sem eu porta finibus, sapien lacus aliquet arcu, vel vulputate mi dolor sit amet diam. Ut hendrerit nulla sed lacus facilisis vestibulum. Fusce tristique elit sit amet ligula tincidunt egestas. Maecenas malesuada pretium magna sed mollis. Integer purus erat, ultricies at nisi vel, tempor consectetur nisl. Nunc sit amet nunc vitae ligula gravida porta. Nullam lacinia nisl a placerat porta. Vivamus feugiat nunc eget auctor ornare. Nunc a odio pulvinar, posuere quam id, semper leo. Praesent feugiat quis ex ac vehicula.</p>', 'notag', 0, 'published'),
(15, 4, 'Sample post 4', 'svm', '2020-09-27', 'slider1.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in sodales nulla, gravida tincidunt est. Cras luctus et purus non pellentesque. Maecenas sollicitudin luctus porta. Suspendisse sed cursus libero. Praesent aliquet nunc urna, id ultricies ligula feugiat eget. Cras eleifend quis turpis et elementum. Sed posuere lectus nec urna dictum, ac feugiat sem feugiat.</p><p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur ex massa, euismod ut imperdiet tempus, vulputate vitae massa. Proin finibus urna quam, eu ultricies odio aliquam sed. Aliquam erat volutpat. Proin et nibh laoreet, laoreet nulla nec, posuere diam. Quisque lacinia scelerisque massa, ut tincidunt dolor iaculis vel. Morbi interdum maximus luctus. Vivamus vestibulum vel nibh non interdum.</p><p>Nulla facilisi. Duis in mollis turpis, nec viverra urna. Donec enim odio, posuere ut risus nec, pulvinar sollicitudin dui. Donec at gravida ex, fermentum ultrices dui. Nam maximus cursus mauris scelerisque consequat. Nunc vel mi vulputate purus cursus mattis nec ut arcu. Donec ac sem laoreet, aliquet diam non, placerat ipsum. Fusce condimentum risus ut neque gravida, in lobortis urna venenatis. Vestibulum maximus finibus metus, id suscipit nibh. Vestibulum magna est, porttitor sed auctor quis, pulvinar sit amet lorem. Suspendisse suscipit est ut varius facilisis. Nunc imperdiet, sapien fermentum venenatis placerat, leo mauris eleifend magna, in consequat massa velit ut arcu. Integer malesuada orci at risus iaculis congue. Donec sagittis sem mi, sit amet pulvinar nisl finibus sed. Etiam tortor magna, posuere vel velit eu, commodo tincidunt dolor.</p><p>Nam condimentum leo ut ex fermentum lobortis. Phasellus ac volutpat sem, non eleifend nisi. Suspendisse turpis neque, varius ac arcu a, vulputate gravida magna. Praesent vel ultrices mauris, vel iaculis ipsum. Proin eu fermentum enim, eu scelerisque felis. Sed purus turpis, venenatis vitae felis in, rutrum tincidunt elit. Suspendisse rhoncus consectetur dolor tincidunt facilisis. Phasellus semper interdum dui eget tincidunt. Phasellus quam ex, tincidunt et luctus sed, ultrices in erat. In hac habitasse platea dictumst.</p><p>Suspendisse ac pulvinar lectus. Aliquam pulvinar finibus aliquam. Etiam auctor sapien sed tincidunt pellentesque. Vestibulum bibendum ligula eget cursus hendrerit. Nulla facilisi. Morbi sed purus vel turpis ullamcorper iaculis sit amet laoreet nisi. Quisque fringilla, sem eu porta finibus, sapien lacus aliquet arcu, vel vulputate mi dolor sit amet diam. Ut hendrerit nulla sed lacus facilisis vestibulum. Fusce tristique elit sit amet ligula tincidunt egestas. Maecenas malesuada pretium magna sed mollis. Integer purus erat, ultricies at nisi vel, tempor consectetur nisl. Nunc sit amet nunc vitae ligula gravida porta. Nullam lacinia nisl a placerat porta. Vivamus feugiat nunc eget auctor ornare. Nunc a odio pulvinar, posuere quam id, semper leo. Praesent feugiat quis ex ac vehicula.</p>', 'cat4', 3, 'published'),
(16, 5, 'Sample post 5', 'Svetoslav Manchev', '2020-09-27', 'waterfall.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in sodales nulla, gravida tincidunt est. Cras luctus et purus non pellentesque. Maecenas sollicitudin luctus porta. Suspendisse sed cursus libero. Praesent aliquet nunc urna, id ultricies ligula feugiat eget. Cras eleifend quis turpis et elementum. Sed posuere lectus nec urna dictum, ac feugiat sem feugiat.</p><p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur ex massa, euismod ut imperdiet tempus, vulputate vitae massa. Proin finibus urna quam, eu ultricies odio aliquam sed. Aliquam erat volutpat. Proin et nibh laoreet, laoreet nulla nec, posuere diam. Quisque lacinia scelerisque massa, ut tincidunt dolor iaculis vel. Morbi interdum maximus luctus. Vivamus vestibulum vel nibh non interdum.</p><p>Nulla facilisi. Duis in mollis turpis, nec viverra urna. Donec enim odio, posuere ut risus nec, pulvinar sollicitudin dui. Donec at gravida ex, fermentum ultrices dui. Nam maximus cursus mauris scelerisque consequat. Nunc vel mi vulputate purus cursus mattis nec ut arcu. Donec ac sem laoreet, aliquet diam non, placerat ipsum. Fusce condimentum risus ut neque gravida, in lobortis urna venenatis. Vestibulum maximus finibus metus, id suscipit nibh. Vestibulum magna est, porttitor sed auctor quis, pulvinar sit amet lorem. Suspendisse suscipit est ut varius facilisis. Nunc imperdiet, sapien fermentum venenatis placerat, leo mauris eleifend magna, in consequat massa velit ut arcu. Integer malesuada orci at risus iaculis congue. Donec sagittis sem mi, sit amet pulvinar nisl finibus sed. Etiam tortor magna, posuere vel velit eu, commodo tincidunt dolor.</p><p>Nam condimentum leo ut ex fermentum lobortis. Phasellus ac volutpat sem, non eleifend nisi. Suspendisse turpis neque, varius ac arcu a, vulputate gravida magna. Praesent vel ultrices mauris, vel iaculis ipsum. Proin eu fermentum enim, eu scelerisque felis. Sed purus turpis, venenatis vitae felis in, rutrum tincidunt elit. Suspendisse rhoncus consectetur dolor tincidunt facilisis. Phasellus semper interdum dui eget tincidunt. Phasellus quam ex, tincidunt et luctus sed, ultrices in erat. In hac habitasse platea dictumst.</p><p>Suspendisse ac pulvinar lectus. Aliquam pulvinar finibus aliquam. Etiam auctor sapien sed tincidunt pellentesque. Vestibulum bibendum ligula eget cursus hendrerit. Nulla facilisi. Morbi sed purus vel turpis ullamcorper iaculis sit amet laoreet nisi. Quisque fringilla, sem eu porta finibus, sapien lacus aliquet arcu, vel vulputate mi dolor sit amet diam. Ut hendrerit nulla sed lacus facilisis vestibulum. Fusce tristique elit sit amet ligula tincidunt egestas. Maecenas malesuada pretium magna sed mollis. Integer purus erat, ultricies at nisi vel, tempor consectetur nisl. Nunc sit amet nunc vitae ligula gravida porta. Nullam lacinia nisl a placerat porta. Vivamus feugiat nunc eget auctor ornare. Nunc a odio pulvinar, posuere quam id, semper leo. Praesent feugiat quis ex ac vehicula.</p><p><strong>Generated 5 paragraphs, 436 words, 2979 bytes of&nbsp;</strong></p><p><a href=\"https://www.lipsum.com/\"><strong>Lorem Ipsum</strong></a></p><p>&nbsp;</p>', 'cat5', 1, 'published'),
(17, 3, 'Another sample post 6', 'svm', '2020-09-27', 'slider5.png', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in sodales nulla, gravida tincidunt est. Cras luctus et purus non pellentesque. Maecenas sollicitudin luctus porta. Suspendisse sed cursus libero. Praesent aliquet nunc urna, id ultricies ligula feugiat eget. Cras eleifend quis turpis et elementum. Sed posuere lectus nec urna dictum, ac feugiat sem feugiat.</p><p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur ex massa, euismod ut imperdiet tempus, vulputate vitae massa. Proin finibus urna quam, eu ultricies odio aliquam sed. Aliquam erat volutpat. Proin et nibh laoreet, laoreet nulla nec, posuere diam. Quisque lacinia scelerisque massa, ut tincidunt dolor iaculis vel. Morbi interdum maximus luctus. Vivamus vestibulum vel nibh non interdum.</p><p>Nulla facilisi. Duis in mollis turpis, nec viverra urna. Donec enim odio, posuere ut risus nec, pulvinar sollicitudin dui. Donec at gravida ex, fermentum ultrices dui. Nam maximus cursus mauris scelerisque consequat. Nunc vel mi vulputate purus cursus mattis nec ut arcu. Donec ac sem laoreet, aliquet diam non, placerat ipsum. Fusce condimentum risus ut neque gravida, in lobortis urna venenatis. Vestibulum maximus finibus metus, id suscipit nibh. Vestibulum magna est, porttitor sed auctor quis, pulvinar sit amet lorem. Suspendisse suscipit est ut varius facilisis. Nunc imperdiet, sapien fermentum venenatis placerat, leo mauris eleifend magna, in consequat massa velit ut arcu. Integer malesuada orci at risus iaculis congue. Donec sagittis sem mi, sit amet pulvinar nisl finibus sed. Etiam tortor magna, posuere vel velit eu, commodo tincidunt dolor.</p><p>Nam condimentum leo ut ex fermentum lobortis. Phasellus ac volutpat sem, non eleifend nisi. Suspendisse turpis neque, varius ac arcu a, vulputate gravida magna. Praesent vel ultrices mauris, vel iaculis ipsum. Proin eu fermentum enim, eu scelerisque felis. Sed purus turpis, venenatis vitae felis in, rutrum tincidunt elit. Suspendisse rhoncus consectetur dolor tincidunt facilisis. Phasellus semper interdum dui eget tincidunt. Phasellus quam ex, tincidunt et luctus sed, ultrices in erat. In hac habitasse platea dictumst.</p><p>Suspendisse ac pulvinar lectus. Aliquam pulvinar finibus aliquam. Etiam auctor sapien sed tincidunt pellentesque. Vestibulum bibendum ligula eget cursus hendrerit. Nulla facilisi. Morbi sed purus vel turpis ullamcorper iaculis sit amet laoreet nisi. Quisque fringilla, sem eu porta finibus, sapien lacus aliquet arcu, vel vulputate mi dolor sit amet diam. Ut hendrerit nulla sed lacus facilisis vestibulum. Fusce tristique elit sit amet ligula tincidunt egestas. Maecenas malesuada pretium magna sed mollis. Integer purus erat, ultricies at nisi vel, tempor consectetur nisl. Nunc sit amet nunc vitae ligula gravida porta. Nullam lacinia nisl a placerat porta. Vivamus feugiat nunc eget auctor ornare. Nunc a odio pulvinar, posuere quam id, semper leo. Praesent feugiat quis ex ac vehicula.</p>', 'cat3', 0, 'published'),
(18, 1, 'Post Sample 7', 'svm', '2020-09-27', 'town.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in sodales nulla, gravida tincidunt est. Cras luctus et purus non pellentesque. Maecenas sollicitudin luctus porta. Suspendisse sed cursus libero. Praesent aliquet nunc urna, id ultricies ligula feugiat eget. Cras eleifend quis turpis et elementum. Sed posuere lectus nec urna dictum, ac feugiat sem feugiat.</p><p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur ex massa, euismod ut imperdiet tempus, vulputate vitae massa. Proin finibus urna quam, eu ultricies odio aliquam sed. Aliquam erat volutpat. Proin et nibh laoreet, laoreet nulla nec, posuere diam. Quisque lacinia scelerisque massa, ut tincidunt dolor iaculis vel. Morbi interdum maximus luctus. Vivamus vestibulum vel nibh non interdum.</p><p>Nulla facilisi. Duis in mollis turpis, nec viverra urna. Donec enim odio, posuere ut risus nec, pulvinar sollicitudin dui. Donec at gravida ex, fermentum ultrices dui. Nam maximus cursus mauris scelerisque consequat. Nunc vel mi vulputate purus cursus mattis nec ut arcu. Donec ac sem laoreet, aliquet diam non, placerat ipsum. Fusce condimentum risus ut neque gravida, in lobortis urna venenatis. Vestibulum maximus finibus metus, id suscipit nibh. Vestibulum magna est, porttitor sed auctor quis, pulvinar sit amet lorem. Suspendisse suscipit est ut varius facilisis. Nunc imperdiet, sapien fermentum venenatis placerat, leo mauris eleifend magna, in consequat massa velit ut arcu. Integer malesuada orci at risus iaculis congue. Donec sagittis sem mi, sit amet pulvinar nisl finibus sed. Etiam tortor magna, posuere vel velit eu, commodo tincidunt dolor.</p><p>Nam condimentum leo ut ex fermentum lobortis. Phasellus ac volutpat sem, non eleifend nisi. Suspendisse turpis neque, varius ac arcu a, vulputate gravida magna. Praesent vel ultrices mauris, vel iaculis ipsum. Proin eu fermentum enim, eu scelerisque felis. Sed purus turpis, venenatis vitae felis in, rutrum tincidunt elit. Suspendisse rhoncus consectetur dolor tincidunt facilisis. Phasellus semper interdum dui eget tincidunt. Phasellus quam ex, tincidunt et luctus sed, ultrices in erat. In hac habitasse platea dictumst.</p><p>Suspendisse ac pulvinar lectus. Aliquam pulvinar finibus aliquam. Etiam auctor sapien sed tincidunt pellentesque. Vestibulum bibendum ligula eget cursus hendrerit. Nulla facilisi. Morbi sed purus vel turpis ullamcorper iaculis sit amet laoreet nisi. Quisque fringilla, sem eu porta finibus, sapien lacus aliquet arcu, vel vulputate mi dolor sit amet diam. Ut hendrerit nulla sed lacus facilisis vestibulum. Fusce tristique elit sit amet ligula tincidunt egestas. Maecenas malesuada pretium magna sed mollis. Integer purus erat, ultricies at nisi vel, tempor consectetur nisl. Nunc sit amet nunc vitae ligula gravida porta. Nullam lacinia nisl a placerat porta. Vivamus feugiat nunc eget auctor ornare. Nunc a odio pulvinar, posuere quam id, semper leo. Praesent feugiat quis ex ac vehicula.</p>', 'draft', 0, 'draft');

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
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
