-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-06-2019 a las 17:33:48
-- Versión del servidor: 8.0.15
-- Versión de PHP: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parque`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_token`
--

CREATE TABLE `api_token` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `api_token`
--

INSERT INTO `api_token` (`id`, `user_id`, `token`, `expires_at`) VALUES
(21, 41, '818652131aa1d2979d9ccbfd1aad3a25586f2db6d20929e52528dd6e378e2d3dc3488fecca69acdd297d9b7cbdb014ae8d3d13f194197ee1a33e1580', '2019-06-14 21:04:18'),
(22, 41, '89bf43218b21b79639410d979cc1ce0f6e7d2c2fd91ce45b3cb0eee4af0fd2a76cf0436ae0f17e1c10f1828d37e5635b96e2db970bfe3eba699dba07', '2019-06-14 21:04:18'),
(23, 42, '9601fa122272e55bc8b8c491979a48018c4ee4e8216afa597d605c049910a0db7e3c5714a0d1731f91fe33ee2e9de218a78523c41032d28272465132', '2019-06-14 21:04:19'),
(24, 42, '123822ed4b3d71e2e113397d4ce8648ad70397adad5df334059c06877f21cb64895af7b61e2313b29c3f8c43af8d2106ef416bd6c64a3b362e324155', '2019-06-14 21:04:19'),
(25, 43, '8bf67c9dd065385930823e97d2f0dfb296f7eb579c9dbfdf81758d7178490a2d6e68a32674bc4dd512d2302deaad4b0a0d443e616e5c3402905cea46', '2019-06-14 21:04:19'),
(26, 43, 'b32d9feb2b0c855b488397cabf38a59d283f38b2990c28d1216872e72216133d41fe076639bed89054abb666162174e614bf20e7d734931ecb15b7c3', '2019-06-14 21:04:19'),
(27, 44, '254d3891acc883a614478193ef75c3fb689150dd66599b09d4c5cf95b8e9cc84ecc61e8ba28c3dee20beb7ba811f4a9320d0b26d5761683487873224', '2019-06-14 21:04:20'),
(28, 44, 'b22eec5b5a0ab4cd287600567ca7f928b8610126c907a924fd89ee24af21c37ec5541f172575399c0a50a8224eae03df47a99313dd32e303e11ebacc', '2019-06-14 21:04:20'),
(29, 45, '6fe4c6eb38b1450c6794259c04ff2073d5ee1f05d76fc8c2fd373c1d8ae8bab2e0bcde3318c6a2208edfaa75de9b9332437249f4071d1857848f0dd3', '2019-06-14 21:04:21'),
(30, 45, 'a768a65e9a2bdd7bc9414b3be4c3b336be704a8daebb29ea2511abd2c77b3f50b0f6553171f1e94dd8fb414eddf2552e2f702242bd3d93a3fbedd0a5', '2019-06-14 21:04:21'),
(31, 46, 'bc06cd3f203e5095c80cf501cacdbc9d3f1379614008823a941574cc183c61f5c3c603539f45280ef1d5d7fca50d238de46f29133c0f00a8c4cf89cb', '2019-06-14 21:04:22'),
(32, 46, '14a64579ebf4f041aaa3960c377444b3748f897a0679d856b276c8f8d5ee26514b4fb25225fe047ef3c24f4c5268d4541d545fe9b582a171fff2ebe0', '2019-06-14 21:04:22'),
(33, 47, 'b1bb9af6d21fc0454e0d93b8662e78134ecb8c06999d3ac76e743128b7d23d6c2e8e9012d1e11155161facea813c1813c5426118d8177c10e764a531', '2019-06-14 21:04:22'),
(34, 47, 'a783b87ab9320ab4a7954980a7967e99a6eff314f90422fb369263d339b728070d725a543e1471187414c2950834055e45b3815217227ef63b2b1492', '2019-06-14 21:04:22'),
(35, 48, 'ae3b0b4eed14e49bc058545a182c3a28446ac62d39062538b9f10acfa25fc2e3527fe65b57e12861b96ca85b52986b3d0ca007e4ca813fb22bb27822', '2019-06-14 21:04:23'),
(36, 48, '2cf0f355cb2c8606b9146b39066b38a8c8a6d2440a17e015299e715eed7390f2c7186a78e759440971e7f6b28554c1c80e84e8871011e73cb8ac2fda', '2019-06-14 21:04:23'),
(37, 49, '13058699e102c01544d0b80234cc5555438e5257654a5ccd32025c52d444ecb65d47e937d84528d4d1b604f2a00c6b11f8c28decfbcbad908e0216bf', '2019-06-14 21:04:24'),
(38, 49, '9c3c6b6b16c761c330c0842e50c69983dd02d2018bdd4de6a892d074b9d716494a224eb73612cb8c8e0bb870bfe09f3ff9ddd930cac7486bb3e8308d', '2019-06-14 21:04:24'),
(39, 50, 'dc25060a6fc8b543cf95fa94a58cee421272307701da670ee48be148d4e44da517e2c0553abcf29c12318552253adb0bbea70e23f578a30d8c346b01', '2019-06-14 21:04:24'),
(40, 50, '576f18b790a5e6d7fc719c657b2c3b39942d1b5b9f7b51d6ddb73397c67503cef77a4a9b151e9a993a35347b130c4ab3de166b300ca86e3cda3710d4', '2019-06-14 21:04:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atracciones`
--

CREATE TABLE `atracciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intensidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `atracciones`
--

INSERT INTO `atracciones` (`id`, `nombre`, `descripcion`, `imagen1`, `imagen2`, `imagen3`, `intensidad`) VALUES
(1, 'Montaña Rusa', 'La Montaña Rusa eleva a los más atrevidos a más de 500 metros sobre el nivel del mar para contemplar una de las mejores vistas de la ciudad de Granada y al mismo tiempo disfrutar de un trepidante viaje por el bosque a más de 80 km/h.', '1', '2', '3', 3),
(2, 'Gran Noria', 'Esta rueda panorámica, inaugurada en 2014, está situada en el nivel más alto de la montaña. Os permitirá subir hasta las nubes y disfrutar de unas increíbles vistas de la ciudad de Granada, el mar y su entorno.', '1', '2', '3', 2),
(3, 'Tazas Giratorias', '¡Gira y gira, solo o en familia, y pásalo estupendamente! Una atracción para toda la familia, situada en el área panorámica del parque. Mayores y pequeños podréis disfrutar juntos en esta atracción.', '1', '2', '3', 1),
(4, 'Troncos Locos', 'Un emocionante y refrescante recorrido con desniveles impresionantes en medio del Oeste americano.', '1', '2', '3', 3),
(5, 'Barca Vikinga', 'Con la Barca Vikinga te podrás levantar hasta tocar las nubes y después balancearte a casi 180⁰. ¡Una aventura trepidante!', '1', '2', '3', 3),
(6, 'Coches de Choque', 'Un clásico de los parques de atracciones y las ferias. ¡Poneros el cinturón y a disfrutar! ', '1', '2', '3', 2),
(7, 'Sillas Voladora', 'Sensaciones de vuelo libre encima de Granada. No te puedes perder la combinación de giros, elevaciones, vértigo y velocidad que ofrece esta atracción.', '1', '2', '3', 2),
(8, 'Globos Infantiles', 'Atracción para toda la familia, donde unas cestas transportan a los pasajeros en un movimiento circular alrededor del eje que las sostiene.', '1', '2', '3', 1),
(9, 'Vagoneta Virtual', 'Descubrid la primera atracción de realidad virtual de España. Un mundo fantástico aparecerá en vuestro entorno mientras disfrutáis del recorrido con el clásico tren rápido.', '1', '2', '3', 2),
(10, 'Rodeo del Oeste', 'Los más pequeños podrán viajar por el salvaje Oeste americano con el Pony Rodeo, ¡un tren monocarril de lo más entretenido!', '1', '2', '3', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensaje` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `correo`, `mensaje`) VALUES
(16, 'bbb', 'bbb', 'bbb'),
(18, 'ppp', 'pppp', 'pppp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `condicion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id`, `nombre`, `precio`, `condicion`) VALUES
(1, 'Entrada Normal', 20, 'Entrada de adulto (11 a 59 años) de 1 día al Alhambra Park. Válida de lunes a domingos de la temporada 2019.'),
(2, 'Entrada Reducida', 15, 'Entrada Infantil (4 a 10 años) o senior (a partir de 60 años) de 1 día al Alhambra Park. Válida de lunes a domingos de la temporada 2019.'),
(3, 'Entrada Familiar', 50, 'Pack que incluye 4 entradas de 1 día al Alhambra Park, 2 adulto (11 a 59 años) y 2 infantiles (4 a 10 años). Las 4 entradas serán válidas para el mismo día. Válida durante la Temporada 2019.'),
(4, 'Entrada Tarde', 15, 'Entrada de adulto (11 a 59 años) de tarde al Alhambra Park. Válida de lunes a domingos de la temporada 2019. Consulte los diferentes horarios de acceso de la entrada de tarde.'),
(5, 'Entrada Reducida Tarde', 10, 'Entrada Infantil (4 a 10 años) o senior (a partir de 60 años) de 1 día al Alhambra Park. Válida de lunes a domingos de la temporada 2019. Consulte los diferentes horarios de acceso de la entrada de tarde.'),
(6, 'Entrada Familiar Tarde', 35, 'Pack que incluye 4 entradas de 1 día al Alhambra Park, 2 adulto (11 a 59 años) y 2 infantiles (4 a 10 años). Las 4 entradas serán válidas para el mismo día. Consulte los diferentes horarios de acceso de la entrada de tarde.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas_compradas`
--

CREATE TABLE `entradas_compradas` (
  `id` int(11) NOT NULL,
  `num_entradas` int(11) NOT NULL,
  `fecha_actual` datetime NOT NULL,
  `fecha_entrada` datetime NOT NULL,
  `entrada_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entradas_compradas`
--

INSERT INTO `entradas_compradas` (`id`, `num_entradas`, `fecha_actual`, `fecha_entrada`, `entrada_id`, `usuario_id`) VALUES
(45, 3, '2019-06-15 00:44:18', '2019-06-19 00:44:18', 3, 52),
(46, 2, '2019-06-15 00:44:18', '2019-06-19 00:44:18', 4, 52),
(47, 3, '2019-06-15 00:45:12', '2019-06-24 00:45:12', 3, 43),
(48, 3, '2019-06-15 00:45:12', '2019-06-24 00:45:12', 6, 43),
(49, 1, '2019-06-15 00:52:04', '2019-06-20 00:52:04', 1, 52),
(50, 2, '2019-06-15 00:52:05', '2019-06-20 00:52:05', 4, 52);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `atraccion_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190221220707', '2019-02-21 22:11:50'),
('20190301232843', '2019-03-01 23:29:30'),
('20190301233231', '2019-03-01 23:32:42'),
('20190301233713', '2019-03-01 23:37:22'),
('20190301234705', '2019-03-01 23:47:18'),
('20190306222119', '2019-03-06 22:21:41'),
('20190307021315', '2019-03-07 02:13:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `first_name`, `twitter_username`) VALUES
(41, 'parque0@parque', '[]', '$2y$13$0GYt/EtarmTCZnZujYetNu1PV9zKKR/C6JRFBAr/sP4DpNTdwBUwu', 'Antonio', 'miTwitter'),
(42, 'a@a', '[]', '$2y$13$GySykVUpN2/aQ2u4BKAzJOcgrxB08JdZ18YVEl7HTAQIOArShAfeG', 'Antonio', 'No tengo'),
(43, 'parque2@parque', '[]', '$2y$13$IZQ7k8cM2bkgrdckJOh/5e.MYMiuSjPsJen5JjikJAyUSpGEJuhyG', 'Antonio', 'miTwitter'),
(44, 'parque3@parque', '[]', '$2y$13$eMl1Rx3LFUpTcF.4BDCK3OvQTwko990LbEAm/OLV3fhTASU6c8SLm', 'Antonio', 'miTwitter'),
(45, 'parque4@parque', '[]', '$2y$13$Jo06ClK5aKtwJtLJmN2y9.8pF6osbIc6g6wVq.E7qZirVgesK91u2', 'Antonio', 'miTwitter'),
(46, 'parque5@parque', '[]', '$2y$13$J.Dp62VepYTB8ZiT0m/r7e9IYWwNKuUH1hadwam.xqHn0LKTMnP5m', 'Antonio', 'miTwitter'),
(47, 'parque6@parque', '[]', '$2y$13$DKxskReVrwVI88e2Hh3Hd.FWugJ1EKu7AFnRvCrYq2tZhIH6K0FdS', 'Antonio', 'miTwitter'),
(48, 'parque7@parque', '[]', '$2y$13$2h2cgBzcnPoAgTKt/zpiAe37VeJCxJizc1WF.gVVPySMhkNquON1O', 'Antonio', 'miTwitter'),
(49, 'parque8@parque', '[]', '$2y$13$cpXNfBjJQDy6bx2F2GFQX.Hi1NXdKjqxeQ/aBpSIjMuxi8aGwbmN6', 'Antonio', 'miTwitter'),
(50, 'parque9@parque', '[]', '$2y$13$ilsWT2njQgU8LzEEI4vzauYiiV9EsA8ISMPR418dMp8yHsgvuKK.K', 'Antonio', 'miTwitter'),
(51, 'admin0@parque', '[\"ROLE_ADMIN\"]', '$2y$13$9nXVnGv5uphmIwwMymSZTOfohGyNB7kjwXi1Ucj0Ll78gQeRQLAue', 'Antonio', NULL),
(52, 'admin1@parque', '[\"ROLE_ADMIN\"]', '$2y$13$kwi8GefxFyGg/3foatwDXuUvkv.b4qtevNRH/47ZS1TS892gMa4IG', 'Antonio', NULL),
(53, 'admin2@parque', '[\"ROLE_ADMIN\"]', '$2y$13$EiXdbikDhG0MXMgT92sTp.zQ4wW03F0xIDtL61YeW5eN9Hz3JEiUm', 'Antonio', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `api_token`
--
ALTER TABLE `api_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7BA2F5EBA76ED395` (`user_id`);

--
-- Indices de la tabla `atracciones`
--
ALTER TABLE `atracciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entradas_compradas`
--
ALTER TABLE `entradas_compradas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C70C5FC1A688222A` (`entrada_id`),
  ADD KEY `IDX_C70C5FC1DB38439E` (`usuario_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1E86887FAD27D407` (`atraccion_id`),
  ADD KEY `IDX_1E86887FDB38439E` (`usuario_id`);

--
-- Indices de la tabla `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `api_token`
--
ALTER TABLE `api_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `atracciones`
--
ALTER TABLE `atracciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `entradas_compradas`
--
ALTER TABLE `entradas_compradas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `api_token`
--
ALTER TABLE `api_token`
  ADD CONSTRAINT `FK_7BA2F5EBA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `entradas_compradas`
--
ALTER TABLE `entradas_compradas`
  ADD CONSTRAINT `FK_C70C5FC1A688222A` FOREIGN KEY (`entrada_id`) REFERENCES `entradas` (`id`),
  ADD CONSTRAINT `FK_C70C5FC1DB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `FK_1E86887FAD27D407` FOREIGN KEY (`atraccion_id`) REFERENCES `atracciones` (`id`),
  ADD CONSTRAINT `FK_1E86887FDB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
