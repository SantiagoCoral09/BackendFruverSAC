-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-07-2023 a las 23:01:12
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fruver_sac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritos`
--

CREATE TABLE `carritos` (
  `idCarrito` int(11) NOT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL,
  `idUsuario` varchar(255) NOT NULL,
  `fechaCreacion` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carritos`
--

INSERT INTO `carritos` (`idCarrito`, `valor_total`, `idUsuario`, `fechaCreacion`) VALUES
(1, '49000.00', 'carrito', '2023-07-16 18:41:34'),
(2, '5300.00', 'prueba', '2023-07-16 19:07:05'),
(3, '3000.00', 'prueba', '2023-07-16 19:07:39'),
(6, '0.00', 'prueba', '2023-07-17 01:30:12'),
(9, '6300.00', 'carrito', '2023-07-18 19:15:25'),
(10, '2000.00', 'carrito', '2023-07-18 19:25:57'),
(11, '3000.00', 'carrito', '2023-07-18 19:27:28'),
(12, '3000.00', 'carrito', '2023-07-18 19:28:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `idCompra` int(11) NOT NULL,
  `idCarritoCompra` int(11) NOT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `metodo_pago` varchar(255) DEFAULT NULL,
  `fechaCompra` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`idCompra`, `idCarritoCompra`, `nombres`, `correo`, `direccion`, `metodo_pago`, `fechaCompra`) VALUES
(1, 1, 'Santiago Coral', 'santiagocoral80@gmail.com', 'Calle 15', 'transferencia bancaria', '2023-07-16 19:06:37'),
(3, 3, 'Santi', 'santiagocoral80@gmail.com', 'Potosi Vereda Lourdes', 'efectivo', '2023-07-16 19:07:55'),
(4, 9, 'Santi', 'mail@mail.com', 'Potosi Vereda Lourdes', 'tarjeta debito', '2023-07-18 19:25:26'),
(6, 10, 'Santiago', 'mail@mail.com', 'Calle 15', 'transferencia bancaria', '2023-07-18 19:26:23'),
(7, 11, 'Santiago', 'santiagocoral80@udenar.edu.co', 'Calle 15', 'transferencia bancaria', '2023-07-18 19:27:46'),
(8, 12, 'Santiago Coral', 'santiagocoral80@udenar.edu.co', 'Potosi', 'tarjeta de credito', '2023-07-18 19:29:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `cantidad_producto` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `nombre`, `precio`, `cantidad_producto`, `descripcion`, `categoria`, `imagen`) VALUES
(1, 'Manzana', '2000.00', 50, 'Manzana fresca y jugosa. Rica en fibra, vitaminas y antioxidantes. Ayuda a reducir el riesgo de enfermedades crónicas y mejora la digestión.', 'Frutas frescas', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSG9D-u1aBYVNAitWlOTA2QfhloGR5nP0z5BC_9uTDQ9kJxjisTVJ9jFnjNuHG4miEFB6zrQrQGs9OkyT3JRTaSnVvvTD4_Bes45sOkLh3y0uTtPC7e-pgUKdQ&usqp=CAE'),
(2, 'Bananos', '1500.00', 40, 'Banana madura y nutritiva. Alta en fibra, potasio y vitaminas. Ayuda a regular el azúcar en la sangre, mejorar la digestión y reducir el riesgo de enfermedades crónicas.', 'Frutas frescas', 'https://jumbocolombiaio.vtexassets.com/arquivos/ids/205432-800-800?v=637814200017630000&width=800&height=800&aspect=true'),
(3, 'Piña', '3000.00', 30, 'Piña dulce y refrescante. Vitamina C, B1, B6, ácido fólico, sodio, potasio, calcio, magnesio, manganeso y hierro.', 'Frutas frescas', 'https://jumbocolombiaio.vtexassets.com/arquivos/ids/203273-800-800?v=637814194103630000&width=800&height=800&aspect=true'),
(4, 'Mango', '2500.00', 25, 'Mango jugoso y tropical. Rico en vitamina C, carotenoides y antioxidantes. Ayuda a mejorar la salud de la piel, el sistema inmunológico y reducir la inflamación.', 'Frutas frescas', 'https://jumbocolombiaio.vtexassets.com/arquivos/ids/209418-800-800?v=637814210656070000&width=800&height=800&aspect=true'),
(5, 'Sandía', '4000.00', 15, 'Sandía refrescante y dulce. Rica en agua y vitaminas A y C, ayuda a hidratar y mantener la piel saludable.', 'Frutas frescas', 'https://kairosfruver.com/wp-content/uploads/2023/04/Sandia-Comun-600x600.jpg'),
(6, 'Uva', '3500.00', 20, 'Uva jugosa y deliciosa. Ricas en antioxidantes y vitaminas C y K, ayudan a prevenir enfermedades cardiovasculares y mejorar la función cognitiva.', 'Frutas frescas', 'https://img.freepik.com/fotos-premium/jugosa-deliciosa-uva-roja-fresca-sobre-fondo-blanco_890183-5198.jpg?w=2000'),
(7, 'Naranja', '1800.00', 60, 'Naranja cítrica y nutritiva. Rica en vitamina C y antioxidantes. Ayuda a fortalecer el sistema inmunológico, reducir la inflamación y mejorar la salud del corazón.', 'Frutas frescas', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuII3iLph4JqcmIiUlWYzTQE3-icqO9TEWGNBD7IMdZp2lQCrv_BmwW-oltCoBf-bK4ag&usqp=CAU'),
(8, 'Limón', '1200.00', 70, 'Limón ácido y refrescante. Rico en vitamina C y antioxidantes. Puede ayudar a mejorar la salud del sistema inmunológico, la digestión y reducir la inflamación.', 'Frutas frescas', 'https://www.2000agro.com.mx/wp-content/uploads/zumo-limon01.jpg'),
(9, 'Fresa', '2500.00', 45, 'Fresa dulce y jugosa. Bajo contenido calórico, alto contenido en nitrato, hidratantes.', 'Frutas frescas', 'https://thumbs.dreamstime.com/b/fresa-fruta-comida-rojo-fresas-baya-maduro-fresco-dulce-sano-jugosa-postre-delicioso-verde-sabroso-org%C3%A1nico-120994414.jpg'),
(10, 'Papaya', '2800.00', 35, 'Papaya mediana por unidad, fresca y de la mejor calidad, tenemos domicilios en Bogotá. Si necesita ser asesorado puede contactarnos.', 'Frutas frescas', 'https://gomarket.eco/cdn/shop/products/image_09220503-c5ab-4b36-b4e5-f6472f7cb36b.jpg?v=1652844907'),
(11, 'Coco', '3500.00', 30, 'El coco es un fruto redondo y alargado de carne blanca, fibrosa y aceitosa cubierta por una cáscara dura, de color marrón y peluda. ', 'Frutas frescas', 'https://olimpica.vtexassets.com/arquivos/ids/865326-800-auto?v=637908070421830000&width=800&height=auto&aspect=true'),
(12, 'Pera', '2200.00', 40, 'Pera jugosa y crujiente. Es una fruta de color verde, de dulce sabor que se cultiva en un clima frío y húmedo.', 'Frutas frescas', 'https://fruvermktco.b-cdn.net/wp-content/uploads/2023/03/compra-pera-en-la-ceja-antioquia-fruvermarket-680x844.jpg'),
(13, 'Melón', '3200.00', 25, 'Melón dulce y aromático. Contiene agua y fibra, lo que lo convierte en una opción refrescante y saciante.', 'Frutas frescas', 'https://fruvermktco.b-cdn.net/wp-content/uploads/2023/02/melon-001-680x844.jpg'),
(14, 'Mandarina', '1800.00', 50, 'Mandarina jugosa y fácil de pelar. Rica en vitamina C y flavonoides, ayuda a mejorar la salud del sistema inmunológico y prevenir enfermedades cardiovasculares.', 'Frutas frescas', 'https://vaquitaexpress.com.co/media/catalog/product/cache/e89ece728e3939ca368b457071d3c0be/1/9/197_32.jpg'),
(15, 'Durazno', '2400.00', 35, 'Durazno dulce y jugoso. Es una fruta proveniente de China de color amarillo con leves manchas naranjas, su sabor es dulce y en su interior alberga una gran semilla.', 'Frutas frescas', 'https://fruvermktco.b-cdn.net/wp-content/uploads/2023/03/compra-durazno-en-la-ceja-antioquia-fruvermarket-680x844.jpg'),
(16, 'Ciruela', '2600.00', 30, 'Ciruela jugosa y llena de sabor. Es una deliciosa fruta de color rojo rica en fibra. En Solofruver te ofrecemos una presentación en bandeja', 'Frutas frescas', 'https://solofruver.com/wp-content/uploads/2020/06/ciruela-bandeja-1.jpg'),
(17, 'Kiwi', '2800.00', 25, 'Kiwi refrescante y rico en vitamina C. Es una baya ovalada de cáscara delgada de color verde parduzco con pelitos a su alrededor de color marrón. En su interior es de color verde, con unas pequeñas semillas negras y un centro blanco.', 'Frutas frescas', 'https://fruvermktco.b-cdn.net/wp-content/uploads/2023/03/compra-kiwi-en-la-ceja-antioquia-fruvermarket-680x844.jpg'),
(18, 'Mora', '3000.00', 40, 'Mora dulce y antioxidante. Alta en antioxidantes, vitaminas y fibra. Ayuda a reducir el riesgo de enfermedades crónicas, mejorar la salud del cerebro y la digestión.', 'Frutas frescas', 'https://fruvermktco.b-cdn.net/wp-content/uploads/2023/02/compra-moras-en-la-ceja-antioquia-fruvermarket-680x844.jpg'),
(19, 'Cereza', '10000.00', 50, 'Si buscas una fruta sabrosa y saludable para agregar a tu dieta, cereza la coruña x 250g son frescas y es la elección perfecta.', 'Frutas frescas', 'https://solofruver.com/wp-content/uploads/2023/04/Cerazas.jpg'),
(20, 'Tomate de árbol', '2400.00', 35, 'El tomate árbol es una planta arbustiva de tallos semi-leñosos. Presenta una forma erecta y se ramifica naturalmente a una altura que varía entre 1,5 m y 2 m -con la copa alcanza 3 m de altura', 'Frutas frescas', 'https://vaquitaexpress.com.co/media/catalog/product/cache/e89ece728e3939ca368b457071d3c0be/2/7/271_32.jpg'),
(21, 'Lulo', '2700.00', 30, 'Esta fruta como naranjilla o lulo es de cáscara color naranja cubierta de pelitos. Su interior es de un color verde amarillento y pequeñas semillas verdes y blancas.', 'Frutas frescas', 'https://solofruver.com/wp-content/uploads/2020/06/lulo.jpg'),
(22, 'Maracuyá', '3200.00', 25, 'Esta exótica fruta posee un sabor refrescante y ácido que la convierten en un ingrediente ideal para variadas recetas como jugos, helados, batidos, salsas, tortas y postres.', 'Frutas frescas', 'https://solofruver.com/wp-content/uploads/2020/06/maracuya-1.jpg'),
(23, 'Guanábana', '9000.00', 40, 'La guanábana o graviola es una fruta tropical de gran tamaño , con una cáscara verde dura rodeada de espinas suaves. Su interior es blanco y pulposo, su sabor agridulce y su origen se posiciona en la región caribe.', 'Frutas frescas', 'https://solofruver.com/wp-content/uploads/2020/06/guanabana-1.jpg'),
(24, 'Pitahaya', '7500.00', 20, 'Es una fruta que según el tipo cuenta con una cáscara dura y rústica de color amarillo o morado. Su interior es similar al de una granadilla ya que tiene unas semillas comestibles de textura gelatinosa. ', 'Frutas frescas', 'https://solofruver.com/wp-content/uploads/2020/06/pitahaya-1.jpg'),
(25, 'Guayaba', '2000.00', 55, 'Guayaba tropical y llena de sabor. Es una fruta de poco tamaño, su sabor es más ácido, su origen se da en América central y América del norte. Esta puede consumirse de forma directa o en jugos, postres y pasteles.', 'Frutas frescas', 'https://solofruver.com/wp-content/uploads/2020/06/guayaba-pera.jpg'),
(26, 'Tomate', '2000.00', 50, 'Tomate rojo y jugoso. Una libra de Tomate equivale a 3 o 4 unidades, dependiendo del tamaño.', 'Verduras frescas', 'https://fruvermktco.b-cdn.net/wp-content/uploads/2023/02/tomate-rinon-001-680x844.jpg'),
(27, 'Zanahoria', '1500.00', 40, 'Zanahoria fresca y crujiente. Mejora la vista, protege la dentadura, ayuda en los problemas intestinales, tiene propiedades diuréticas, proporcionan energía al cerebro.', 'Verduras frescas', 'https://solofruver.com/wp-content/uploads/2020/06/zanahoria-2-600x450.jpg'),
(28, 'Lechuga', '3000.00', 30, 'Lechuga verde y nutritiva. Baja en calorías, rica en agua, antioxidantes, fibra, vitaminas, sales minerales.', 'Verduras frescas', 'https://solofruver.com/wp-content/uploads/2020/06/lechuga-batavia-1.jpg'),
(29, 'Cebolla', '2500.00', 25, 'Cebolla blanca. Conocida como cebolla cabezona, cebolla de huevo o cebolla de bulbo, es un tipo de verdura con origen en Asia.', 'Verduras frescas', 'https://solofruver.com/wp-content/uploads/2020/06/cebolla-cabezona-1-600x450.jpg'),
(30, 'Pepino', '4000.00', 15, 'Pepino refrescante y crujiente. Es una hortaliza con forma alargada de color verde e interior blanco con pequeñas semillas del mismo color. Su origen es asiático y hoy en día su principal productor es Turquia. Para su cultivo se recomienda la estación ver', 'Verduras frescas', 'https://solofruver.com/wp-content/uploads/2020/06/pepino-1.jpg'),
(31, 'Espinaca', '3500.00', 20, 'Espinaca verde y llena de nutrientes. Es una planta de color verde cuyas hojas son comestibles, es originaria de Persia.', 'Verduras frescas', 'https://solofruver.com/wp-content/uploads/2020/06/espinaca-1.jpg'),
(32, 'Apio', '1800.00', 60, 'Apio crujiente y bajo en calorías. Es una hierba muy utilizada en la cocina, sobre todo por aportar un excelente aroma a guisos, estofados, sopas y cremas, siendo uno de los ingredientes básicos de los fondos o caldos que usamos para cocinar.', 'Verduras frescas', 'https://solofruver.com/wp-content/uploads/2020/06/apiomanojo.png'),
(33, 'Calabaza', '1200.00', 70, 'Calabaza anaranjada y nutritiva', 'Verduras frescas', 'https://img.freepik.com/fotos-premium/calabaza-anaranjada-madura-que-crece-cama-jardin-cosechando-concepto-comida-sana_500858-231.jpg?w=740'),
(34, 'Brócoli', '2500.00', 45, 'Brócoli verde y lleno de antioxidantes', 'Verduras frescas', 'https://fruvermktco.b-cdn.net/wp-content/uploads/2023/03/compra-brocoli-en-la-ceja-antioquia-fruvermarket-680x844.jpg'),
(35, 'Pimentón', '2800.00', 35, 'Es una hortaliza hueca, cuyo color puede ser variable entre rojo, verde, amarillo e incluso negro. Se pueden preparar rellenos, salteados, guisados, en ensaladas o como condimento de otras preparaciones.', 'Verduras frescas', 'https://solofruver.com/wp-content/uploads/2020/06/pimenton-1.jpg'),
(36, 'Escarola', '3500.00', 30, 'La escarola es una verdura que pertenece a la familia de las Asteráceas (Compuestas) con más de un millar de géneros y más de 20.000 especies. De ellas se cultivan muy pocas.', 'Verduras frescas', 'https://solofruver.com/wp-content/uploads/2022/03/lechuga-escarola.jpg'),
(37, 'Cilantro', '1000.00', 40, 'Esta hierba se usa como condimento, es de color verde y tiene flores blancas. Toda la planta es comestible, sin embargo, las hojas son las más utilizadas para su consumo.', 'Verduras frescas', 'https://fruvermktco.b-cdn.net/wp-content/uploads/2023/02/compra-cilantro-en-la-ceja-antioquia-fruvermarket-680x844.jpg'),
(38, 'Coliflor', '3200.00', 25, 'Coliflor blanca y versátil. Es una planta de color blanco fundamentalmente de clima frío y nativa de Asia; su sabor es suave y en algunos casos con un toque dulce.\n\nSe puede preparar en tortillas, al horno, gratinada, a la plancha y en ensaladas.', 'Verduras frescas', 'https://solofruver.com/wp-content/uploads/2020/06/coliflor-1.jpg'),
(39, 'Cebolla Puerro', '1800.00', 50, 'Es esencialmente una raíz de color blanco en su parte inferior y verde en su parte en lo superior. Un cultivo prospero de este vegetal se da en climas fríos y tiene su origen en Asia.\n\nEste es un alimento infaltable en la cocina de los colombianos princip', 'Verduras frescas', 'https://solofruver.com/wp-content/uploads/2020/06/cebolla-puerro-1.jpg'),
(40, 'Espárragos', '2400.00', 35, 'Espárragos verdes y delicados', 'Verduras frescas', 'https://s1.ppllstatics.com/diariovasco/www/multimedia/202106/09/media/cortadas/esparragos-kuyG-U140644297105BKI-1248x770@Diario%20Vasco.jpg'),
(41, 'Rúcula', '2600.00', 30, 'Rúcula picante y llena de sabor, especialmente usada en ensaladas, pero también cocinada como verdura con pasta o cecina. También es común en Italia su uso en pizzas, añadiéndosela sólo tras el horneado. Es rica en vitamina C y en hierro.', 'Verduras frescas', 'https://gastronomiaycia.republica.com/wp-content/uploads/2009/02/rucula.jpg'),
(42, 'Champiñones', '2800.00', 25, 'Champiñones blancos y sabrosos', 'Verduras frescas', 'https://fruvermktco.b-cdn.net/wp-content/uploads/2023/02/compra-champinones-enteros-en-la-ceja-antioquia-fruvermarket-680x844.jpg'),
(44, 'Remolacha', '3500.00', 20, 'Remolacha roja y dulce. Es una hortaliza que tanto en su exterior como en su interior es de color rojo y origen específicamente de la zona costera de África.\n\nSe prepara comúnmente en ensaladas, sopas, cremas e incluso jugos.', 'Verduras frescas', 'https://solofruver.com/wp-content/uploads/2020/06/remolacha.jpg'),
(46, 'Rábano', '1800.00', 50, 'Rábano picante y refrescante', 'Verduras frescas', 'https://biotrendies.com/wp-content/uploads/2016/10/rabanos-990x600.jpg'),
(47, 'Hinojo', '2400.00', 35, 'Hinojo blanco y anisado. Es una planta silvestre con hojas de color verde oscuro. Es una planta aromática tiene alta resistencia a climas cálidos y de sequía pero no tolera muy bien el frío. Es originaria del mediterráneo y se da muy comúnmente en Asia y ', 'Verduras frescas', 'https://solofruver.com/wp-content/uploads/2020/06/hinojo-promocion.jpg'),
(48, 'Batata', '2600.00', 30, 'Batata naranja y dulce, papa dulce, patata dulce, ​ camote​, moniato​ o boniato, ​ es una planta de la familia Convolvulaceae, cultivada en gran parte del mundo por su raíz tuberosa', 'Verduras frescas', 'https://solofruver.com/wp-content/uploads/2021/01/batata-1.jpg'),
(49, 'Maíz', '2800.00', 25, 'Maíz amarillo y sabroso', 'Verduras frescas', 'https://fruvermktco.b-cdn.net/wp-content/uploads/2023/02/compra-mazorca-maiz-dulce-en-la-ceja-antioquia-fruvermarket-680x844.jpg'),
(51, 'Albahaca', '2000.00', 50, 'Albahaca fresca y aromática. Es una planta cultivada que participa de la cocina de Liguria en la elaboración del clásico pesto (salsa) empleado en la elaboración de platos de pasta de tartine y focaccette', 'Hierbas y especias', 'https://solofruver.com/wp-content/uploads/2022/03/albahaca-genovesa.jpg'),
(52, 'Orégano', '1500.00', 40, 'El orégano es una hierba aromática usada para condimentar alimentos y preparar té.', 'Hierbas y especias', 'https://solofruver.com/wp-content/uploads/2020/06/oregano.png'),
(53, 'Perejil', '3000.00', 30, 'Perejil fresco. Es una hierba con un aroma particular. Es originaria de Europa y el mediterráneo. Se utiliza para decorar y brindar aroma a las comidas. Se prepara en jugos, tortillas, ensaladas, té, pastas y arroces.', 'Hierbas y especias', 'https://solofruver.com/wp-content/uploads/2020/06/perejil-promocion.jpg'),
(55, 'Romero', '4000.00', 15, 'Romero seco y fragante. Romero es una hierba muy común y con distintas funciones y utilidades, es muy reconocida por su uso en la cocina.', 'Hierbas y especias', 'https://solofruver.com/wp-content/uploads/2021/05/romero.png'),
(56, 'Tomillo', '3500.00', 20, 'Tomillo seco y lleno de sabor. El tomillo es una planta originaria del Mediterráneo. Cuenta con pequeñas hojas frondosas y una flor de color violeta', 'Hierbas y especias', 'https://solofruver.com/wp-content/uploads/2020/06/tomillo-promocion-600x450.jpg'),
(58, 'Comino', '1200.00', 70, 'Comino molido y especiado', 'Hierbas y especias', 'https://imagenes.elpais.com/resizer/TG4meJ5nP_rJyTrey4tLbwPjHD8=/1960x0/filters:focal(1729x1313:1739x1323)/cloudfront-eu-central-1.images.arcpublishing.com/prisa/4QANBCHNCZE3HIJJDPVPNOXVCI.jpg'),
(59, 'Pimienta negra', '2500.00', 45, 'Se trata de una especia cargada de beneficios si sabemos añadir la cantidad correcta', 'Hierbas y especias', 'https://s3.abcstatics.com/media/bienestar/2022/01/22/pimienta-negra-kjQB--1248x698@abc.jpg'),
(60, 'Canela', '2800.00', 35, 'Canela en polvo y aromática', 'Hierbas y especias', 'https://biotrendies.com/wp-content/uploads/2015/07/canela-1000x600.jpg'),
(61, 'Clavo de olor', '3500.00', 30, 'Clavo de olor seco y perfumado', 'Hierbas y especias', 'https://elpoderdelconsumidor.org/wp-content/uploads/2021/06/clavo-d-olor-1.jpg'),
(62, 'Curry', '2200.00', 40, 'Curry en polvo y lleno de sabor', 'Hierbas y especias', 'https://www.metroworldnews.com/resizer/2wc_6Ej8VTLt91Spjms5zQuXzoc=/800x0/filters:format(jpg):quality(70):focal(990x601:1000x611)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/IVZNTPRL5NA6ZN7UGDB77MBTWM.jpg'),
(63, 'Mostaza', '3200.00', 25, 'Mostaza en polvo y condimentada', 'Hierbas y especias', 'https://thumbs.dreamstime.com/b/especia-ingradient-del-amarillo-de-la-semilla-de-mostaza-65190906.jpg'),
(65, 'Jengibre', '2400.00', 35, 'Jengibre fresco y picante. Corresponde a pequeños tallos de un picante sabor y pequeño tamaño. ', 'Hierbas y especias', 'https://solofruver.com/wp-content/uploads/2020/06/jengibre-bandeja.jpg'),
(67, 'Anís estrellado', '2800.00', 25, 'Anís estrellado seco y aromático', 'Hierbas y especias', 'https://gastronomiaycia.republica.com/wp-content/uploads/2008/08/anis_estrellado.jpg'),
(71, 'Salvia', '1800.00', 50, 'Salvia seca y aromática', 'Hierbas y especias', 'https://www.diet-health.info/images/recipes/main_view/salbei-echter-salvia-officinalis-sage-by-miroslawa-drozdowski-fotolia-157171635.jpg'),
(74, 'Azafrán', '2800.00', 25, 'Azafrán en hebras y valioso', 'Hierbas y especias', 'https://www.65ymas.com/uploads/s1/49/87/66/bigstock-fresh-saffron-flower-on-a-pile-366441130_1_621x621.jpeg'),
(76, 'Almendras', '2500.00', 50, 'Almendras crujientes y saludables', 'Frutos secos y semillas', 'https://mercadodelasespecias.pe/wp-content/uploads/elementor/thumbs/ebda4f221b58b592921f8324b0bc4ff5-q4s91uzd9nsh2pjxy4euqzur9os4lidw9knger7lhk.jpg'),
(77, 'Nueces', '2800.00', 40, 'Nueces frescas y llenas de nutrientes', 'Frutos secos y semillas', 'https://www.centrallecheraasturiana.es/nutricionysalud/wp-content/uploads/2021/03/bol-nueces.jpg'),
(78, 'Cacahuetes', '1500.00', 60, 'Cacahuetes tostados y deliciosos', 'Frutos secos y semillas', 'https://thefoodtech.com/wp-content/uploads/2020/08/cacahuates-propiedades-nutrimentales-1.jpg'),
(79, 'Avellanas', '3000.00', 35, 'Avellanas crujientes y sabrosas', 'Frutos secos y semillas', 'https://panalbeg.com.co/wp-content/uploads/2020/12/avellanes.jpg'),
(80, 'Pistachos', '3500.00', 30, 'Pistachos salados y adictivos', 'Frutos secos y semillas', 'https://www.atida.com/es-es/blog/wp-content/uploads/2022/02/33-nuevo-blog.png'),
(81, 'Semillas de chía', '2000.00', 55, 'Semillas de chía ricas en omega-3', 'Frutos secos y semillas', 'https://plenti.com.co/wp-content/uploads/2020/01/semillas_chia.png'),
(82, 'Semillas de girasol', '1800.00', 50, 'Semillas de girasol crujientes y nutritivas', 'Frutos secos y semillas', 'https://www.semana.com/resizer/2F9xjZJ46_eD6oFbRXjcptQ4DjM=/1280x720/smart/filters:format(jpg):quality(80)/cloudfront-us-east-1.images.arcpublishing.com/semana/R4W6VXKWTBEXHGVWVXZT4LP4FU.jpg'),
(83, 'Semillas de lino', '2200.00', 45, 'Semillas de lino ricas en fibra', 'Frutos secos y semillas', 'https://gastronomiaycia.republica.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2008/10/linaza.jpg.webp'),
(85, 'Semillas de calabaza', '2300.00', 35, 'Semillas de calabaza crujientes y nutritivas', 'Frutos secos y semillas', 'https://cdn0.ecologiaverde.com/es/posts/5/7/0/semillas_de_calabaza_propiedades_beneficios_y_contraindicaciones_3075_orig.jpg'),
(94, 'Semillas de chirimoya', '2200.00', 45, 'Semillas de chirimoya para sembrar y cultivar', 'Frutos secos y semillas', 'https://www.aconstructoras.com/images/semillaChirimoya.jpg'),
(95, 'Semillas de melón', '2000.00', 50, 'Semillas de melón para sembrar y cultivar', 'Frutos secos y semillas', 'https://previews.123rf.com/images/jeehyun/jeehyun1608/jeehyun160800032/63418851-semillas-de-mel%C3%B3n-secas-para-el-cultivo.jpg'),
(96, 'Semillas de sandía', '2000.00', 50, 'Semillas de sandía para sembrar y cultivar', 'Frutos secos y semillas', 'https://mejorconsalud.as.com/wp-content/uploads/2016/12/semillas-sandia-recipiente.jpg'),
(101, 'Mangostán', '5000.00', 10, 'Delicioso mangostán tropical', 'Exóticos y tropicales', 'https://st2.depositphotos.com/1009329/8802/i/450/depositphotos_88029670-stock-photo-garcinia-tinctoria-or-edible-daophal.jpg'),
(102, 'Durian', '4000.00', 8, 'Fruta de sabor intenso y único', 'Exóticos y tropicales', 'https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_curiosidad__small/public/media/2022/02/23/durian.jpg'),
(103, 'Rambután', '3500.00', 15, 'Pequeña fruta con pelaje espinoso', 'Exóticos y tropicales', 'https://www.5aldia.es/es/wp-content/uploads/2017/09/rambutan.jpg'),
(104, 'Lichis', '3000.00', 20, 'Dulces y jugosos lichis', 'Exóticos y tropicales', 'https://elpoderdelconsumidor.org/wp-content/uploads/2020/05/litchi.jpg'),
(108, 'Maracuyá', '2800.00', 18, 'Fruta tropical de sabor ácido y dulce', 'Exóticos y tropicales', 'https://fruvermktco.b-cdn.net/wp-content/uploads/2023/03/compra-maracuya-en-la-ceja-antioquia-fruvermarket-680x844.jpg'),
(109, 'Kiwi dorado', '3500.00', 15, 'Variedad de kiwi con pulpa dorada', 'Exóticos y tropicales', 'https://delahuertacasa.com/wp-content/uploads/2022/01/kiwi-gold-product.jpg'),
(110, 'Lima kaffir', '2200.00', 30, 'Cítrico aromático utilizado en la cocina asiática', 'Exóticos y tropicales', 'https://www.cocinista.es/download/bancorecursos/ingredientes/ingrediente-lima-kaffir.jpg'),
(114, 'Guarana', '3200.00', 20, 'Fruta con propiedades estimulantes', 'Exóticos y tropicales', 'https://cloudfront-us-east-1.images.arcpublishing.com/semana/7NXV4W3QGVBLBM6XCY4ICMKKAE.jpg'),
(116, 'Banana passion', '2500.00', 25, 'Variedad de plátano con sabor a maracuyá', 'Exóticos y tropicales', 'https://specialtyproduce.com/sppics/9144.png'),
(119, 'Mamey sapote', '3500.00', 15, 'Fruta tropical con sabor aterciopelado', 'Exóticos y tropicales', 'https://post.healthline.com/wp-content/uploads/2021/11/mamey-fruit-1200x628-facebook-1200x628.jpg'),
(126, 'Papa criolla', '2000.00', 50, 'Deliciosa papa de tamaño grande', 'Tubérculos y hortalizas', 'https://solofruver.com/wp-content/uploads/2020/06/papa-amarilla-1.jpg'),
(127, 'Yuca', '1800.00', 40, 'Raíz tropical rica en almidón', 'Tubérculos y hortalizas', 'https://imag.bonviveur.com/varios-ejemplares-de-yuca-o-mandioca-enteros-y-sin-pelar.jpg'),
(132, 'Ajo', '2500.00', 30, 'Planta aromática ampliamente utilizada en la cocina', 'Tubérculos y hortalizas', 'https://www.sanangel.edu.mx/sites/default/files/gdi/Ajo-banner.jpg'),
(133, 'Nabo', '2000.00', 40, 'Raíz comestible con sabor ligeramente picante', 'Tubérculos y hortalizas', 'https://www.consumer.es/app/uploads/fly-images/422160/nabos-1200x550-cc.jpg'),
(134, 'Camote', '2300.00', 35, 'Tubérculo dulce y saludable', 'Tubérculos y hortalizas', 'https://i0.wp.com/www.lacase.com.bo/wp-content/uploads/2019/11/camote.jpg?fit=1048%2C633&ssl=1'),
(135, 'Chirivía', '2100.00', 40, 'Hortaliza similar a la zanahoria pero de sabor más intenso', 'Tubérculos y hortalizas', 'https://soycomocomo.es/media/2014/12/chirivia-2.jpg'),
(137, 'Calabaza', '2200.00', 30, 'Variedad de calabaza de tamaños variables', 'Tubérculos y hortalizas', 'https://pedronelburgos.com/wp-content/uploads/2022/04/calabazablancapropiedadessignificados.jpg'),
(139, 'Boniato', '2000.00', 45, 'Tubérculo dulce y nutritivo', 'Tubérculos y hortalizas', 'https://okdiario.com/img/vida-sana/2017/11/30/boniato-3.jpg'),
(146, 'Colinabo', '2100.00', 45, 'Hortaliza similar al nabo pero de forma redonda', 'Tubérculos y hortalizas', 'https://imagenes.elpais.com/resizer/ctL-2zLWlhKMa-9CBj9gTb_xvCA=/1200x0/cloudfront-eu-central-1.images.arcpublishing.com/prisa/6LOMP4E7MFGW3DS4YWUMYIVZDQ.jpg'),
(147, 'Olluco rosado', '2000.00', 50, 'Es una planta herbácea originaria de la región andina de América del Sur.', 'Tubérculos y hortalizas', 'https://mercatodoenlinea.com/wp-content/uploads/2020/04/ollucos-Empacados-X-500g.png'),
(148, 'Acelga', '1800.00', 55, 'Hortaliza de hojas verdes y tallos blancos', 'Tubérculos y hortalizas', 'https://solofruver.com/wp-content/uploads/2022/03/acelga.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_carritos`
--

CREATE TABLE `productos_carritos` (
  `idProductoCarrito` int(11) NOT NULL,
  `CarritoId` int(11) NOT NULL,
  `ProductoId` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `valor_parcial` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos_carritos`
--

INSERT INTO `productos_carritos` (`idProductoCarrito`, `CarritoId`, `ProductoId`, `cantidad`, `valor_parcial`) VALUES
(2, 1, 133, 10, '20000.00'),
(3, 1, 46, 5, '9000.00'),
(5, 9, 9, 2, '5000.00'),
(7, 12, 3, 3, '9000.00'),
(13, 10, 1, 2, '4000.00'),
(14, 9, 7, 1, '1800.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carritos`
--
ALTER TABLE `carritos`
  ADD PRIMARY KEY (`idCarrito`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`idCompra`),
  ADD KEY `compras_ibfk_1` (`idCarritoCompra`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `productos_carritos`
--
ALTER TABLE `productos_carritos`
  ADD PRIMARY KEY (`idProductoCarrito`),
  ADD KEY `productos_carritos_ibfk_1` (`CarritoId`),
  ADD KEY `productos_carritos_ibfk_2` (`ProductoId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carritos`
--
ALTER TABLE `carritos`
  MODIFY `idCarrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `idCompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `productos_carritos`
--
ALTER TABLE `productos_carritos`
  MODIFY `idProductoCarrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`idCarritoCompra`) REFERENCES `carritos` (`idCarrito`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos_carritos`
--
ALTER TABLE `productos_carritos`
  ADD CONSTRAINT `productos_carritos_ibfk_1` FOREIGN KEY (`CarritoId`) REFERENCES `carritos` (`idCarrito`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productos_carritos_ibfk_2` FOREIGN KEY (`ProductoId`) REFERENCES `productos` (`idProducto`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
