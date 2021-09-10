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
(1, 'PASO 2021: qué pasará con el dólar y la economía', '2021-09-06 20:27:19', NULL, 'Ajuste drástico del tipo de cambio oficial después de las elecciones. Sin embargo, existe control de cambio que permite administrar reservas y no hay atraso cambiario en un contexto de fuerte alza de los precios internacionales de las materias primas de exportación.', 0, 5),
(2, 'El avance sobre los humedales', '2021-09-06 20:27:19', NULL, 'Desde el 2020, sólo en el Delta e Islas del Paraná se quemaron cerca de 500 mil hectáreas. ¿Cuáles son los negocios que hay detrás y por qué es importante conservarlos, incluso desde el punto de vista productivo?', 0, 4),
(3, 'Dinamarca: un arqueólogo aficionado halló 22 piezas de oro del siglo VI', '2021-09-06 20:27:19', NULL, 'De acuerdo a los primeros exámenes, los objetos pudieron haber sido enterrados como una ofrenda a los dioses en un momento de severos cambios climáticos. Las piezas fueron encontradas en el suroeste de Dinamarca, que según los historiadores se convirtió en la cuna de los reyes vikingos entre los siglos VIII y XII.', 0, 3),
(4, 'Biden aprobó la declaración de \"desastre mayor\" en Nueva York y en Nueva Jersey', '2021-09-06 20:27:19', NULL, 'El presidente de Estados Unidos, Joe Biden, aprobó la declaración de \"desastre mayor\" para varios condados de Nueva York y Nueva Jersey que se vieron afectados por el paso de la tormenta tropical Ida. La decisión permitirá a los ciudadanos y ciudadanas estadounidenses a recibir ayuda del Gobierno federal para alojamiento temporal, reparación de viviendas y préstamos a bajo costo para compensar los destrozos causados por las inundaciones.  ', 0, 4),
(5, 'Coronavirus: se registraron 162 muertos y 3893 nuevos contagios', '2021-09-06 20:27:19', NULL, 'De acuerdo con el reporte diario del Ministerio de Salud, la cifra de víctimas mortales en el país asciende a 112.673 personas. Las camas de cuidados intensivos siguen ocupadas por debajo del 50% de su capacidad, un 42,4 por ciento a nivel nacional y en un 43,9 por ciento en el Área Metropolitana de Buenos Aires.', 0, 10),
(6, 'Abrieron las últimas 10 estaciones de subte que quedaban cerradas: cuáles son', '2021-09-06 20:27:19', NULL, 'Este martes reabrieron las diez estaciones de subte que permanecían cerradas, por lo que la red quedará completamente operativa. Fueron habilitadas las estaciones Sáenz Peña, Pasco y Alberti (Línea A), Florida y Pasteur-Amia (Línea B), Agüero y Scalabrini Ortiz (Línea D), y San José, Pichincha y Varela (Línea E).', 0, 9),
(7, '¿Fraude olímpico?: habrían inventado torneos para clasificar a Tokio', '2021-09-06 20:27:19', NULL, 'A casi un mes de finalizados, los Juegos Olímpicos de Tokio 2020 se mantienen en las portadas de los medios de Bélgica pero no por las siete medallas conseguidas, sino por las denuncias de fraude contra su equipo de básquet 3x3', 1, 2),
(8, 'La FIFA abrió los procesos disciplinarios del Brasil-Argentina', '2021-09-06 20:27:19', NULL, 'La FIFA oficializó este martes la apertura de los \"procesos disciplinarios\" para la Asociación del Fútbol Argentino (AFA) y la Confederación Brasileña de Fútbol (CBF) luego de la suspensión del partido del domingo pasado en San Pablo.', 0, 5),
(9, 'Yes: la Argentina es el país de América Latina con mayor dominio del inglés', '2021-09-06 20:27:19', NULL, 'Como segunda lengua, el idioma de William Shakespeare se impone en el extremo sur del continente americano. Según las cifras reveladas por el portal de estadísticas Statista, la Argentina encabezó el ranking del índice de dominio del inglés en América Latina en 2020. El estudio revela que los argentinos tienen un dominio destacado en la región y se posicionan en el primer lugar entre los habitantes de América Latina en lo que respecta al manejo del inglés, que se imparte como materia en escuelas públicas y privadas, en casas de estudios superiores y en empresas.', 1, 7),
(10, 'titulo10', '2021-09-06 20:27:19', NULL, 'Bajo la consigna #UnaCintaPorLaEducación, hoy, desde las 18, la Red de Familias y Padres Organizados por la Educación se concentrará frente a la Casa Rosada, para exigir que el Gobierno frene la crisis generada por el cierre de las escuelas frente a la situación sanitaria provocada por el avance del Covid-19. Los impulsores de la manifestación, que se replicará en todo el país, piden a quienes participen que lleven una cinta de color para atarla al vallado que rodea el edificio.', 1, 8);

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
