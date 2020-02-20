-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-02-2020 a las 18:31:55
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_curso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `titulo`) VALUES
(4, 'COMPUTADORAS'),
(5, 'MOVIL'),
(6, 'RADIOS'),
(8, 'CAMARAS'),
(9, 'TELEVISORES'),
(16, 'CONSOLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `contenido` varchar(800) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(80) CHARACTER SET latin1 NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `calificacion` decimal(2,1) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `titulo`, `descripcion`, `contenido`, `imagen`, `precio`, `calificacion`, `categoria`) VALUES
(12, 'Apple Iphone X', 'ULTIMO DISPOSITIVO SALIDO EN EL MERCADO , BUENA RESOLUCION DE VIDEO', 'Un dispositivo que es Pura Pantalla. Tiene tecnología de Super Retina en un tamaño de 5.8 pulgadas, adicionada con tecnologías que permiten que la pantalla siga un diseño curvo con precisión, y termine hasta las elegantes esquinas redondeadas. Además de colores precisos y deslumbrantes, negros intensos, un alto brillo y una relación de contraste de 1,000,000:1. \r\n\r\nResistencia jamás vista en un smartphone. El vidrio más resistente usado en un iPhone hasta ahora, tanto en la parte frontal como en la trasera. Acero inoxidable de calidad quirúrgica. Con tecnologías de carga inalámbrica y un diseño resistente al agua y al polvo.', 'views/images/articulos/articulo373.jpg', '9999.99', '0.0', 5),
(13, 'Celular Samsung Galaxy S7 Edge', 'PROMOCION POR TIEMPO LIMITADO RECIBE UN CARGADOR INALAMBRICO SAMSUNG GRATIS CON TU COMPRA', 'Éste es un equipo nuevo que se utilizó como demo o exhibición en tienda, puede tener algunas imperfecciones estéticas, funciona perfectamente\r\nEquipo liberado para cualquier compañía, aprobados por control de calidad antes de ser enviados, no han sido reparados o abiertos, están garantizados contra defectos de fabricación por 3 meses\r\nEsta clase de artículos van en empaque genérico e incluyen sus accesorios originales o genéricos de primera calidad', 'views/images/articulos/articulo607.jpg', '22999.00', '0.0', 5),
(14, 'Pc Gamer Intel I5 7400 ', 'Computadora Gamer Nueva Era Intel ¡Disfruta una nueva era gráfica !', '-Disponible la opción: También se puede Retirar en Persona.\r\n-Los productos armados toman un día más en prepararse y probarse.\r\n-Facturamos sin costo adicional.\r\n-Para recoger tu pedido en nuestra tienda debe acudir el titular de la cuenta de Mercado libre con Identificación Oficial. \r\n-Cuenta con póliza de 1 año de garantía.', 'views/images/articulos/articulo463.jpg', '15995.00', '0.0', 4),
(15, 'Televisor LED 43\" FHD SMART TV', '¡¡Todo lo que necesitas para comenzar a relajarte!! ¡¡Televisor smart de pantalla plana!!', 'Características Principales:\r\nTelevisor NanoCell, el mejor televisor LED de LG\r\nPureza de color redefinida\r\nColores puros gracias a la Tecnología NanoCell\r\nColores Precisos desde un amplio ángulo de visión\r\nÁngulo de visión amplio Colores Precisos\r\nHDR activo 4K para obtener detalles increíble', 'views/images/articulos/tv1.jpg', '1500.00', '0.0', 9),
(16, 'Laptop Hp Intel Inside', 'Laptop Hp 14 Intel Inside 1TB DD 4GB Ram Windows 10', 'Características Generales\r\nSistema operativo: Windows 10\r\nProcesador: Intel Celeron\r\nModelo: N3060\r\nVelocidad: 1.6GHz hasta 2.48GHz\r\nTipo de gráficos: Intel HD 400\r\n\r\nAlmacenamiento\r\nDisco duro: 1TB 5400 RPM\r\nMemoria RAM: 4GB DDR3\r\n\r\nPantalla\r\nTamaño de pantalla: 14 Pulgadas\r\nTipo de pantalla: LED\r\nResolución de la pantalla: HD 1366 x 768\r\n\r\nUnidad óptica\r\nCD/DVD RW +/- : No\r\nConectividad\r\nHDMI: 1\r\nUSB 3.0: 1\r\nUSB 2.0: 2\r\nRJ-45: SI\r\nLector de tarjetas: SI\r\nSalida para audio: SI\r\nVGA SI\r\nTeclado: Español\r\n', 'views/images/articulos/articulo401.jpg', '13000.00', '0.0', 4),
(18, 'Televisor XC', 'Televisor ultima generacion ', 'Diseño sobre pared\r\nMás realista con AI.\r\nDa vida a las imágenes\r\nDolby Vision & Atmos, un cinema en casa.\r\n4K Cinema HDR Desde el punto de vista cineasta\r\nModo galería Añade un toque de clase a tu vidaTenemos disponibilidad para Entrega Inmediata', 'views/images/articulos/tv3.jpg', '5000.00', '0.0', 9),
(19, 'Camara xc', 'Flexible y cuando lo tiras no se rompe ', 'Toma tus fotografias de manera mas irreal', 'views/images/articulos/articulo650.jpg', '2000.00', '0.0', 8),
(22, 'Mica Cristal Templado ', 'Nintendo Switch Consola ', '-Proteje tu consola favorita \r\n-Calza Perfecto \r\n-Dureza h9\r\n-0.4\r\n-Claridad 99%\r\n-Stikers para colocar\r\n', 'views/images/articulos/articulo590.jpg', '165.00', '0.0', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `ruta` text NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `ruta`, `titulo`, `descripcion`, `orden`) VALUES
(74, '../../views/images/slide/slide416.jpg', 'descubre que tenemos para ti', 'ya estamos en linea', 0),
(75, '../../views/images/slide/slide795.jpg', 'evalua los descuentos', 'que tenemos para ti', 0),
(76, '../../views/images/slide/slide539.jpg', 'aprovecha los descuentos', 'de la temporada', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(15) NOT NULL,
  `mail` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `role`, `mail`) VALUES
(1, 'renzo', '1234', 'administrador', 'renzo@utp.edu.pe'),
(2, 'edith', '1234', 'cliente', 'edith@utp.edu.pe'),
(9, 'valeria', '1234', 'cliente', 'valeria@utp.edu.pe'),
(10, 'kevin', '1234', 'cliente', 'kevin@utp.edu.pe'),
(11, 'jimmy', '4321', 'administrador', 'jimmy@utp.edu.pe'),
(12, 'renato', '1234', 'cliente', 'renato@utp.edu.pe'),
(13, 'rosa', '1234', 'cliente', 'rosa@utp.edu.pe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `producto` varchar(30) NOT NULL,
  `imagen` varchar(80) NOT NULL,
  `costo` decimal(12,2) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `usuario`, `producto`, `imagen`, `costo`, `fecha`) VALUES
(10, 2, 'Pc Gamer Intel I5 7400 ', 'views/images/articulos/articulo650.jpg', '15995.00', '2020-01-02 22:09:15'),
(12, 2, 'Apple Iphone X', 'views/images/articulos/articulo373.jpg', '9999.00', '2020-02-05 22:10:36'),
(20, 10, 'Pc Gamer Intel I5 7400 ', 'views/images/articulos/articulo650.jpg', '15995.00', '2020-01-21 00:22:01'),
(21, 10, 'Televisor XC', 'views/images/articulos/articulo590.jpg', '5000.00', '2020-02-05 00:22:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria` (`categoria`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
