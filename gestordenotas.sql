-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 10, 2021 at 08:07 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestordenotas`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorianotas`
--

CREATE TABLE `categorianotas` (
  `notasId` int(11) NOT NULL,
  `categoriasId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorianotas`
--

INSERT INTO `categorianotas` (`notasId`, `categoriasId`, `id`) VALUES
(1, 5, 1),
(2, 2, 2),
(3, 3, 3),
(4, 3, 4),
(5, 2, 5),
(6, 2, 6),
(7, 4, 7),
(8, 4, 8),
(9, 1, 9),
(10, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombreCategoria` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nombreCategoria`) VALUES
(1, 'educacion'),
(2, 'sociedad'),
(3, 'internacionales'),
(4, 'deportes'),
(5, 'economia');

-- --------------------------------------------------------

--
-- Table structure for table `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `fechaCreacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaModificacion` datetime DEFAULT NULL,
  `descripcion` text NOT NULL,
  `sePuedeEliminar` tinyint(4) NOT NULL,
  `usuarioId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notas`
--

INSERT INTO `notas` (`id`, `titulo`, `fechaCreacion`, `fechaModificacion`, `descripcion`, `sePuedeEliminar`, `usuarioId`) VALUES
(1, 'PASO 2021: qu?? pasar?? con el d??lar y la econom??a', '2021-09-06 20:27:19', NULL, 'Ajuste dr??stico del tipo de cambio oficial despu??s de las elecciones. Sin embargo, existe control de cambio que permite administrar reservas y no hay atraso cambiario en un contexto de fuerte alza de los precios internacionales de las materias primas de exportaci??n.', 0, 5),
(2, 'El avance sobre los humedales', '2021-09-06 20:27:19', NULL, 'Desde el 2020, s??lo en el Delta e Islas del Paran?? se quemaron cerca de 500 mil hect??reas. ??Cu??les son los negocios que hay detr??s y por qu?? es importante conservarlos, incluso desde el punto de vista productivo?', 0, 4),
(3, 'Dinamarca: un arque??logo aficionado hall?? 22 piezas de oro del siglo VI', '2021-09-06 20:27:19', NULL, 'De acuerdo a los primeros ex??menes, los objetos pudieron haber sido enterrados como una ofrenda a los dioses en un momento de severos cambios clim??ticos. Las piezas fueron encontradas en el suroeste de Dinamarca, que seg??n los historiadores se convirti?? en la cuna de los reyes vikingos entre los siglos VIII y XII.', 0, 3),
(4, 'Biden aprob?? la declaraci??n de \"desastre mayor\" en Nueva York y en Nueva Jersey', '2021-09-06 20:27:19', NULL, 'El presidente de Estados Unidos, Joe Biden, aprob?? la declaraci??n de \"desastre mayor\" para varios condados de Nueva York y Nueva Jersey que se vieron afectados por el paso de la tormenta tropical Ida. La decisi??n permitir?? a los ciudadanos y ciudadanas estadounidenses a recibir ayuda del Gobierno federal para alojamiento temporal, reparaci??n de viviendas y pr??stamos a bajo costo para compensar los destrozos causados por las inundaciones.  ', 0, 4),
(5, 'Coronavirus: se registraron 162 muertos y 3893 nuevos contagios', '2021-09-06 20:27:19', NULL, 'De acuerdo con el reporte diario del Ministerio de Salud, la cifra de v??ctimas mortales en el pa??s asciende a 112.673 personas. Las camas de cuidados intensivos siguen ocupadas por debajo del 50% de su capacidad, un 42,4 por ciento a nivel nacional y en un 43,9 por ciento en el ??rea Metropolitana de Buenos Aires.', 0, 10),
(6, 'Abrieron las ??ltimas 10 estaciones de subte que quedaban cerradas: cu??les son', '2021-09-06 20:27:19', NULL, 'Este martes reabrieron las diez estaciones de subte que permanec??an cerradas, por lo que la red quedar?? completamente operativa. Fueron habilitadas las estaciones S??enz Pe??a, Pasco y Alberti (L??nea A), Florida y Pasteur-Amia (L??nea B), Ag??ero y Scalabrini Ortiz (L??nea D), y San Jos??, Pichincha y Varela (L??nea E).', 0, 9),
(7, '??Fraude ol??mpico?: habr??an inventado torneos para clasificar a Tokio', '2021-09-06 20:27:19', NULL, 'A casi un mes de finalizados, los Juegos Ol??mpicos de Tokio 2020 se mantienen en las portadas de los medios de B??lgica pero no por las siete medallas conseguidas, sino por las denuncias de fraude contra su equipo de b??squet 3x3', 1, 2),
(8, 'La FIFA abri?? los procesos disciplinarios del Brasil-Argentina', '2021-09-06 20:27:19', NULL, 'La FIFA oficializ?? este martes la apertura de los \"procesos disciplinarios\" para la Asociaci??n del F??tbol Argentino (AFA) y la Confederaci??n Brasile??a de F??tbol (CBF) luego de la suspensi??n del partido del domingo pasado en San Pablo.', 0, 5),
(9, 'Yes: la Argentina es el pa??s de Am??rica Latina con mayor dominio del ingl??s', '2021-09-06 20:27:19', NULL, 'Como segunda lengua, el idioma de William Shakespeare se impone en el extremo sur del continente americano. Seg??n las cifras reveladas por el portal de estad??sticas Statista, la Argentina encabez?? el ranking del ??ndice de dominio del ingl??s en Am??rica Latina en 2020. El estudio revela que los argentinos tienen un dominio destacado en la regi??n y se posicionan en el primer lugar entre los habitantes de Am??rica Latina en lo que respecta al manejo del ingl??s, que se imparte como materia en escuelas p??blicas y privadas, en casas de estudios superiores y en empresas.', 1, 7),
(10, 'titulo10', '2021-09-06 20:27:19', NULL, 'Bajo la consigna #UnaCintaPorLaEducaci??n, hoy, desde las 18, la Red de Familias y Padres Organizados por la Educaci??n se concentrar?? frente a la Casa Rosada, para exigir que el Gobierno frene la crisis generada por el cierre de las escuelas frente a la situaci??n sanitaria provocada por el avance del Covid-19. Los impulsores de la manifestaci??n, que se replicar?? en todo el pa??s, piden a quienes participen que lleven una cinta de color para atarla al vallado que rodea el edificio.', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(30) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `apellido` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`nombre`, `mail`, `id`, `apellido`) VALUES
('juan', 'juan.gomez@gmail.com', 1, 'gomez'),
('maria', 'mariaPerez@gmail.com', 2, 'perez'),
('tomas', 'tomas_rodriguez@gmail.com', 3, 'rodriguez'),
('julian', 'julianM@gmail.com', 4, 'martinez'),
('martina', 'martinaHernandez@gmail.com', 5, 'hernandez'),
('julieta', 'julieta.gimenez@gmail.com', 6, 'gimenez'),
('agustin', 'agustin-montero@gmail.com', 7, 'montero'),
('valentina', 'valentina-torres@gmail.com', 8, 'torres'),
('camila', 'camilaGonzalez@gmail.com', 9, 'gonzalez'),
('mateo', 'mateo.sosa@gmail.com', 10, 'sosa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorianotas`
--
ALTER TABLE `categorianotas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorianotas_FK` (`categoriasId`),
  ADD KEY `categorianotas_FK_1` (`notasId`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notas_FK` (`usuarioId`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categorianotas`
--
ALTER TABLE `categorianotas`
  ADD CONSTRAINT `categorianotas_FK` FOREIGN KEY (`categoriasId`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `categorianotas_FK_1` FOREIGN KEY (`notasId`) REFERENCES `notas` (`id`);

--
-- Constraints for table `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_FK` FOREIGN KEY (`usuarioId`) REFERENCES `notas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
