-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 16 sep. 2021 à 11:17
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laboutiquefrancaise`
--

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `address`
--

INSERT INTO `address` (`id`, `user_id`, `name`, `firstname`, `lastname`, `company`, `address`, `postal`, `city`, `country`, `phone`) VALUES
(1, 3, 'Adresse de nour', 'Nour', 'Hassan', 'Hassan.Corporation', '37 quai des carrières', '94220', 'Charenton-le-pont', 'FR', '0783099200'),
(3, 5, 'Adresse de John', 'John', 'Doe', NULL, '33 Place Bobillot', '94220', 'Charenton-le-pont', 'FR', '0783099200');

-- --------------------------------------------------------

--
-- Structure de la table `carrier`
--

CREATE TABLE `carrier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carrier`
--

INSERT INTO `carrier` (`id`, `name`, `description`, `price`) VALUES
(1, 'Colissimo', 'Profitez d\'une livraison premium avec un colis chez vous dans les 72 prochaines heures .', 990),
(2, 'Chronopost', 'Profitez de la livraison express en 24H!', 1490);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Manteaux'),
(2, 'Bonnet'),
(3, 'T-shirt'),
(4, 'Écharpe');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210618163128', '2021-06-18 18:34:30', 203),
('DoctrineMigrations\\Version20210619180137', '2021-06-19 20:02:00', 187),
('DoctrineMigrations\\Version20210625190252', '2021-06-25 21:03:34', 41),
('DoctrineMigrations\\Version20210627184513', '2021-06-27 20:45:47', 376),
('DoctrineMigrations\\Version20210710093805', '2021-07-10 11:38:41', 287),
('DoctrineMigrations\\Version20210714125150', '2021-07-14 14:52:17', 210),
('DoctrineMigrations\\Version20210714130726', '2021-07-14 15:07:47', 289),
('DoctrineMigrations\\Version20210722165712', '2021-07-22 18:57:45', 512),
('DoctrineMigrations\\Version20210803081905', '2021-08-03 10:56:32', 197),
('DoctrineMigrations\\Version20210807150520', '2021-08-07 17:05:37', 422),
('DoctrineMigrations\\Version20210816140043', '2021-08-16 16:01:00', 417),
('DoctrineMigrations\\Version20210821141427', '2021-08-21 16:14:49', 147),
('DoctrineMigrations\\Version20210902025650', '2021-09-02 04:57:14', 132),
('DoctrineMigrations\\Version20210903061610', '2021-09-03 08:16:54', 175);

-- --------------------------------------------------------

--
-- Structure de la table `header`
--

CREATE TABLE `header` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `illustration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `header`
--

INSERT INTO `header` (`id`, `title`, `content`, `btn_title`, `btn_url`, `illustration`) VALUES
(1, 'Nouvelle collection', 'Découvrez notre collection hiver 2020 crée par nos artisans et nos couturiers.', 'Découvrir', '/nos-produits', 'f9a13199dc44ec564c3ab84309fd0e4de944bafc.jpg'),
(2, 'Promo de la rentrée', 'Découvrez toutes les offres promo de la rentrée sur La Boutique Fraçaise', 'Découvrir', '/nos-produits', '43788b6c6f692358e84d44139dca822e39dd8a3d.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `utilisateur_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `carrier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_price` double NOT NULL,
  `delivery` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order`
--

INSERT INTO `order` (`id`, `utilisateur_id`, `created_at`, `carrier_name`, `carrier_price`, `delivery`, `reference`, `stripe_session_id`, `state`) VALUES
(2, 3, '2021-07-24 15:57:03', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '', NULL, 0),
(3, 3, '2021-08-03 10:56:43', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '03082021-610904cb1200b', NULL, 0),
(4, 3, '2021-08-03 10:56:58', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '03082021-610904dad42a8', NULL, 0),
(5, 3, '2021-08-03 10:57:11', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '03082021-610904e771273', NULL, 0),
(6, 3, '2021-08-03 10:57:48', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '03082021-6109050ce7db4', NULL, 0),
(7, 3, '2021-08-03 11:04:14', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '03082021-6109068e11342', NULL, 0),
(8, 3, '2021-08-03 11:07:24', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '03082021-6109074cbc247', NULL, 0),
(9, 3, '2021-08-03 11:11:56', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '03082021-6109085c7586e', NULL, 0),
(10, 3, '2021-08-03 11:15:57', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '03082021-6109094da4661', NULL, 0),
(11, 3, '2021-08-03 11:21:08', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '03082021-61090a841d31c', NULL, 0),
(12, 3, '2021-08-03 11:24:11', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '03082021-61090b3b59bcb', NULL, 0),
(13, 3, '2021-08-03 11:25:07', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '03082021-61090b731e7b8', NULL, 0),
(14, 3, '2021-08-03 11:31:10', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '03082021-61090cdea4656', NULL, 0),
(15, 3, '2021-08-03 11:31:36', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '03082021-61090cf8e391b', NULL, 0),
(16, 3, '2021-08-03 11:33:43', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '03082021-61090d7731812', NULL, 0),
(17, 3, '2021-08-03 12:05:30', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '03082021-610914ea6d059', NULL, 0),
(18, 3, '2021-08-03 12:09:09', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '03082021-610915c501cbe', NULL, 0),
(19, 3, '2021-08-07 16:47:46', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '07082021-610e9d12d76a8', NULL, 0),
(20, 3, '2021-08-07 16:48:58', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '07082021-610e9d5a1ad27', NULL, 0),
(21, 3, '2021-08-07 16:50:18', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '07082021-610e9daa413aa', NULL, 0),
(22, 3, '2021-08-07 16:50:44', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '07082021-610e9dc487c64', NULL, 0),
(23, 3, '2021-08-07 16:53:40', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '07082021-610e9e74cc1db', NULL, 0),
(24, 3, '2021-08-07 16:56:27', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '07082021-610e9f1b9b363', NULL, 0),
(25, 3, '2021-08-07 16:58:05', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '07082021-610e9f7da8a93', NULL, 0),
(26, 3, '2021-08-07 17:08:18', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '07082021-610ea1e2c5bad', 'cs_test_b1iJHxI3BTEsgJKOQyTu2oS5f4UONikAUbS3jVd7o1dLIDqoDuHv6OUvaa', 0),
(27, 3, '2021-08-07 17:15:18', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '07082021-610ea3860ce09', 'cs_test_b1dFeFm7HXENmXUFkog2g4IoJ7sL7G36WCqy7Gx8bEKxoS2PO5Wrzs1U8q', 0),
(28, 3, '2021-08-07 17:24:11', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '07082021-610ea59b00307', 'cs_test_b1qqLAYgql6NW9IHP76qgiF06PecwYvWYgIeqRwv8km7gOvtP9hyPN5WvD', 0),
(29, 3, '2021-08-08 16:35:07', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '08082021-610feb9b65268', 'cs_test_b1teRDXk9DgCYmGdZd5HGhlbyB3GyexRHBqrHfY2QOtoU7HoyFzIFVUpel', 0),
(30, 3, '2021-08-08 17:11:01', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '08082021-610ff405e6c61', 'cs_test_b1Ncqo8BAFnVt2yuKVw6eCZ8jflu2Bw0qjN0xZa9FyyvQ4jQd04crPcgqv', 0),
(31, 3, '2021-08-08 17:12:58', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '08082021-610ff47a43332', 'cs_test_b11vPn7GarkmHwfkU3mtnF7pHIip6bZZDdFuVEyC3Di3L0NdYJa9mkv9ER', 0),
(32, 3, '2021-08-08 17:35:02', 'Colissimo', 9.9, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '08082021-610ff9a6c16eb', 'cs_test_b1djgyLqjDNMVjOG3CREaWx7mq7wfCNyDtbVO0QIq2TJ4E57a8ePereVzx', 0),
(33, 3, '2021-08-09 17:01:18', 'Colissimo', 990, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '09082021-6111433eea32b', 'cs_test_b1NOMuQgFeUh8oBhvfMFGcfhqfrqfNPk0CfbGkRD3MQkfkJDtbzOtz7qCZ', 0),
(34, 3, '2021-08-11 14:46:02', 'Chronopost', 1490, '<br>Hassan.Corporation<br>37 quai des carrières<br>94220 Charenton-le-pont<br>FR<br>37 quai des carrières', '11082021-6113c68a13eb8', 'cs_test_b1Q5ZrrKx2PAwZ0t7bWSt56losxkolEMfuRgWVcPhx6Wt8V1olkhj2kGrr', 2),
(35, 5, '2021-08-12 15:39:02', 'Colissimo', 990, 'JohnDoe<br>0783099200<br>33 Place Bobillot<br>94220 Charenton-le-pont<br>FR<br>33 Place Bobillot', '12082021-61152476c8614', 'cs_test_b1YvcZIpWk4EoKMlBMdGRK8E2KhDZN2PJLmi2kGBdYluc72nBeIkrStOVh', 2);

-- --------------------------------------------------------

--
-- Structure de la table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `my_order_id` int(11) NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order_details`
--

INSERT INTO `order_details` (`id`, `my_order_id`, `product`, `quantity`, `price`, `total`) VALUES
(1, 2, 'Bonnet rouge', 1, 900, 900),
(2, 3, 'Bonnet rouge', 1, 900, 900),
(3, 3, 'Le manteau de soirée', 1, 6900, 6900),
(4, 4, 'Bonnet rouge', 1, 900, 900),
(5, 4, 'Le manteau de soirée', 1, 6900, 6900),
(6, 5, 'Bonnet rouge', 1, 900, 900),
(7, 5, 'Le manteau de soirée', 1, 6900, 6900),
(8, 6, 'Bonnet rouge', 1, 900, 900),
(9, 6, 'Le manteau de soirée', 1, 6900, 6900),
(10, 7, 'Bonnet rouge', 1, 900, 900),
(11, 7, 'Le manteau de soirée', 1, 6900, 6900),
(12, 8, 'Bonnet rouge', 1, 900, 900),
(13, 8, 'Le manteau de soirée', 1, 6900, 6900),
(14, 9, 'Bonnet rouge', 1, 900, 900),
(15, 9, 'Le manteau de soirée', 1, 6900, 6900),
(16, 10, 'Bonnet rouge', 1, 900, 900),
(17, 10, 'Le manteau de soirée', 1, 6900, 6900),
(18, 11, 'Bonnet rouge', 1, 900, 900),
(19, 11, 'Le manteau de soirée', 1, 6900, 6900),
(20, 12, 'Bonnet rouge', 1, 900, 900),
(21, 12, 'Le manteau de soirée', 1, 6900, 6900),
(22, 13, 'Bonnet rouge', 1, 900, 900),
(23, 13, 'Le manteau de soirée', 1, 6900, 6900),
(24, 14, 'Bonnet rouge', 1, 900, 900),
(25, 14, 'Le manteau de soirée', 1, 6900, 6900),
(26, 15, 'Bonnet rouge', 1, 900, 900),
(27, 15, 'Le manteau de soirée', 1, 6900, 6900),
(28, 16, 'Bonnet rouge', 1, 900, 900),
(29, 16, 'Le manteau famille', 1, 7990, 7990),
(30, 17, 'Bonnet rouge', 1, 900, 900),
(31, 18, 'Bonnet rouge', 1, 900, 900),
(32, 19, 'Bonnet rouge', 1, 900, 900),
(33, 20, 'Bonnet rouge', 1, 900, 900),
(34, 21, 'Bonnet rouge', 1, 900, 900),
(35, 22, 'Bonnet rouge', 1, 900, 900),
(36, 23, 'Bonnet rouge', 1, 900, 900),
(37, 24, 'Bonnet rouge', 1, 900, 900),
(38, 25, 'Bonnet rouge', 1, 900, 900),
(39, 26, 'Bonnet rouge', 1, 900, 900),
(40, 27, 'Bonnet rouge', 1, 900, 900),
(41, 28, 'Le Bonnet du skieur', 1, 1200, 1200),
(42, 28, 'Le manteau de soirée', 1, 6900, 6900),
(43, 29, 'Bonnet rouge', 1, 900, 900),
(44, 30, 'Bonnet rouge', 2, 900, 1800),
(45, 31, 'Bonnet rouge', 2, 900, 1800),
(46, 32, 'Bonnet rouge', 2, 900, 1800),
(47, 33, 'Bonnet rouge', 1, 900, 900),
(48, 34, 'Le manteau de soirée', 1, 6900, 6900),
(49, 35, 'Le manteau de soirée', 1, 6900, 6900);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `illustration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `is_best` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `slug`, `illustration`, `subtitle`, `description`, `prix`, `is_best`) VALUES
(2, 2, 'Bonnet rouge', 'bonnet-rouge', '10db64132cd50e4d752d1bd883417c52cad44fe3.jpg', 'Le bonnet parfait pour l\'hiver', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec sapien posuere, blandit lorem id, finibus ante. Donec nec magna sed sem venenatis imperdiet. Proin cursus justo a justo lacinia dictum. Sed aliquam congue massa at dictum. Morbi rhoncus aliquet lorem, in sodales leo faucibus sed.', 900, 1),
(3, 2, 'Le Bonnet du skieur', 'le-bonnet-du-skieur', '61d1d53d875f0814db832eae1ab9c46b30f39643.jpg', 'Le bonnet parfait pour le ski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec sapien posuere, blandit lorem id, finibus ante. Donec nec magna sed sem venenatis imperdiet. Proin cursus justo a justo lacinia dictum. Sed aliquam congue massa at dictum. Morbi rhoncus aliquet lorem, in sodales leo faucibus sed.', 1200, 1),
(4, 4, 'L\'écharpe du lover', 'lecharpe-du-lover', 'ea7456a4e0b1a4c44e744166d369a5ae7fef4feb.jpg', 'L\'écharpe parfaite pour les soirée romantique', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec sapien posuere, blandit lorem id, finibus ante. Donec nec magna sed sem venenatis imperdiet. Proin cursus justo a justo lacinia dictum. Sed aliquam congue massa at dictum. Morbi rhoncus aliquet lorem, in sodales leo faucibus sed.', 1900, 1),
(5, 4, 'L\'écharpe du samedi soir', 'lecharpe-du-samedi-soir', 'c66b0ebf3a5cbaa07229e7945b472710704c327d.jpg', 'L\'écharpe parfaite pour vos week-end', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec sapien posuere, blandit lorem id, finibus ante. Donec nec magna sed sem venenatis imperdiet. Proin cursus justo a justo lacinia dictum. Sed aliquam congue massa at dictum. Morbi rhoncus aliquet lorem, in sodales leo faucibus sed.', 1400, 0),
(6, 1, 'Le manteau de soirée', 'le-manteau-de-soiree', 'f94b3725f493029eea9f01e09341d74f555af699.jpg', 'Le manteaux Français pour vos soirée', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec sapien posuere, blandit lorem id, finibus ante. Donec nec magna sed sem venenatis imperdiet. Proin cursus justo a justo lacinia dictum. Sed aliquam congue massa at dictum. Morbi rhoncus aliquet lorem, in sodales leo faucibus sed.', 6900, 1),
(7, 1, 'Le manteau famille', 'le-manteau-famille', '1dd0f440bf768ade6adb92684f6232d7b02d8911.jpg', 'Le manteau pour vos soirée en famille', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec sapien posuere, blandit lorem id, finibus ante. Donec nec magna sed sem venenatis imperdiet. Proin cursus justo a justo lacinia dictum. Sed aliquam congue massa at dictum. Morbi rhoncus aliquet lorem, in sodales leo faucibus sed.', 7990, 0),
(8, 3, 'Le T-shirt manche longue', 'le-t-shirt-manche-longue', '3c24206c411c754d37996283fd426288c260792d.jpg', 'Le t-shirt taillé pour les hommes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec sapien posuere, blandit lorem id, finibus ante. Donec nec magna sed sem venenatis imperdiet. Proin cursus justo a justo lacinia dictum. Sed aliquam congue massa at dictum. Morbi rhoncus aliquet lorem, in sodales leo faucibus sed.', 1490, 0),
(9, 3, 'Le T-shirt basique', 'le-t-shirt-basique', 'bbea8c24fe8c842ce5c3caddf492a6756181df8b.jpg', 'Le basic parfait pour les hommes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec sapien posuere, blandit lorem id, finibus ante. Donec nec magna sed sem venenatis imperdiet. Proin cursus justo a justo lacinia dictum. Sed aliquam congue massa at dictum. Morbi rhoncus aliquet lorem, in sodales leo faucibus sed.', 990, 0);

-- --------------------------------------------------------

--
-- Structure de la table `reset_password`
--

CREATE TABLE `reset_password` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reset_password`
--

INSERT INTO `reset_password` (`id`, `user_id`, `token`, `created_at`) VALUES
(1, 5, '6132d3f18e44a', '2021-09-04 04:03:29'),
(2, 5, '6132d3fe1035a', '2021-09-04 04:03:42'),
(3, 5, '61344ecbdb99d', '2021-09-05 06:59:55');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`) VALUES
(1, 'rayen@outlook.com', '[]', 'sisidu94', 'rayen', 'ben rehouma'),
(2, 'rehouma@outlook.fr', '[]', '$2y$13$uF1avWPmXFSnHLhvA.7TIuKpYHmmIQ.2mcrGSDbhHteIsMThprvvm', 'rehouma', 'ben rehouma'),
(3, 'nour@outlook.fr', '[]', '$2y$13$JKIMytUX4qnzM85XZoePeOVlqHZC.Vesv78MjNTTUckbn.BLtsQAW', 'Nour', 'Hassan'),
(4, 'yenyen94@live.fr', '[]', '$2y$13$IGPwc6NDjx5lZP69Zxs1muIuL7iaA87IqsVBJzDtoNZ96B/PxwjD6', 'John', 'Doe'),
(5, 'rayenebenrehouma@outlook.fr', '[\"ROLE_ADMIN\"]', '$2y$13$WZFfsigD6i9oQiBuXlexKObee9eYBnIhsPDPSAcjyk4JvFwp2AdsC', 'John', 'Doe');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D4E6F81A76ED395` (`user_id`);

--
-- Index pour la table `carrier`
--
ALTER TABLE `carrier`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F5299398FB88E14F` (`utilisateur_id`);

--
-- Index pour la table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_845CA2C1BFCDF877` (`my_order_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD12469DE2` (`category_id`);

--
-- Index pour la table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B9983CE5A76ED395` (`user_id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1D1C63B3E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `carrier`
--
ALTER TABLE `carrier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `header`
--
ALTER TABLE `header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_D4E6F81A76ED395` FOREIGN KEY (`user_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_F5299398FB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK_845CA2C1BFCDF877` FOREIGN KEY (`my_order_id`) REFERENCES `order` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `reset_password`
--
ALTER TABLE `reset_password`
  ADD CONSTRAINT `FK_B9983CE5A76ED395` FOREIGN KEY (`user_id`) REFERENCES `utilisateur` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
