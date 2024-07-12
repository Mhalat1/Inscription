-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 12 juin 2024 à 15:09
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `user_management`
--

-- --------------------------------------------------------

--
-- Structure de la table `permission`
--

DROP TABLE IF EXISTS `permission`;
CREATE TABLE IF NOT EXISTS `permission` (
  `id` int DEFAULT NULL,
  `permission_name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `permission`
--

INSERT INTO `permission` (`id`, `permission_name`) VALUES
(NULL, 'create user'),
(NULL, 'read user'),
(NULL, 'update user'),
(NULL, 'delete user'),
(NULL, 'create role'),
(NULL, 'read role'),
(NULL, 'update role'),
(NULL, 'delete role'),
(NULL, 'create permission'),
(NULL, 'read permission'),
(NULL, 'update permission'),
(NULL, 'delete permission');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `role_name`) VALUES
(NULL, 'Admin'),
(NULL, 'Editor'),
(NULL, 'Viewer'),
(NULL, 'Contributor'),
(NULL, 'Moderator');

-- --------------------------------------------------------

--
-- Structure de la table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE IF NOT EXISTS `role_permission` (
  `role_id` int DEFAULT NULL,
  `permission_id` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `role_permission`
--

INSERT INTO `role_permission` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(2, 2),
(2, 6),
(2, 10),
(3, 2),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 6),
(5, 7),
(5, 8);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(18, 'user1', 'user1@example.com', 'password1', '2024-06-12 12:47:38'),
(19, 'user2', 'user2@example.com', 'password2', '2024-06-12 12:47:38'),
(20, 'user3', 'user3@example.com', 'password3', '2024-06-12 12:47:38'),
(21, 'user4', 'user4@example.com', 'password4', '2024-06-12 12:47:38'),
(22, 'user5', 'user5@example.com', 'password5', '2024-06-12 12:47:38'),
(23, 'user6', 'user6@example.com', 'password6', '2024-06-12 12:47:38'),
(24, 'user7', 'user7@example.com', 'password7', '2024-06-12 12:47:38'),
(25, 'user8', 'user8@example.com', 'password8', '2024-06-12 12:47:38'),
(26, 'user9', 'user9@example.com', 'password9', '2024-06-12 12:47:38'),
(27, 'user10', 'user10@example.com', 'password10', '2024-06-12 12:47:38');

-- --------------------------------------------------------

--
-- Structure de la table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(3, 3),
(5, 5),
(7, 3),
(10, 5),
(10, 4),
(10, 4),
(10, 4),
(10, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
