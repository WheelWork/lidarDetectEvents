-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 11 Septembre 2017 à 15:45
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `lidar`
--

-- --------------------------------------------------------

--
-- Structure de la table `detection_events`
--

CREATE TABLE `detection_events` (
  `id` int(11) NOT NULL,
  `detection_time` timestamp NULL DEFAULT NULL,
  `direction` enum('in','out') NOT NULL,
  `zone` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `detection_events`
--

INSERT INTO `detection_events` (`id`, `detection_time`, `direction`, `zone`) VALUES
(56, '2017-09-11 12:53:15', 'out', 'openspace'),
(55, '2017-09-11 12:53:11', 'in', 'openspace'),
(54, '2017-09-11 12:53:03', 'out', 'openspace'),
(53, '2017-09-11 12:52:53', 'in', 'openspace'),
(52, '2017-09-11 12:52:53', 'in', 'openspace'),
(51, '2017-09-11 12:52:21', 'out', 'openspace'),
(50, '2017-09-11 12:52:14', 'in', 'openspace'),
(49, '2017-09-11 12:51:49', 'out', 'openspace'),
(48, '2017-09-11 12:51:25', 'out', 'openspace'),
(47, '2017-09-11 12:51:05', 'in', 'openspace'),
(46, '2017-09-11 12:50:45', 'in', 'openspace'),
(45, '2017-09-11 12:49:58', 'out', 'openspace'),
(44, '2017-09-11 12:49:28', 'in', 'openspace'),
(57, '2017-09-11 12:53:18', 'in', 'openspace'),
(58, '2017-09-11 12:53:20', 'in', 'salleCanap'),
(59, '2017-09-11 12:53:20', 'in', 'openspace'),
(60, '2017-09-11 12:53:22', 'in', 'openspace'),
(61, '2017-09-11 12:53:26', 'in', 'salleCanap'),
(62, '2017-09-11 12:53:28', 'in', 'salleCanap'),
(63, '2017-09-11 12:53:36', 'in', 'openspace'),
(64, '2017-09-11 12:53:36', 'in', 'salleCanap'),
(65, '2017-09-11 12:53:52', 'out', 'openspace'),
(66, '2017-09-11 12:54:09', 'out', 'salleCanap'),
(67, '2017-09-11 12:54:09', 'out', 'openspace'),
(68, '2017-09-11 12:54:21', 'out', 'openspace'),
(69, '2017-09-11 12:54:21', 'out', 'salleCanap'),
(70, '2017-09-11 12:55:57', 'out', 'openspace'),
(71, '2017-09-11 12:55:57', 'out', 'salleCanap'),
(72, '2017-09-11 13:00:53', 'out', 'openspace'),
(73, '2017-09-11 13:00:54', 'in', 'openspace'),
(74, '2017-09-11 13:00:58', 'out', 'openspace'),
(75, '2017-09-11 13:07:43', 'out', 'salleCanap'),
(76, '2017-09-11 13:07:43', 'out', 'openspace'),
(77, '2017-09-11 13:07:44', 'in', 'openspace'),
(78, '2017-09-11 13:07:44', 'out', 'openspace'),
(79, '2017-09-11 13:07:44', 'in', 'salleCanap'),
(80, '2017-09-11 13:07:45', 'in', 'openspace'),
(81, '2017-09-11 13:07:47', 'in', 'openspace'),
(82, '2017-09-11 13:07:49', 'out', 'openspace'),
(83, '2017-09-11 13:07:50', 'in', 'openspace'),
(84, '2017-09-11 13:07:53', 'out', 'salleCanap'),
(85, '2017-09-11 13:07:53', 'out', 'openspace'),
(86, '2017-09-11 13:07:54', 'in', 'openspace'),
(87, '2017-09-11 13:07:54', 'in', 'salleCanap'),
(88, '2017-09-11 13:07:55', 'in', 'openspace'),
(89, '2017-09-11 13:08:16', 'in', 'openspace'),
(90, '2017-09-11 13:08:17', 'in', 'openspace'),
(91, '2017-09-11 13:08:20', 'out', 'salleCanap'),
(92, '2017-09-11 13:08:20', 'out', 'openspace'),
(93, '2017-09-11 13:08:20', 'out', 'openspace'),
(94, '2017-09-11 13:08:20', 'out', 'openspace'),
(95, '2017-09-11 13:08:21', 'in', 'salleCanap'),
(96, '2017-09-11 13:08:21', 'in', 'openspace'),
(97, '2017-09-11 13:08:25', 'out', 'openspace'),
(98, '2017-09-11 13:08:28', 'out', 'openspace'),
(99, '2017-09-11 13:08:36', 'out', 'openspace'),
(100, '2017-09-11 13:08:45', 'out', 'salleCanap'),
(101, '2017-09-11 13:08:45', 'out', 'openspace'),
(102, '2017-09-11 13:10:08', 'in', 'openspace'),
(103, '2017-09-11 13:10:24', 'out', 'openspace'),
(104, '2017-09-11 13:11:01', 'in', 'openspace'),
(105, '2017-09-11 13:11:34', 'out', 'openspace'),
(106, '2017-09-11 13:13:43', 'in', 'openspace'),
(107, '2017-09-11 13:13:50', 'in', 'openspace'),
(108, '2017-09-11 13:14:11', 'out', 'openspace'),
(109, '2017-09-11 13:14:15', 'in', 'openspace'),
(110, '2017-09-11 13:14:17', 'in', 'salleCanap'),
(111, '2017-09-11 13:14:17', 'in', 'openspace'),
(112, '2017-09-11 13:14:27', 'in', 'openspace'),
(113, '2017-09-11 13:14:34', 'in', 'salleCanap'),
(114, '2017-09-11 13:14:34', 'in', 'salleCanap'),
(115, '2017-09-11 13:14:34', 'in', 'openspace'),
(116, '2017-09-11 13:14:34', 'in', 'openspace'),
(117, '2017-09-11 13:14:39', 'out', 'openspace'),
(118, '2017-09-11 13:14:39', 'out', 'salleCanap'),
(119, '2017-09-11 13:14:39', 'out', 'openspace'),
(120, '2017-09-11 13:14:42', 'out', 'salleCanap'),
(121, '2017-09-11 13:14:44', 'out', 'salleCanap'),
(122, '2017-09-11 13:14:51', 'out', 'openspace'),
(123, '2017-09-11 13:14:52', 'in', 'openspace'),
(124, '2017-09-11 13:14:56', 'in', 'openspace'),
(125, '2017-09-11 13:15:04', 'in', 'openspace'),
(126, '2017-09-11 13:15:07', 'in', 'openspace'),
(127, '2017-09-11 13:15:09', 'out', 'openspace'),
(128, '2017-09-11 13:15:11', 'in', 'salleCanap'),
(129, '2017-09-11 13:15:12', 'out', 'salleCanap'),
(130, '2017-09-11 13:15:12', 'out', 'openspace'),
(131, '2017-09-11 13:15:16', 'out', 'openspace'),
(132, '2017-09-11 13:15:20', 'out', 'openspace'),
(133, '2017-09-11 13:15:27', 'out', 'openspace'),
(134, '2017-09-11 13:15:29', 'out', 'openspace'),
(135, '2017-09-11 13:17:00', 'in', 'openspace'),
(136, '2017-09-11 13:17:23', 'in', 'openspace'),
(137, '2017-09-11 13:17:30', 'in', 'openspace'),
(138, '2017-09-11 13:17:35', 'out', 'openspace'),
(139, '2017-09-11 13:17:37', 'out', 'openspace'),
(140, '2017-09-11 13:17:50', 'out', 'openspace'),
(141, '2017-09-11 13:20:46', 'out', 'openspace'),
(142, '2017-09-11 13:22:20', 'in', 'openspace'),
(143, '2017-09-11 13:28:43', 'in', 'openspace'),
(144, '2017-09-11 13:28:44', 'out', 'salleCanap'),
(145, '2017-09-11 13:28:44', 'out', 'openspace'),
(146, '2017-09-11 13:28:45', 'in', 'openspace'),
(147, '2017-09-11 13:28:45', 'in', 'salleCanap'),
(148, '2017-09-11 13:28:47', 'in', 'openspace'),
(149, '2017-09-11 13:28:49', 'in', 'openspace'),
(150, '2017-09-11 13:28:52', 'in', 'MacBookPro'),
(151, '2017-09-11 13:28:52', 'out', 'openspace'),
(152, '2017-09-11 13:28:53', 'out', 'MacBookPro'),
(153, '2017-09-11 13:28:55', 'out', 'openspace'),
(154, '2017-09-11 13:29:10', 'out', 'salleCanap'),
(155, '2017-09-11 13:29:10', 'out', 'openspace'),
(156, '2017-09-11 13:29:20', 'in', 'openspace'),
(157, '2017-09-11 13:29:22', 'in', 'openspace'),
(158, '2017-09-11 13:29:23', 'out', 'openspace'),
(159, '2017-09-11 13:29:25', 'in', 'openspace'),
(160, '2017-09-11 13:29:27', 'out', 'openspace'),
(161, '2017-09-11 13:29:31', 'out', 'openspace'),
(162, '2017-09-11 13:29:31', 'out', 'openspace'),
(163, '2017-09-11 13:31:23', 'in', 'openspace'),
(164, '2017-09-11 13:31:27', 'in', 'openspace'),
(165, '2017-09-11 13:31:29', 'in', 'openspace'),
(166, '2017-09-11 13:31:31', 'out', 'openspace'),
(167, '2017-09-11 13:31:35', 'out', 'openspace'),
(168, '2017-09-11 13:31:43', 'in', 'openspace'),
(169, '2017-09-11 13:31:48', 'in', 'openspace'),
(170, '2017-09-11 13:31:52', 'in', 'openspace'),
(171, '2017-09-11 13:31:52', 'out', 'openspace'),
(172, '2017-09-11 13:31:56', 'out', 'openspace'),
(173, '2017-09-11 13:31:59', 'out', 'openspace'),
(174, '2017-09-11 13:32:02', 'out', 'openspace'),
(175, '2017-09-11 13:32:53', 'in', 'openspace'),
(176, '2017-09-11 13:33:00', 'out', 'openspace'),
(177, '2017-09-11 13:33:00', 'in', 'openspace'),
(178, '2017-09-11 13:33:32', 'out', 'openspace'),
(179, '2017-09-11 13:33:56', 'in', 'openspace'),
(180, '2017-09-11 13:33:57', 'in', 'openspace'),
(181, '2017-09-11 13:34:00', 'in', 'openspace'),
(182, '2017-09-11 13:34:10', 'out', 'openspace'),
(183, '2017-09-11 13:34:12', 'out', 'openspace'),
(184, '2017-09-11 13:34:18', 'in', 'MacBookPro'),
(185, '2017-09-11 13:34:19', 'out', 'MacBookPro'),
(186, '2017-09-11 13:34:20', 'in', 'MacBookPro'),
(187, '2017-09-11 13:34:21', 'out', 'openspace'),
(188, '2017-09-11 13:34:27', 'out', 'MacBookPro'),
(189, '2017-09-11 13:34:31', 'in', 'MacBookPro'),
(190, '2017-09-11 13:34:43', 'out', 'MacBookPro'),
(191, '2017-09-11 13:35:20', 'in', 'MacBookPro'),
(192, '2017-09-11 13:35:26', 'out', 'MacBookPro'),
(193, '2017-09-11 13:35:34', 'in', 'openspace'),
(194, '2017-09-11 13:35:36', 'in', 'openspace'),
(195, '2017-09-11 13:35:40', 'in', 'openspace'),
(196, '2017-09-11 13:35:40', 'in', 'openspace'),
(197, '2017-09-11 13:35:44', 'in', 'salleCanap'),
(198, '2017-09-11 13:36:02', 'out', 'openspace'),
(199, '2017-09-11 13:36:05', 'out', 'openspace'),
(200, '2017-09-11 13:36:18', 'out', 'openspace'),
(201, '2017-09-11 13:36:23', 'out', 'salleCanap'),
(202, '2017-09-11 13:36:23', 'out', 'openspace'),
(203, '2017-09-11 13:37:15', 'in', 'openspace'),
(204, '2017-09-11 13:37:17', 'in', 'openspace'),
(205, '2017-09-11 13:37:20', 'in', 'openspace'),
(206, '2017-09-11 13:37:21', 'out', 'openspace'),
(207, '2017-09-11 13:37:24', 'in', 'openspace'),
(208, '2017-09-11 13:37:28', 'out', 'openspace'),
(209, '2017-09-11 13:37:50', 'out', 'openspace'),
(210, '2017-09-11 13:37:51', 'out', 'openspace'),
(211, '2017-09-11 13:38:57', 'out', 'openspace'),
(212, '2017-09-11 13:39:45', 'in', 'openspace'),
(213, '2017-09-11 13:39:49', 'in', 'openspace'),
(214, '2017-09-11 13:39:55', 'in', 'salleCanap'),
(215, '2017-09-11 13:39:56', 'out', 'openspace'),
(216, '2017-09-11 13:40:21', 'out', 'openspace'),
(217, '2017-09-11 13:40:21', 'out', 'salleCanap'),
(218, '2017-09-11 13:40:57', 'in', 'openspace'),
(219, '2017-09-11 13:41:00', 'in', 'openspace'),
(220, '2017-09-11 13:41:07', 'in', 'openspace'),
(221, '2017-09-11 13:41:12', 'out', 'openspace'),
(222, '2017-09-11 13:41:14', 'out', 'openspace'),
(223, '2017-09-11 13:41:18', 'in', 'openspace'),
(224, '2017-09-11 13:42:33', 'in', 'openspace'),
(225, '2017-09-11 13:42:37', 'in', 'openspace'),
(226, '2017-09-11 13:42:39', 'in', 'openspace'),
(227, '2017-09-11 13:42:42', 'out', 'openspace'),
(228, '2017-09-11 13:42:43', 'in', 'MacBookPro'),
(229, '2017-09-11 13:42:44', 'out', 'MacBookPro'),
(230, '2017-09-11 13:42:44', 'out', 'openspace'),
(231, '2017-09-11 13:43:15', 'out', 'openspace');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `detection_events`
--
ALTER TABLE `detection_events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `detection_events`
--
ALTER TABLE `detection_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
