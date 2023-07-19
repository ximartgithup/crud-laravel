-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-07-2023 a las 01:35:10
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `id` int(11) NOT NULL,
  `libros_id` int(11) NOT NULL,
  `prestamos_id` int(11) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `autor` varchar(45) NOT NULL,
  `anyo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `titulo`, `autor`, `anyo`) VALUES
(1, 'Programacion en php', 'Sjimenez', 2023),
(2, 'Desarrollo Web para Dumis', 'Sjimenez', 2020);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multas`
--

CREATE TABLE `multas` (
  `id` int(11) NOT NULL,
  `valor` double NOT NULL,
  `fecha` date NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `prestamos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `multas`
--

INSERT INTO `multas` (`id`, `valor`, `fecha`, `estado`, `prestamos_id`) VALUES
(1, 250000, '2023-06-06', 1, 1),
(2, 150000, '2023-05-29', 1, 1),
(3, 300000, '2023-06-02', 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`id`, `fecha`, `estado`, `usuarios_id`) VALUES
(1, '2023-05-10', 4, 1),
(2, '2023-05-01', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `direccion`, `telefono`, `email`) VALUES
(1, 'Drake Pruitt', 'Santana', 'Ap #880-9509 In Avenue', '+57-3000031056', 'metus@google.com'),
(2, 'Philip Mcdonald', 'Castillo', '6172 In Road', '+57-3004814016', 'donec.tempor@google.org'),
(3, 'Kelly Bond', 'Dillard', '445-2381 Suspendisse Av.', '+57-3003298490', 'eget.venenatis@protonmail.couk'),
(4, 'Cameron May', 'Hunter', '204-952 Quisque Rd.', '+57-3006262124', 'molestie.sodales@yahoo.couk'),
(5, 'Chaim Frank', 'Peters', '833 Sit Ave', '+57-3009431119', 'consequat.dolor.vitae@aol.org'),
(6, 'Charissa Rowland', 'Leach', '1700 Proin Ave', '+57-3006217665', 'orci@outlook.edu'),
(7, 'Lucas Schmidt', 'Stephenson', '9373 Netus Rd.', '+57-3008037408', 'vitae@hotmail.ca'),
(8, 'Gretchen Miles', 'Glass', 'P.O. Box 310, 1991 Consequat, Street', '+57-3002234341', 'aliquet.lobortis@yahoo.edu'),
(9, 'Kane Fitzpatrick', 'Joseph', 'P.O. Box 951, 3552 Turpis Road', '+57-3002026528', 'malesuada.vel@google.net'),
(10, 'Ruby Dawson', 'Sargent', 'Ap #214-7088 Fringilla, Rd.', '+57-3007745630', 'et.malesuada@yahoo.net'),
(11, 'Kane Steele', 'Hopper', '891-5188 Maecenas Ave', '+57-3008686139', 'dis.parturient.montes@outlook.edu'),
(12, 'Carissa Hill', 'Wooten', 'Ap #939-9276 Sodales Avenue', '+57-3006234528', 'aliquam@yahoo.ca'),
(13, 'Bianca Morton', 'Hodge', 'Ap #538-2661 Ipsum Rd.', '+57-3000444515', 'sit.amet.consectetuer@hotmail.ca'),
(14, 'Derek Lewis', 'Shaw', '554-2471 Sapien, Ave', '+57-3009241884', 'ultrices.iaculis.odio@aol.couk'),
(15, 'Sybill Cummings', 'Fleming', 'P.O. Box 446, 9828 Phasellus Rd.', '+57-3007248917', 'elit.nulla@aol.ca'),
(16, 'Byron Beach', 'Hernandez', '826-5069 Non Av.', '+57-3007856677', 'egestas.duis@hotmail.net'),
(17, 'Whitney Chavez', 'Moses', 'P.O. Box 205, 3530 Nisi Rd.', '+57-3006623246', 'libero.proin@icloud.edu'),
(18, 'Harriet Jenkins', 'Bennett', '847-637 Mauris Street', '+57-3001494734', 'interdum.curabitur@icloud.com'),
(19, 'Eliana Luna', 'Bradford', 'Ap #367-3223 Risus Road', '+57-3006611574', 'gravida.aliquam@outlook.couk'),
(20, 'Jamal Hancock', 'Carr', 'Ap #406-3924 Egestas Rd.', '+57-3003211521', 'phasellus.libero@aol.edu'),
(21, 'Griffith Wolf', 'Cervantes', '136 Enim Street', '+57-3005374417', 'dolor.fusce@hotmail.org'),
(22, 'Maya Lucas', 'Floyd', '6568 Dictum Rd.', '+57-3008727257', 'fermentum.vel@icloud.edu'),
(23, 'Ferris Wade', 'Hyde', 'Ap #169-8135 Eu Road', '+57-3003352909', 'feugiat.tellus.lorem@icloud.org'),
(24, 'Georgia Colon', 'Holmes', '508-1428 Neque St.', '+57-3008557412', 'nunc.laoreet.lectus@aol.org'),
(25, 'Hedda Cooke', 'Richard', '567-3916 Sodales Avenue', '+57-3001844327', 'risus.nulla@protonmail.couk'),
(26, 'James Carson', 'Holder', 'P.O. Box 587, 8430 Dolor, Av.', '+57-3008351516', 'nec.cursus@aol.edu'),
(27, 'Germane Compton', 'Avila', 'Ap #401-8426 At, Rd.', '+57-3000215144', 'nonummy.ultricies@hotmail.edu'),
(28, 'Brent Henderson', 'Lancaster', 'Ap #583-6307 Est St.', '+57-3002088750', 'duis@google.ca'),
(29, 'Julie Roberson', 'Haley', 'Ap #787-6730 Sed St.', '+57-3001829685', 'orci.donec@hotmail.com'),
(30, 'Brooke Holder', 'Brewer', 'P.O. Box 112, 4312 Facilisi. Street', '+57-3002442341', 'ut.erat.sed@aol.net'),
(31, 'Garrison Callahan', 'Ingram', '5547 Sed Avenue', '+57-3007524746', 'sapien.nunc@aol.ca'),
(32, 'Andrew Contreras', 'Rich', '839-4287 Arcu Street', '+57-3003882713', 'phasellus.fermentum@google.net'),
(33, 'TaShya May', 'Farley', 'Ap #929-7034 Dictum Avenue', '+57-3004284362', 'vel.mauris@google.couk'),
(34, 'Raven Chambers', 'Sims', 'Ap #582-3067 Pede St.', '+57-3003053851', 'odio@yahoo.ca'),
(35, 'Sade Livingston', 'Cross', '475-5588 Rutrum. St.', '+57-3006451663', 'egestas.ligula@outlook.ca'),
(36, 'Farrah Bray', 'Franks', '819-3596 Montes, Avenue', '+57-3001862728', 'ac@protonmail.edu'),
(37, 'Walker Abbott', 'Rice', '358-1774 Duis Street', '+57-3005237716', 'eros.nec.tellus@aol.couk'),
(38, 'Christen Hall', 'O\'Neill', '5461 Nunc Av.', '+57-3001572245', 'cum.sociis.natoque@aol.ca'),
(39, 'Lydia Washington', 'Raymond', '423-2362 Enim Rd.', '+57-3003664942', 'dui.in.sodales@protonmail.com'),
(40, 'Fuller Montoya', 'Knight', 'P.O. Box 584, 2457 Elit, Av.', '+57-3003816159', 'quam@icloud.ca'),
(41, 'Abraham Newton', 'Byrd', '418-7963 Vitae Road', '+57-3002629848', 'lobortis@aol.net'),
(42, 'Quamar Harrell', 'Dotson', '5313 Morbi St.', '+57-3005525599', 'justo.praesent@yahoo.org'),
(43, 'Rowan Barber', 'Young', '454-3288 Eu Av.', '+57-3007144071', 'magnis@protonmail.edu'),
(44, 'Jena Noel', 'Oliver', 'P.O. Box 901, 7728 Egestas, St.', '+57-3004346712', 'et@yahoo.org'),
(45, 'Caryn Goodwin', 'Vega', '633-2872 Velit Avenue', '+57-3001653922', 'arcu.imperdiet@protonmail.net'),
(46, 'Tanek Ross', 'Garrison', 'Ap #558-9415 Lorem. St.', '+57-3003178888', 'luctus.ipsum@hotmail.edu'),
(47, 'Murphy Waller', 'Barnes', 'Ap #533-901 Convallis Av.', '+57-3000700446', 'integer.in@aol.couk'),
(48, 'Sydney Boone', 'Park', 'P.O. Box 704, 4857 Nibh St.', '+57-3008509634', 'dictum.augue@hotmail.ca'),
(49, 'Ezra Hartman', 'Rosa', 'Ap #335-8128 Dolor Av.', '+57-3006502616', 'nulla.tincidunt@protonmail.com'),
(50, 'Ira Hampton', 'Holloway', 'P.O. Box 986, 6840 Nibh. Av.', '+57-3005134012', 'aliquam.vulputate@aol.org'),
(51, 'Donovan Fields', 'Middleton', 'Ap #497-599 Leo Avenue', '+57-3007774646', 'phasellus.ornare@aol.edu'),
(52, 'Alfonso Gallagher', 'Hall', '334-7125 Placerat. Av.', '+57-3003288419', 'auctor@yahoo.com'),
(53, 'Leilani Gibbs', 'Velasquez', 'Ap #902-5890 Orci. Av.', '+57-3000338807', 'proin@aol.net'),
(54, 'Steven White', 'Stevens', '466-2225 Eget St.', '+57-3002721616', 'ornare.egestas@google.edu'),
(55, 'Hector Patton', 'Mendoza', '502-8321 Eu St.', '+57-3003437570', 'eget@yahoo.couk'),
(56, 'Quinn Oneal', 'Lloyd', 'Ap #270-593 Donec Rd.', '+57-3006682354', 'quisque.libero@hotmail.ca'),
(57, 'Boris Beasley', 'Moreno', 'Ap #788-3823 Tortor. St.', '+57-3004722588', 'vitae.posuere@aol.org'),
(58, 'Tyrone Hutchinson', 'Padilla', 'Ap #659-423 Vitae Rd.', '+57-3005957245', 'eu.erat.semper@outlook.org'),
(59, 'Travis Marks', 'Luna', '109-4886 Nunc Street', '+57-3001566645', 'mauris.molestie@hotmail.couk'),
(60, 'Zorita Atkinson', 'Sweeney', '7427 Justo St.', '+57-3004873096', 'ipsum.dolor@yahoo.ca'),
(61, 'Brennan Walters', 'Pacheco', '925-9714 Porttitor Street', '+57-3009064598', 'lorem.ipsum.sodales@outlook.couk'),
(62, 'Selma Morgan', 'Wilson', '678-7167 Dui. St.', '+57-3002982402', 'etiam.gravida@protonmail.net'),
(63, 'Joelle Silva', 'Reed', '596-4339 Erat. Road', '+57-3001561143', 'eleifend@hotmail.couk'),
(64, 'Micah Becker', 'Brown', 'Ap #108-443 Sed, Avenue', '+57-3003794779', 'ligula@yahoo.com'),
(65, 'Ashely Harrington', 'Jefferson', '311-2444 Condimentum Rd.', '+57-3000611326', 'velit.aliquam@aol.net'),
(66, 'Jerome Hensley', 'Perkins', '7624 Non, Rd.', '+57-3008734521', 'non.leo@protonmail.couk'),
(67, 'Althea Gregory', 'Small', 'P.O. Box 699, 4076 Iaculis, Street', '+57-3001278438', 'posuere.cubilia.curae@hotmail.org'),
(68, 'Doris Baker', 'Rivera', '753-4365 Nam Road', '+57-3005772015', 'faucibus.orci@google.ca'),
(69, 'Madeline Sloan', 'Stone', 'Ap #880-9601 Ullamcorper Rd.', '+57-3003858918', 'in@protonmail.edu'),
(70, 'Henry Kelly', 'West', 'Ap #919-6982 Nulla St.', '+57-3007471418', 'dui.augue@aol.org'),
(71, 'Julie Wiggins', 'Morrison', '488-6533 Condimentum. Road', '+57-3002893497', 'vestibulum.mauris@hotmail.org'),
(72, 'Melissa Sears', 'Finley', 'Ap #435-8929 Dictum. Rd.', '+57-3003986476', 'vestibulum.nec@aol.net'),
(73, 'Jennifer Carver', 'Crawford', 'Ap #625-9054 Ut Road', '+57-3001985118', 'vulputate.velit@google.com'),
(74, 'Beatrice Petty', 'Roberts', '438-2030 Hendrerit Ave', '+57-3007654361', 'mi.tempor@icloud.ca'),
(75, 'Larissa Serrano', 'Gallegos', 'P.O. Box 751, 2846 Amet Ave', '+57-3006271177', 'dictum.magna@outlook.couk'),
(76, 'Duncan Vaughan', 'Bowman', 'Ap #637-9340 At, Ave', '+57-3008737185', 'dolor@protonmail.com'),
(77, 'Faith Payne', 'York', '6836 Mauris Ave', '+57-3002633128', 'at.lacus@hotmail.couk'),
(78, 'Dieter Mccarty', 'Hall', 'P.O. Box 643, 2264 Velit Rd.', '+57-3004424141', 'augue.eu@google.net'),
(79, 'Galvin Gonzalez', 'Estrada', '589-5251 Mauris Street', '+57-3002717055', 'vivamus@icloud.edu'),
(80, 'Marshall Duffy', 'Sampson', 'Ap #680-9381 Lobortis Avenue', '+57-3007281174', 'enim.nunc@yahoo.com'),
(81, 'Arden Bartlett', 'Thompson', '2375 Sed St.', '+57-3000312205', 'gravida.molestie@yahoo.net'),
(82, 'Prescott Blake', 'Walton', 'Ap #465-4635 Ligula. Avenue', '+57-3008446104', 'sed.pede@aol.ca'),
(83, 'Emerson Crane', 'Rhodes', '762-5884 Ipsum. Ave', '+57-3001950560', 'amet.metus.aliquam@google.com'),
(84, 'Ulric Whitaker', 'Mccullough', '174-6388 Erat St.', '+57-3002258736', 'sed.pede.nec@icloud.couk'),
(85, 'Demetria Swanson', 'Benton', 'Ap #286-4627 Maecenas Rd.', '+57-3007230229', 'ac.mattis@yahoo.ca'),
(86, 'Lev Heath', 'Lang', '961-6911 Nonummy Road', '+57-3004587868', 'elementum.dui@yahoo.net'),
(87, 'Jessamine Graves', 'Newman', 'Ap #643-2672 Magna Rd.', '+57-3001250133', 'semper@protonmail.ca'),
(88, 'Brianna Garner', 'Lara', '2275 Nunc Street', '+57-3008987701', 'venenatis.vel@protonmail.org'),
(89, 'Dylan Kelly', 'Larsen', '8486 Dui. Avenue', '+57-3006737515', 'mauris.aliquam@google.couk'),
(90, 'Vance Reeves', 'Rodgers', 'Ap #584-4517 Ornare Rd.', '+57-3004977866', 'curabitur.ut@icloud.couk'),
(91, 'Rina Stout', 'Gutierrez Arenas', '3481 Cursus Road', '+57-3005861184', 'luctus.vulputate@icloud.co'),
(92, 'Martha Ray', 'Velez', '4849 Dis Avenue', '+57-3006733383', 'ultrices.sit.amet@aol.couk'),
(93, 'Pascale Holt', 'Guerra', 'Ap #250-5096 Lobortis St.', '+57-3008936881', 'congue.in@hotmail.edu'),
(94, 'Fatima Hoover', 'Humphrey', '285-2768 Massa. Ave', '+57-3006186738', 'curabitur.massa.vestibulum@yahoo.couk'),
(95, 'Jordan Adkins', 'Simon', '698-7062 Vitae Avenue', '+57-3004338437', 'quisque@google.com'),
(96, 'Karly Roman', 'Finley', '824-9514 Fringilla, Street', '+57-3004387764', 'diam.vel@google.com'),
(97, 'Judith Soto', 'Russo', 'Ap #436-9133 Ornare. Street', '+57-3001071380', 'non.vestibulum.nec@google.ca'),
(98, 'Jarrod Warren', 'Horn', '743-2911 Mattis Road', '+57-3003213565', 'mauris.blandit.mattis@google.net'),
(99, 'Ahmed Roach', 'Key', '673-8934 Nulla St.', '+57-3002784659', 'tincidunt@outlook.edu'),
(100, 'Breanna Best', 'Tillman', '708-1676 Lobortis. Ave', '+57-3007885665', 'sit.amet.ornare@outlook.com'),
(101, 'Gannon Walters', 'Pate', 'P.O. Box 329, 6596 Morbi Road', '+57-3007723764', 'fusce.mollis.duis@icloud.couk'),
(102, 'Callie Chaney', 'Rutledge', 'Ap #640-3385 Vel Avenue', '+57-3003593134', 'nec.enim@aol.edu'),
(103, 'Lucas Horn', 'Gomez', '532-636 Eu St.', '+57-3001234373', 'morbi@protonmail.net'),
(104, 'Julian Wolf', 'Collins', 'Ap #552-3100 Blandit Street', '+57-3009168162', 'nonummy.ac@icloud.ca'),
(105, 'Rajah Haney', 'Gates', 'Ap #593-4453 Proin Av.', '+57-3007612670', 'sollicitudin.a@icloud.com'),
(106, 'Rashad Dickson', 'Combs', '4612 Cras Ave', '+57-3003735415', 'id.ante.dictum@hotmail.com'),
(107, 'Clark Farrell', 'Stanley', 'P.O. Box 806, 8275 Purus. Rd.', '+57-3004021672', 'auctor.non@aol.com'),
(108, 'Emerson Leblanc', 'Mayer', 'Ap #164-2587 Ornare Ave', '+57-3005717554', 'aliquam.adipiscing.lacus@outlook.com'),
(109, 'Shaeleigh Rhodes', 'Cohen', '410-5211 Mattis Av.', '+57-3003962968', 'in.magna@hotmail.couk'),
(110, 'Hop Wong', 'Graham', '8700 Dolor Rd.', '+57-3003876302', 'natoque@aol.com'),
(111, 'Derek Levine', 'Mitchell', 'Ap #939-2351 Etiam Rd.', '+57-3001381465', 'nunc@hotmail.org'),
(112, 'Honorato Douglas', 'Weeks', 'Ap #337-345 Lacus Street', '+57-3004809328', 'erat@icloud.edu'),
(113, 'Cade O\'donnell', 'Lindsey', '525-8641 Mauris. St.', '+57-3002133262', 'ante@aol.com'),
(114, 'Patricia Benson', 'Hooper', '607-3242 Nec Street', '+57-3002914546', 'vel.vulputate@icloud.org'),
(115, 'Conan Reese', 'Robbins', '886-2191 Nec Street', '+57-3003128939', 'diam.nunc@aol.net'),
(116, 'Lance Michael', 'Mcbride', 'P.O. Box 144, 7611 Cum Street', '+57-3000563863', 'eleifend.nec@outlook.net'),
(117, 'Galvin Horn', 'Lynn', '204-3415 Eros. St.', '+57-3002678853', 'consectetuer.rhoncus@icloud.com'),
(118, 'Xanthus Dudley', 'Melton', '6476 Tristique Avenue', '+57-3001165425', 'at@icloud.edu'),
(119, 'Daryl Lang', 'Ray', 'Ap #957-9343 Montes, Av.', '+57-3002317978', 'mi.lorem.vehicula@protonmail.net'),
(120, 'Wallace Frost', 'Moon', '435-2963 Sed Street', '+57-3006481316', 'nulla.in.tincidunt@google.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libros_id` (`libros_id`),
  ADD KEY `prestamos_id` (`prestamos_id`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `multas`
--
ALTER TABLE `multas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prestamos_id` (`prestamos_id`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `multas`
--
ALTER TABLE `multas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `detalles_ibfk_1` FOREIGN KEY (`libros_id`) REFERENCES `libros` (`id`),
  ADD CONSTRAINT `detalles_ibfk_2` FOREIGN KEY (`prestamos_id`) REFERENCES `prestamos` (`id`);

--
-- Filtros para la tabla `multas`
--
ALTER TABLE `multas`
  ADD CONSTRAINT `multas_ibfk_1` FOREIGN KEY (`prestamos_id`) REFERENCES `prestamos` (`id`);

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
