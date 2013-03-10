-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 04, 2013 at 03:46 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gencon_2011`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gc_id` varchar(10) NOT NULL COMMENT 'typically ''RPG9999999''',
  `title` varchar(100) NOT NULL,
  `game_system` varchar(40) NOT NULL,
  `gm` varchar(50) NOT NULL,
  `co_gm` varchar(100) DEFAULT NULL,
  `start` datetime NOT NULL,
  `hours` smallint(4) unsigned NOT NULL DEFAULT '4',
  `min` smallint(4) unsigned NOT NULL,
  `max` smallint(4) unsigned NOT NULL,
  `prereg_avail` smallint(4) unsigned NOT NULL,
  `original` smallint(4) unsigned DEFAULT NULL,
  `generic` smallint(4) unsigned DEFAULT NULL,
  `turnin` smallint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=120 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `gc_id`, `title`, `game_system`, `gm`, `co_gm`, `start`, `hours`, `min`, `max`, `prereg_avail`, `original`, `generic`, `turnin`) VALUES
(11, 'LRP1118915', ' Courting Murder Warlock War II – Opening Shots', 'Courting Murder', 'David Collins, Katie Huddlestonsmith', NULL, '2011-08-06 21:00:00', 4, 10, 25, 16, 5, 6, 11),
(12, 'RPG1119354', 'A Serious Case of the “Mondays''', 'Pathfinder', 'Paul Koch', NULL, '2011-08-04 12:00:00', 4, 4, 7, 0, 6, 2, 8),
(13, 'RPG1119355', 'A Serious Case of the “Mondays''', 'Pathfinder', 'Paul Koch', NULL, '2011-08-05 12:00:00', 4, 4, 7, 0, 1, 2, 3),
(14, 'RPG1119357', 'A Serious Case of the “Mondays''', 'Pathfinder', 'Paul Koch', NULL, '2011-08-07 08:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(15, 'RPG1119356', 'A Serious Case of the “Mondays''', 'Pathfinder', 'Paul Koch', NULL, '2011-08-06 12:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(16, 'RPG1119311', 'A Twist in Time, Chapter 3 - Lets Get the Roun Out of Here!', 'Dungeons & Dragons', 'Mark Gallicchio', NULL, '2011-08-04 21:00:00', 5, 4, 8, 6, NULL, NULL, NULL),
(17, 'RPG1119312', 'A Twist in Time, Chapter 3 - Lets Get the Roun Out of Here!', 'Dungeons & Dragons', 'Mark Gallicchio', NULL, '2011-08-05 21:00:00', 5, 4, 8, 2, NULL, NULL, NULL),
(18, 'RPG1119155', 'Adventure! Tales of the Odd Job Society', 'Storyteller (Trinity)', 'Tim Weaver, Scott Bowman', NULL, '2011-08-06 08:00:00', 4, 4, 8, 0, NULL, NULL, NULL),
(19, 'RPG1119154', 'Adventure! Tales of the Odd Job Society', 'Storyteller (Trinity)', 'Tim Weaver, Scott Bowman', NULL, '2011-08-05 08:00:00', 4, 4, 8, 0, NULL, NULL, NULL),
(20, 'RPG1118906', 'Adventures in Archeology Episode the Fourth', 'Justice Inc.', 'David Collins', NULL, '2011-08-04 17:00:00', 4, 4, 9, 1, NULL, NULL, NULL),
(21, 'LRP1119309', 'Breakfast with Dumbledore', 'Harry Potter Roleplay', 'Kim Humphreys, Kimberly Humphreys', NULL, '2011-08-06 08:00:00', 4, 5, 8, 0, NULL, NULL, NULL),
(22, 'RPG1119330', 'Bridge to Nowhere', 'Godlike', 'Nathan Nolan', NULL, '2011-08-04 17:00:00', 4, 5, 8, 0, NULL, NULL, NULL),
(23, 'RPG1119333', 'Broken Arrow', 'Godlike', 'Derry Simmel, Joseph Donaghue, Nathan Nolan', NULL, '2011-08-05 17:00:00', 4, 5, 8, 0, NULL, NULL, NULL),
(24, 'RPG1119161', 'Champions 2011', 'Hero', 'Geoff Speare, Robert Wiener', NULL, '2011-08-04 17:00:00', 4, 6, 8, 0, 8, 0, 8),
(25, 'RPG1119164', 'Champions 2011', 'Hero', 'Geoff Speare, Robert Wiener', NULL, '2011-08-06 17:00:00', 4, 6, 8, 0, NULL, NULL, NULL),
(26, 'RPG1119165', 'Champions 2011', 'Hero', 'Geoff Speare, Robert Wiener', NULL, '2011-08-07 12:00:00', 4, 6, 8, 8, NULL, NULL, NULL),
(27, 'RPG1119162', 'Champions 2011', 'Hero', 'Geoff Speare, Robert Wiener', NULL, '2011-08-05 08:00:00', 4, 6, 8, 0, NULL, NULL, NULL),
(28, 'RPG1119163', 'Champions 2011', 'Hero', 'Geoff Speare, Robert Wiener', NULL, '2011-08-06 12:00:00', 4, 4, 8, 0, 0, 8, 8),
(29, 'RPG1118913', 'Chicago Capers Classic: Daggers from the Dark', 'Justice Inc.', 'David Collins', NULL, '2011-08-06 17:00:00', 4, 4, 9, 6, NULL, NULL, NULL),
(30, 'RPG1118905', 'Chicago Capers; Nights in London', 'Justice Inc.', 'David Collins', NULL, '2011-08-04 08:00:00', 4, 4, 9, 0, NULL, NULL, NULL),
(31, 'RPG1118912', 'Chicago Capers: Jazz Vampire', 'Justice Inc.', 'David Collins', NULL, '2011-08-05 12:00:00', 4, 4, 9, 6, NULL, NULL, NULL),
(32, 'RPG1119341', 'Cleveland''s Best 4', 'Buffy the Vampire Slayer', 'Wendy Weaver', NULL, '2011-08-05 08:00:00', 4, 4, 6, 0, NULL, NULL, NULL),
(33, 'RPG1119340', 'Cleveland''s Best 4', 'Buffy the Vampire Slayer', 'Wendy Weaver', NULL, '2011-08-04 17:00:00', 4, 4, 6, 0, NULL, NULL, NULL),
(34, 'RPG1119342', 'Cleveland''s Best 4', 'Buffy the Vampire Slayer', 'Wendy Weaver', NULL, '2011-08-05 12:00:00', 4, 4, 6, 0, NULL, NULL, NULL),
(35, 'LRP1118914', 'Courting Murder Gwydion Castle', 'Courting Murder', 'David Collins, Katie Huddlestonsmith', NULL, '2011-08-05 21:00:00', 4, 10, 25, 2, NULL, NULL, NULL),
(36, 'RPG1119352', 'Curse of the Red Star: Redemption', 'Dungeons & Dragons', 'Michael Malony, Sean Malony', NULL, '2011-08-04 08:00:00', 4, 4, 7, 0, 3, 3, 6),
(37, 'RPG1119353', 'Curse of the Red Star: Redemption', 'Dungeons & Dragons', 'Michael Malony, Sean Malony', NULL, '2011-08-05 17:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(38, 'RPG1119334', 'Dead Man’s Switch', 'Godlike', 'Derry Simmel, Joseph Donaghue, Nathan Nolan', NULL, '2011-08-05 17:00:00', 4, 4, 6, 0, NULL, NULL, NULL),
(39, 'RPG1119321', 'Derelict Company', 'Call of Cthulhu', 'Donald Prust', NULL, '2011-08-05 08:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(40, 'RPG1119322', 'Derelict Company', 'Call of Cthulhu', 'Donald Prust', NULL, '2011-08-06 17:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(41, 'RPG1119320', 'Derelict Company', 'Call of Cthulhu', 'Donald Prust', NULL, '2011-08-04 21:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(42, 'RPG1119369', 'Dresden''s Irregulars', 'Hero', 'Richard Bowers', NULL, '2011-08-04 08:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(43, 'RPG1119370', 'Dresden''s Irregulars', 'Hero', 'Richard Bowers', NULL, '2011-08-06 08:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(44, 'RPG1119374', 'Dresden''s Irregulars', 'Hero', 'Richard Bowers', NULL, '2011-08-07 12:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(45, 'RPG1119152', 'Escape from the Late Late Late Show', 'Hero', 'Tim Weaver, Scott Bowman', NULL, '2011-08-04 17:00:00', 4, 4, 8, 6, NULL, NULL, NULL),
(46, 'RPG1119153', 'Escape from the Late Late Late Show', 'Hero', 'Tim Weaver, Scott Bowman', NULL, '2011-08-05 16:00:00', 4, 4, 8, 0, NULL, NULL, NULL),
(47, 'RPG1119151', 'Escape from the Late Late Late Show', 'Hero', 'Tim Weaver, Scott Bowman', NULL, '2011-08-04 08:00:00', 4, 4, 8, 0, NULL, NULL, NULL),
(48, 'RPG1119344', 'First Day of School', 'PS238', 'Wendy Weaver', NULL, '2011-08-06 17:00:00', 4, 4, 6, 0, NULL, NULL, NULL),
(49, 'RPG1119343', 'First Day of School', 'PS238', 'Wendy Weaver', NULL, '2011-08-06 12:00:00', 4, 4, 6, 0, NULL, NULL, NULL),
(50, 'RPG1119566', 'Foam Swords and Bird Seed', 'Call of Cthulhu', 'Elisa Ford', NULL, '2011-08-07 10:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(51, 'RPG1119565', 'Foam Swords and Bird Seed', 'Call of Cthulhu', 'Elisa Ford', NULL, '2011-08-06 08:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(52, 'RPG1119564', 'Foam Swords and Bird Seed', 'Call of Cthulhu', 'Elisa Ford', NULL, '2011-08-05 19:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(53, 'RPG1119563', 'Foam Swords and Bird Seed', 'Call of Cthulhu', 'Elisa Ford', NULL, '2011-08-04 08:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(54, 'RPG1119397', 'Forensic Hero – A New Word', 'Hero', 'Todd Hogue', NULL, '2011-08-06 21:00:00', 4, 4, 6, 0, NULL, NULL, NULL),
(55, 'RPG1119396', 'Forensic Hero – A New Word', 'Hero', 'Todd Hogue', NULL, '2011-08-05 12:00:00', 4, 4, 6, 4, NULL, NULL, NULL),
(56, 'RPG1119398', 'Forensic Hero – A New Word', 'Hero', 'Todd Hogue', NULL, '2011-08-07 10:00:00', 4, 4, 6, 0, NULL, NULL, NULL),
(57, 'RPG1119303', 'Forest Glen Neighborhood Watch', 'Champions', 'Deborah Ginsberg', NULL, '2011-08-06 17:00:00', 4, 3, 6, 0, NULL, NULL, NULL),
(58, 'RPG1119302', 'Forest Glen Neighborhood Watch', 'Champions', 'Deborah Ginsberg', NULL, '2011-08-04 12:00:00', 4, 3, 6, 1, NULL, NULL, NULL),
(59, 'RPG1119158', 'Great Lakes Avengers IX', 'Hero', 'Tim Weaver', NULL, '2011-08-04 12:00:00', 4, 4, 8, 0, NULL, NULL, NULL),
(60, 'RPG1119159', 'Great Lakes Avengers IX', 'Hero', 'Tim Weaver', NULL, '2011-08-06 12:00:00', 4, 4, 8, 0, NULL, NULL, NULL),
(61, 'RPG1119348', 'Horror Hero 2011', 'Hero', 'Brian Grau', NULL, '2011-08-06 21:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(62, 'RPG1119347', 'Horror Hero 2011', 'Hero', 'Brian Grau', NULL, '2011-08-06 12:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(63, 'RPG1119346', 'Horror Hero 2011', 'Hero', 'Brian Grau', NULL, '2011-08-05 21:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(64, 'RPG1119345', 'Horror Hero 2011', 'Hero', 'Brian Grau', NULL, '2011-08-04 21:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(65, 'LRP1119299', 'Immortal Himsati: Gods and Gangsters', 'Immortal Invisible War', 'Richard Don', NULL, '2011-08-05 19:00:00', 5, 12, 15, 10, NULL, NULL, NULL),
(66, 'RPG1119300', 'Immortal Himsati: New Haven Chronicles', 'Immortal Invisible War', 'Richard Don', NULL, '2011-08-04 12:00:00', 4, 5, 7, 6, NULL, NULL, NULL),
(67, 'RPG1119301', 'Immortal Himsati: New Haven Chronicles', 'Immortal Invisible War', 'Richard Don', NULL, '2011-08-06 12:00:00', 4, 5, 7, 3, NULL, NULL, NULL),
(68, 'RPG1119314', 'July 1943, Sicily - WW2 Straight Up & Dry, Sicilian style', 'Dungeons & Dragons', 'Mark Gallicchio', NULL, '2011-08-05 17:00:00', 4, 4, 6, 5, NULL, NULL, NULL),
(69, 'RPG1119144', 'Kung Fu Justice: Manhatten United', 'Mutants & Masterminds', 'David Simkins', NULL, '2011-08-05 08:00:00', 4, 4, 6, 0, NULL, NULL, NULL),
(70, 'RPG1119145', 'Kung Fu Justice: Manhatten United', 'Mutants & Masterminds', 'David Simkins', NULL, '2011-08-05 17:00:00', 4, 4, 6, 0, NULL, NULL, NULL),
(71, 'BGM1119310', 'Last Night on Earth: The Zombie Game', 'Last Night on Earth Board Game', 'Kim Humphreys', NULL, '2011-08-04 08:00:00', 2, 5, 8, 0, NULL, NULL, NULL),
(72, 'RPG1119146', 'Lost City', 'Hero', 'Kerry Connell', NULL, '2011-08-04 21:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(73, 'RPG1119395', 'Mall Hero - Night of the Mannequins', 'Hero', 'Todd Hogue', NULL, '2011-08-06 08:00:00', 4, 6, 8, 0, NULL, NULL, NULL),
(74, 'RPG1119392', 'Mall Hero - Night of the Mannequins', 'Hero', 'Todd Hogue', NULL, '2011-08-04 12:00:00', 4, 6, 8, 1, NULL, NULL, NULL),
(75, 'RPG1119394', 'Mall Hero - Night of the Mannequins', 'Hero', 'Todd Hogue', NULL, '2011-08-04 17:00:00', 4, 6, 8, 5, NULL, NULL, NULL),
(76, 'RPG1119331', 'Mass Effect: Forbidden Planet', 'Wild Talents', 'Nathan Nolan', NULL, '2011-08-05 21:00:00', 4, 4, 6, 0, NULL, NULL, NULL),
(77, 'LRP1119319', 'Never Say Nevernever Again', 'home rules', 'Robert Wiener, Rachel Wiener', NULL, '2011-08-05 18:00:00', 6, 16, 32, 0, NULL, NULL, NULL),
(78, 'RPG1118907', 'New York Knights', 'Justice Inc.', 'David Collins', NULL, '2011-08-04 21:00:00', 4, 4, 9, 0, NULL, NULL, NULL),
(79, 'BGM1119336', 'Nightmare Before Christmas Party Game', 'Nightmare Before Christmas Party Game', 'Kimberly Humphreys', NULL, '2011-08-05 08:00:00', 2, 2, 6, 0, NULL, NULL, NULL),
(80, 'RPG1119335', 'No Glory', 'Godlike', 'Derry Simmel, Joseph Donaghue, Nathan Nolan', NULL, '2011-08-05 17:00:00', 4, 4, 6, 0, NULL, NULL, NULL),
(81, 'RPG1119317', 'Not More Caves! Why Can''t We Fight in Sunshine for Once?', 'HackMaster', 'Mark Gallicchio, Ian Malony', NULL, '2011-08-05 08:00:00', 4, 4, 5, 0, NULL, NULL, NULL),
(82, 'RPG1119316', 'Not More Caves! Why Can''t We Fight in Sunshine for Once?', 'Dragon Age', 'Mark Gallicchio, Ian Malony', NULL, '2011-08-04 08:00:00', 4, 4, 5, 0, NULL, NULL, NULL),
(83, 'RPG1119391', 'One Must Fall', 'Deathwatch', 'Don Flinspach', NULL, '2011-08-06 21:00:00', 4, 3, 4, 0, NULL, NULL, NULL),
(84, 'RPG1119305', 'Our Town', 'Buffy the Vampire Slayer', 'Deborah Ginsberg', NULL, '2011-08-05 17:00:00', 4, 3, 6, 0, NULL, NULL, NULL),
(85, 'RPG1119304', 'Our Town', 'Buffy the Vampire Slayer', 'Deborah Ginsberg', NULL, '2011-08-04 17:00:00', 4, 3, 6, 0, NULL, NULL, NULL),
(86, 'RPG1119980', 'Out of Time', 'Hero', 'Susan Grau', NULL, '2011-08-06 21:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(87, 'RPG1119978', 'Out of Time', 'Hero', 'Susan Grau', NULL, '2011-08-04 21:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(88, 'RPG1119313', 'OZ, The Sequel - Out of OZ land and into the Wonderland!', 'Dungeons & Dragons', 'Mark Gallicchio', NULL, '2011-08-04 17:00:00', 4, 4, 6, 0, NULL, NULL, NULL),
(89, 'ZED1119339', 'Photo Quest Awards Ceremony', 'home rules', 'Kimberly Humphreys', NULL, '2011-08-07 11:00:00', 1, 2, 25, 25, NULL, NULL, NULL),
(90, 'ZED1119337', 'Photo Quest Check-In', 'home rules', 'Kimberly Humphreys', NULL, '2011-08-04 09:00:00', 4, 2, 25, 0, NULL, NULL, NULL),
(91, 'ZED1119338', 'Photo Quest Check-Out', 'home rules', 'Kimberly Humphreys', NULL, '2011-08-06 20:00:00', 1, 2, 25, 25, NULL, NULL, NULL),
(92, 'RPG1119315', 'Rabbits Unite! Find the Lady With the Torch and Save the World', 'Bunnies & Burrows', 'Mark Gallicchio, Ian Malony', NULL, '2011-08-06 08:00:00', 4, 4, 5, 0, NULL, NULL, NULL),
(93, 'RPG1119361', 'Ravens 2011', 'Hero', 'Richard Bowers', NULL, '2011-08-04 12:00:00', 4, 4, 7, 5, NULL, NULL, NULL),
(94, 'RPG1119366', 'Ravens 2011', 'Hero', 'Richard Bowers', NULL, '2011-08-06 17:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(95, 'RPG1119363', 'Ravens 2011', 'Hero', 'Richard Bowers', NULL, '2011-08-05 08:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(96, 'RPG1119349', 'Sky High 4 - Senior Cut Day', 'Hero', 'Michael Malony, David Simkins, Sean Malony', NULL, '2011-08-04 17:00:00', 4, 8, 16, 3, NULL, NULL, NULL),
(97, 'RPG1119351', 'Sky High 4 - Senior Cut Day', 'Hero', 'Michael Malony, David Simkins, Sean Malony', NULL, '2011-08-06 12:00:00', 4, 5, 8, 1, NULL, NULL, NULL),
(98, 'RPG1119350', 'Sky High 4 - Senior Cut Day', 'Hero', 'Michael Malony, David Simkins, Sean Malony', NULL, '2011-08-05 12:00:00', 4, 5, 8, 0, NULL, NULL, NULL),
(99, 'RPG1119332', 'Star Wars Knights of the Old Republic: The Hidden Fortress', 'Wild Talents', 'Nathan Nolan', NULL, '2011-08-04 21:00:00', 4, 4, 6, 0, NULL, NULL, NULL),
(100, 'RPG1119399', 'Steampunk Supers Chapter 4', 'Hero', 'David Cave', NULL, '2011-08-04 12:00:00', 4, 6, 8, 3, NULL, NULL, NULL),
(101, 'RPG1119400', 'Steampunk Supers Chapter 5', 'Hero', 'David Cave', NULL, '2011-08-05 12:00:00', 4, 6, 8, 3, NULL, NULL, NULL),
(102, 'RPG1119401', 'Steampunk Supers Chapter 6', 'Hero', 'David Cave', NULL, '2011-08-06 12:00:00', 4, 6, 8, 7, NULL, NULL, NULL),
(103, 'RPG1119389', 'The Call of the Depths', 'Rogue Trader', 'Don Flinspach', NULL, '2011-08-04 21:00:00', 4, 3, 4, 0, NULL, NULL, NULL),
(104, 'RPG1118900', 'The Defiant - The Abyss Gazes Also', 'Champions', 'Chad Brinkley', NULL, '2011-08-04 08:00:00', 4, 5, 6, 0, NULL, NULL, NULL),
(105, 'RPG1118903', 'The Defiant - The Abyss Gazes Also', 'Champions', 'Chad Brinkley', NULL, '2011-08-05 12:00:00', 4, 5, 6, 0, NULL, NULL, NULL),
(106, 'RPG1118902', 'The Defiant - The Abyss Gazes Also', 'Champions', 'Chad Brinkley', NULL, '2011-08-04 17:00:00', 4, 5, 6, 0, NULL, NULL, NULL),
(107, 'LRP1118916', 'THE DUSK SAGA– Welcome to Sunnyburg?', 'Courting Murder', 'David Collins, Kelly O''Donoghue', NULL, '2011-08-07 12:00:00', 4, 10, 25, 5, NULL, NULL, NULL),
(108, 'RPG1119390', 'The Final Sunset', 'Dark Heresy', 'Don Flinspach', NULL, '2011-08-05 21:00:00', 4, 3, 4, 0, NULL, NULL, NULL),
(109, 'SEM1119326', 'The First Time Game Master', '', 'Kelly O''Donoghue, Donald Prust', NULL, '2011-08-04 12:00:00', 2, 2, 50, 18, NULL, NULL, NULL),
(110, 'RPG1119318', 'The League of UnExtraordinary Gentlemen', 'Hero', 'Robert Wiener', NULL, '2011-08-04 08:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(111, 'RPG1119325', 'The Young Heroes - KBTN', 'Champions', 'Derry Simmel, Donald Prust', NULL, '2011-08-06 12:00:00', 4, 4, 14, 11, NULL, NULL, NULL),
(112, 'RPG1119324', 'The Young Heroes - KBTN', 'Champions', 'Derry Simmel, Donald Prust', NULL, '2011-08-05 12:00:00', 4, 4, 14, 8, NULL, NULL, NULL),
(113, 'RPG1119323', 'The Young Heroes - KBTN', 'Champions', 'Derry Simmel, Donald Prust', NULL, '2011-08-04 17:00:00', 4, 4, 14, 8, NULL, NULL, NULL),
(114, 'RPG1119975', 'Through the LCD Screen', 'Hero', 'Susan Grau', NULL, '2011-08-05 08:00:00', 4, 4, 7, 0, NULL, NULL, NULL),
(115, 'RPG1119974', 'Through the LCD Screen', 'Hero', 'Susan Grau', NULL, '2011-08-04 12:00:00', 4, 4, 7, 2, NULL, NULL, NULL),
(116, 'ZED1119308', 'Who’s Line Is It Anyway: Clean As You Have To Be', '', 'Kim Humphreys, Kimberly Humphreys', NULL, '2011-08-06 12:00:00', 2, 10, 50, 6, NULL, NULL, NULL),
(117, 'ZED1119306', 'Who’s Line Is It Anyway: Naughty As You Wannabe', '', 'Kim Humphreys, Kimberly Humphreys', NULL, '2011-08-04 23:00:00', 2, 10, 50, 0, NULL, NULL, NULL),
(118, 'ZED1119307', 'Who’s Line Is It Anyway: Naughty As You Wannabe', '', 'Kim Humphreys, Kimberly Humphreys', NULL, '2011-08-07 00:00:00', 2, 10, 50, 0, NULL, NULL, NULL),
(119, 'RPG1118904', 'Zombie Land - Office Space Edition', 'Shotgun Diaries', 'Chad Brinkley', NULL, '2011-08-05 21:00:00', 4, 6, 8, 0, 3, 3, 6);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
