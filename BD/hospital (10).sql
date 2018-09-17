-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-09-2018 a las 21:01:07
-- Versión del servidor: 5.7.19
-- Versión de PHP: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hospital`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'telefono', 'text', 'Telefono', 0, 1, 1, 1, 1, 1, NULL, 2),
(25, 4, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, NULL, 3),
(26, 4, 'horario', 'text', 'Horario', 0, 1, 1, 1, 1, 1, NULL, 4),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 5),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(29, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'titulouno', 'text', 'Titulouno', 1, 1, 1, 1, 1, 1, NULL, 2),
(31, 5, 'titulodos', 'text', 'Titulodos', 1, 1, 1, 1, 1, 1, NULL, 3),
(32, 5, 'titulotres', 'text', 'Titulotres', 0, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'fondo', 'image', 'Fondo', 1, 1, 1, 1, 1, 1, NULL, 5),
(34, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(35, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(36, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(37, 6, 'titulouno', 'text', 'Titulouno', 1, 1, 1, 1, 1, 1, NULL, 2),
(38, 6, 'titulodos', 'text', 'Titulodos', 1, 1, 1, 1, 1, 1, NULL, 3),
(39, 6, 'titulotres', 'text', 'Titulotres', 0, 1, 1, 1, 1, 1, NULL, 4),
(40, 6, 'fondo', 'image', 'Fondo (Tamaño ideal  (1920 x 1100)px', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 5),
(41, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(42, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(43, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(44, 7, 'titulouno', 'text', 'Titulouno', 1, 1, 1, 1, 1, 1, NULL, 2),
(45, 7, 'descripcionuno', 'text_area', 'Descripcion uno', 1, 1, 1, 1, 1, 1, NULL, 3),
(46, 7, 'titulodos', 'text', 'Titulo dos', 1, 1, 1, 1, 1, 1, NULL, 4),
(47, 7, 'diauno', 'text', 'Dia uno', 1, 1, 1, 1, 1, 1, NULL, 5),
(48, 7, 'horauno', 'text', 'Hora uno', 1, 1, 1, 1, 1, 1, NULL, 6),
(49, 7, 'diados', 'text', 'Dia dos', 1, 1, 1, 1, 1, 1, NULL, 7),
(50, 7, 'horados', 'text', 'Hora dos', 1, 1, 1, 1, 1, 1, NULL, 8),
(51, 7, 'diatres', 'text', 'Dia tres', 0, 1, 1, 1, 1, 1, NULL, 9),
(52, 7, 'horatres', 'text', 'Hora tres', 0, 1, 1, 1, 1, 1, NULL, 10),
(53, 7, 'diacuatro', 'text', 'Dia cuatro', 0, 1, 1, 1, 1, 1, NULL, 11),
(54, 7, 'horacuatro', 'text', 'Hora cuatro', 0, 1, 1, 1, 1, 1, NULL, 12),
(55, 7, 'diacinco', 'text', 'Dia cinco', 0, 1, 1, 1, 1, 1, NULL, 13),
(56, 7, 'horacinco', 'text', 'Hora cinco', 0, 1, 1, 1, 1, 1, NULL, 14),
(57, 7, 'diaseis', 'text', 'Dia seis', 0, 1, 1, 1, 1, 1, NULL, 15),
(58, 7, 'horaseis', 'text', 'Hora seis', 0, 1, 1, 1, 1, 1, NULL, 16),
(59, 7, 'diasiete', 'text', 'Dia siete', 0, 1, 1, 1, 1, 1, NULL, 17),
(60, 7, 'horasiete', 'text', 'Hora siete', 0, 1, 1, 1, 1, 1, NULL, 18),
(61, 7, 'titulotres', 'text', 'Titulo tres', 1, 1, 1, 1, 1, 1, NULL, 19),
(62, 7, 'descripciondos', 'text_area', 'Descripcion dos', 1, 1, 1, 1, 1, 1, NULL, 20),
(63, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 21),
(64, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 22),
(65, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(66, 8, 'titulouno', 'text', 'Título uno', 1, 1, 1, 1, 1, 1, NULL, 2),
(67, 8, 'descripcionuno', 'text_area', 'Descripción uno', 1, 1, 1, 1, 1, 1, NULL, 3),
(68, 8, 'titulodos', 'text', 'Título dos', 1, 1, 1, 1, 1, 1, NULL, 4),
(69, 8, 'diauno', 'text', 'Día uno', 1, 1, 1, 1, 1, 1, NULL, 5),
(70, 8, 'horauno', 'text', 'Hora uno', 1, 1, 1, 1, 1, 1, NULL, 6),
(71, 8, 'diados', 'text', 'Día dos', 1, 1, 1, 1, 1, 1, NULL, 7),
(72, 8, 'horados', 'text', 'Hora dos', 1, 1, 1, 1, 1, 1, NULL, 8),
(73, 8, 'diatres', 'text', 'Día tres', 0, 1, 1, 1, 1, 1, NULL, 9),
(74, 8, 'horatres', 'text', 'Hora tres', 0, 1, 1, 1, 1, 1, NULL, 10),
(75, 8, 'titulotres', 'text', 'Título tres', 1, 1, 1, 1, 1, 1, NULL, 11),
(76, 8, 'descripciondos', 'text', 'Descripcion dos', 1, 1, 1, 1, 1, 1, NULL, 12),
(77, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 13),
(78, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 14),
(79, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(80, 9, 'titulo', 'text', 'Título', 1, 1, 1, 1, 1, 1, NULL, 2),
(81, 9, 'subuno', 'text', 'Sub uno', 1, 1, 1, 1, 1, 1, NULL, 3),
(82, 9, 'subdos', 'text', 'Sub dos', 1, 1, 1, 1, 1, 1, NULL, 4),
(83, 9, 'descripcion', 'text_area', 'Descripcion', 1, 1, 1, 1, 1, 1, NULL, 5),
(84, 9, 'imagen', 'image', 'Imagen (800 x 532)px', 1, 1, 1, 1, 1, 1, NULL, 6),
(85, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 7),
(86, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(87, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(96, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 10),
(97, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(98, 10, 'imagen', 'image', 'Imagen (800 x 532)px', 1, 1, 1, 1, 1, 1, NULL, 2),
(99, 10, 'texto', 'text', 'Texto', 1, 1, 1, 1, 1, 1, NULL, 3),
(100, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(101, 11, 'titulouno', 'text', 'Título uno', 1, 1, 1, 1, 1, 1, NULL, 2),
(102, 11, 'desuno', 'text', 'Descripción uno', 1, 1, 1, 1, 1, 1, NULL, 3),
(103, 11, 'titulodos', 'text', 'Título dos', 1, 1, 1, 1, 1, 1, NULL, 4),
(104, 11, 'desdos', 'text', 'Descripción dos', 1, 1, 1, 1, 1, 1, NULL, 5),
(105, 11, 'titulotres', 'text', 'Títulotres', 1, 1, 1, 1, 1, 1, NULL, 6),
(106, 11, 'destres', 'text', 'Descripción tres', 1, 1, 1, 1, 1, 1, NULL, 7),
(107, 11, 'titulocuatro', 'text', 'Título cuatro', 1, 1, 1, 1, 1, 1, NULL, 8),
(108, 11, 'descuatro', 'text', 'Descripción cuatro', 1, 1, 1, 1, 1, 1, NULL, 9),
(109, 11, 'titulocinco', 'text', 'Título cinco', 1, 1, 1, 1, 1, 1, NULL, 10),
(110, 11, 'descinco', 'text', 'Descripción cinco', 1, 1, 1, 1, 1, 1, NULL, 11),
(111, 11, 'tituloseis', 'text', 'Título seis', 1, 1, 1, 1, 1, 1, NULL, 12),
(112, 11, 'desseis', 'text', 'Descripción seis', 1, 1, 1, 1, 1, 1, NULL, 13),
(113, 11, 'imagen', 'image', 'Imagen (450 x 400)px', 1, 1, 1, 1, 1, 1, NULL, 14),
(114, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 15),
(115, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 16),
(116, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(117, 12, 'imagen', 'image', 'Imagen (600 x 700)px', 1, 1, 1, 1, 1, 1, NULL, 2),
(118, 12, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, NULL, 3),
(119, 12, 'especialidad', 'text', 'Especialidad', 1, 1, 1, 1, 1, 1, NULL, 4),
(120, 12, 'descripcion', 'text', 'Descripción', 1, 1, 1, 1, 1, 1, NULL, 5),
(121, 12, 'imagendos', 'image', 'Imagen dos (600 x 700)px', 1, 1, 1, 1, 1, 1, NULL, 6),
(122, 12, 'nombredos', 'text', 'Nombre dos', 1, 1, 1, 1, 1, 1, NULL, 7),
(123, 12, 'especialidaddos', 'text', 'Especialidad dos', 1, 1, 1, 1, 1, 1, NULL, 8),
(124, 12, 'descripciondos', 'text', 'Descripción dos', 1, 1, 1, 1, 1, 1, NULL, 9),
(125, 12, 'imagentres', 'image', 'Imagen tres (600 x 700)px', 1, 1, 1, 1, 1, 1, NULL, 10),
(126, 12, 'nombretres', 'text', 'Nombre tres', 1, 1, 1, 1, 1, 1, NULL, 11),
(127, 12, 'especialidadtres', 'text', 'Especialidad tres', 1, 1, 1, 1, 1, 1, NULL, 12),
(128, 12, 'descripciontres', 'text', 'Descripción tres', 1, 1, 1, 1, 1, 1, NULL, 13),
(129, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 14),
(130, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 15),
(131, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(132, 13, 'titulo', 'text', 'Título', 1, 1, 1, 1, 1, 1, NULL, 2),
(133, 13, 'descripcion', 'text_area', 'Descripción', 1, 1, 1, 1, 1, 1, NULL, 4),
(135, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(136, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(137, 13, 'costo', 'text', 'Costo', 1, 1, 1, 1, 1, 1, NULL, 3),
(138, 13, 'contactanos', 'text', 'Contactanos', 1, 1, 1, 1, 1, 1, NULL, 5),
(139, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(140, 14, 'titulo', 'text', 'Testimonio', 1, 1, 1, 1, 1, 1, NULL, 2),
(141, 14, 'descripcion', 'text_area', 'Descripción', 1, 1, 1, 1, 1, 1, NULL, 3),
(142, 14, 'foto', 'image', 'Foto', 1, 1, 1, 1, 1, 1, NULL, 4),
(143, 14, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, NULL, 5),
(144, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(145, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(146, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(147, 15, 'logo', 'image', 'Logo (413 x 72)px', 1, 1, 1, 1, 1, 1, NULL, 2),
(148, 15, 'descripcion', 'text_area', 'Descripción', 1, 1, 1, 1, 1, 1, NULL, 3),
(149, 15, 'desc_contacto', 'text_area', 'Descripción Contacto', 1, 1, 1, 1, 1, 1, NULL, 4),
(150, 15, 'subscribe', 'text_area', 'Subscribe', 1, 1, 1, 1, 1, 1, NULL, 5),
(151, 15, 'distribuido', 'text', 'Distribuido', 0, 1, 1, 1, 1, 1, NULL, 6),
(152, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 7),
(153, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-09-06 22:49:35', '2018-09-06 22:49:35'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-09-06 22:49:35', '2018-09-06 22:49:35'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-09-06 22:49:35', '2018-09-06 22:49:35'),
(4, 'headers', 'headers', 'Header', 'Headers', 'voyager-file-text', 'App\\Header', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-06 23:10:49', '2018-09-06 23:10:49'),
(5, 'slider', 'slider', 'Slider', 'Sliders', 'voyager-images', 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-11 02:15:00', '2018-09-11 02:15:00'),
(6, 'sliders', 'sliders', 'Slider', 'Sliders', 'voyager-images', 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-11 02:36:46', '2018-09-11 02:36:46'),
(7, 'informacion', 'informacion', 'Informacion', 'Informacions', 'voyager-file-text', 'App\\Informacion', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-11 03:22:03', '2018-09-11 03:22:03'),
(8, 'informacions', 'informacions', 'Informacion', 'Informacions', 'voyager-file-text', 'App\\Informacion', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-11 03:34:15', '2018-09-11 03:34:15'),
(9, 'servicios', 'servicios', 'Servicio', 'Servicios', 'voyager-heart', 'App\\Servicio', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-11 20:40:06', '2018-09-11 20:40:06'),
(10, 'galerias', 'galerias', 'Galeria', 'Galerias', 'voyager-images', 'App\\Galeria', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-11 21:12:18', '2018-09-11 21:16:15'),
(11, 'serviciosdos', 'serviciosdos', 'Serviciosdo', 'Serviciosdos', 'voyager-puzzle', 'App\\Serviciosdo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-12 22:12:14', '2018-09-12 22:12:14'),
(12, 'doctores', 'doctores', 'Doctore', 'Doctores', 'voyager-people', 'App\\Doctore', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-12 22:36:02', '2018-09-12 22:36:02'),
(13, 'promociones', 'promociones', 'Promocione', 'Promociones', 'voyager-paypal', 'App\\Promocione', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-13 20:23:12', '2018-09-13 20:23:12'),
(14, 'testimonios', 'testimonios', 'Testimonio', 'Testimonios', 'voyager-group', 'App\\Testimonio', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-13 20:57:34', '2018-09-13 20:57:34'),
(15, 'footers', 'footers', 'Footer', 'Footers', 'voyager-logbook', 'App\\Footer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-18 01:44:52', '2018-09-18 01:44:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctores`
--

CREATE TABLE `doctores` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `especialidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagendos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombredos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `especialidaddos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripciondos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagentres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombretres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `especialidadtres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripciontres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `doctores`
--

INSERT INTO `doctores` (`id`, `imagen`, `nombre`, `especialidad`, `descripcion`, `imagendos`, `nombredos`, `especialidaddos`, `descripciondos`, `imagentres`, `nombretres`, `especialidadtres`, `descripciontres`, `created_at`, `updated_at`) VALUES
(1, 'doctores\\September2018\\dYUnprq8drlXut5G998e.jpg', 'Erick Contreras', 'Oftalmología.', 'Doctor uno de Ejemplo', 'doctores\\September2018\\JEWRjFimIzuKDfFXRq7v.jpg', 'Karla Lopez', 'Urología', 'Doctor dos de ejmplo', 'doctores\\September2018\\3ltPnaQ3camMUrwm3t5y.jpg', 'Erika Paz', 'Traumatología.', 'Doctor de ejemplo tres', '2018-09-12 22:38:51', '2018-09-12 22:38:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `footers`
--

CREATE TABLE `footers` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_contacto` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribe` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `distribuido` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `footers`
--

INSERT INTO `footers` (`id`, `logo`, `descripcion`, `desc_contacto`, `subscribe`, `distribuido`, `created_at`, `updated_at`) VALUES
(1, 'footers\\September2018\\dDgFBW4SmyExKTGgXTvT.gif', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus.', 'Derechos Reservados para el Ing. Rodrigo Villanueva Nieto', '2018-09-18 01:48:00', '2018-09-18 01:56:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias`
--

CREATE TABLE `galerias` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `galerias`
--

INSERT INTO `galerias` (`id`, `imagen`, `texto`, `created_at`, `updated_at`) VALUES
(3, 'galerias\\September2018\\Mxh4iajfe7XCMvJIeF6q.jpg', 'Demo uno', '2018-09-11 21:33:04', '2018-09-11 21:33:04'),
(4, 'galerias\\September2018\\tfF4quVQYveJnXVvIiD0.jpg', 'Demo dos', '2018-09-11 21:33:20', '2018-09-11 21:33:20'),
(5, 'galerias\\September2018\\8QHXkhpSK1cFQIm9wiWl.jpg', 'Demo tres', '2018-09-11 21:33:33', '2018-09-11 21:33:33'),
(6, 'galerias\\September2018\\S3MFiczph2kRlrCa9Tfh.jpg', 'Demo cuatro', '2018-09-11 21:33:47', '2018-09-11 21:33:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `headers`
--

CREATE TABLE `headers` (
  `id` int(10) UNSIGNED NOT NULL,
  `telefono` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `horario` varchar(249) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `headers`
--

INSERT INTO `headers` (`id`, `telefono`, `email`, `horario`, `created_at`, `updated_at`) VALUES
(1, '87876876876', 'rodrigo@gmail.com', 'Diario: 7:00am  a 9:00pm', '2018-09-06 23:32:11', '2018-09-06 23:32:11'),
(2, '57961975', 'segundo@gmail.com', 'Diario: 7:00am  a 9:00pm', '2018-09-06 23:41:02', '2018-09-12 22:58:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacions`
--

CREATE TABLE `informacions` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulouno` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcionuno` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulodos` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diauno` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `horauno` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diados` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `horados` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diatres` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `horatres` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulotres` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripciondos` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `informacions`
--

INSERT INTO `informacions` (`id`, `titulouno`, `descripcionuno`, `titulodos`, `diauno`, `horauno`, `diados`, `horados`, `diatres`, `horatres`, `titulotres`, `descripciondos`, `created_at`, `updated_at`) VALUES
(1, 'Casos de Emergencia', 'En caso de emergencia favor de comunicarse a los siguientes telefonos 6566757- 768787987', 'Horas de Trabajo', 'Lunes - Viernes', '8:00 -18:00', 'Sabados', '8:00 -17:00', 'Domingos', '8:00 -13:00', 'Consultas Especiales', 'Las consultas especiales serán en horarios no fijos, se tendrá que hacer previa cita.', '2018-09-11 03:26:00', '2018-09-11 03:39:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-09-06 22:49:38', '2018-09-06 22:49:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-09-06 22:49:38', '2018-09-06 22:49:38', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2018-09-06 22:49:38', '2018-09-06 23:14:54', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-09-06 22:49:38', '2018-09-06 22:49:38', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-09-06 22:49:38', '2018-09-06 22:49:38', 'voyager.roles.index', NULL),
(5, 1, 'Herramientas', '', '_self', 'voyager-tools', '#000000', NULL, 5, '2018-09-06 22:49:38', '2018-09-06 23:14:54', NULL, ''),
(6, 1, 'Menus', '', '_self', 'voyager-list', '#000000', 5, 1, '2018-09-06 22:49:38', '2018-09-06 23:14:54', 'voyager.menus.index', 'null'),
(7, 1, 'Base de Datos', '', '_self', 'voyager-data', '#000000', 5, 2, '2018-09-06 22:49:38', '2018-09-06 23:14:54', 'voyager.database.index', 'null'),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-09-06 22:49:38', '2018-09-06 23:14:54', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-09-06 22:49:38', '2018-09-06 23:14:54', 'voyager.bread.index', NULL),
(10, 1, 'Configuraciones', '', '_self', 'voyager-settings', '#000000', NULL, 6, '2018-09-06 22:49:39', '2018-09-06 23:14:54', 'voyager.settings.index', 'null'),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-09-06 22:49:44', '2018-09-06 23:14:54', 'voyager.hooks', NULL),
(12, 1, 'Headers', '', '_self', 'voyager-file-text', NULL, 13, 1, '2018-09-06 23:10:49', '2018-09-06 23:14:57', 'voyager.headers.index', NULL),
(13, 1, 'Administración', '', '_self', 'voyager-list-add', '#000000', NULL, 7, '2018-09-06 23:14:28', '2018-09-06 23:17:02', NULL, ''),
(15, 1, 'Sliders', '', '_self', 'voyager-images', NULL, 13, 2, '2018-09-11 02:36:46', '2018-09-11 03:22:20', 'voyager.sliders.index', NULL),
(17, 1, 'Información', '', '_self', 'voyager-file-text', '#000000', 13, 3, '2018-09-11 03:34:15', '2018-09-11 03:34:48', 'voyager.informacions.index', 'null'),
(18, 1, 'Servicios', '', '_self', 'voyager-heart', NULL, 13, 4, '2018-09-11 20:40:06', '2018-09-11 20:40:25', 'voyager.servicios.index', NULL),
(19, 1, 'Galerias', '', '_self', 'voyager-images', '#000000', 13, 5, '2018-09-11 21:12:18', '2018-09-11 21:14:53', 'voyager.galerias.index', 'null'),
(20, 1, 'Serviciosdos', '', '_self', 'voyager-puzzle', NULL, 13, 6, '2018-09-12 22:12:14', '2018-09-12 22:12:33', 'voyager.serviciosdos.index', NULL),
(21, 1, 'Doctores', '', '_self', 'voyager-people', NULL, 13, 7, '2018-09-12 22:36:03', '2018-09-12 22:36:15', 'voyager.doctores.index', NULL),
(22, 1, 'Promociones', '', '_self', 'voyager-paypal', NULL, 13, 8, '2018-09-13 20:23:15', '2018-09-13 20:23:34', 'voyager.promociones.index', NULL),
(23, 1, 'Testimonios', '', '_self', 'voyager-group', NULL, 13, 9, '2018-09-13 20:57:34', '2018-09-13 20:57:50', 'voyager.testimonios.index', NULL),
(24, 1, 'Footers', '', '_self', 'voyager-logbook', NULL, 13, 10, '2018-09-18 01:44:53', '2018-09-18 01:45:10', 'voyager.footers.index', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-09-06 22:49:39', '2018-09-06 22:49:39'),
(2, 'browse_bread', NULL, '2018-09-06 22:49:39', '2018-09-06 22:49:39'),
(3, 'browse_database', NULL, '2018-09-06 22:49:39', '2018-09-06 22:49:39'),
(4, 'browse_media', NULL, '2018-09-06 22:49:39', '2018-09-06 22:49:39'),
(5, 'browse_compass', NULL, '2018-09-06 22:49:39', '2018-09-06 22:49:39'),
(6, 'browse_menus', 'menus', '2018-09-06 22:49:39', '2018-09-06 22:49:39'),
(7, 'read_menus', 'menus', '2018-09-06 22:49:39', '2018-09-06 22:49:39'),
(8, 'edit_menus', 'menus', '2018-09-06 22:49:40', '2018-09-06 22:49:40'),
(9, 'add_menus', 'menus', '2018-09-06 22:49:40', '2018-09-06 22:49:40'),
(10, 'delete_menus', 'menus', '2018-09-06 22:49:40', '2018-09-06 22:49:40'),
(11, 'browse_roles', 'roles', '2018-09-06 22:49:40', '2018-09-06 22:49:40'),
(12, 'read_roles', 'roles', '2018-09-06 22:49:40', '2018-09-06 22:49:40'),
(13, 'edit_roles', 'roles', '2018-09-06 22:49:40', '2018-09-06 22:49:40'),
(14, 'add_roles', 'roles', '2018-09-06 22:49:40', '2018-09-06 22:49:40'),
(15, 'delete_roles', 'roles', '2018-09-06 22:49:40', '2018-09-06 22:49:40'),
(16, 'browse_users', 'users', '2018-09-06 22:49:40', '2018-09-06 22:49:40'),
(17, 'read_users', 'users', '2018-09-06 22:49:40', '2018-09-06 22:49:40'),
(18, 'edit_users', 'users', '2018-09-06 22:49:41', '2018-09-06 22:49:41'),
(19, 'add_users', 'users', '2018-09-06 22:49:41', '2018-09-06 22:49:41'),
(20, 'delete_users', 'users', '2018-09-06 22:49:41', '2018-09-06 22:49:41'),
(21, 'browse_settings', 'settings', '2018-09-06 22:49:41', '2018-09-06 22:49:41'),
(22, 'read_settings', 'settings', '2018-09-06 22:49:41', '2018-09-06 22:49:41'),
(23, 'edit_settings', 'settings', '2018-09-06 22:49:41', '2018-09-06 22:49:41'),
(24, 'add_settings', 'settings', '2018-09-06 22:49:41', '2018-09-06 22:49:41'),
(25, 'delete_settings', 'settings', '2018-09-06 22:49:41', '2018-09-06 22:49:41'),
(26, 'browse_hooks', NULL, '2018-09-06 22:49:49', '2018-09-06 22:49:49'),
(27, 'browse_headers', 'headers', '2018-09-06 23:10:49', '2018-09-06 23:10:49'),
(28, 'read_headers', 'headers', '2018-09-06 23:10:49', '2018-09-06 23:10:49'),
(29, 'edit_headers', 'headers', '2018-09-06 23:10:49', '2018-09-06 23:10:49'),
(30, 'add_headers', 'headers', '2018-09-06 23:10:49', '2018-09-06 23:10:49'),
(31, 'delete_headers', 'headers', '2018-09-06 23:10:49', '2018-09-06 23:10:49'),
(32, 'browse_slider', 'slider', '2018-09-11 02:15:01', '2018-09-11 02:15:01'),
(33, 'read_slider', 'slider', '2018-09-11 02:15:01', '2018-09-11 02:15:01'),
(34, 'edit_slider', 'slider', '2018-09-11 02:15:01', '2018-09-11 02:15:01'),
(35, 'add_slider', 'slider', '2018-09-11 02:15:01', '2018-09-11 02:15:01'),
(36, 'delete_slider', 'slider', '2018-09-11 02:15:01', '2018-09-11 02:15:01'),
(37, 'browse_sliders', 'sliders', '2018-09-11 02:36:46', '2018-09-11 02:36:46'),
(38, 'read_sliders', 'sliders', '2018-09-11 02:36:46', '2018-09-11 02:36:46'),
(39, 'edit_sliders', 'sliders', '2018-09-11 02:36:46', '2018-09-11 02:36:46'),
(40, 'add_sliders', 'sliders', '2018-09-11 02:36:46', '2018-09-11 02:36:46'),
(41, 'delete_sliders', 'sliders', '2018-09-11 02:36:46', '2018-09-11 02:36:46'),
(42, 'browse_informacion', 'informacion', '2018-09-11 03:22:04', '2018-09-11 03:22:04'),
(43, 'read_informacion', 'informacion', '2018-09-11 03:22:04', '2018-09-11 03:22:04'),
(44, 'edit_informacion', 'informacion', '2018-09-11 03:22:04', '2018-09-11 03:22:04'),
(45, 'add_informacion', 'informacion', '2018-09-11 03:22:04', '2018-09-11 03:22:04'),
(46, 'delete_informacion', 'informacion', '2018-09-11 03:22:04', '2018-09-11 03:22:04'),
(47, 'browse_informacions', 'informacions', '2018-09-11 03:34:15', '2018-09-11 03:34:15'),
(48, 'read_informacions', 'informacions', '2018-09-11 03:34:15', '2018-09-11 03:34:15'),
(49, 'edit_informacions', 'informacions', '2018-09-11 03:34:15', '2018-09-11 03:34:15'),
(50, 'add_informacions', 'informacions', '2018-09-11 03:34:15', '2018-09-11 03:34:15'),
(51, 'delete_informacions', 'informacions', '2018-09-11 03:34:15', '2018-09-11 03:34:15'),
(52, 'browse_servicios', 'servicios', '2018-09-11 20:40:06', '2018-09-11 20:40:06'),
(53, 'read_servicios', 'servicios', '2018-09-11 20:40:06', '2018-09-11 20:40:06'),
(54, 'edit_servicios', 'servicios', '2018-09-11 20:40:06', '2018-09-11 20:40:06'),
(55, 'add_servicios', 'servicios', '2018-09-11 20:40:06', '2018-09-11 20:40:06'),
(56, 'delete_servicios', 'servicios', '2018-09-11 20:40:06', '2018-09-11 20:40:06'),
(57, 'browse_galerias', 'galerias', '2018-09-11 21:12:18', '2018-09-11 21:12:18'),
(58, 'read_galerias', 'galerias', '2018-09-11 21:12:18', '2018-09-11 21:12:18'),
(59, 'edit_galerias', 'galerias', '2018-09-11 21:12:18', '2018-09-11 21:12:18'),
(60, 'add_galerias', 'galerias', '2018-09-11 21:12:18', '2018-09-11 21:12:18'),
(61, 'delete_galerias', 'galerias', '2018-09-11 21:12:18', '2018-09-11 21:12:18'),
(62, 'browse_serviciosdos', 'serviciosdos', '2018-09-12 22:12:14', '2018-09-12 22:12:14'),
(63, 'read_serviciosdos', 'serviciosdos', '2018-09-12 22:12:14', '2018-09-12 22:12:14'),
(64, 'edit_serviciosdos', 'serviciosdos', '2018-09-12 22:12:14', '2018-09-12 22:12:14'),
(65, 'add_serviciosdos', 'serviciosdos', '2018-09-12 22:12:14', '2018-09-12 22:12:14'),
(66, 'delete_serviciosdos', 'serviciosdos', '2018-09-12 22:12:14', '2018-09-12 22:12:14'),
(67, 'browse_doctores', 'doctores', '2018-09-12 22:36:02', '2018-09-12 22:36:02'),
(68, 'read_doctores', 'doctores', '2018-09-12 22:36:02', '2018-09-12 22:36:02'),
(69, 'edit_doctores', 'doctores', '2018-09-12 22:36:02', '2018-09-12 22:36:02'),
(70, 'add_doctores', 'doctores', '2018-09-12 22:36:02', '2018-09-12 22:36:02'),
(71, 'delete_doctores', 'doctores', '2018-09-12 22:36:02', '2018-09-12 22:36:02'),
(72, 'browse_promociones', 'promociones', '2018-09-13 20:23:14', '2018-09-13 20:23:14'),
(73, 'read_promociones', 'promociones', '2018-09-13 20:23:14', '2018-09-13 20:23:14'),
(74, 'edit_promociones', 'promociones', '2018-09-13 20:23:14', '2018-09-13 20:23:14'),
(75, 'add_promociones', 'promociones', '2018-09-13 20:23:14', '2018-09-13 20:23:14'),
(76, 'delete_promociones', 'promociones', '2018-09-13 20:23:14', '2018-09-13 20:23:14'),
(77, 'browse_testimonios', 'testimonios', '2018-09-13 20:57:34', '2018-09-13 20:57:34'),
(78, 'read_testimonios', 'testimonios', '2018-09-13 20:57:34', '2018-09-13 20:57:34'),
(79, 'edit_testimonios', 'testimonios', '2018-09-13 20:57:34', '2018-09-13 20:57:34'),
(80, 'add_testimonios', 'testimonios', '2018-09-13 20:57:34', '2018-09-13 20:57:34'),
(81, 'delete_testimonios', 'testimonios', '2018-09-13 20:57:34', '2018-09-13 20:57:34'),
(82, 'browse_footers', 'footers', '2018-09-18 01:44:53', '2018-09-18 01:44:53'),
(83, 'read_footers', 'footers', '2018-09-18 01:44:53', '2018-09-18 01:44:53'),
(84, 'edit_footers', 'footers', '2018-09-18 01:44:53', '2018-09-18 01:44:53'),
(85, 'add_footers', 'footers', '2018-09-18 01:44:53', '2018-09-18 01:44:53'),
(86, 'delete_footers', 'footers', '2018-09-18 01:44:53', '2018-09-18 01:44:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
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
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
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
(86, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE `promociones` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `costo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactanos` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `promociones`
--

INSERT INTO `promociones` (`id`, `titulo`, `descripcion`, `created_at`, `updated_at`, `costo`, `contactanos`) VALUES
(1, 'Implante  Anticonceptivo', 'Nuestras promociones incluyen, costos de análisis.\r\ndemo uno\r\ndemo dos\r\ndemo tres\r\ndemo cuatro', '2018-09-13 20:25:00', '2018-09-13 20:32:50', '450', 'Contactanos'),
(2, 'Diu  T Plata', 'es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica', '2018-09-13 20:44:46', '2018-09-13 20:44:46', '2500', 'Ver más'),
(3, 'Consultas Generales', 'es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica', '2018-09-13 20:45:42', '2018-09-13 20:45:42', '350', 'Contactanos'),
(4, 'Consultas Especiales', 'es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica', '2018-09-13 20:46:13', '2018-09-13 20:46:13', '590', 'Contactanos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-09-06 22:49:39', '2018-09-06 22:49:39'),
(2, 'user', 'Normal User', '2018-09-06 22:49:39', '2018-09-06 22:49:39'),
(3, 'Agregar doctores', 'doctores', '2018-09-12 22:53:55', '2018-09-12 22:53:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subuno` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `titulo`, `subuno`, `subdos`, `descripcion`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Especialidades de la Clinica', 'Que es lo que hacemos ?', 'Nuestros Servicios', 'Contamos con los mejores Servicios, el mejor equipo técnico y personal Capacitado.', 'servicios\\September2018\\8678KEMEzd6gM13VY71e.jpg', '2018-09-11 20:45:00', '2018-09-11 20:55:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serviciosdos`
--

CREATE TABLE `serviciosdos` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulouno` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desuno` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulodos` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desdos` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulotres` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destres` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulocuatro` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descuatro` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulocinco` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descinco` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tituloseis` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desseis` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `serviciosdos`
--

INSERT INTO `serviciosdos` (`id`, `titulouno`, `desuno`, `titulodos`, `desdos`, `titulotres`, `destres`, `titulocuatro`, `descuatro`, `titulocinco`, `descinco`, `tituloseis`, `desseis`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Hospital', 'Demo uno', 'Estudios', 'Ejemplo dos', 'Embarazos', 'Ejemplo tres', 'Demo cuatro', 'Ejemplo cuatro', 'Demo cinco', 'Ejemplo cinco', 'Demo seis', 'Ejemplo seis', 'serviciosdos\\September2018\\TjATIt1GYeKL1fNa5fYf.jpg', '2018-09-12 22:14:00', '2018-09-12 22:23:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulouno` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulodos` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulotres` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fondo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `titulouno`, `titulodos`, `titulotres`, `fondo`, `created_at`, `updated_at`) VALUES
(1, 'Bienvenidos', 'Medica Life care', 'Somos tu mejor Opción', 'slider\\September2018\\dGYVxq6whiYBIiB72Pib.jpg', '2018-09-11 02:17:30', '2018-09-11 02:17:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios`
--

CREATE TABLE `testimonios` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `testimonios`
--

INSERT INTO `testimonios` (`id`, `titulo`, `descripcion`, `foto`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Increíble Servicio, muy Profesional', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 'testimonios\\September2018\\STN5vHxymmgLFRJEPr2U.png', 'Karla Morales', '2018-09-13 21:02:22', '2018-09-13 21:02:22'),
(2, 'Estoy super agradecido por la excelente Atención.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 'testimonios\\September2018\\Z0YNoAYU1FV6qdEKcYyq.png', 'Rodrigo Villanueva', '2018-09-13 21:34:56', '2018-09-13 21:34:56'),
(3, 'Muchas gracias por toda su Atención', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 'testimonios\\September2018\\iXYiF7BJNbEfWh7FKpq4.png', 'Carlos olmos', '2018-09-13 21:39:00', '2018-09-13 22:09:36'),
(4, 'Son muy profesionales,  muy buen Servicio', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est', 'testimonios\\September2018\\iu2UH1BxFPZUcmybojh7.png', 'Jessica Perez', '2018-09-13 21:41:00', '2018-09-13 22:09:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'rodrigo', 'rodrigo@gmail.com', 'users/default.png', '$2y$10$OSlx1rI7q2P8hZcAPoVwxu7HHQbbOppdigIUpAor/ZVTsyH7Yyjme', NULL, NULL, '2018-09-06 22:51:32', '2018-09-06 22:51:32'),
(2, 3, 'erika', 'erika@gmail.com', 'users\\September2018\\vfPxDGHVjILdM5WoEcuW.jpg', '$2y$10$977VZY.YjvBONdTfAM15ZeS4zvgMM50wZqK5.3y0yuvqrLByx1sgm', '6UesXIvPpGvQ15Lam9foTvv4QTsX62V2blVPldezg8NOs1CG5b8f0Tt9YGcD', '{\"locale\":\"es\"}', '2018-09-12 22:54:51', '2018-09-12 22:54:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `doctores`
--
ALTER TABLE `doctores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `informacions`
--
ALTER TABLE `informacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `serviciosdos`
--
ALTER TABLE `serviciosdos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `doctores`
--
ALTER TABLE `doctores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `footers`
--
ALTER TABLE `footers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `headers`
--
ALTER TABLE `headers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `informacions`
--
ALTER TABLE `informacions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `promociones`
--
ALTER TABLE `promociones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `serviciosdos`
--
ALTER TABLE `serviciosdos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
