-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 22, 2021 at 06:02 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mega_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_addresses_users1_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `line1`, `line2`, `city`, `state`, `country`, `phone`, `pincode`, `user_id`) VALUES
(1, 'Test Address', 'Test Address', 'New Delhi', 'Delhi', 'India', '9855698981', 110045, 1),
(2, 'Test Address 2', 'Gollahalli, Electronic City', 'Bangalore', 'Karnataka', 'India', '9855698981', 560100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Business & Economics'),
(2, 'Self-Help'),
(3, 'Society & Social Sciences'),
(4, 'Crafts, Hobbies & Home'),
(5, 'New Age & Spirituality'),
(6, 'Contemporary Fiction');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orders_users1_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`) VALUES
(7, 1),
(8, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(6, 2),
(42, 2),
(43, 2),
(44, 2),
(63, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

DROP TABLE IF EXISTS `orders_details`;
CREATE TABLE IF NOT EXISTS `orders_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_orders_has_products_products1_idx` (`product_id`),
  KEY `fk_orders_has_products_orders1_idx` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 6, 27, 1),
(2, 6, 26, 1),
(3, 6, 49, 1),
(4, 7, 4, 1),
(5, 8, 38, 1),
(6, 8, 5, 1),
(7, 8, 53, 1),
(9, 24, 26, 1),
(10, 24, 49, 1),
(11, 24, 38, 1),
(12, 24, 27, 1),
(45, 39, 1, 3),
(46, 39, 13, 3),
(47, 39, 18, 2),
(49, 40, 1, 2),
(50, 40, 18, 1),
(51, 40, 38, 2),
(52, 40, 13, 2),
(53, 41, 31, 2),
(54, 42, 1, 2),
(55, 42, 18, 1),
(56, 42, 38, 2),
(57, 42, 13, 2),
(58, 43, 13, 2),
(59, 43, 1, 2),
(60, 43, 18, 1),
(61, 43, 38, 2),
(62, 44, 1, 2),
(63, 44, 32, 3),
(64, 44, 13, 8),
(65, 44, 18, 5),
(66, 52, 4, 1),
(67, 53, 7, 1),
(68, 54, 1, 1),
(69, 55, 3, 6),
(70, 56, 1, 1),
(71, 56, 4, 1),
(72, 56, 7, 1),
(73, 56, 6, 1),
(74, 57, 2, 1),
(75, 57, 3, 1),
(76, 58, 3, 1),
(77, 58, 2, 1),
(78, 59, 2, 1),
(79, 59, 3, 1),
(80, 60, 2, 1),
(81, 60, 3, 1),
(82, 61, 2, 1),
(83, 61, 3, 1),
(84, 62, 1, 1),
(85, 62, 4, 1),
(86, 63, 1, 2),
(87, 63, 18, 5),
(88, 63, 32, 3),
(89, 63, 13, 8),
(90, 64, 1, 1),
(91, 64, 2, 1),
(92, 65, 2, 1),
(93, 65, 3, 1),
(94, 66, 2, 1),
(95, 67, 3, 2),
(96, 67, 2, 3),
(97, 68, 8, 2),
(98, 68, 7, 1),
(99, 69, 5, 2),
(100, 69, 6, 1),
(101, 70, 2, 1),
(102, 70, 3, 1),
(103, 71, 2, 1),
(104, 71, 1, 2),
(105, 71, 4, 6),
(106, 71, 3, 3),
(107, 72, 1, 1),
(108, 72, 3, 1),
(109, 73, 6, 2),
(110, 73, 4, 1),
(111, 74, 5, 1),
(112, 75, 6, 1),
(113, 76, 2, 1),
(114, 77, 2, 1),
(115, 77, 3, 1),
(116, 78, 1, 1),
(117, 78, 2, 1),
(118, 79, 6, 2),
(119, 79, 8, 1),
(120, 79, 7, 1),
(121, 80, 1, 1),
(122, 80, 2, 3),
(123, 81, 4, 3),
(124, 81, 2, 6),
(125, 81, 3, 6),
(126, 82, 2, 1),
(127, 82, 3, 1),
(128, 83, 5, 1),
(129, 85, 3, 3),
(130, 85, 6, 4),
(131, 85, 4, 1),
(132, 86, 2, 1),
(133, 87, 4, 3),
(134, 87, 6, 1),
(135, 89, 7, 4),
(136, 89, 4, 2),
(137, 89, 5, 3),
(138, 89, 6, 8),
(139, 90, 4, 4),
(140, 91, 2, 1),
(141, 93, 2, 1),
(142, 93, 3, 1),
(143, 94, 2, 1),
(144, 94, 3, 3),
(145, 95, 5, 1),
(146, 95, 3, 1),
(147, 95, 2, 1),
(148, 96, 2, 8),
(149, 96, 4, 1),
(150, 96, 3, 1),
(151, 97, 6, 1),
(152, 97, 5, 1),
(153, 98, 3, 6),
(154, 98, 4, 3),
(155, 99, 2, 14),
(156, 99, 5, 2),
(157, 100, 2, 5),
(158, 101, 3, 1),
(159, 102, 3, 3),
(160, 103, 2, 1),
(161, 103, 4, 3),
(162, 104, 1, 2),
(163, 104, 32, 3),
(164, 104, 13, 8),
(165, 104, 18, 5),
(166, 105, 1, 2),
(167, 105, 32, 3),
(168, 105, 18, 5),
(169, 105, 13, 8),
(170, 106, 13, 8),
(171, 106, 1, 2),
(172, 106, 32, 3),
(173, 106, 18, 5),
(174, 107, 1, 2),
(175, 107, 18, 5),
(176, 107, 32, 3),
(177, 107, 13, 8),
(178, 108, 2, 1),
(179, 109, 2, 1),
(180, 110, 5, 1),
(181, 110, 4, 1),
(182, 111, 6, 4),
(183, 111, 7, 1),
(184, 112, 5, 1),
(185, 112, 2, 1),
(186, 112, 3, 1),
(187, 113, 2, 1),
(188, 114, 3, 1),
(189, 115, 2, 1),
(190, 115, 3, 1),
(191, 116, 3, 1),
(192, 116, 5, 6),
(193, 117, 4, 1),
(194, 117, 5, 1),
(195, 118, 2, 1),
(196, 119, 3, 1),
(197, 120, 1, 2),
(198, 121, 2, 2),
(199, 122, 1, 5),
(200, 122, 2, 4),
(201, 123, 1, 5),
(202, 123, 2, 4),
(203, 124, 1, 1),
(204, 126, 4, 2),
(205, 126, 5, 1),
(206, 126, 6, 1),
(207, 127, 3, 2),
(208, 127, 8, 1),
(209, 127, 2, 1),
(210, 127, 1, 1),
(211, 128, 2, 3),
(212, 128, 1, 1),
(213, 128, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `images` text,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `cat_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_ibfk_1` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`) VALUES
(1, 'The Power of Your Subconscious Mind', 'https://images-na.ssl-images-amazon.com/images/I/51sXL9AWPXS._SX460_BO1,204,203,200_.jpg', NULL, 'An exquisitely designed leather-bound edition of one of the most powerful self-help title, this book comes with a ribbon bookmark, gilded edges and beautiful endpapers. Ideal to be read and treasured, it makes for a perfect addition to any library. This remarkable book by Dr. Joseph Murphy, one of the pioneering voices of affirmative-thinking, will unlock for you The truly staggering powers of your Subconscious mind. Combining time-honoured spiritual wisdom with cutting edge scientific research, Dr. Murphy explains how the subconscious mind influences every single thing that you do and how, by understanding It and learning to control its incredible force, you can improve the quality of your daily life. Everything, from the promotion that you wanted and the raise you think you deserve, to overcoming phobias and bad habits and strengthening interpersonal relationships, The power of your Subconscious mind will open a world of happiness, success, prosperity and peace for you. It will change your life and your world by changing your beliefs.', 240.99, 77, '', 1),
(2, 'Ikigai: The Japanese secret to a long and happy life', 'https://images-na.ssl-images-amazon.com/images/I/81l3rZK4lnL.jpg', NULL, 'We all have an ikigai.\r\n\r\n\r\nIt\'s the Japanese word for ‘a reason to live’ or ‘a reason to jump out of bed in the morning’.\r\n\r\n\r\nIt’s the place where your needs, desires, ambitions, and satisfaction meet. A place of balance. Small wonder that finding your ikigai is closely linked to living longer.\r\n\r\n\r\nFinding your ikigai is easier than you might think. This book will help you work out what your own ikigai really is, and equip you to change your life. You have a purpose in this world: your skills, your interests, your desires and your history have made you the perfect candidate for something. All you have to do is find it.', 59.99, 37, '', 2),
(3, 'Citizens Rising: Independent Journalism and the Spread of Democracy', 'https://images-na.ssl-images-amazon.com/images/I/51AoSRaZnNL._SX321_BO1,204,203,200_.jpg', NULL, 'From the fall of the Soviet Union to the Arab Spring to today’s continuing conflicts, media have played a decisive role in political affairs across the globe—driving the revolutionary changes shaping today’s new world. This is the first book presenting a comprehensive look at the emergence of media as a primary actor, and not merely an observer, of global affairs.\r\nAs the founder and CEO of Internews, the world’s largest non-governmental media development organization, David Hoffman has had a backstage pass to many of the seminal world political upheavals in recent years. In these pages we see how media have been used for good and bad, and how with the rise of digital technology, the power of media to intervene in global affairs is in the hands of everyone—including you. Citizens Rising examines media’s historic impact and offers a roadmap to the future.', 39.99, 66, '', 3),
(4, 'A Search in Secret Egypt', 'https://images-na.ssl-images-amazon.com/images/I/51FIoLm7HlL._SX331_BO1,204,203,200_.jpg', NULL, 'In this book, philosopher Paul Brunton (1898-1981) encounters the mysteries and magic of Egypt in the 1930s, including an eerie yet illuminating night spent alone inside the Great Pyramid. Alongside his explorations of ancient Egypt\'s monuments and gods, Brunton encounters a variety of occultists, fakirs, and dervishes, and even manages to become initiated into the deadly art of snake charming. His frank interviews with Muslim leaders remain relevant today, and his description of the Hajj reflects the beauty and inspiring faith of Mohammad\'s true followers. Brunton\'s journey to discover the furthest reaches of what the mind and body are capable of--and to distinguish various forms of yoga and magic from true spirituality--lead him to the myth of Osiris and to the mystery that is the Sphinx itself. In the end, Brunton turns his attention to his own spiritual path, connecting all of his experiences into a single discovery: that we are more than the body and that the freedom of our spirit can be experienced here and now. This new edition has been updated to incorporate Brunton\'s final revisions and includes an introduction by the Paul Brunton Philosophic Foundation. \r\n\r\n\"Paul Brunton was a great original and got to a place of personal evolution that illumines the pathways of a future humanity.\" --Jean Houston, author of A Passion for the Possible and A Mythic Life\r\n\r\n\"Any serious man or woman in search of spiritual ideas will find a surprising challenge and an authentic source of inspiration and intellectual nourishment in the writings of Paul Brunton.\"--Jacob Needleman, author of What is God?', 250, 76, '', 4),
(5, 'World\'s Greatest Entrepreneurs', 'https://images-na.ssl-images-amazon.com/images/I/71sM5LKvzqL.jpg', NULL, 'A meticulously researched book, which celebrates the achievements of famous and intriguing entrepreneurs who have inspired generations with their talent, hard work and success stories. Age appropriate content, fun facts and bold illustrations will appeal to the curiosity of young inquisitive minds and help them develop their reading skills and General Knowledge.', 240.99, 82, '', 5),
(6, 'Think & Grow Rich', 'https://images-na.ssl-images-amazon.com/images/I/41BctxOfzzS._SX258_BO1,204,203,200_.jpg', NULL, 'One of the best inspirational books ever written, Think and Grow Rich is probably the most important financial book you can ever hope to read. Inspiring generations of readers since the time it was first published in 1937, Think and Grow Rich—Hill’s biggest best-seller—has been used by millions of business leaders around the world to create a concrete plan for success that, when followed, never fails. However, it will be incorrect to limit the book to be just about achieving financial richness. a motivational personal development and self-help book, its core strength lies in the fact that it not only expounds upon material wealth but that at the heart of it, it is a treatise on helping individuals succeed in all lines of work and to do or be almost anything they want in this world.\r\nThink and Grow Rich has been listed in John C. Maxwell’s a Lifetime ‘Must Read’ Books List and also ranked as the sixth best-selling paperback business book years after it was first published by Business Week Magazine’s Best-Seller List', 59.99, 0, '', 1),
(7, 'Believe in Yourself', 'https://images-na.ssl-images-amazon.com/images/I/41o5PJi5v3L.jpg', NULL, 'In Believe in Yourself, Dr. Murphy stresses about having faith in ones abilities, believing in the inner self and in having the courage to chase your dream, come what may. The book was first published in 1955 but remains as popular as it was then. Being a preacher, with decades of experience behind him, Dr Murphy delves into lives of people to demonstrate the all encompassing power of self. By citing interesting episodes from the lives of artists, writers, entrepreneurs and ordinary people, who achieved acclaim and success, the author goes on to emphasize that one thread that runs through was a strong belief in oneself. The book has proved highly motivational and has enabled many readers to overcome low self esteem and achieve their objectives in life. The author points out various ways by which one can overcome defeat, hardships and keep on the righteous track to succeed by using only fair means. People who are low in confidence, need a direction in life or a guiding light to keep them motivated makes this subjective compulsion a key to success for any individual says the author.', 39.99, 95, '', 2),
(8, 'How to Stop Worrying and Start Living: Time-Tested Methods for Conquering Worry', 'https://images-na.ssl-images-amazon.com/images/I/51ytROYQLGS._SX258_BO1,204,203,200_.jpg', NULL, 'If worry fills up your mind and you end up struggling to conquer it, this book is all you need!\r\n“The secret of being miserable\r\nis to have the leisure to bother about\r\nwhether you are happy or not.”\r\nFrom the fundamental facts that one must know about worry to the techniques in analyzing it, this book introduces ways to prevent fatigue and worry and cultivate a mental attitude that will bring peace and happiness. it offers insights on how to break the worry habit and brings for you not only a magic formula for solving worry situations but a way to conquer it altogether.\r\nA result of his own experiences and realizations, Dale Carnegie’s How to Stop Worrying and Start Living has inspired many and helped them triumph over their worries. with timeless practical advice, this classic bestseller holds the power to change your future.', 250, 99, '', 2),
(9, 'The Silent Patient', 'https://images-na.ssl-images-amazon.com/images/I/51Id2bAxt9L._SX329_BO1,204,203,200_.jpg', NULL, 'WITH OVER THREE MILLION COPIES SOLD, read the Sunday Times and No.1 New York Times bestselling, record-breaking thriller that everyone is talking about - soon to be a major film.\r\n\'The perfect thriller\' AJ FINN\r\n\'Terrific\' - THE TIMES Crime Book of the Month\r\n\'Smart, sophisticated suspense\' - LEE CHILD\r\n\'Compelling\' - OBSERVER\r\n\'Absolutely brilliant\' - STEPHEN FRY\r\n\'A totally original psychological mystery\' - DAVID BALDACCI\r\n\'One of the best thrillers I\'ve read this year\' - CARA HUNTER\r\n\'The pace and finesse of a master\' - BBC CULTURE\r\nAlicia Berenson lived a seemingly perfect life until one day six years ago.When she shot her husband in the head five times.\r\nSince then she hasn\'t spoken a single word.It\'s time to find out why.\r\nTHE SILENT PATIENT is the gripping must-read thriller of the year - perfect for fans of THE FAMILY UPSTAIRS by Lisa Jewell, BLOOD ORANGE by Harriet Tyce and PLAYING NICE by JP Delaney.', 240.99, 100, '', 3),
(10, 'A Man Called Ove: The life-affirming bestseller that will brighten your day', 'https://images-na.ssl-images-amazon.com/images/I/519L6FBdlXL._SX326_BO1,204,203,200_.jpg', NULL, 'At first sight, Ove is almost certainly the grumpiest man you will ever meet. He thinks himself surrounded by idiots - neighbours who can\'t reverse a trailer properly, joggers, shop assistants who talk in code, and the perpetrators of the vicious coup d\'etat that ousted him as Chairman of the Residents\' Association. He will persist in making his daily inspection rounds of the local streets.\r\n\r\nBut isn\'t it rare, these days, to find such old-fashioned clarity of belief and deed? Such unswerving conviction about what the world should be, and a lifelong dedication to making it just so?\r\n\r\nIn the end, you will see, there is something about Ove that is quite irresistible...', 59.99, 100, '', 4),
(11, 'Fashion - Adult Colouring Book for Peace & Relaxation', 'https://images-na.ssl-images-amazon.com/images/I/61gHvuG1hIL._SX384_BO1,204,203,200_.jpg', NULL, 'Colouring books are no longer just for kids. Everyone from researchers to editors state that there is something calming that goes toward the immense appeal of colouring activity. Thus to help the grown-ups distract from the daily pressure of life, this series of 15 innovative Adult Colouring books on difference themes to explore concepts like beauty, creativity and more. Each book has over 30 patterns that provide hours of relaxation and entertainment as you express your creativity.', 39.99, 100, '', 4),
(12, 'The Psychology of Money', 'https://images-eu.ssl-images-amazon.com/images/I/41cWqh0OeQL._SY264_BO1,204,203,200_QL40_FMwebp_.jpg', NULL, 'Timeless lessons on wealth, greed, and happiness doing well with money isn’t necessarily about what you know. It’s about how you behave. And behavior is hard to teach, even to really smart people. How to manage money, invest it, and make business decisions are typically considered to involve a lot of mathematical calculations, where data and formulae tell us exactly what to do. But in the real world, people don’t make financial decisions on a spreadsheet. They make them at the dinner table, or in a meeting room, where personal history, your unique view of the world, ego, pride, marketing, and odd incentives are scrambled together. In the psychology of money, the author shares 19 short stories exploring the strange ways people think about money and teaches you how to make better sense of one of life’s most important matters.', 250, 100, '', 1),
(13, 'Siddhartha', 'https://images-na.ssl-images-amazon.com/images/I/41QPBtd5VIS._SX258_BO1,204,203,200_.jpg', NULL, 'Siddhartha is a novel by Hermann Hesse that deals with the spiritual journey of a boy known as Siddhartha from the Indian subcontinent during the time of Lord Buddha.\r\n\r\nIn a very simple prose, Hesse has conveyed a very profound message for all seekers. A brahmin boy follows his heart and goes through various lives to finally understand what it means to be enlightened. He experiences life as a pious brahmin, a Samana, a rich merchant, a lover and an ordinary ferryman, to a father. Neither a practitioner nor a devotee, neither meditating nor reciting, Siddhartha comes to blend in with the world, resonating with the rhythms of nature, bending the reader\'s ear down to hear answers from the river.', 240.99, 68, '', 5),
(14, 'Sapiens: A Brief History of Humankind', 'https://images-na.ssl-images-amazon.com/images/I/41yu2qXhXXL._SX324_BO1,204,203,200_.jpg', NULL, 'Earth is 4.5 billion years old. In just a fraction of that time, one species among countless others has conquered it: us.\r\n\r\nIn this bold and provocative book, Yuval Noah Harari explores who we are, how we got here and where we\'re going.\r\n\r\n\'I would recommend Sapiens to anyone who\'s interested in the history and future of our species\' Bill Gates', 59.99, 100, '', 3),
(15, '21 Lessons for the 21st Century', 'https://images-na.ssl-images-amazon.com/images/I/41SxL78DpvL._SX324_BO1,204,203,200_.jpg', NULL, 'How can we protect ourselves from nuclear war, ecological cataclysms and technological disruptions? What can we do about the epidemic of fake news or the threat of terrorism? What should we teach our children?\r\n\r\nYuval Noah Harari takes us on a thrilling journey through today\'s most urgent issues. The golden thread running through his exhilarating new book is the challenge of maintaining our collective and individual focus in the face of constant and disorienting change.\r\n\r\nAre we still capable of understanding the world we have created?', 39.99, 100, '', 3),
(16, 'The Complete Book of Yoga : Karma Yoga, Bhakti Yoga, Raja Yoga, Jnana Yoga', 'https://images-na.ssl-images-amazon.com/images/I/41sWEKewjdS._SX460_BO1,204,203,200_.jpg', NULL, '“All knowledge that the world has ever received comes from the mind...” in the quest for understanding one’s own mind, body, and soul, and to attain liberation, each man seeks spirituality as per his own means and understanding. Yoga, with its origin dating back to ancient India, has always been considered a pathway of achieving moksha. This edition combines the four paths of yoga as expounded by Swami Vivekananda in the nineteenth century. They include the three yogas mentioned in the Bhagat gita—karma yoga, bhakti yoga, and jnāna yoga—and Raja yoga, which is based on Maharshi Patanjali’s yoga sutras, and together they speak to the active, the emotional, the mystic, and the philosophical inside us. Complete with timeless universal wisdom, and not restricted to as an as and physical exercises, The yogic practices explained by Vivekananda become a way of life and hence lead to the realisation of the absolute.', 250, 100, '', 5),
(17, 'The Art of War', 'https://images-na.ssl-images-amazon.com/images/I/31EHVs6oiFS._SX460_BO1,204,203,200_.jpg', NULL, 'Fingerprint! Pocket Classics are perfect pocket-sized editions with complete original content. Convenient to carry, priced right, and ideal for gifting and collecting, each classic with its vibrant cover and flap jacket offers an ultimate reading experience. The Art of War is an enduring classic that holds a special place in the culture and history of East Asia. An ancient Chinese text on the philosophy and politics of warfare and military strategy, the treatise was written in 6th century B.C. by a warrior-philosopher now famous all over the world as Sun Tzu.', 240.99, 100, '', 3),
(18, 'Factfulness', 'https://images-na.ssl-images-amazon.com/images/I/51DhvV6a3mL._SX321_BO1,204,203,200_.jpg', NULL, 'In Factfulness, Professor of International Health and a man who can make data sing, Hans Rosling, together with his two long-time collaborators Anna and Ola, offers a radical new explanation of why this happens, and reveals the ten instincts that distort our perspective.\r\n\r\nIt turns out that the world, for all its imperfections, is in a much better state than we might think. But when we worry about everything all the time instead of embracing a worldview based on facts, we can lose our ability to focus on the things that threaten us most.\r\n\r\nInspiring and revelatory, filled with lively anecdotes and moving stories, Factfulness is an urgent and essential book that will change the way you see the world.', 59.99, 80, '', 1),
(19, 'Think Like a Monk', 'https://images-na.ssl-images-amazon.com/images/I/41gVhoPaE5L._SX323_BO1,204,203,200_.jpg', NULL, 'Jay Shetty, social media superstar and host of the #1 podcast ‘On Purpose’, distils the timeless wisdom he learned as a practising monk into practical steps anyone can take every day to live a less anxious, more meaningful life.\r\nOver the past three years, Jay Shetty has become one of the world’s most popular influencers. One of his clips was the most watched video on Facebook last year, with over 360 million views. His social media following totals over 32 million, he has produced over 400 viral videos, which have amassed more than 5 billion views, and his podcast, ‘On Purpose’, is consistently ranked the world’s #1 health-related podcast.\r\nIn this inspiring, empowering book, Shetty draws on his time as a monk in the Vedic tradition to show us how we can clear the roadblocks to our potential and power. Drawing on ancient wisdom and his own rich experiences in the ashram, “Think Like a Monk” reveals how to overcome negative thoughts and habits, and access the calm and purpose that lie within all of us.\r\nThe lessons monks learn are profound but often abstract. Shetty transforms them into advice and exercises we can all apply to reduce stress, improve focus, improve relationships, identify our hidden abilities, increase self-discipline and give the gifts we find in ourselves to the world. Shetty proves that everyone can – and should – think like a monk.', 39.99, 100, '', 2),
(20, '1984 ', 'https://images-na.ssl-images-amazon.com/images/I/51FXP6S8wWS._SX258_BO1,204,203,200_.jpg', NULL, 'Published in the summer of 1949, George Orwell’s nineteen Eighty-Four is one of the most definitive texts of modern literature. Set in Oceania, one of the three inter-continental superstate that divided the world among themselves after a global war, Orwell’s masterful critique of the political structures of the time, works itself out through the story of Winston Smith, a man caught in the webs of a dystopian future, and his clandestine love affair with Julia, a young woman he meets during the course of his work for the government. As much as it is an entertaining read, nineteen Eighty-Four is also a brilliant, and more importantly, a timeless satirical attack on the social and political structures of the world.', 250, 100, '', 3),
(21, 'Forts and Palaces of India', 'https://images-na.ssl-images-amazon.com/images/I/51NtYzTYVBL._SX258_BO1,204,203,200_.jpg', NULL, 'India has a rich cultural past reflected in its innumerable forts, palaces and other monuments which abound not only in architectural splendour but intriguing individual histories. This book takes us on a splendid tour of these magnificent structures through the whole of India from Kashmir in the north to Kerala in the South. The architectural magnificence and luxury of these royal forts and palaces of India are highlighted in the full colour pictures and detailed essays. Over 325 colour photographs revel in the buildings\' glorious details and features, while vivid descriptions of each palace transport the reader back in time into a realm of truly royal experience. Encompassing the rich cultural heritage of India, these forts and palaces offer an authentic Indian experience to heritage lovers.', 240.99, 100, '', 4),
(22, 'Indian Textiles', 'https://images-na.ssl-images-amazon.com/images/I/51BhpECwRwL._SX381_BO1,204,203,200_.jpg', NULL, 'No other land enjoys such a profusion of creative energies for the production of textiles as India. From the Rann of Kutch to the Coromandel Coast, from city and village, handloom weavers, block printers, painters, dyers and embroiderers continue its flourishing textile traditions. John Gillow and Nicholas Barnard have travelled thousands of miles to gather first-hand information and colour pictures of cloths. They examine the cultural background: the history, the materials and the techniques - weaving, printing, painting and tie-and-dye. They then give a detailed region-by-region account of traditional textile production. An array of photographs provides a display of the textiles. A detailed reference section completes this essential guide.', 59.99, 100, '', 4),
(23, 'Maturity: The Responsibility of Being Oneself (Osho Insights for a New Way of Living)', 'https://images-na.ssl-images-amazon.com/images/I/51Jc3Ti26iL._SX340_BO1,204,203,200_.jpg', NULL, 'In a culture infatuated with youth and determined to avoid old age at all costs, this book dares to raise a question that has been all but forgotten in the age of Viagra and cosmetic surgery. What benefits might lie in accepting the aging process as natural, rather than trying to hold on to youth and its pleasures all the way to the grave?\r\n\r\nOsho takes us back to the roots of what it means to grow up rather than just to grow old. Both in our relationships with others, and in the fulfillment of our own individual destinies, he reminds us of the pleasures that only true maturity can bring. He outlines the ten major growth cycles in human life, from the self-centered universe of the preschooler to the flowering of wisdom and compassion in old age.\r\n\r\nOsho’s sly sense of humor runs like a red thread through the book, along with a profound compassion and understanding of how easy it is to be distracted from the deeper meaning and purpose of our lives―which is, ultimately, to flower into our own individual uniqueness and maturity with an attitude of celebration and joy.\r\nOsho challenges readers to examine and break free of the conditioned belief systems and prejudices that limit their capacity to enjoy life in all its richness. He has been described by the Sunday Times of London as one of the “1000 Makers of the 20th Century” and by Sunday Mid-Day (India) as one of the ten people―along with Gandhi, Nehru, and Buddha―who have changed the destiny of India. Since his death in 1990, the influence of his teachings continues to expand, reaching seekers of all ages in virtually every country of the world.', 39.99, 100, '', 5),
(24, 'Eat That Frog!', 'https://images-na.ssl-images-amazon.com/images/I/51O+Z5YqI0L._SX306_BO1,204,203,200_.jpg', NULL, 'There just isn\'t enough time for everything on our to-do list—and there never will be. Successful people don\'t try to do everything. They learn to focus on the most important tasks and make sure those get done. They eat their frogs.\r\n\r\nThere\'s an old saying that if the first thing you do each morning is eat a live frog, you\'ll have the satisfaction of knowing you\'re done with the worst thing you\'ll have to do all day. For Tracy, eating a frog is a metaphor for tackling your most challenging task—but also the one that can have the greatest positive impact on your life. Eat That Frog! shows you how to organize each day so you can zero in on these critical tasks and accomplish them efficiently and effectively.\r\n\r\nIn this fully revised and updated edition, Tracy adds two new chapters. The first explains how you can use technology to remind yourself of what is most important and protect yourself from what is least important. The second offers advice for maintaining focus in our era of constant distractions, electronic and otherwise.\r\n\r\nBut one thing remains unchanged: Brian Tracy cuts to the core of what is vital to effective time management: decision, discipline and determination. This life-changing book will ensure that you get more of your important tasks done—today!', 250, 100, '', 1),
(25, 'Death; An Inside Story: A book for all those who shall die', 'https://images-na.ssl-images-amazon.com/images/I/41FvL+u1ENL._SX310_BO1,204,203,200_.jpg', NULL, 'Death is a taboo in most societies in the world. But what if we have got this completely wrong? What if death was not the catastrophe it is made out to be but an essential aspect of life, rife with spiritual possibilities for transcendence? For the first time, someone is saying just that.\r\n\r\nIn this unique treatise-like exposition, Sadhguru dwells extensively upon his inner experience as he expounds on the more profound aspects of death that are rarely spoken about. From a practical standpoint, he elaborates on what preparations one can make for one\'s death, how best we can assist someone who is dying and how we can continue to support their journey even after death.\r\n\r\nWhether a believer or not, a devotee or an agnostic, an accomplished seeker or a simpleton, this is truly a book for all those who shall die!', 240.99, 100, '', 2),
(26, 'The Courage To Be Disliked: How to free yourself, change your life and achieve real happiness', 'https://images-na.ssl-images-amazon.com/images/I/51kBS7Szd4L._SX324_BO1,204,203,200_.jpg', NULL, 'The Courage to be Disliked shows you how to unlock the power within yourself to become your best and truest self, change your future and find lasting happiness. Using the theories of Alfred Adler, one of the three giants of 19th century psychology alongside Freud and Jung, the authors explain how we are all free to determine our own future free of the shackles of past experiences, doubts and the expectations of others. It\'s a philosophy that\'s profoundly liberating, allowing us to develop the courage to change, and to ignore the limitations that we and those around us can place on ourselves.\r\n\r\nThe result is a book that is both highly accessible and profound in its importance. Millions have already read and benefited from its wisdom. Now that The Courage to be Disliked has been published for the first time in English, so can you.', 59.99, 100, '', 3),
(27, 'The Muse: Psychoanalytic Explorations of Creative Inspiration (Psychoanalytic Inquiry Book Series)', 'https://images-na.ssl-images-amazon.com/images/I/41zjhfXvnML._SX331_BO1,204,203,200_.jpg', NULL, 'Psychoanalysts have long been fascinated with creative artists, but have paid far less attention to the men and women who motivate, stimulate, and captivate them. The Muse counters this trend with nine original contributions from distinguished psychoanalysts, art historians, and literary scholars―one for each of the nine muses of classical mythology―that explore the muses of disparate artists, from Nicholas Poussin to Alison Bechdel.\r\n\r\nThe Muse breaks new ground, pushing the traditional conceptualization of muses by considering the roles of spouse, friend, rival, patron, therapist―even a late psychoanalytic theorist―in facilitating creativity. Moreover, they do so not only by providing inspiration, but also by offering the artist needed material and emotional support; tolerating competitive aggression; promoting reflection and insight; and eliciting awe, anxiety and gratitude.\r\nIntegrating art history and literary criticism with a wide spectrum of contemporary psychoanalytic perspectives, The Muse is essential reading for psychoanalysts and psychotherapists interested in the relationships that enhance and support creative work. Fully interdisciplinary, it is also accessible to readers in the fields of art, art history, literature, memoir, and film. The Muse sheds new light on that most mysterious dyad, the artist and muse―and thus on the creative process itself.', 39.99, 100, '', 3),
(28, 'Unfinished: A Memoir', 'https://images-na.ssl-images-amazon.com/images/I/417FIfX3VTL._SX326_BO1,204,203,200_.jpg', NULL, '\'I am a product of traditional India and its ancient wisdom, and modern India and its urban bustle. My upbringing was always an amalgamation of the two Indias, and, just as much, of East and West.\'\r\n\r\nUnfinished takes readers from Priyanka\'s childhood in India, where she was raised by her grandparents and her parents­-two army doctors committed not only to their children but to their careers and to philanthropy-before being sent away to boarding school at an early age; through her formative teenage years in the US living with extended family in the Midwest (Cedar Rapids and Indianapolis), Queens, and suburban Boston, where she endured bouts of racism; to her return to India, where she unexpectedly won the national and global beauty pageants (Miss India and Miss World) that launched her acting career. Readers looking for a glimpse into what it takes to succeed in the massive Indian film industry will find it here, and they\'ll also find an honest account of the challenges Priyanka faced navigating her career, both in India and Hollywood. The result is a book that is warm, funny, sassy, inspiring, bold, and rebellious. Just like Priyanka herself.', 250, 100, '', 3),
(29, 'Nationalism', 'https://images-na.ssl-images-amazon.com/images/I/31V7E1BNpDS._SX258_BO1,204,203,200_.jpg', NULL, 'Fingerprint! Pocket Classics are perfect pocket-sized editions with complete original content. Convenient to carry, priced right and ideal for gifting and collecting, each classic with its vibrant cover and flap jacket offers an ultimate reading experience. A compendium of lectures delivered by Tagore during the First World War and the Swadeshi movement in India, Nationalism emphasizes Tagore’s political and philosophical views on human understanding and its weakness for power and material hoardings. The lectures—written in a lucid, metaphoric, poetic prose—are loaded with a piercing vision of the future and are a critique on his views on spirituality and humanity. The book holds much relevance in today’s environment of violence and intolerance.', 240.99, 100, '', 3),
(30, 'Zero to One', 'https://images-na.ssl-images-amazon.com/images/I/51z7mZZKRgL._SX317_BO1,204,203,200_.jpg', NULL, 'What Valuable Company is Nobody Building?\r\n\r\nThe next Bill Gates will not build an operating system. The next Larry Page or Sergey Brin won’t make a search engine. If you are copying these guys, you aren’t learning from them. It’s easier to copy a model than to make something new: doing what we already know how to do takes the world from 1 to n, adding more of something familiar. Every new creation goes from 0 to 1. This book is about how to get there.', 59.99, 100, '', 1),
(31, 'The Rudest Book Ever', 'https://images-na.ssl-images-amazon.com/images/I/51rVr4utFRL._SX325_BO1,204,203,200_.jpg', NULL, 'Shwetabh Gangwar is a professional problem-solver—and he’s ace at it. For the past five years, people from all over the world have contacted him with their troubles and he’s worked these out for them.\r\n\r\nIn the process, he has picked up on a simple pattern: people need a set of principles and perspectives to protect them from all the unnecessary bullshit they go through. Codes to live by, essentially.\r\n\r\nBut be warned: Gangwar has no desire to spare your feelings. What you will find in this straight-forward, straight-talking, no-craps-given guide, is:\r\n\r\nHow to deal with rejections of all kinds\r\n\r\nHow to change your perceptions of people so you don’t end up screwed\r\n\r\nWhy a society that sees people as ‘good and bad’ is dumb\r\n\r\nHow the search for happiness screws us over\r\n\r\nHow seeking approval and acceptance kills our individuality\r\n\r\nThe truth about social media influencers\r\n\r\nWhy we should be taught ‘how to think’, instead of ‘what to think’\r\n\r\nLaying out clear principles, YouTube megastar Gangwar shows you how to deal with the shit that has happened to you, is happening to you and will happen to you.', 39.99, 100, '', 2),
(32, 'The Mindfulness Puzzle Book 3: Relaxing Puzzles to De-Stress and Unwind (Mindfulness Puzzle Books)', 'https://images-na.ssl-images-amazon.com/images/I/61Fd4YHktmL._SX310_BO1,204,203,200_.jpg', NULL, 'This is the third in a series of three books by the same author, which currently includes The Mindfulness Puzzle Book and The Mindfulness Puzzle Book 2. There is a fourth book coming later in 2020. There is also an ebook, Mindfulness Puzzles for Your Kindle, comprising content from books 2 and 3.\r\n\r\nBestselling puzzle master Dr Gareth Moore has created a wide range of specially crafted puzzles to provide the perfect level of challenge and reward for your brain, helping you both to relax and release your natural creativity. If you enjoyed the first two books in this series, you\'ll love this new compilation, which includes all of your favourite puzzle types from the previous books plus some new challenges too.\r\n\r\nThe aim remains the same: feel the tension release as you focus on each achievable and fun task, and experience the rewarding buzz of endorphins as you successfully complete each puzzle.\r\n\r\nWith a mix of both classic and modern puzzle types, this collection includes everything from gentle word puzzles right through to relaxing dot-to-dots, and is sure to contain something for everyone.', 250, 88, '', 4),
(33, 'Bare Necessities: How to Live a Zero-Waste Life', 'https://images-na.ssl-images-amazon.com/images/I/51At1yrcM5S._SX324_BO1,204,203,200_.jpg', NULL, 'In a world full of plastic, chemicals and waste, how can you help save the planet? This book is an easy-to-use guide that equips you with the tools to make positive changes to your life and the environment. Filled with activities, insights, recipes, tips and how-to guides, it is a must-read for anyone wanting to make a difference.', 59.99, 100, '', 4),
(34, 'Shivesh Bhatia\'s Desserts for Every Mood: 100 feel-good recipes ', 'https://images-na.ssl-images-amazon.com/images/I/51gN8PCbwIL._SX358_BO1,204,203,200_.jpg', NULL, 'A sweet treat for every emotion and occasion.Whether it\'s a celebration or the blues, nothing lifts you up better than a delicious dessert. In Shivesh Bhatia\'s Desserts for Every Mood, the maverick baker is back with an array of recipes that promise to transform any day. For Shivesh, baking has come to mean many things over the years: memories of seeing his grandmother make cakes to spending hours experimenting in the kitchen and sharing the joy with friends to baking becoming his quiet refuge after a hectic day. In his second book, Shivesh shares a range of desserts-gooey caramel chocolate tart, fresh mint lemon chiffon cake to an exotic litchie rose tiramisu-that have helped him through difficult and happy times alike, in the hope that they will do the same for you.', 39.99, 100, '', 4),
(35, 'Inner Engineering: A Yogi’s Guide to Joy', 'https://images-na.ssl-images-amazon.com/images/I/51tEI+nAhdL._SX310_BO1,204,203,200_.jpg', NULL, '‘Inner Engineering is a fascinating read, rich with Sadhguru’s insights and his teachings. If you are ready, it is a tool to help awaken your own inner intelligence, the ultimate and supreme genius that mirrors the wisdom of the cosmos’—Deepak Chopra\r\nIn his revolutionary new book, visionary, mystic and yogi Sadhguru distils his own experiences with spirituality and yoga and introduces the transformational concept of Inner Engineering. Developed by him over several years, this powerful practice serves to align the mind and the body with energies around and within, creating a world of limitless power and possibilities. Inner Engineering is your own software for joy and well-being.', 250, 100, '', 5),
(36, 'How to Make Money With Breakout Trading', 'https://images-na.ssl-images-amazon.com/images/I/41oLT29cgbL._SX310_BO1,204,203,200_.jpg', NULL, 'It’s important to understand two herds that exist in the market:\r\n\r\n1. Smart Money and\r\n\r\n2. Dumb Money\r\n\r\n‘Smart Money’ refers to institutional investors, big sharks who have money and information power who give direction and momentum to markets.\r\n\r\n‘Dumb Money’ refers to nonprofessional traders, retail traders who often try to make quick money.\r\n\r\nDo you agree that it’s always a good idea to follow the smart money?\r\n\r\nBesides, do you know only ‘Entry’ and ‘Exit’ decide the fate of your trade irrespective of your reputation, experience, and qualification?', 240.99, 100, '', 1),
(37, 'The Little Book of Hygge: The Danish Way to Live Well', 'https://images-na.ssl-images-amazon.com/images/I/51g9Xm6uOeL._SX364_BO1,204,203,200_.jpg', NULL, 'The Danish word hygge is one of those beautiful words that doesn\'t directly translate into English, but it more or less means comfort, warmth or togetherness.\r\n\r\nHygge is the feeling you get when you are cuddled up on a sofa with a loved one, in warm knitted socks, in front of the fire, when it is dark, cold and stormy outside. It that feeling when you are sharing good, comfort food with your closest friends, by candle light and exchanging easy conversation. It is those cold, crisp blue sky mornings when the light through your window is just right.\r\n\r\nDenmark is the happiest nation in the world and Meik puts this largely down to them living the hygge way. They focus on the small things that really matter, spend more quality time with friends and family and enjoy the good things in life. The Little Book of Hygge will give you practical steps and tips to become more hygge: how to pick the right lighting, organise a dinner party and even how to dress hygge, all backed up by Meik\'s years\' of research at the Happiness Research Institute in Copenhagen.\r\n\r\nThis year live more like a Dane, embrace hygge and become happier.', 59.99, 100, '', 2),
(38, 'The Art of Happiness: A Handbook for Living', 'https://images-na.ssl-images-amazon.com/images/I/51r95uN0B-L._SX326_BO1,204,203,200_.jpg', NULL, 'The Art of Happiness is a highly accessible guide for a western audience, combining the Dalai Lama\'s eastern spiritual tradition with Dr Howard C. Cutler\'s western perspective. Covering all key areas of human experience, they apply the principles of Tibetan Buddhism to everyday problems and reveal how one can find balance and complete spiritual and mental freedom.\r\n\r\nFor the many who wish to understand more about the Dalai Lama\'s approach to living, there has never been a book which brings his beliefs so vividly into the real world', 39.99, 100, '', 5),
(39, 'The Tibetan Book Of Living And Dying', 'https://images-na.ssl-images-amazon.com/images/I/513gQPEddCL._SX315_BO1,204,203,200_.jpg', NULL, 'Written by the Buddhist meditation master and popular international speaker Soygal Rinpoche, this highly acclaimed book clarifies the majestic vision of life and death that underlies the Tibetan Buddhist tradition. It includes not only a lucid, inspiring and complete introduction to the practice of meditation but also advice on how to care for the dying with love and compassion, and how to bring them help of a spiritual kind. But there is much more besides in this classic work, which was written to inspire all who read it to begin the journey to enlightenment and so become \'servants of peace.\'', 250, 100, '', 5),
(40, 'The Complete Book Of Ayurvedic Home Remedies', 'https://images-na.ssl-images-amazon.com/images/I/51sa29SX1jL._SX258_BO1,204,203,200_.jpg', NULL, 'Readers of my work will find this book an invaluable resource\'. The Complete Book of Ayurvedic Home Remedies is a comprehensive encyclopedia of self-healing. Based on an ancient healing tradition from India that dates back thousands of years, it is the definitive guide to safe, effective alternatives to Western medical treatments. Dr Lad, the world\'s leading expert in Ayurvedic medicine, explains the principles behind the science of Ayurveda. Discover how to determine your Ayurvedic \'type\', and learn how to treat common ailments and chronic conditions such as cold and flu symptoms, sore throats and acne, artritis, high cholesterol and anxiety. Discover the health benefits of yoga postures, meditation, breathing exercises, cleansing and rejuvenating programmes, diet and nutrition, herbs and essential oils that can be found in almost any health food store. Complete with an extensive resource list of Ayurvedic herbs and suppliers, this authoritative guide tells you all you need to know about achieving physical and spiritual healing.', 59.99, 100, '', 5),
(41, 'Emotions @ Meditation', 'https://images-na.ssl-images-amazon.com/images/I/41RJyWBaM8S._SX311_BO1,204,203,200_.jpg', NULL, 'Emotional quotient is the very basis of our existence. This statement is inscrutable in today’s world. In fact the current Darwinian Theory could be: ‘Survival of the emotionally fittest.’ Emotions play havoc in our day to day lives and enslave us completely.  Some are imprisoned in the four walls of depression while some are inflamed by their own temper. Some are controlled totally by their impulses while some are shackled tight to their fears. Each one of us is dominated by one emotion or the other.\r\n\r\nTake this journey to master each emotion, one at a time, with the help of guided and focused meditation and emerge as an everlasting joyous soul.', 39.99, 100, '', 5),
(42, 'The Wealth of Nations', 'https://images-na.ssl-images-amazon.com/images/I/510PLv185uS._SX258_BO1,204,203,200_.jpg', NULL, 'Right from examining the division of labour, the origin and use of money and the division of stock, to the rise and progress of cities and towns after the fall of the Roman Empire, the systems of political economy and the taxes on various private revenues, Adam Smith’s The Wealth of Nations provides an extensive assessment of the creation of a nation’s wealth.\r\nLaying the foundation of classical political economy, this magnum opus is considered one of the best non-fiction books of all time. More than two centuries after its first publication in 1776, The Wealth of Nations continues to remain as influential as ever.', 250, 100, '', 1),
(43, 'Noise: The new book from the authors of ‘Thinking, Fast and Slow’ and ‘Nudge’', 'https://images-na.ssl-images-amazon.com/images/I/41qStCKhfVL._SX323_BO1,204,203,200_.jpg', NULL, 'Imagine that two doctors in the same city give different diagnoses to identical patients – or that two judges in the same court give different sentences to people who have committed matching crimes. Now imagine that the same doctor and the same judge make different decisions depending on whether it is morning or afternoon, or Monday rather than Wednesday, or they haven’t yet had lunch. These are examples of noise: variability in judgements that should be identical.\r\n\r\nIn Noise, Daniel Kahneman, Olivier Sibony and Cass R. Sunstein show how noise produces errors in many fields, including in medicine, law, public health, economic forecasting, forensic science, child protection, creative strategy, performance review and hiring. And although noise can be found wherever people are making judgements and decisions, individuals and organizations alike commonly ignore its impact, at great cost.\r\n\r\nPacked with new ideas, and drawing on the same kind of sharp analysis and breadth of case study that made Thinking, Fast and Slow and Nudge international bestsellers, Noise explains how and why humans are so susceptible to noise and bias in decision-making. We all make bad judgements more than we think. With a few simple remedies, this groundbreaking book explores what we can do to make better ones.', 240.99, 100, '', 2),
(44, 'The mother of all parties', 'https://images-na.ssl-images-amazon.com/images/I/51KHdJZ3+QL._SX324_BO1,204,203,200_.jpg', NULL, 'Pam has had enough of Honey Sarin, whose cutting barbs and snide comments have gone a little too far. This time, Pam is not going to take it lying down. For her twentieth anniversary, she resolves to throw the biggest, most glamorous party Dubai has ever seen -- one that will outdo Honey\'s, whose own twentieth anniversary is a week before Pam\'s. But the going isn\'t easy, and Pam finds herself facing countless obstacles: an ex-flame who returns and sets her heart beating again, an indifferent husband who patronises and undermines her, a shockingly rude daughter who won\'t let Pam into her life, and last but not the least, an absconding worker whom she shelters. As Pam struggles to juggle all the different aspects of her life, will she be able to throw the mother of all parties?', 59.99, 100, '', 6),
(45, 'A Gentleman in Moscow', 'https://images-na.ssl-images-amazon.com/images/I/51k+lXZyJ6L._SX322_BO1,204,203,200_.jpg', NULL, 'On 21 June 1922, Count Alexander Rostov - recipient of the Order of Saint Andrew, member of the Jockey Club, Master of the Hunt - is escorted out of the Kremlin, across Red Square and through the elegant revolving doors of the Hotel Metropol.\r\n\r\nDeemed an unrepentant aristocrat by a Bolshevik tribunal, the Count has been sentenced to house arrest indefinitely. But instead of his usual suite, he must now live in an attic room while Russia undergoes decades of tumultuous upheaval.\r\n\r\nCan a life without luxury be the richest of all?', 39.99, 100, '', 6),
(46, 'Harry Potter and the Cursed Child - Parts One and Two', 'https://images-na.ssl-images-amazon.com/images/I/61ZgWfRAYbL._SX317_BO1,204,203,200_.jpg', NULL, 'The official playscript of the original West End production of Harry Potter and the Cursed Child.\r\n\r\nIt was always difficult being Harry Potter and it isn\'t much easier now that he is an overworked employee of the Ministry of Magic, a husband, and father of three school-age children.\r\n\r\nWhile Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and son learn the uncomfortable truth: sometimes, darkness comes from unexpected places.\r\n\r\nThe playscript for Harry Potter and the Cursed Child was originally released as a \'special rehearsal edition\' alongside the opening of Jack Thorne\'s play in London\'s West End in summer 2016. Based on an original story by J.K. Rowling, John Tiffany and Jack Thorne, the play opened to rapturous reviews from theatregoers and critics alike, while the official playscript became an immediate global bestseller.\r\n\r\nThis revised paperback edition updates the \'special rehearsal edition\' with the conclusive and final dialogue from the play, which has subtly changed since its rehearsals, as well as a conversation piece between director John Tiffany and writer Jack Thorne, who share stories and insights about reading playscripts. This edition also includes useful background information including the Potter family tree and a timeline of events from the wizarding world prior to the beginning of Harry Potter and the Cursed Child.', 250, 100, '', 6),
(47, 'The Forgotten Daughter', 'https://images-na.ssl-images-amazon.com/images/I/51KXaGErzLL._SX321_BO1,204,203,200_.jpg', NULL, '‘You were adopted.’\r\nThree simple words, in a letter accompanying her parent’s will, tear Nisha’s carefully ordered world apart. Raised in England, by her caring but emotionally reserved parents, Nisha has never been the one to take risks.\r\nNow, with the scrawled address of an Indian convent begins a search for the mother and family she never knew and the awakening of childhood memories long forgotten.\r\nThe secrets, culture, and people that Nisha discovers, will change her life forever. And, as her eyes are opened to a side of herself she didn’t know existed, Nisha realizes that she must also seek answers to the hardest question of all—why?\r\nWeaving together the stories of Nisha, Shilpa, and Devi, The Forgotten Daughter explores powerfully and poignantly the emotional themes of motherhood, loss, and identity, ultimately asking the question—what you would do out of love for your children?', 59.99, 100, '', 6),
(48, 'The Richest Man in Babylon', 'https://images-na.ssl-images-amazon.com/images/I/41jffN02hnS._SX258_BO1,204,203,200_.jpg', NULL, 'George Samuel Clason was born in Louisiana, Missouri, on November 7, 1874. He attended the University of Nebraska and served in the United States Army during the Spanish-American War. Beginning a long career in publishing, he founded the Clason Map Company of Denver, Colorado and published the first road atlas of the United States and Canada. In 1926, he issued the first of a famous series of pamphlets on thrift and financial success, using parables set in ancient Babylon to make each of his points. These were distributed in large quantities by banks and insurance companies and became familiar to millions, the most famous being “The Richest Man in Babylon,” the parable from which the present volume takes its title. These “Babylonian parables” have become a modern inspirational classic.', 39.99, 100, '', 1);
INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`) VALUES
(49, 'Life\'s Amazing Secrets: How to Find Balance and Purpose in Your Life', 'https://images-na.ssl-images-amazon.com/images/I/41S8TQ9aNoL._SX323_BO1,204,203,200_.jpg', NULL, 'While navigating their way through Mumbai\'s horrendous traffic, Gaur Gopal Das and his wealthy young friend Harry get talking, delving into concepts ranging from the human condition to finding one\'s purpose in life and the key to lasting happiness.\r\n\r\nWhether you are looking at strengthening your relationships, discovering your true potential, understanding how to do well at work or even how you can give back to the world, Gaur Gopal Das takes us on an unforgettable journey with his precious insights on these areas of life.\r\n\r\nDas is one of the most popular and sought-after monks and life coaches in the world, having shared his wisdom with millions. His debut book, Life\'s Amazing Secrets, distils his experiences and lessons about life into a light-hearted, thought-provoking book that will help you align yourself with the life you want to live.', 250, 100, '', 2),
(50, 'The Boy from Pataliputra', 'https://images-na.ssl-images-amazon.com/images/I/411nm0YsjIL._SX320_BO1,204,203,200_.jpg', NULL, 'It is 326 BC and Alexander, the barbarian king of Macedonia, has descended upon Bharatvarsha with a multi-national horde of Yavanas, Pahlavas, Shakas and Bahlikas.\r\nAs the invader advances relentlessly and wins bloody battles in quick succession, as local rulers fall over each other to shake hands with the enemy and as the students of Takshashila University break into open revolt, one young man is faced with a terrifying choice, a choice that threatens to tear his carefully constructed world apart. for Aditya is the boy from Pataliputra, the boy who was once a reckless and carefree aristocrat, but who has now been forced to become a man with a purpose to fight for honour and love.\r\nWith a sweeping narrative and interesting everyday characters like the smelly old dhaba owner Tanku, Philotas the unlucky Greek soldier, the no-nonsense medical student Radha, Pandi the hard drinking mercenary and the lovely Devika, the Boy from Pataliputra is the mesmerizing story of a young man’s growth to maturity, but also, equally, a story about the rise of a nation.', 240.99, 100, '', 6),
(51, 'The Graveyard Book', 'https://images-na.ssl-images-amazon.com/images/I/51d1v6TWOnL._SX326_BO1,204,203,200_.jpg', NULL, 'When a baby escapes a murderer intent on killing the entire family, who would have thought it would find safety and security in the local graveyard?Brought up by the resident ghosts, ghouls and spectres, Bod has an eccentric childhood learning about life from the dead. But for Bod there is also the danger of the murderer still looking for him - after all, he is the last remaining member of the family. A stunningly original novel deftly constructed over eight chapters, featuring every second year of Bod\'s life, from babyhood to adolescence. Will Bod survive to be a man?', 59.99, 100, '', 6),
(52, 'The Wife Upstairs: An addictive new 2021 psychological crime thriller with a twist - a New York Times bestseller!', 'https://images-na.ssl-images-amazon.com/images/I/51m3qqBBARL._SX324_BO1,204,203,200_.jpg', '', 'An addictive new 2021 psychological crime thriller with a twist - a New York Times bestseller!\r\nRachel Hawkins is the New York Times bestselling author of multiple books for young readers, and her work has been translated in over a dozen countries. She studied gender and sexuality in Victorian literature at Auburn University and currently lives in Alabama with her husband and son. The Wife Upstairs is her first adult novel.', 39.99, 100, '', 6),
(53, 'Girl A', 'https://images-na.ssl-images-amazon.com/images/I/41+r9c1dkYL._SX319_BO1,204,203,200_.jpg', NULL, 'Lex Gracie doesn’t want to think about her family. She doesn’t want to think about growing up in her parents’ House of Horrors. And she doesn’t want to think about her identity as Girl A: the girl who escaped. When her mother dies in prison and leaves Lex and her siblings the family home, she can’t run from her past any longer. Together with her sister, Evie, Lex intends to turn the House of Horrors into a force for good. But first she must come to terms with her six siblings – and with the childhood they shared.\r\n\r\nBeautifully written and incredibly powerful, Girl A is a story of redemption, of horror, and of love.', 250, 100, '', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(255) DEFAULT 'not set',
  `lname` varchar(255) DEFAULT 'not set',
  `age` int(10) DEFAULT '18',
  `role` int(10) DEFAULT '555',
  `photoUrl` text,
  `type` varchar(255) NOT NULL DEFAULT 'local',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fname`, `lname`, `age`, `role`, `photoUrl`, `type`) VALUES
(1, 'john', '$2b$10$iLEz3tkVKeOCwuagcqhDUOV.Iswjc.I41unbnnFGiqK/gmstDCC3i', 'john@gmail.com', 'Indranil', 'Mukherjee', 31, 777, '', 'local'),
(2, 'shane', '$2b$10$ewemZ.oLASXUIWfUrjkDeOTCZUCpnhSlR3/Act2eQnvGg6mnGLOtG', 'shane123@gmail.com', 'Navoneel', 'Mukherjee', 27, 555, '', 'local'),
(11, 'mike', '$2b$10$vIS0W3LKhbx2tFh1GMYWhul7GWtIg4jnKU2C/NGux1pUG3QKMdNzO', 'mike-doe@excellent.com', 'Mike', 'Leming', 40, 555, 'https://i.pinimg.com/originals/dc/55/a0/dc55a0fec14d93d9cf6fa32c32f7c7f2.jpg', 'local'),
(14, 'indramukh', '$2b$10$po91FRkYQIfPDN6G1BxG0uIV7Z54GbJRkJw2t9wRec9uqmRKillqa', 'indramukh@hotmail.com', 'Indranil', 'Mukherjee', NULL, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(19, 'test', '$2b$10$cSa3jm7cboNSJRTgNRFJg.GviAzr/pyfptMxwxmjdKP./CdxDtLlK', 'test@gmail.com', 'Indranil', 'Mukherjee', NULL, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(20, 'bhaikaju', '$2b$10$P9X8c/MC39.Zxr2k5SfxK.lwbcj6PNou2ueqod29CFZrmuDUCvlfe', 'bhaikaju@gmail.com', 'Programming\'s Fun', 'not set', NULL, 555, 'https://lh3.googleusercontent.com/a-/AOh14GiPx0OQHJOCy-fSfNmKr1vbnM-Rp7CgS_jx_6oY=s96-c', 'social'),
(21, 'shreyamukherjee07', '$2b$10$SOw/LSErH0IbZ96h7pop.O6NJreOD3HjRGiZZmKnqiXiuUPCl8b8W', 'shreyamukherjee07@gmail.com', 'Shreya', 'Mukherjee', NULL, 555, 'https://lh3.googleusercontent.com/a-/AOh14Gg2Be7kKwqsUbQwyuCGToyZcCQ3ZDDWNkvSbQJVHA=s96-c', 'social');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products` ADD FULLTEXT KEY `description` (`description`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_addresses_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `fk_orders_has_products_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_has_products_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
