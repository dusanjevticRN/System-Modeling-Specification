-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2024 at 08:34 PM
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
-- Database: `tiktok`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `AD_ID` int(11) NOT NULL,
  `VIDEO_ID` int(11) DEFAULT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `ADVERTISER_ID` int(11) NOT NULL,
  `BUDGET` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`AD_ID`, `VIDEO_ID`, `USERNAME`, `ADVERTISER_ID`, `BUDGET`) VALUES
(4001, NULL, 'John', 300, 5000),
(4002, NULL, 'jane', 301, 7000),
(4003, NULL, 'michael', 302, 4500),
(4004, NULL, 'emily', 303, 5200),
(4005, NULL, 'david', 304, 8000);

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `BOOKMARK_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `BOOKMARK_DATE` date NOT NULL,
  `BOOKMARK_TITLE` varchar(30) DEFAULT NULL,
  `BOOKMARK_DESCRIPTION` varchar(150) DEFAULT NULL,
  `BOOKMARK_TYPE` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`BOOKMARK_ID`, `USERNAME`, `BOOKMARK_DATE`, `BOOKMARK_TITLE`, `BOOKMARK_DESCRIPTION`, `BOOKMARK_TYPE`) VALUES
(1601, 'david', '2024-01-09', 'Healthy Recipes', 'Collection of nutritious recipes for a healthy lifestyle.', 'Video'),
(1602, 'emily', '2023-12-11', 'Photography Tips', 'Useful tips and techniques for capturing stunning photographs.', 'Video'),
(1603, 'jane', '2023-07-10', 'Travel Destinations', 'Dreamy destinations to add to your travel bucket list.', 'Video'),
(1604, 'John', '2024-01-29', 'Best filters', 'Effective filters for videos.', 'Filter'),
(1605, 'michael', '2023-03-13', 'DIY Crafts', 'Creative DIY projects to unleash your creativity.', 'Video');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `COMMENT_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `VIDEO_ID` int(11) NOT NULL,
  `VID_USERNAME` varchar(20) NOT NULL,
  `NOTIFICATION_ID` int(11) DEFAULT NULL,
  `CONTENT` varchar(150) NOT NULL,
  `COMMENT_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`COMMENT_ID`, `USERNAME`, `VIDEO_ID`, `VID_USERNAME`, `NOTIFICATION_ID`, `CONTENT`, `COMMENT_DATE`) VALUES
(8001, 'david', 6001, 'david', 1801, 'Great video!', '2023-03-21'),
(8002, 'emily', 6002, 'emily', 1802, 'Interesting content!', '2024-03-04'),
(8003, 'jane', 6003, 'jane', 1803, 'Well Explained!', '2023-07-25'),
(8004, 'John', 6004, 'John', 1804, 'Nice video quality!', '2019-03-14'),
(8005, 'michael', 6005, 'michael', 1805, 'I enjoyed watching this!', '2022-09-29');

-- --------------------------------------------------------

--
-- Table structure for table `comments_cgs`
--

CREATE TABLE `comments_cgs` (
  `COMMENT_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `VIDEO_ID` int(11) NOT NULL,
  `VID_USERNAME` varchar(20) NOT NULL,
  `GUIDELINE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments_cgs`
--

INSERT INTO `comments_cgs` (`COMMENT_ID`, `USERNAME`, `VIDEO_ID`, `VID_USERNAME`, `GUIDELINE_ID`) VALUES
(8001, 'david', 6001, 'david', 1901),
(8002, 'emily', 6002, 'emily', 1902),
(8003, 'jane', 6003, 'jane', 1903),
(8004, 'John', 6004, 'John', 1904),
(8005, 'michael', 6005, 'michael', 1905);

-- --------------------------------------------------------

--
-- Table structure for table `community_guidelines`
--

CREATE TABLE `community_guidelines` (
  `GUIDELINE_ID` int(11) NOT NULL,
  `GUIDELINE_TITLE` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `community_guidelines`
--

INSERT INTO `community_guidelines` (`GUIDELINE_ID`, `GUIDELINE_TITLE`, `DESCRIPTION`) VALUES
(1901, 'Respectful Communica', 'Communicate respectfully with others; avoid offensive language, harassment, or discrimination'),
(1902, 'Content Guidelines', 'Ensure content is appropriate for all audiences; avoid explicit or offensive material'),
(1903, 'Community Safety', 'Promote a safe and welcoming community environment; report harmful behavior or content'),
(1904, 'Intellectual Propert', 'Respect intellectual property rights, do not post copyrighted material without permission'),
(1905, 'Privacy Policy', 'Protect user privacy, do not share personal information without consent.');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `EVENT_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  `EVENT_NAME` varchar(20) NOT NULL,
  `ORGANIZER_ID` int(11) NOT NULL,
  `START_DATE` date NOT NULL,
  `END_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`EVENT_ID`, `USERNAME`, `LOCATION_ID`, `EVENT_NAME`, `ORGANIZER_ID`, `START_DATE`, `END_DATE`) VALUES
(1301, 'david', 3000, 'Fitness Workshop', 121, '2024-03-01', '2024-03-08'),
(1302, 'emily', 3001, 'Tech Conference', 122, '2024-03-14', '2024-03-18'),
(1303, 'jane', 3002, 'Art Exhibition', 123, '2024-01-10', '2024-01-24'),
(1304, 'John', 3003, 'Music Festival', 124, '2024-03-16', '2024-03-20'),
(1305, 'michael', 3004, 'Food Expo', 125, '2023-07-04', '2023-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

CREATE TABLE `filters` (
  `FILTER_ID` int(11) NOT NULL,
  `FILTER_NAME` varchar(20) DEFAULT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filters`
--

INSERT INTO `filters` (`FILTER_ID`, `FILTER_NAME`, `DESCRIPTION`) VALUES
(1701, 'Vintage', 'Applies a vintage effect to photos for a nostalgic'),
(1702, 'Black and White', 'Converts photos to black and white for a classic l'),
(1703, 'HDR', 'Enhances photos with high dynamic range for vibran'),
(1704, 'Sepia', 'Adds a warm, sepia tone to photos for a vintage ef'),
(1705, 'Pop Art', 'Creates a pop art effect with bold colors and grap');

-- --------------------------------------------------------

--
-- Table structure for table `filters_trends`
--

CREATE TABLE `filters_trends` (
  `FILTER_ID` int(11) NOT NULL,
  `TREND_NAME` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filters_trends`
--

INSERT INTO `filters_trends` (`FILTER_ID`, `TREND_NAME`) VALUES
(1701, 'Outdoor Adventures'),
(1702, 'Plant-Based Diet'),
(1703, 'Remote Work'),
(1704, 'Sustainable Living'),
(1705, 'Virtual Reality');

-- --------------------------------------------------------

--
-- Table structure for table `filtesr_bookmarks`
--

CREATE TABLE `filtesr_bookmarks` (
  `FILTER_ID` int(11) NOT NULL,
  `BOOKMARK_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filtesr_bookmarks`
--

INSERT INTO `filtesr_bookmarks` (`FILTER_ID`, `BOOKMARK_ID`) VALUES
(1701, 1601),
(1702, 1602),
(1703, 1603),
(1704, 1604),
(1705, 1605);

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `FOLLOW_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `HASHTAG_NAME` varchar(20) DEFAULT NULL,
  `FOLLOWER_ID` varchar(20) NOT NULL,
  `FOLLOWED_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`FOLLOW_ID`, `USERNAME`, `HASHTAG_NAME`, `FOLLOWER_ID`, `FOLLOWED_ID`) VALUES
(2100, 'david', '#fitness', '334def', '476tty'),
(2101, 'emily', '#food', '678dplo', '231eew'),
(2102, 'jane', '#nature', 'klm6n9', 'qwe321'),
(2103, 'John', '#photography', 'vvb445', 'qxz4c3'),
(2104, 'michael', '#travel', 'hhj554', 'vdw229');

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `GIFT_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `LIVESTREAM_ID` int(11) DEFAULT NULL,
  `SENDER_ID` int(11) NOT NULL,
  `RECEIVER_ID` int(11) NOT NULL,
  `GIFT_TYPE` char(10) NOT NULL,
  `GIFT_MESSAGE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gifts`
--

INSERT INTO `gifts` (`GIFT_ID`, `USERNAME`, `LIVESTREAM_ID`, `SENDER_ID`, `RECEIVER_ID`, `GIFT_TYPE`, `GIFT_MESSAGE`) VALUES
(5001, 'david', 1001, 10, 11, 'Small (6$)', 'Great livestream'),
(5002, 'emily', 1002, 12, 13, 'Small (6$)', 'Thank you for useful tips'),
(5003, 'jane', 1003, 14, 15, 'Big (70$)', 'Great talent'),
(5004, 'John', 1004, 16, 17, 'Big (70$)', 'Interesting'),
(5005, 'michael', 1005, 18, 19, 'Big (70$)', 'Awesome workout, I will 100% try to go through these exercises.');

-- --------------------------------------------------------

--
-- Table structure for table `hashtags`
--

CREATE TABLE `hashtags` (
  `HASHTAG_NAME` varchar(20) NOT NULL,
  `FOLLOWER_COUNT` int(11) DEFAULT NULL,
  `POPULARITY_COUNT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hashtags`
--

INSERT INTO `hashtags` (`HASHTAG_NAME`, `FOLLOWER_COUNT`, `POPULARITY_COUNT`) VALUES
('#fitness', 6000, 25000),
('#food', 8000, 35000),
('#nature', 5500, 22000),
('#photography', 7000, 30000),
('#travel', 5000, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `hashtags_cgs`
--

CREATE TABLE `hashtags_cgs` (
  `HASHTAG_NAME` varchar(20) NOT NULL,
  `GUIDELINE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hashtags_cgs`
--

INSERT INTO `hashtags_cgs` (`HASHTAG_NAME`, `GUIDELINE_ID`) VALUES
('#fitness', 1901),
('#food', 1902),
('#nature', 1903),
('#photography', 1904),
('#travel', 1905);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `LIKE_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `VIDEO_ID` int(11) NOT NULL,
  `VID_USERNAME` varchar(20) NOT NULL,
  `NOTIFICATION_ID` int(11) DEFAULT NULL,
  `LIKE_DATE` date NOT NULL,
  `LIKE_REACTION` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`LIKE_ID`, `USERNAME`, `VIDEO_ID`, `VID_USERNAME`, `NOTIFICATION_ID`, `LIKE_DATE`, `LIKE_REACTION`) VALUES
(7001, 'david', 6001, 'david', NULL, '2023-02-01', 'Happy'),
(7002, 'emily', 6002, 'emily', NULL, '2023-07-19', 'Happy'),
(7003, 'jane', 6003, 'jane', NULL, '2022-11-22', 'Sad'),
(7004, 'John', 6004, 'John', NULL, '2024-02-22', 'Sad'),
(7005, 'michael', 6005, 'michael', NULL, '2024-03-11', 'Excited');

-- --------------------------------------------------------

--
-- Table structure for table `livestreams`
--

CREATE TABLE `livestreams` (
  `LIVESTREAM_ID` int(11) NOT NULL,
  `START_TIME` datetime NOT NULL,
  `STATUS` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `livestreams`
--

INSERT INTO `livestreams` (`LIVESTREAM_ID`, `START_TIME`, `STATUS`) VALUES
(1001, '2024-03-31 10:00:00', 'Morning Yoga Session'),
(1002, '2024-04-01 12:30:00', 'Cooking Class: Italian Cuisine'),
(1003, '2024-04-01 14:45:00', 'Music Concert: Jazz Night'),
(1004, '2024-04-02 16:20:00', 'Tech Talk: Latest Trends in AI'),
(1005, '2024-04-02 18:00:00', 'Fitness Workshop: HIIT Trainin');

-- --------------------------------------------------------

--
-- Table structure for table `livestreams_cgs`
--

CREATE TABLE `livestreams_cgs` (
  `GUIDELINE_ID` int(11) NOT NULL,
  `LIVESTREAM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `livestreams_cgs`
--

INSERT INTO `livestreams_cgs` (`GUIDELINE_ID`, `LIVESTREAM_ID`) VALUES
(1901, 1001),
(1902, 1002),
(1903, 1003),
(1904, 1004),
(1905, 1005);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `LOCATION_ID` int(11) NOT NULL,
  `LOCATION_NAME` varchar(30) NOT NULL,
  `LATITUDE` float DEFAULT NULL,
  `LONGITUDE` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`LOCATION_ID`, `LOCATION_NAME`, `LATITUDE`, `LONGITUDE`) VALUES
(3000, 'Central Park', 40.7851, -73.9683),
(3001, 'Statue of Liberty', 40.6892, -74.0445),
(3002, 'Times Square', 40.7589, -73.9851),
(3003, 'Empire State Building', 40.7488, -73.9854),
(3004, 'Brooklyn Bridge', 40.7061, -73.9969);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `MESSAGE_ID` int(11) NOT NULL,
  `REPORT_ID` int(11) DEFAULT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `SENDER_ID` int(11) NOT NULL,
  `RECEIVER_ID` int(11) NOT NULL,
  `MESSAGE_CONTENT` varchar(150) NOT NULL,
  `IS_READ_MESSAGE` char(10) DEFAULT NULL,
  `MESSAGE_DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`MESSAGE_ID`, `REPORT_ID`, `USERNAME`, `SENDER_ID`, `RECEIVER_ID`, `MESSAGE_CONTENT`, `IS_READ_MESSAGE`, `MESSAGE_DATE`) VALUES
(1401, 1201, 'david', 41, 42, 'Hey Alice, how are you?', 'Yes', '2024-03-31 15:21:50'),
(1402, 1202, 'emily', 43, 44, 'Hi David, I\'m doing well. How about you?', 'Yes', '2024-01-08 16:27:43'),
(1403, 1203, 'jane', 45, 46, 'Hello Sarah, do you have any plans for the weekend?', 'No', '2023-10-18 10:20:15'),
(1404, 1204, 'John', 47, 48, 'Hey Bob, I\'m thinking of going hiking. Want to join?', 'No', '2023-10-17 15:29:00'),
(1405, 1205, 'michael', 49, 50, 'Hi David, I wanted to ask about the upcoming event. Can you provide more details?', 'Yes', '2024-02-13 15:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `NOTIFICATION_ID` int(11) NOT NULL,
  `LIKE_ID` int(11) DEFAULT NULL,
  `LIK_USERNAME` varchar(20) DEFAULT NULL,
  `LIK_VIDEO_ID` int(11) DEFAULT NULL,
  `LIK_VID_USERNAME` varchar(20) DEFAULT NULL,
  `COMMENT_ID` int(11) DEFAULT NULL,
  `COM_USERNAME` varchar(20) DEFAULT NULL,
  `VIDEO_ID` int(11) DEFAULT NULL,
  `VID_USERNAME` varchar(20) DEFAULT NULL,
  `SHARE_ID` int(11) DEFAULT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `CONTENT` varchar(150) NOT NULL,
  `NOTIFICATION_DATE` datetime NOT NULL,
  `IS_READ_NOTIF` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`NOTIFICATION_ID`, `LIKE_ID`, `LIK_USERNAME`, `LIK_VIDEO_ID`, `LIK_VID_USERNAME`, `COMMENT_ID`, `COM_USERNAME`, `VIDEO_ID`, `VID_USERNAME`, `SHARE_ID`, `USERNAME`, `CONTENT`, `NOTIFICATION_DATE`, `IS_READ_NOTIF`) VALUES
(1801, 7001, 'david', 6001, 'david', 8001, 'david', 6001, 'david', 9001, 'david', 'Your video received a like, comment, and share', '2024-03-04 16:30:11', 'No'),
(1802, 7002, 'emily', 6002, 'emily', 8002, 'emily', 6002, 'emily', 9002, 'emily', 'Your video received a like, comment', '2023-09-12 12:34:01', 'Yes'),
(1803, 7003, 'jane', 6003, 'jane', 8003, 'jane', 6003, 'jane', 9003, 'jane', 'Your video received a like', '2023-03-15 11:35:43', 'No'),
(1804, 7004, 'John', 6004, 'John', 8004, 'John', 6004, 'John', 9004, 'John', 'Your video received a comment, and share', '2023-07-02 18:20:33', 'Yes'),
(1805, 7005, 'michael', 6005, 'michael', 8005, 'michael', 6005, 'michael', 9005, 'michael', 'Your video share', '2024-02-20 21:55:16', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `PLAYLIST_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `PLAYLIST_NAME` varchar(20) DEFAULT NULL,
  `PLAYLIST_DESCRIPTION` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`PLAYLIST_ID`, `USERNAME`, `PLAYLIST_NAME`, `PLAYLIST_DESCRIPTION`) VALUES
(1101, 'david', 'Favorites', 'Collection of my favorite videos.'),
(1102, 'emily', 'Travel Adventures', 'Videos from my travels around the world.'),
(1103, 'jane', 'Cooking Masterclass', 'Learn to cook like a pro with these tutorials.'),
(1104, 'John', 'Workout Motivation', 'Get inspired and motivated with these workout videos.'),
(1105, 'michael', 'Funny Moments', 'A compilation of hilarious videos guaranteed to make you laugh.');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_settings`
--

CREATE TABLE `privacy_settings` (
  `SETTING_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `VISIBILITY` char(10) NOT NULL,
  `ALLOW_MESSAGES` char(10) NOT NULL,
  `ALLOW_DOWNLOAD` char(10) NOT NULL,
  `ALLOW_COMMENTS` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `privacy_settings`
--

INSERT INTO `privacy_settings` (`SETTING_ID`, `USERNAME`, `VISIBILITY`, `ALLOW_MESSAGES`, `ALLOW_DOWNLOAD`, `ALLOW_COMMENTS`) VALUES
(2001, 'david', 'Public', 'Yes', 'No', 'Yes'),
(2002, 'emily', 'Private', 'Yes', 'Yes', 'No'),
(2003, 'jane', 'Public', 'No', 'Yes', 'Yes'),
(2004, 'John', 'Private', 'Yes', 'No', 'No'),
(2005, 'michael', 'Public', 'Yes', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `REPORT_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `COMMENT_ID` int(11) DEFAULT NULL,
  `COM_USERNAME` varchar(20) DEFAULT NULL,
  `COM_VIDEO_ID` int(11) DEFAULT NULL,
  `COM_VID_USERNAME` varchar(20) DEFAULT NULL,
  `VIDEO_ID` int(11) DEFAULT NULL,
  `VID_USERNAME` varchar(20) DEFAULT NULL,
  `MESSAGE_ID` int(11) DEFAULT NULL,
  `REPORT_REASON` char(10) NOT NULL,
  `REPORT_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`REPORT_ID`, `USERNAME`, `COMMENT_ID`, `COM_USERNAME`, `COM_VIDEO_ID`, `COM_VID_USERNAME`, `VIDEO_ID`, `VID_USERNAME`, `MESSAGE_ID`, `REPORT_REASON`, `REPORT_DATE`) VALUES
(1201, 'david', 8001, 'david', 6001, 'david', 6001, 'david', NULL, 'Inappropri', '2019-02-14'),
(1202, 'emily', 8002, 'emily', 6002, 'emily', 6002, 'emily', NULL, 'Inappropri', '2024-03-05'),
(1203, 'jane', 8003, 'jane', 6003, 'jane', 6003, 'jane', NULL, 'Impersonat', '2024-02-12'),
(1204, 'John', 8004, 'John', 6004, 'John', 6004, 'John', NULL, 'Impersonat', '2024-01-15'),
(1205, 'michael', 8005, 'michael', 6005, 'michael', 6005, 'michael', NULL, 'Under 18 y', '2024-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `SHARE_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `NOTIFICATION_ID` int(11) DEFAULT NULL,
  `VIDEO_ID` int(11) DEFAULT NULL,
  `VID_USERNAME` varchar(20) DEFAULT NULL,
  `SHARE_DATE` date DEFAULT NULL,
  `SHARE_PLATFORM` char(10) NOT NULL,
  `SHARE_COUNT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`SHARE_ID`, `USERNAME`, `NOTIFICATION_ID`, `VIDEO_ID`, `VID_USERNAME`, `SHARE_DATE`, `SHARE_PLATFORM`, `SHARE_COUNT`) VALUES
(9001, 'david', NULL, 6001, 'david', '2024-03-11', 'TikTok', 100),
(9002, 'emily', NULL, 6002, 'emily', '2024-02-13', 'TikTok', 1200),
(9003, 'jane', NULL, 6003, 'jane', '2020-10-20', 'Facebook', 6400),
(9004, 'John', NULL, 6004, 'John', '2024-01-15', 'WhatsApp', 50),
(9005, 'michael', NULL, 6005, 'michael', '2023-09-12', 'WhatsApp', 90);

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `TREND_NAME` varchar(60) NOT NULL,
  `DESCRIPTION` varchar(150) NOT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`TREND_NAME`, `DESCRIPTION`, `START_DATE`, `END_DATE`) VALUES
('Outdoor Adventures', 'Embarking on thrilling outdoor adventures for adrenaline and fun.', '2024-05-05', '2024-12-31'),
('Plant-Based Diet', 'Adopting a diet rich in plant-based foods for health and sustainability.', '2023-08-08', '2023-09-21'),
('Remote Work', 'Transitioning to remote work setups for flexibility and productivity.', '2024-04-20', '2024-12-31'),
('Sustainable Living', 'Embracing eco-friendly practices for a greener future.', '2024-02-15', '2024-12-31'),
('Virtual Reality', 'Exploring the immersive world of virtual reality technology.', '2024-02-15', '2024-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USERNAME` varchar(20) NOT NULL,
  `LIVESTREAM_ID` int(11) DEFAULT NULL,
  `SETTING_ID` int(11) DEFAULT NULL,
  `FIRST_NAME` varchar(30) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `GENDER` varchar(20) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `PASSWORD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USERNAME`, `LIVESTREAM_ID`, `SETTING_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `DATE_OF_BIRTH`, `PASSWORD`) VALUES
('david', 1005, 2001, 'David', 'Wilson', 'M', '1997-04-15', '554324'),
('emily', 1004, 2002, 'Emily', 'Brown', 'F', '2000-03-22', '88726'),
('jane', 1002, 2003, 'Jane', 'Smith', 'F', '1990-12-26', '65342'),
('John', 1001, 2004, 'John', 'Doe', 'M', '1992-02-16', '54321'),
('michael', 1003, 2005, 'Michael', 'Johnson', 'M', '1985-03-26', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `VIDEO_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  `TITLE` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(150) NOT NULL,
  `DURATION` time NOT NULL,
  `VIEWS` int(11) NOT NULL,
  `LIKES_COUNT` int(11) NOT NULL,
  `UPLOAD_DATE` date NOT NULL,
  `COMMENTS_COUNT` int(11) NOT NULL,
  `SHARE_COUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`VIDEO_ID`, `USERNAME`, `LOCATION_ID`, `TITLE`, `DESCRIPTION`, `DURATION`, `VIEWS`, `LIKES_COUNT`, `UPLOAD_DATE`, `COMMENTS_COUNT`, `SHARE_COUNT`) VALUES
(6001, 'david', 3000, 'Morning Jog in the P', 'Enjoying a refreshing morning jog in Central Park.', '00:15:00', 500, 50, '2024-01-22', 20, 10),
(6002, 'emily', 3001, 'Cooking Italian Past', 'Learn how to cook delicious Italian pasta from scratch.', '00:25:00', 1000, 80, '2024-03-26', 30, 15),
(6003, 'jane', 3002, 'Exploring Times Squa', 'A walkthrough of the bustling Times Square in New York City.', '00:20:00', 800, 70, '2024-03-27', 25, 12),
(6004, 'John', 3003, 'Empire State Buildin', 'Experience the breathtaking views from the top of the Empire State Building.', '00:30:00', 1200, 90, '2024-03-28', 35, 18),
(6005, 'michael', 3004, 'Brooklyn Bridge Walk', 'Taking a scenic walk across the iconic Brooklyn Bridge.', '00:18:00', 600, 60, '2023-11-15', 22, 11);

-- --------------------------------------------------------

--
-- Table structure for table `videos_bookmarks`
--

CREATE TABLE `videos_bookmarks` (
  `VIDEO_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `BOOKMARK_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos_bookmarks`
--

INSERT INTO `videos_bookmarks` (`VIDEO_ID`, `USERNAME`, `BOOKMARK_ID`) VALUES
(6001, 'david', 1601),
(6002, 'emily', 1602),
(6003, 'jane', 1603),
(6004, 'John', 1604),
(6005, 'michael', 1605);

-- --------------------------------------------------------

--
-- Table structure for table `videos_cgs`
--

CREATE TABLE `videos_cgs` (
  `GUIDELINE_ID` int(11) NOT NULL,
  `VIDEO_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos_cgs`
--

INSERT INTO `videos_cgs` (`GUIDELINE_ID`, `VIDEO_ID`, `USERNAME`) VALUES
(1901, 6001, 'david'),
(1902, 6002, 'emily'),
(1903, 6003, 'jane'),
(1904, 6004, 'John'),
(1905, 6005, 'michael');

-- --------------------------------------------------------

--
-- Table structure for table `videos_filters`
--

CREATE TABLE `videos_filters` (
  `FILTER_ID` int(11) NOT NULL,
  `VIDEO_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos_filters`
--

INSERT INTO `videos_filters` (`FILTER_ID`, `VIDEO_ID`, `USERNAME`) VALUES
(1701, 6001, 'david'),
(1702, 6002, 'emily'),
(1703, 6003, 'jane'),
(1704, 6004, 'John'),
(1705, 6005, 'michael');

-- --------------------------------------------------------

--
-- Table structure for table `videos_playlists`
--

CREATE TABLE `videos_playlists` (
  `VIDEO_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `PLAYLIST_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos_playlists`
--

INSERT INTO `videos_playlists` (`VIDEO_ID`, `USERNAME`, `PLAYLIST_ID`) VALUES
(6001, 'david', 1101),
(6002, 'emily', 1102),
(6003, 'jane', 1103),
(6004, 'John', 1104),
(6005, 'michael', 1105);

-- --------------------------------------------------------

--
-- Table structure for table `videos_trends`
--

CREATE TABLE `videos_trends` (
  `TREND_NAME` varchar(60) NOT NULL,
  `VIDEO_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos_trends`
--

INSERT INTO `videos_trends` (`TREND_NAME`, `VIDEO_ID`, `USERNAME`) VALUES
('Outdoor Adventures', 6001, 'david'),
('Plant-Based Diet', 6002, 'emily'),
('Remote Work', 6003, 'jane'),
('Sustainable Living', 6004, 'John'),
('Virtual Reality', 6005, 'michael');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`AD_ID`),
  ADD KEY `FK_ADVERTIS_REFERENCE_VIDEOS` (`VIDEO_ID`,`USERNAME`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`BOOKMARK_ID`),
  ADD KEY `FK_BOOKMARK_REFERENCE_USERS` (`USERNAME`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`COMMENT_ID`,`USERNAME`,`VIDEO_ID`,`VID_USERNAME`),
  ADD KEY `FK_COMMENTS_REFERENCE_VIDEOS` (`VIDEO_ID`,`VID_USERNAME`),
  ADD KEY `FK_COMMENTS_REFERENCE_USERS` (`USERNAME`),
  ADD KEY `FK_COMMENTS_REFERENCE_NOTIFICA` (`NOTIFICATION_ID`);

--
-- Indexes for table `comments_cgs`
--
ALTER TABLE `comments_cgs`
  ADD PRIMARY KEY (`COMMENT_ID`,`USERNAME`,`VIDEO_ID`,`VID_USERNAME`,`GUIDELINE_ID`),
  ADD KEY `FK_COMMENTS_REFERENCE_COMMUNIT` (`GUIDELINE_ID`);

--
-- Indexes for table `community_guidelines`
--
ALTER TABLE `community_guidelines`
  ADD PRIMARY KEY (`GUIDELINE_ID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`EVENT_ID`,`USERNAME`),
  ADD KEY `FK_EVENT_REFERENCE_USERS` (`USERNAME`),
  ADD KEY `FK_EVENT_REFERENCE_LOCATION` (`LOCATION_ID`);

--
-- Indexes for table `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`FILTER_ID`);

--
-- Indexes for table `filters_trends`
--
ALTER TABLE `filters_trends`
  ADD PRIMARY KEY (`FILTER_ID`,`TREND_NAME`),
  ADD KEY `FK_FILTERS__REFERENCE_TRENDS` (`TREND_NAME`);

--
-- Indexes for table `filtesr_bookmarks`
--
ALTER TABLE `filtesr_bookmarks`
  ADD PRIMARY KEY (`FILTER_ID`,`BOOKMARK_ID`),
  ADD KEY `FK_FILTESR__REFERENCE_BOOKMARK` (`BOOKMARK_ID`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`FOLLOW_ID`,`USERNAME`),
  ADD KEY `FK_FOLLOWS_REFERENCE_USERS` (`USERNAME`),
  ADD KEY `FK_FOLLOWS_REFERENCE_HASHTAGS` (`HASHTAG_NAME`);

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`GIFT_ID`),
  ADD KEY `FK_GIFTS_REFERENCE_USERS` (`USERNAME`),
  ADD KEY `FK_GIFTS_REFERENCE_LIVESTRE` (`LIVESTREAM_ID`);

--
-- Indexes for table `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`HASHTAG_NAME`);

--
-- Indexes for table `hashtags_cgs`
--
ALTER TABLE `hashtags_cgs`
  ADD PRIMARY KEY (`HASHTAG_NAME`,`GUIDELINE_ID`),
  ADD KEY `FK_HASHTAGS_REFERENCE_COMMUNIT` (`GUIDELINE_ID`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`LIKE_ID`,`USERNAME`,`VIDEO_ID`,`VID_USERNAME`),
  ADD KEY `FK_LIKES_REFERENCE_VIDEOS` (`VIDEO_ID`,`VID_USERNAME`),
  ADD KEY `FK_LIKES_REFERENCE_USERS` (`USERNAME`),
  ADD KEY `FK_LIKES_REFERENCE_NOTIFICA` (`NOTIFICATION_ID`);

--
-- Indexes for table `livestreams`
--
ALTER TABLE `livestreams`
  ADD PRIMARY KEY (`LIVESTREAM_ID`);

--
-- Indexes for table `livestreams_cgs`
--
ALTER TABLE `livestreams_cgs`
  ADD PRIMARY KEY (`GUIDELINE_ID`,`LIVESTREAM_ID`),
  ADD KEY `FK_LIVESTRE_REFERENCE_LIVESTRE` (`LIVESTREAM_ID`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`LOCATION_ID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`MESSAGE_ID`),
  ADD KEY `FK_MESSAGES_REFERENCE_REPORTS` (`REPORT_ID`),
  ADD KEY `FK_MESSAGES_REFERENCE_USERS` (`USERNAME`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`NOTIFICATION_ID`),
  ADD KEY `FK_NOTIFICA_REFERENCE_USERS` (`USERNAME`),
  ADD KEY `FK_NOTIFICA_REFERENCE_LIKES` (`LIKE_ID`,`LIK_USERNAME`,`LIK_VIDEO_ID`,`LIK_VID_USERNAME`),
  ADD KEY `FK_NOTIFICA_REFERENCE_COMMENTS` (`COMMENT_ID`,`COM_USERNAME`,`VIDEO_ID`,`VID_USERNAME`),
  ADD KEY `FK_NOTIFICA_REFERENCE_SHARES` (`SHARE_ID`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`PLAYLIST_ID`),
  ADD KEY `FK_PLAYLIST_REFERENCE_USERS` (`USERNAME`);

--
-- Indexes for table `privacy_settings`
--
ALTER TABLE `privacy_settings`
  ADD PRIMARY KEY (`SETTING_ID`),
  ADD KEY `FK_PRIVACY__REFERENCE_USERS` (`USERNAME`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`REPORT_ID`),
  ADD KEY `FK_REPORTS_REFERENCE_USERS` (`USERNAME`),
  ADD KEY `FK_REPORTS_REFERENCE_COMMENTS` (`COMMENT_ID`,`COM_USERNAME`,`COM_VIDEO_ID`,`COM_VID_USERNAME`),
  ADD KEY `FK_REPORTS_REFERENCE_VIDEOS` (`VIDEO_ID`,`VID_USERNAME`),
  ADD KEY `FK_REPORTS_REFERENCE_MESSAGES` (`MESSAGE_ID`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`SHARE_ID`),
  ADD KEY `FK_SHARES_REFERENCE_USERS` (`USERNAME`),
  ADD KEY `FK_SHARES_REFERENCE_NOTIFICA` (`NOTIFICATION_ID`),
  ADD KEY `FK_SHARES_REFERENCE_VIDEOS` (`VIDEO_ID`,`VID_USERNAME`);

--
-- Indexes for table `trends`
--
ALTER TABLE `trends`
  ADD PRIMARY KEY (`TREND_NAME`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USERNAME`),
  ADD KEY `FK_USERS_REFERENCE_LIVESTRE` (`LIVESTREAM_ID`),
  ADD KEY `FK_USERS_REFERENCE_PRIVACY_` (`SETTING_ID`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`VIDEO_ID`,`USERNAME`),
  ADD KEY `FK_VIDEOS_REFERENCE_USERS` (`USERNAME`),
  ADD KEY `FK_VIDEOS_REFERENCE_LOCATION` (`LOCATION_ID`);

--
-- Indexes for table `videos_bookmarks`
--
ALTER TABLE `videos_bookmarks`
  ADD PRIMARY KEY (`VIDEO_ID`,`USERNAME`,`BOOKMARK_ID`),
  ADD KEY `FK_VIDEOS_B_REFERENCE_BOOKMARK` (`BOOKMARK_ID`);

--
-- Indexes for table `videos_cgs`
--
ALTER TABLE `videos_cgs`
  ADD PRIMARY KEY (`GUIDELINE_ID`,`VIDEO_ID`,`USERNAME`),
  ADD KEY `FK_VIDEOS_C_REFERENCE_VIDEOS` (`VIDEO_ID`,`USERNAME`);

--
-- Indexes for table `videos_filters`
--
ALTER TABLE `videos_filters`
  ADD PRIMARY KEY (`FILTER_ID`,`VIDEO_ID`,`USERNAME`),
  ADD KEY `FK_VIDEOS_F_REFERENCE_VIDEOS` (`VIDEO_ID`,`USERNAME`);

--
-- Indexes for table `videos_playlists`
--
ALTER TABLE `videos_playlists`
  ADD PRIMARY KEY (`VIDEO_ID`,`USERNAME`,`PLAYLIST_ID`),
  ADD KEY `FK_VIDEOS_P_REFERENCE_PLAYLIST` (`PLAYLIST_ID`);

--
-- Indexes for table `videos_trends`
--
ALTER TABLE `videos_trends`
  ADD PRIMARY KEY (`TREND_NAME`,`VIDEO_ID`,`USERNAME`),
  ADD KEY `FK_VIDEOS_T_REFERENCE_VIDEOS` (`VIDEO_ID`,`USERNAME`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD CONSTRAINT `FK_ADVERTIS_REFERENCE_VIDEOS` FOREIGN KEY (`VIDEO_ID`,`USERNAME`) REFERENCES `videos` (`VIDEO_ID`, `USERNAME`);

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `FK_BOOKMARK_REFERENCE_USERS` FOREIGN KEY (`USERNAME`) REFERENCES `users` (`USERNAME`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_COMMENTS_REFERENCE_NOTIFICA` FOREIGN KEY (`NOTIFICATION_ID`) REFERENCES `notifications` (`NOTIFICATION_ID`),
  ADD CONSTRAINT `FK_COMMENTS_REFERENCE_USERS` FOREIGN KEY (`USERNAME`) REFERENCES `users` (`USERNAME`),
  ADD CONSTRAINT `FK_COMMENTS_REFERENCE_VIDEOS` FOREIGN KEY (`VIDEO_ID`,`VID_USERNAME`) REFERENCES `videos` (`VIDEO_ID`, `USERNAME`);

--
-- Constraints for table `comments_cgs`
--
ALTER TABLE `comments_cgs`
  ADD CONSTRAINT `FK_COMMENTS_REFERENCE_COMMENTS` FOREIGN KEY (`COMMENT_ID`,`USERNAME`,`VIDEO_ID`,`VID_USERNAME`) REFERENCES `comments` (`COMMENT_ID`, `USERNAME`, `VIDEO_ID`, `VID_USERNAME`),
  ADD CONSTRAINT `FK_COMMENTS_REFERENCE_COMMUNIT` FOREIGN KEY (`GUIDELINE_ID`) REFERENCES `community_guidelines` (`GUIDELINE_ID`);

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK_EVENT_REFERENCE_LOCATION` FOREIGN KEY (`LOCATION_ID`) REFERENCES `locations` (`LOCATION_ID`),
  ADD CONSTRAINT `FK_EVENT_REFERENCE_USERS` FOREIGN KEY (`USERNAME`) REFERENCES `users` (`USERNAME`);

--
-- Constraints for table `filters_trends`
--
ALTER TABLE `filters_trends`
  ADD CONSTRAINT `FK_FILTERS__REFERENCE_FILTERS` FOREIGN KEY (`FILTER_ID`) REFERENCES `filters` (`FILTER_ID`),
  ADD CONSTRAINT `FK_FILTERS__REFERENCE_TRENDS` FOREIGN KEY (`TREND_NAME`) REFERENCES `trends` (`TREND_NAME`);

--
-- Constraints for table `filtesr_bookmarks`
--
ALTER TABLE `filtesr_bookmarks`
  ADD CONSTRAINT `FK_FILTESR__REFERENCE_BOOKMARK` FOREIGN KEY (`BOOKMARK_ID`) REFERENCES `bookmarks` (`BOOKMARK_ID`),
  ADD CONSTRAINT `FK_FILTESR__REFERENCE_FILTERS` FOREIGN KEY (`FILTER_ID`) REFERENCES `filters` (`FILTER_ID`);

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `FK_FOLLOWS_REFERENCE_HASHTAGS` FOREIGN KEY (`HASHTAG_NAME`) REFERENCES `hashtags` (`HASHTAG_NAME`),
  ADD CONSTRAINT `FK_FOLLOWS_REFERENCE_USERS` FOREIGN KEY (`USERNAME`) REFERENCES `users` (`USERNAME`);

--
-- Constraints for table `gifts`
--
ALTER TABLE `gifts`
  ADD CONSTRAINT `FK_GIFTS_REFERENCE_LIVESTRE` FOREIGN KEY (`LIVESTREAM_ID`) REFERENCES `livestreams` (`LIVESTREAM_ID`),
  ADD CONSTRAINT `FK_GIFTS_REFERENCE_USERS` FOREIGN KEY (`USERNAME`) REFERENCES `users` (`USERNAME`);

--
-- Constraints for table `hashtags_cgs`
--
ALTER TABLE `hashtags_cgs`
  ADD CONSTRAINT `FK_HASHTAGS_REFERENCE_COMMUNIT` FOREIGN KEY (`GUIDELINE_ID`) REFERENCES `community_guidelines` (`GUIDELINE_ID`),
  ADD CONSTRAINT `FK_HASHTAGS_REFERENCE_HASHTAGS` FOREIGN KEY (`HASHTAG_NAME`) REFERENCES `hashtags` (`HASHTAG_NAME`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `FK_LIKES_REFERENCE_NOTIFICA` FOREIGN KEY (`NOTIFICATION_ID`) REFERENCES `notifications` (`NOTIFICATION_ID`),
  ADD CONSTRAINT `FK_LIKES_REFERENCE_USERS` FOREIGN KEY (`USERNAME`) REFERENCES `users` (`USERNAME`),
  ADD CONSTRAINT `FK_LIKES_REFERENCE_VIDEOS` FOREIGN KEY (`VIDEO_ID`,`VID_USERNAME`) REFERENCES `videos` (`VIDEO_ID`, `USERNAME`);

--
-- Constraints for table `livestreams_cgs`
--
ALTER TABLE `livestreams_cgs`
  ADD CONSTRAINT `FK_LIVESTRE_REFERENCE_COMMUNIT` FOREIGN KEY (`GUIDELINE_ID`) REFERENCES `community_guidelines` (`GUIDELINE_ID`),
  ADD CONSTRAINT `FK_LIVESTRE_REFERENCE_LIVESTRE` FOREIGN KEY (`LIVESTREAM_ID`) REFERENCES `livestreams` (`LIVESTREAM_ID`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `FK_MESSAGES_REFERENCE_REPORTS` FOREIGN KEY (`REPORT_ID`) REFERENCES `reports` (`REPORT_ID`),
  ADD CONSTRAINT `FK_MESSAGES_REFERENCE_USERS` FOREIGN KEY (`USERNAME`) REFERENCES `users` (`USERNAME`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `FK_NOTIFICA_REFERENCE_COMMENTS` FOREIGN KEY (`COMMENT_ID`,`COM_USERNAME`,`VIDEO_ID`,`VID_USERNAME`) REFERENCES `comments` (`COMMENT_ID`, `USERNAME`, `VIDEO_ID`, `VID_USERNAME`),
  ADD CONSTRAINT `FK_NOTIFICA_REFERENCE_LIKES` FOREIGN KEY (`LIKE_ID`,`LIK_USERNAME`,`LIK_VIDEO_ID`,`LIK_VID_USERNAME`) REFERENCES `likes` (`LIKE_ID`, `USERNAME`, `VIDEO_ID`, `VID_USERNAME`),
  ADD CONSTRAINT `FK_NOTIFICA_REFERENCE_SHARES` FOREIGN KEY (`SHARE_ID`) REFERENCES `shares` (`SHARE_ID`),
  ADD CONSTRAINT `FK_NOTIFICA_REFERENCE_USERS` FOREIGN KEY (`USERNAME`) REFERENCES `users` (`USERNAME`);

--
-- Constraints for table `playlists`
--
ALTER TABLE `playlists`
  ADD CONSTRAINT `FK_PLAYLIST_REFERENCE_USERS` FOREIGN KEY (`USERNAME`) REFERENCES `users` (`USERNAME`);

--
-- Constraints for table `privacy_settings`
--
ALTER TABLE `privacy_settings`
  ADD CONSTRAINT `FK_PRIVACY__REFERENCE_USERS` FOREIGN KEY (`USERNAME`) REFERENCES `users` (`USERNAME`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `FK_REPORTS_REFERENCE_COMMENTS` FOREIGN KEY (`COMMENT_ID`,`COM_USERNAME`,`COM_VIDEO_ID`,`COM_VID_USERNAME`) REFERENCES `comments` (`COMMENT_ID`, `USERNAME`, `VIDEO_ID`, `VID_USERNAME`),
  ADD CONSTRAINT `FK_REPORTS_REFERENCE_MESSAGES` FOREIGN KEY (`MESSAGE_ID`) REFERENCES `messages` (`MESSAGE_ID`),
  ADD CONSTRAINT `FK_REPORTS_REFERENCE_USERS` FOREIGN KEY (`USERNAME`) REFERENCES `users` (`USERNAME`),
  ADD CONSTRAINT `FK_REPORTS_REFERENCE_VIDEOS` FOREIGN KEY (`VIDEO_ID`,`VID_USERNAME`) REFERENCES `videos` (`VIDEO_ID`, `USERNAME`);

--
-- Constraints for table `shares`
--
ALTER TABLE `shares`
  ADD CONSTRAINT `FK_SHARES_REFERENCE_NOTIFICA` FOREIGN KEY (`NOTIFICATION_ID`) REFERENCES `notifications` (`NOTIFICATION_ID`),
  ADD CONSTRAINT `FK_SHARES_REFERENCE_USERS` FOREIGN KEY (`USERNAME`) REFERENCES `users` (`USERNAME`),
  ADD CONSTRAINT `FK_SHARES_REFERENCE_VIDEOS` FOREIGN KEY (`VIDEO_ID`,`VID_USERNAME`) REFERENCES `videos` (`VIDEO_ID`, `USERNAME`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_USERS_REFERENCE_LIVESTRE` FOREIGN KEY (`LIVESTREAM_ID`) REFERENCES `livestreams` (`LIVESTREAM_ID`),
  ADD CONSTRAINT `FK_USERS_REFERENCE_PRIVACY_` FOREIGN KEY (`SETTING_ID`) REFERENCES `privacy_settings` (`SETTING_ID`);

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `FK_VIDEOS_REFERENCE_LOCATION` FOREIGN KEY (`LOCATION_ID`) REFERENCES `locations` (`LOCATION_ID`),
  ADD CONSTRAINT `FK_VIDEOS_REFERENCE_USERS` FOREIGN KEY (`USERNAME`) REFERENCES `users` (`USERNAME`);

--
-- Constraints for table `videos_bookmarks`
--
ALTER TABLE `videos_bookmarks`
  ADD CONSTRAINT `FK_VIDEOS_B_REFERENCE_BOOKMARK` FOREIGN KEY (`BOOKMARK_ID`) REFERENCES `bookmarks` (`BOOKMARK_ID`),
  ADD CONSTRAINT `FK_VIDEOS_B_REFERENCE_VIDEOS` FOREIGN KEY (`VIDEO_ID`,`USERNAME`) REFERENCES `videos` (`VIDEO_ID`, `USERNAME`);

--
-- Constraints for table `videos_cgs`
--
ALTER TABLE `videos_cgs`
  ADD CONSTRAINT `FK_VIDEOS_C_REFERENCE_COMMUNIT` FOREIGN KEY (`GUIDELINE_ID`) REFERENCES `community_guidelines` (`GUIDELINE_ID`),
  ADD CONSTRAINT `FK_VIDEOS_C_REFERENCE_VIDEOS` FOREIGN KEY (`VIDEO_ID`,`USERNAME`) REFERENCES `videos` (`VIDEO_ID`, `USERNAME`);

--
-- Constraints for table `videos_filters`
--
ALTER TABLE `videos_filters`
  ADD CONSTRAINT `FK_VIDEOS_F_REFERENCE_FILTERS` FOREIGN KEY (`FILTER_ID`) REFERENCES `filters` (`FILTER_ID`),
  ADD CONSTRAINT `FK_VIDEOS_F_REFERENCE_VIDEOS` FOREIGN KEY (`VIDEO_ID`,`USERNAME`) REFERENCES `videos` (`VIDEO_ID`, `USERNAME`);

--
-- Constraints for table `videos_playlists`
--
ALTER TABLE `videos_playlists`
  ADD CONSTRAINT `FK_VIDEOS_P_REFERENCE_PLAYLIST` FOREIGN KEY (`PLAYLIST_ID`) REFERENCES `playlists` (`PLAYLIST_ID`),
  ADD CONSTRAINT `FK_VIDEOS_P_REFERENCE_VIDEOS` FOREIGN KEY (`VIDEO_ID`,`USERNAME`) REFERENCES `videos` (`VIDEO_ID`, `USERNAME`);

--
-- Constraints for table `videos_trends`
--
ALTER TABLE `videos_trends`
  ADD CONSTRAINT `FK_VIDEOS_T_REFERENCE_TRENDS` FOREIGN KEY (`TREND_NAME`) REFERENCES `trends` (`TREND_NAME`),
  ADD CONSTRAINT `FK_VIDEOS_T_REFERENCE_VIDEOS` FOREIGN KEY (`VIDEO_ID`,`USERNAME`) REFERENCES `videos` (`VIDEO_ID`, `USERNAME`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
