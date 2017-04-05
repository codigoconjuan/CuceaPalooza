-- phpMyAdmin SQL Dump
-- version 4.6.5.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 05, 2017 at 07:44 PM
-- Server version: 5.6.34
-- PHP Version: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuceapalooza`
--

-- --------------------------------------------------------

--
-- Table structure for table `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre_artista` varchar(40) NOT NULL,
  `escenario_id` int(11) NOT NULL,
  `fecha_id` int(11) NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artistas`
--

INSERT INTO `artistas` (`id`, `nombre_artista`, `escenario_id`, `fecha_id`, `hora_inicio`, `hora_fin`) VALUES
(1, 'Cage the Elephant', 1, 1, '13:30:00', '15:00:00'),
(2, 'Capital Cities', 1, 1, '15:30:00', '17:00:00'),
(3, 'Muse', 1, 1, '17:30:00', '19:00:00'),
(4, 'Blink 182', 1, 1, '19:30:00', '21:00:00'),
(5, 'Metallica', 1, 1, '21:30:00', '23:30:00'),
(6, 'Louta', 2, 1, '14:30:00', '15:45:00'),
(7, 'Alok', 2, 1, '16:00:00', '17:15:00'),
(8, 'DJ Snake', 2, 1, '17:30:00', '19:00:00'),
(9, 'Tchami', 2, 1, '19:15:00', '21:00:00'),
(10, 'Marshmello', 2, 1, '21:30:00', '23:00:00'),
(11, 'Foster The People', 1, 2, '13:30:00', '15:00:00'),
(12, 'Arcade Fire', 1, 2, '15:30:00', '17:00:00'),
(13, 'Justice', 1, 2, '17:30:00', '19:30:00'),
(14, 'The Killers', 1, 2, '20:00:00', '22:00:00'),
(15, 'Red Hot Chili Peppers', 1, 2, '22:30:00', '00:30:00'),
(16, 'Mad Professor', 2, 2, '13:30:00', '14:30:00'),
(17, 'Nervo', 2, 2, '14:45:00', '16:30:00'),
(18, 'Oliver Heldens', 2, 2, '16:45:00', '18:00:00'),
(19, 'Martin Garrix', 2, 2, '18:30:00', '20:30:00'),
(20, 'Tiësto', 2, 2, '21:00:00', '23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `concurso`
--

CREATE TABLE `concurso` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mensaje` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `escenario`
--

CREATE TABLE `escenario` (
  `id_escenario` int(11) NOT NULL,
  `nombre_escenario` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `escenario`
--

INSERT INTO `escenario` (`id_escenario`, `nombre_escenario`) VALUES
(1, 'Mainstage'),
(2, 'Electrónica');

-- --------------------------------------------------------

--
-- Table structure for table `fecha`
--

CREATE TABLE `fecha` (
  `id_fecha` int(11) NOT NULL,
  `fecha_evento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fecha`
--

INSERT INTO `fecha` (`id_fecha`, `fecha_evento`) VALUES
(1, '2017-04-05'),
(2, '2017-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `texto` longtext NOT NULL,
  `imagen_grande` varchar(100) NOT NULL,
  `imagen_miniatura` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `titulo`, `texto`, `imagen_grande`, `imagen_miniatura`) VALUES
(1, 'Red Hot Chili Peppers confirma asistencia en lollapalooza cucea 2017', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tristique leo. Nulla non dui efficitur, pellentesque est scelerisque, varius mauris. Sed dignissim libero dapibus, cursus risus vitae, convallis tellus. Maecenas sed malesuada libero, a consectetur mauris. Nunc eleifend lobortis quam a ullamcorper. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus commodo laoreet scelerisque. Vivamus ultricies lorem non facilisis dapibus. Mauris sed hendrerit justo.</p>\\r\\n\\r\\n<p>Vestibulum molestie est ex, sit amet blandit diam congue sit amet. Vivamus suscipit quis mauris vel semper. In non ante et nisl posuere interdum vitae at arcu. Suspendisse dolor dolor, dictum vestibulum risus vel, fringilla dapibus orci. Praesent at dui id ipsum vulputate pellentesque. Suspendisse vulputate orci convallis arcu maximus scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\\r\\n\\r\\n<p>Curabitur et lacus varius, congue est imperdiet, scelerisque purus. Quisque dignissim congue vulputate. Aliquam nisi nibh, dignissim vitae urna sed, aliquam placerat tellus. Suspendisse at elit odio. Phasellus justo purus, convallis vel ipsum non, tincidunt convallis turpis. Mauris nec mauris dictum, fringilla nunc sit amet, vulputate erat. Curabitur commodo porta erat, quis tincidunt dolor dignissim at. Nam tincidunt quam sit amet justo sagittis, nec laoreet nisl tincidunt. Maecenas ut purus sapien. Donec elit turpis, condimentum sed nisi ac, sodales tempus eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed fringilla, orci eu sagittis viverra, ex orci consectetur urna, a sodales ipsum ligula et erat. Fusce nec accumsan turpis.</p>', 'imagen_noticia.jpg', 'noticia.jpg'),
(2, 'Metallica confirmado!', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tristique leo. Nulla non dui efficitur, pellentesque est scelerisque, varius mauris. Sed dignissim libero dapibus, cursus risus vitae, convallis tellus. Maecenas sed malesuada libero, a consectetur mauris. Nunc eleifend lobortis quam a ullamcorper. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus commodo laoreet scelerisque. Vivamus ultricies lorem non facilisis dapibus. Mauris sed hendrerit justo.</p>\\r\\n\\r\\n<p>Vestibulum molestie est ex, sit amet blandit diam congue sit amet. Vivamus suscipit quis mauris vel semper. In non ante et nisl posuere interdum vitae at arcu. Suspendisse dolor dolor, dictum vestibulum risus vel, fringilla dapibus orci. Praesent at dui id ipsum vulputate pellentesque. Suspendisse vulputate orci convallis arcu maximus scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\\r\\n\\r\\n<p>Curabitur et lacus varius, congue est imperdiet, scelerisque purus. Quisque dignissim congue vulputate. Aliquam nisi nibh, dignissim vitae urna sed, aliquam placerat tellus. Suspendisse at elit odio. Phasellus justo purus, convallis vel ipsum non, tincidunt convallis turpis. Mauris nec mauris dictum, fringilla nunc sit amet, vulputate erat. Curabitur commodo porta erat, quis tincidunt dolor dignissim at. Nam tincidunt quam sit amet justo sagittis, nec laoreet nisl tincidunt. Maecenas ut purus sapien. Donec elit turpis, condimentum sed nisi ac, sodales tempus eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed fringilla, orci eu sagittis viverra, ex orci consectetur urna, a sodales ipsum ligula et erat. Fusce nec accumsan turpis.</p>', 'imagen_noticia.jpg', 'noticia.jpg'),
(3, 'Boletos ya a la venta!', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tristique leo. Nulla non dui efficitur, pellentesque est scelerisque, varius mauris. Sed dignissim libero dapibus, cursus risus vitae, convallis tellus. Maecenas sed malesuada libero, a consectetur mauris. Nunc eleifend lobortis quam a ullamcorper. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus commodo laoreet scelerisque. Vivamus ultricies lorem non facilisis dapibus. Mauris sed hendrerit justo.</p>\\r\\n\\r\\n<p>Vestibulum molestie est ex, sit amet blandit diam congue sit amet. Vivamus suscipit quis mauris vel semper. In non ante et nisl posuere interdum vitae at arcu. Suspendisse dolor dolor, dictum vestibulum risus vel, fringilla dapibus orci. Praesent at dui id ipsum vulputate pellentesque. Suspendisse vulputate orci convallis arcu maximus scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\\r\\n\\r\\n<p>Curabitur et lacus varius, congue est imperdiet, scelerisque purus. Quisque dignissim congue vulputate. Aliquam nisi nibh, dignissim vitae urna sed, aliquam placerat tellus. Suspendisse at elit odio. Phasellus justo purus, convallis vel ipsum non, tincidunt convallis turpis. Mauris nec mauris dictum, fringilla nunc sit amet, vulputate erat. Curabitur commodo porta erat, quis tincidunt dolor dignissim at. Nam tincidunt quam sit amet justo sagittis, nec laoreet nisl tincidunt. Maecenas ut purus sapien. Donec elit turpis, condimentum sed nisi ac, sodales tempus eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed fringilla, orci eu sagittis viverra, ex orci consectetur urna, a sodales ipsum ligula et erat. Fusce nec accumsan turpis.</p>', 'imagen_noticia.jpg', 'noticia.jpg'),
(4, 'Confirmadas las fechas para            lolaapalooza cucea!', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tristique leo. Nulla non dui efficitur, pellentesque est scelerisque, varius mauris. Sed dignissim libero dapibus, cursus risus vitae, convallis tellus. Maecenas sed malesuada libero, a consectetur mauris. Nunc eleifend lobortis quam a ullamcorper. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus commodo laoreet scelerisque. Vivamus ultricies lorem non facilisis dapibus. Mauris sed hendrerit justo.</p>\\r\\n\\r\\n<p>Vestibulum molestie est ex, sit amet blandit diam congue sit amet. Vivamus suscipit quis mauris vel semper. In non ante et nisl posuere interdum vitae at arcu. Suspendisse dolor dolor, dictum vestibulum risus vel, fringilla dapibus orci. Praesent at dui id ipsum vulputate pellentesque. Suspendisse vulputate orci convallis arcu maximus scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\\r\\n\\r\\n<p>Curabitur et lacus varius, congue est imperdiet, scelerisque purus. Quisque dignissim congue vulputate. Aliquam nisi nibh, dignissim vitae urna sed, aliquam placerat tellus. Suspendisse at elit odio. Phasellus justo purus, convallis vel ipsum non, tincidunt convallis turpis. Mauris nec mauris dictum, fringilla nunc sit amet, vulputate erat. Curabitur commodo porta erat, quis tincidunt dolor dignissim at. Nam tincidunt quam sit amet justo sagittis, nec laoreet nisl tincidunt. Maecenas ut purus sapien. Donec elit turpis, condimentum sed nisi ac, sodales tempus eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed fringilla, orci eu sagittis viverra, ex orci consectetur urna, a sodales ipsum ligula et erat. Fusce nec accumsan turpis.</p>', 'imagen_noticia.jpg', 'noticia.jpg'),
(5, 'CUCEA tendrá festival de música', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tristique leo. Nulla non dui efficitur, pellentesque est scelerisque, varius mauris. Sed dignissim libero dapibus, cursus risus vitae, convallis tellus. Maecenas sed malesuada libero, a consectetur mauris. Nunc eleifend lobortis quam a ullamcorper. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus commodo laoreet scelerisque. Vivamus ultricies lorem non facilisis dapibus. Mauris sed hendrerit justo.</p>\\r\\n\\r\\n<p>Vestibulum molestie est ex, sit amet blandit diam congue sit amet. Vivamus suscipit quis mauris vel semper. In non ante et nisl posuere interdum vitae at arcu. Suspendisse dolor dolor, dictum vestibulum risus vel, fringilla dapibus orci. Praesent at dui id ipsum vulputate pellentesque. Suspendisse vulputate orci convallis arcu maximus scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\\r\\n\\r\\n<p>Curabitur et lacus varius, congue est imperdiet, scelerisque purus. Quisque dignissim congue vulputate. Aliquam nisi nibh, dignissim vitae urna sed, aliquam placerat tellus. Suspendisse at elit odio. Phasellus justo purus, convallis vel ipsum non, tincidunt convallis turpis. Mauris nec mauris dictum, fringilla nunc sit amet, vulputate erat. Curabitur commodo porta erat, quis tincidunt dolor dignissim at. Nam tincidunt quam sit amet justo sagittis, nec laoreet nisl tincidunt. Maecenas ut purus sapien. Donec elit turpis, condimentum sed nisi ac, sodales tempus eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed fringilla, orci eu sagittis viverra, ex orci consectetur urna, a sodales ipsum ligula et erat. Fusce nec accumsan turpis.</p>', 'imagen_noticia.jpg', 'noticia.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `escenario` (`escenario_id`),
  ADD KEY `fecha` (`fecha_id`);

--
-- Indexes for table `concurso`
--
ALTER TABLE `concurso`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `escenario`
--
ALTER TABLE `escenario`
  ADD PRIMARY KEY (`id_escenario`);

--
-- Indexes for table `fecha`
--
ALTER TABLE `fecha`
  ADD PRIMARY KEY (`id_fecha`);

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `concurso`
--
ALTER TABLE `concurso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `escenario`
--
ALTER TABLE `escenario`
  MODIFY `id_escenario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fecha`
--
ALTER TABLE `fecha`
  MODIFY `id_fecha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `artistas`
--
ALTER TABLE `artistas`
  ADD CONSTRAINT `artistas_ibfk_1` FOREIGN KEY (`escenario_id`) REFERENCES `escenario` (`id_escenario`),
  ADD CONSTRAINT `artistas_ibfk_2` FOREIGN KEY (`fecha_id`) REFERENCES `fecha` (`id_fecha`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
