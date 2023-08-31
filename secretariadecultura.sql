-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2023 at 09:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `secretariadecultura`
--

-- --------------------------------------------------------

--
-- Table structure for table `artista`
--

CREATE TABLE `artista` (
  `Nombre` text NOT NULL,
  `Sexo` text NOT NULL,
  `nacimiento` date NOT NULL,
  `Departamento` text NOT NULL,
  `ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artista`
--

INSERT INTO `artista` (`Nombre`, `Sexo`, `nacimiento`, `Departamento`, `ID`) VALUES
('Hugo Jesus Cuellar', 'Masculino', '2003-11-24', 'Canto', '001'),
('Nataly Garcia Alcala', 'Mujer', '2003-08-22', 'Pintura', '002'),
('Marlene Orejel Flores ', 'Mujer', '2003-08-14', 'Canto', '003'),
('Gilberto Rodriguez ', 'Desconocido', '2003-02-26', 'Pintura', '004'),
('Jesus Enrique', 'Masculino', '2003-01-01', 'Seguridad', '010'),
('Daniela Sherlin', 'Femenino', '1998-12-20', 'Canto', '011'),
('Andres Chavez', 'Masculino', '1989-04-30', 'Música', 'AC056'),
('Alejandro Gomez', 'Masculino', '1995-01-21', 'Música', 'AG076'),
('Ana Maria Velez', 'Femenino', '1996-02-03', 'Arte', 'AM071'),
('Adriana Pineda', 'Femenino', '1989-08-15', 'Cine', 'AP069'),
('Andres Ramirez', 'Masculino', '1994-02-01', 'Teatro', 'AR094'),
('Andres Valdez', 'Masculino', '1988-10-17', 'Teatro', 'AV086'),
('Camila Mendoza', 'Femenino', '1997-03-28', 'Arte', 'CM067'),
('Carmen Navarro', 'Femenino', '1992-10-16', 'Cine', 'CN061'),
('Carla Pacheco', 'Femenino', '1990-08-14', 'Cine', 'CP085'),
('Carolina Paredes', 'Femenino', '1990-08-16', 'Cine', 'CP097'),
('Daniela Leon', 'Femenino', '1997-12-18', 'Cine', 'DL093'),
('Diego Martinez', 'Masculino', '1987-11-27', 'Música', 'DM052'),
('Daniel Velasco', 'Masculino', '1987-09-08', 'Teatro', 'DV074'),
('Emilio Torres', 'Masculino', '1993-06-14', 'Teatro', 'ET090'),
('Elena Vargas', 'Femenino', '1997-01-10', 'Cine', 'EV057'),
('Felipe Garcia', 'Masculino', '1986-12-02', 'Música', 'FG060'),
('Fernando Herrera', 'Masculino', '1991-01-31', 'Teatro', 'FH066'),
('Felipe Molina', 'Masculino', '1992-06-26', 'Música', 'FM084'),
('Gustavo Castro', 'Masculino', '1992-04-14', 'Música', 'GC072'),
('Gabriela Vega', 'Femenino', '1999-12-05', 'Arte', 'GV087'),
('Hector Morales', 'Masculino', '1996-07-12', 'Teatro', 'HM058'),
('Isabel Lopez', 'Femenino', '1991-02-14', 'Cine', 'IL053'),
('Isabella Rivas', 'Femenino', '1997-12-01', 'Cine', 'IR081'),
('Jorge Nunez', 'Masculino', '1995-02-28', 'Música', 'JN088'),
('Javier Ramirez', 'Masculino', '1998-06-18', 'Teatro', 'JR054'),
('la chona', 'Mujer', '2003-08-22', 'Pintura', 'LC121'),
('Lorena Diaz', 'Femenino', '1993-11-11', 'Cine', 'LD065'),
('Laura Fernandez', 'Femenino', '1993-08-09', 'Arte', 'LF051'),
('Laura Morales', 'Femenino', '1998-11-29', 'Arte', 'LM075'),
('Lucia Soto', 'Femenino', '1991-08-07', 'Arte', 'LS091'),
('Luis Valenzuela', 'Masculino', '1988-10-28', 'Teatro', 'LV098'),
('Miguel Andrade', 'Masculino', '1994-10-23', 'Teatro', 'MA070'),
('Monica Ortega', 'Femenino', '1990-03-05', 'Arte', 'MO059'),
('Marina Perez', 'Femenino', '1986-04-12', 'Cine', 'MP077'),
('Mario Suarez', 'Masculino', '1994-02-09', 'Teatro', 'MS082'),
('Marco Sanchez', 'Masculino', '1989-10-09', 'Música', 'MS092'),
('Natalia Ortiz', 'Femenino', '1996-04-03', 'Arte', 'NO083'),
('Paola Mora', 'Femenino', '1987-04-22', 'Cine', 'PM089'),
('Pedro Rios', 'Masculino', '1995-02-14', 'Música', 'PR100'),
('Pablo Torres', 'Masculino', '1988-09-19', 'Música', 'PT064'),
('Patricia Torres', 'Femenino', '1990-07-26', 'Cine', 'PT073'),
('Raul Jimenez', 'Masculino', '1989-10-20', 'Música', 'RJ080'),
('Ricardo Paredes', 'Masculino', '1999-05-25', 'Teatro', 'RP062'),
('Roberto Silva', 'Masculino', '1985-06-07', 'Música', 'RS068'),
('Roberto Vargas', 'Masculino', '1992-06-05', 'Música', 'RV096'),
('Sofia Castro', 'Femenino', '1994-09-22', 'Arte', 'SC055'),
('Santiago Diaz', 'Masculino', '1993-06-15', 'Teatro', 'SD078'),
('Sara Navarro', 'Femenino', '1999-12-10', 'Arte', 'SN099'),
('Valentina Castro', 'Femenino', '1996-04-23', 'Arte', 'VC095'),
('Valeria Herrera', 'Femenino', '1991-08-18', 'Arte', 'VH079'),
('Valentina Rios', 'Femenino', '1995-07-07', 'Arte', 'VR063');

-- --------------------------------------------------------

--
-- Table structure for table `evento`
--

CREATE TABLE `evento` (
  `Evento` varchar(80) NOT NULL,
  `Horario` time NOT NULL,
  `Tipo` varchar(80) NOT NULL,
  `Presupuesto` varchar(20) NOT NULL,
  `Fecha` date NOT NULL,
  `ID_EVENTO` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evento`
--

INSERT INTO `evento` (`Evento`, `Horario`, `Tipo`, `Presupuesto`, `Fecha`, `ID_EVENTO`) VALUES
('PEDA2', '10:00:00', 'Artístico', '$5000', '2023-09-15', 7),
('Fiesta de Gala Benéfica', '20:00:00', 'Fiesta', '$10000', '2023-10-20', 8),
('Seminario de Marketing Digital', '14:30:00', 'Seminario', '$3000', '2023-09-30', 9),
('Lanzamiento de Producto X', '18:00:00', 'Lanzamiento', '$8000', '2023-11-05', 10),
('Evento de Networking Empresarial', '17:00:00', 'Networking', '$2000', '2023-10-10', 11),
('Concierto de Verano', '19:30:00', 'Concierto', '$6000', '2023-08-25', 12),
('Junta', '09:00:00', 'Artístico', '$1800', '2023-09-08', 13),
('Taller de Liderazgo', '15:00:00', 'Taller', '$1200', '2023-10-05', 14),
('Feria de Innovación', '11:00:00', 'Feria', '$2500', '2023-11-18', 15),
('Presentación de Resultados Trimestrales', '15:30:00', 'Presentación', '$1800', '2023-10-30', 16),
('Festival Gastronómico', '12:00:00', 'Festival', '$3500', '2023-11-08', 17),
('Torneo de Ajedrez', '16:00:00', 'Torneo', '$700', '2023-09-22', 18),
('Sesión de Yoga al Aire Libre', '08:00:00', 'Sesión', '$500', '2023-09-28', 19),
('Charla sobre Sostenibilidad', '15:00:00', 'Charla', '$800', '2023-10-15', 20),
('Exposición de Arte Local', '10:30:00', 'Exposición', '$300', '2023-09-12', 21),
('Seminario de Finanzas Personales', '14:00:00', 'Seminario', '$1500', '2023-10-02', 22),
('Evento de Networking de Tecnología', '18:30:00', 'Networking', '$1000', '2023-11-13', 23),
('Fiesta de Navidad de la Empresa', '19:00:00', 'Fiesta', '$6000', '2023-12-22', 24),
('Conferencia de Salud y Bienestar', '11:00:00', 'Conferencia', '$2000', '2023-09-18', 25),
('Lanzamiento de Producto Y', '16:30:00', 'Lanzamiento', '$7500', '2023-10-25', 26),
('Sesión de Meditación Guiada', '08:30:00', 'Sesión', '$400', '2023-11-02', 27),
('Feria de Empleo', '13:00:00', 'Feria', '$1800', '2023-09-20', 28),
('Seminario de Desarrollo Profesional', '15:30:00', 'Seminario', '$2500', '2023-10-10', 29),
('Charla sobre Inteligencia Artificial', '10:00:00', 'Charla', '$700', '2023-11-14', 30),
('Torneo de Fútbol Interempresas', '17:00:00', 'Torneo', '$1200', '2023-09-26', 31),
('Concierto de Jazz en el Parque', '19:00:00', 'Concierto', '$3500', '2023-09-08', 32),
('Evento de Networking Creativo', '18:30:00', 'Networking', '$800', '2023-10-18', 33),
('Fiesta de Halloween', '20:00:00', 'Fiesta', '$4500', '2023-10-31', 34),
('Seminario de Emprendimiento', '14:30:00', 'Seminario', '$2000', '2023-09-23', 35),
('Lanzamiento de Producto Z', '16:00:00', 'Lanzamiento', '$6000', '2023-11-12', 36),
('Taller de Creatividad', '12:00:00', 'Taller', '$900', '2023-10-06', 37),
('Conferencia de Tecnologías Emergentes', '10:30:00', 'Conferencia', '$3000', '2023-09-10', 38),
('Evento de Inauguración de Oficina', '17:00:00', 'Inauguración', '$1500', '2023-11-28', 39),
('Feria de Alimentación Saludable', '11:00:00', 'Feria', '$1800', '2023-10-22', 40),
('Charla sobre Crecimiento Personal', '15:00:00', 'Charla', '$700', '2023-11-08', 41),
('Torneo de Tenis de Mesa', '16:30:00', 'Torneo', '$1000', '2023-09-16', 42),
('Sesión de Yoga en la Playa', '07:00:00', 'Sesión', '$400', '2023-09-25', 43),
('Exposición de Fotografía', '13:30:00', 'Exposición', '$1200', '2023-10-17', 44),
('Feria de Arte y Manualidades', '12:00:00', 'Feria', '$2500', '2023-09-29', 45),
('Presentación de Nuevos Proyectos', '15:30:00', 'Presentación', '$1700', '2023-11-21', 46),
('Festival de Música Local', '18:00:00', 'Festival', '$3800', '2023-10-13', 47),
('Torneo de Póker', '19:00:00', 'Torneo', '$600', '2023-09-11', 48),
('Sesión de Meditación en el Parque', '08:30:00', 'Sesión', '$300', '2023-09-30', 49),
('Charla sobre Sostenibilidad Empresarial', '16:00:00', 'Charla', '$800', '2023-11-05', 50),
('Taller de Liderazgo1', '15:00:00', 'Artístico', '$1200', '2023-10-05', 121);

-- --------------------------------------------------------

--
-- Table structure for table `lugar`
--

CREATE TABLE `lugar` (
  `id_lugar` int(7) NOT NULL,
  `Nombre_lugar` varchar(30) NOT NULL,
  `Ubicacion` varchar(50) NOT NULL,
  `Capacidad` int(6) NOT NULL,
  `Tamano_m2` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lugar`
--

INSERT INTO `lugar` (`id_lugar`, `Nombre_lugar`, `Ubicacion`, `Capacidad`, `Tamano_m2`) VALUES
(1, 'plaza civica', 'Plaza civica, Centro', 200, 300),
(2, 'Catedral Santisima Trinidad', ' Calle M. Hidalgo 74, Centro', 500, 600),
(3, 'cucsur', 'Av Independencia Nacional 151, Centro', 50000, 1000),
(4, 'Plaza de toros Alberto Baldera', 'C. Mariano Bárcenas 72, Centro', 4000, 2500),
(5, 'Casa de la cultura', 'Av. Hidalgo 247, Centro', 100, 25),
(6, 'casa de sinthia', 'privada constitucion 15, centro', 21, 10),
(7, 'Centro de Convenciones Z', 'Ubicación G', 800, 1500),
(8, 'Sala Polivalente', 'Ubicación H', 100, 300),
(9, 'Salón Cultural 1', 'Ubicación I', 150, 400),
(10, 'Salón de Eventos D', 'Ubicación J', 250, 600),
(11, 'Sala de Conferencias E', 'Ubicación K', 40, 120),
(12, 'Salón de Fiestas ABC', 'Ubicación L', 400, 900),
(13, 'Auditorio Secundario', 'Ubicación M', 300, 800),
(14, 'Sala de Reuniones Beta', 'Ubicación N', 15, 35),
(15, 'Centro de Convenciones Y', 'Ubicación O', 700, 1300),
(16, 'Sala de Eventos F', 'Ubicación P', 180, 500),
(17, 'Salón de Fiestas 123', 'Ubicación Q', 280, 650),
(18, 'Salón de Conferencias Z', 'Ubicación R', 60, 180),
(19, 'Auditorio Auxiliar', 'Ubicación S', 400, 950),
(20, 'Sala de Reuniones Gamma', 'Ubicación T', 25, 60),
(21, 'Salón Cultural 2', 'Ubicación U', 120, 350),
(22, 'Salón de Eventos E', 'Ubicación V', 220, 550),
(23, 'Sala de Conferencias A', 'Ubicación W', 45, 130),
(24, 'Salón de Fiestas DEF', 'Ubicación X', 350, 800),
(25, 'Auditorio Terciario', 'Ubicación Y', 250, 700),
(26, 'Sala de Reuniones Delta', 'Ubicación Z', 18, 45),
(27, 'Centro de Convenciones X', 'Ubicación AA', 600, 1200),
(28, 'Sala Polivalente 2', 'Ubicación BB', 90, 250),
(29, 'Salón Cultural 3', 'Ubicación CC', 130, 380),
(30, 'Salón de Eventos F', 'Ubicación DD', 180, 480),
(31, 'Sala de Conferencias B', 'Ubicación EE', 55, 160),
(32, 'Auditorio Cuaternario', 'Ubicación FF', 320, 750),
(33, 'Salón de Fiestas GHI', 'Ubicación GG', 270, 620),
(34, 'Sala de Reuniones Epsilon', 'Ubicación HH', 14, 30),
(35, 'Centro de Convenciones W', 'Ubicación II', 680, 1350),
(36, 'Sala de Eventos H', 'Ubicación JJ', 210, 520),
(37, 'Salón de Fiestas JKL', 'Ubicación KK', 330, 760),
(38, 'Salón de Conferencias C', 'Ubicación LL', 70, 200),
(39, 'Auditorio Quinternario', 'Ubicación MM', 280, 650),
(40, 'Sala de Reuniones Zeta', 'Ubicación NN', 22, 55),
(41, 'Salón Cultural 4', 'Ubicación OO', 140, 400),
(42, 'Salón de Eventos I', 'Ubicación PP', 230, 580),
(43, 'Sala de Conferencias D', 'Ubicación QQ', 48, 140),
(44, 'Salón de Fiestas MNO', 'Ubicación RR', 380, 850),
(45, 'Auditorio Sexternario', 'Ubicación SS', 290, 670),
(46, 'Sala de Reuniones Eta', 'Ubicación TT', 16, 40),
(47, 'Centro de Convenciones V', 'Ubicación UU', 620, 1250),
(48, 'Sala Polivalente 3', 'Ubicación VV', 80, 220),
(49, 'Salón Cultural 5', 'Ubicación WW', 160, 450),
(50, 'Salón de Eventos J', 'Ubicación XX', 240, 620),
(112, 'Sala de Conferencias E2', 'Ubicación K', 40, 120);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`ID_EVENTO`);

--
-- Indexes for table `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`id_lugar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
