-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 31, 2017 lúc 02:57 PM
-- Phiên bản máy phục vụ: 10.1.22-MariaDB
-- Phiên bản PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `electric_bike`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `total` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(5, 5, '2017-03-23', 20000, 'tiền mặt', NULL, '2017-03-11 13:06:44', '2017-03-11 13:06:44'),
(6, 8, '2017-07-11', 3, 'COD', 'PLEASE SHIP SPEED FOR ME !!!\r\nLET\'S GO.', '2017-07-11 04:46:29', '2017-07-11 04:46:29'),
(7, 9, '2017-07-11', 3, 'COD', 'PLEASE SHIP SPEED FOR ME !!!\r\nLET\'S GO.', '2017-07-11 04:48:06', '2017-07-11 04:48:06'),
(8, 10, '2017-07-11', 3, 'ATM', 'fsfsfsf', '2017-07-11 04:51:54', '2017-07-11 04:51:54'),
(9, 11, '2017-07-11', 3, 'ATM', 'sgs42525', '2017-07-11 04:58:21', '2017-07-11 04:58:21'),
(10, 12, '2017-07-11', 3, 'ATM', 'sgs42525', '2017-07-11 04:59:01', '2017-07-11 04:59:01'),
(11, 13, '2017-07-11', 520000, 'ATM', 'please !!!', '2017-07-11 05:02:32', '2017-07-11 05:02:32'),
(12, 14, '2017-07-11', 710000, 'COD', 'please shipping spedd for me.', '2017-07-11 05:12:28', '2017-07-11 05:12:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand_product`
--

CREATE TABLE `brand_product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `brand_product`
--

INSERT INTO `brand_product` (`id`, `name`, `description`, `image`) VALUES
(1, 'NIJIA', 'Tuy mới ra mắt thời gian gần đây nhưng chắc hẳn người tiêu dùng đã khá quen thuộc với cái tên xe đạp điện Nijia nhờ  sở hữu kiểu dáng quen thuộc với những màu sắc đa dạng, bắt mắt.', 'logo-nijia.png'),
(2, 'GIANT', 'Tuy mới ra mắt thời gian gần đây nhưng chắc hẳn người tiêu dùng đã khá quen thuộc với cái tên xe đạp điện Nijia nhờ  sở hữu kiểu dáng quen thuộc với những màu sắc đa dạng, bắt mắt.', 'logo-giant.png'),
(3, 'HONDA', 'Tuy mới ra mắt thời gian gần đây nhưng chắc hẳn người tiêu dùng đã khá quen thuộc với cái tên xe đạp điện Nijia nhờ  sở hữu kiểu dáng quen thuộc với những màu sắc đa dạng, bắt mắt.', 'logo-honda.png'),
(4, 'KAIZEN', 'Tuy mới ra mắt thời gian gần đây nhưng chắc hẳn người tiêu dùng đã khá quen thuộc với cái tên xe đạp điện Nijia nhờ  sở hữu kiểu dáng quen thuộc với những màu sắc đa dạng, bắt mắt.', 'logo-kaizen.png'),
(5, 'DK', 'Tuy mới ra mắt thời gian gần đây nhưng chắc hẳn người tiêu dùng đã khá quen thuộc với cái tên xe đạp điện Nijia nhờ  sở hữu kiểu dáng quen thuộc với những màu sắc đa dạng, bắt mắt.', 'logo-dk.png'),
(6, 'HK-BIKE', 'Tuy mới ra mắt thời gian gần đây nhưng chắc hẳn người tiêu dùng đã khá quen thuộc với cái tên xe đạp điện Nijia nhờ  sở hữu kiểu dáng quen thuộc với những màu sắc đa dạng, bắt mắt.', 'logo-hkbike.png'),
(7, 'HYUNDAI', 'Tuy mới ra mắt thời gian gần đây nhưng chắc hẳn người tiêu dùng đã khá quen thuộc với cái tên xe đạp điện Nijia nhờ  sở hữu kiểu dáng quen thuộc với những màu sắc đa dạng, bắt mắt.', 'logo-huyndai.png'),
(8, 'X-MEN', 'Tuy mới ra mắt thời gian gần đây nhưng chắc hẳn người tiêu dùng đã khá quen thuộc với cái tên xe đạp điện Nijia nhờ  sở hữu kiểu dáng quen thuộc với những màu sắc đa dạng, bắt mắt.', 'logo-xmen.png'),
(9, 'BRIDGESTONE', 'Tuy mới ra mắt thời gian gần đây nhưng chắc hẳn người tiêu dùng đã khá quen thuộc với cái tên xe đạp điện Bridgestone nhờ  sở hữu kiểu dáng quen thuộc với những màu sắc đa dạng, bắt mắt.', 'logo-bridgestone.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color_product`
--

CREATE TABLE `color_product` (
  `id` int(11) NOT NULL,
  `color` varchar(20) NOT NULL,
  `image` text NOT NULL,
  `number_colors` int(11) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `color_product`
--

INSERT INTO `color_product` (`id`, `color`, `image`, `number_colors`, `id_product`) VALUES
(1, 'blue', 'ninja-deluxe-blue.png', 50, 1),
(2, 'green', 'ninja-deluxe-green.png', 50, 1),
(3, 'pink', 'ninja-deluxe-pink.png', 50, 1),
(4, 'white', 'ninja-deluxe-white.png', 50, 1),
(5, 'green', 'ninja-dibao-green.png', 50, 2),
(6, 'blue', 'ninja-dibao-blue.png', 50, 2),
(7, 'pink', 'ninja-dibao-pink.png', 50, 2),
(8, 'yellow', 'ninja-dibao-yellow.png', 50, 2),
(9, 'red', 'ninja-maxbike-red.png', 50, 3),
(10, 'green', 'ninja-maxbike-green.png', 50, 3),
(11, 'white', 'ninja-maxbike-white.png', 50, 3),
(12, 'red', 'nijia-plus-2017-red.png', 50, 4),
(13, 'yellow', 'nijia-plus-2017-yellow.png', 50, 4),
(14, 'green', 'nijia-plus-2017-green.png', 50, 4),
(15, 'white', 'nijia-plus-2017-white.png', 50, 4),
(16, 'green', 'honda-m6-green.png', 50, 5),
(17, 'blue', 'honda-m6-blue.png', 50, 5),
(18, 'red', 'honda-m6-red.png', 50, 5),
(19, 'red', 'honda-a6-red.png', 50, 6),
(20, 'orange', 'honda-a6-orange.png', 50, 6),
(21, 'blue', 'honda-a6-blue.png', 50, 6),
(22, 'white', 'honda-a6-white.png', 50, 6),
(23, 'blue', 'honda-a5-blue.png', 50, 7),
(24, 'red', 'honda-a5-red.png', 50, 7),
(25, 'green', 'honda-a5-green.png', 50, 7),
(26, 'pink', 'honda-a5-pink.png', 50, 7),
(27, 'white', 'honda-m7-white.png', 50, 8),
(28, 'red', 'honda-m7-red.png', 50, 8),
(29, 'blue', 'honda-m7-blue.png', 50, 8),
(30, 'black', 'honda-m7-black.png', 50, 8),
(31, 'yellow', 'honda-a8-yellow.png', 50, 9),
(32, 'blue', 'honda-a8-blue.png', 50, 9),
(33, 'purple', 'honda-a8-purple.png', 50, 9),
(34, 'green', 'honda-a8-green.png', 50, 9),
(35, 'blue', 'honda-m8-blue.png', 50, 10),
(36, 'red', 'honda-m8-red.png', 50, 10),
(37, 'white', 'honda-m8-white.png', 50, 10),
(38, 'black', 'honda-m8-black.png', 50, 10),
(39, 'red', 'honda-cool-red.png', 50, 11),
(40, 'white', 'honda-cool-white.png', 50, 11),
(41, 'pink', 'giant-m133-mini-pink.png', 50, 12),
(42, 'green', 'giant-m133-mini-green.png', 50, 12),
(43, 'blue', 'giant-m133-mini-blue.png', 50, 12),
(44, 'red', 'giant-m133-mini-red.png', 50, 12),
(45, 'black', 'giant-m133g-black.png', 50, 13),
(46, 'red', 'giant-m133-plus-red.png', 50, 14),
(47, 'pink', 'giant-m133-plus-pink.png', 50, 14),
(48, 'white', 'giant-m133-plus-white.png', 50, 14),
(49, 'red', 'giant-m133s-mini-red.png', 50, 15),
(50, 'blue', 'giant-m133s-mini-blue.png', 50, 15),
(51, 'white', 'giant-m133s-mini-white.png', 50, 15),
(52, 'black', 'giant-m133s-mini-black.png', 50, 15),
(53, 'white', 'giant-m133-white.png', 50, 16),
(54, 'pink', 'giant-m133-pink.png', 50, 16),
(55, 'blue', 'hkbike-cap-a2-blue.png', 50, 17),
(56, 'red', 'hkbike-cap-a2-red.png', 50, 17),
(57, 'black', 'hkbike-cap-a2-black.png', 50, 17),
(58, 'white', 'hkbike-cap-a2-white.png', 50, 17),
(59, 'red', 'hkbike-zinger-extra-red.png', 50, 18),
(60, 'green', 'hkbike-zinger-extra-green.png', 50, 18),
(61, 'blue', 'hkbike-zinger-extra-blue.png', 50, 18),
(62, 'white', 'hkbike-zinger-extra-white.png', 50, 18),
(63, 'red', 'hkbike-cap-a-red.png', 50, 19),
(64, 'blue', 'hkbike-cap-a-blue.png', 50, 19),
(65, 'white', 'hkbike-cap-a-white.png', 50, 19),
(66, 'orange', 'hkbike-zinger-color-2-orange.png', 50, 20),
(67, 'yellow', 'hkbike-zinger-color-2-yellow.png', 50, 20),
(68, 'blue', 'hkbike-zinger-color-2-blue.png', 50, 20),
(69, 'red', 'hkbike-zinger-color-2-red.png', 50, 20),
(70, 'blue', 'hkbike-zinger-color-blue.png', 50, 21),
(71, 'red', 'hkbike-zinger-color-red.png', 50, 21),
(72, 'white', 'hkbike-zinger-color-white.png', 50, 21),
(73, 'yellow', 'hkbike-zinger-color-yellow.png', 50, 21),
(74, 'orange', 'bridgestone-pkli-orange.png', 50, 22),
(75, 'blue', 'bridgestone-pkli-blue.png', 50, 22),
(76, 'purple', 'bridgestone-pkli-purple.png', 50, 22),
(77, 'pink', 'bridgestone-pkli-pink.png', 50, 22),
(78, 'orange', 'bridgestone-qli-orange.png', 50, 23),
(79, 'blue', 'bridgestone-qli-blue.png', 50, 23),
(80, 'green', 'bridgestone-qli-green.png', 50, 23),
(81, 'pink', 'bridgestone-sli-48-pink.png', 50, 24),
(82, 'blue', 'bridgestone-sli-48-blue.png', 50, 24),
(83, 'white', 'bridgestone-sli-48-white.png', 50, 24),
(84, 'white', 'bridgestone-pke-16-white.png', 50, 25),
(85, 'red', 'bridgestone-pke-16-red.png', 50, 25),
(86, 'blue', 'bridgestone-pke-16-blue.png', 50, 25),
(87, 'yellow', 'bridgestone-pkd-14-yellow.png', 50, 26),
(88, 'blue', 'bridgestone-pkb-16-blue.png', 50, 27),
(89, 'blue', 'bridgestone-spk-48-blue.png', 50, 28),
(90, 'red', 'bridgestone-spk-48-red.png', 50, 28),
(91, 'pink', 'bridgestone-spk-48-pink.png', 50, 28),
(92, 'white', 'bridgestone-spk-48-white.png', 50, 28),
(93, 'white', 'hyundai-i-city-20-white.png', 50, 29),
(94, 'blue', 'hyundai-i-city+-blue.png', 50, 30),
(95, 'red', 'hyundai-i-city+-red.png', 50, 30),
(96, 'orange', 'hyundai-even-orange.png', 50, 31),
(97, 'black', 'hyundai-even-black.png', 50, 31),
(98, 'white', 'hyundai-even-white.png', 50, 31),
(99, 'blue', 'hyundai-even-blue.png', 50, 31),
(100, 'green', 'hyundai-ict-s-green.png', 50, 32),
(101, 'blue', 'hyundai-ict-s-blue.png', 50, 32),
(102, 'red', 'hyundai-ict-s-red.png', 50, 32),
(103, 'black', 'hyundai-ict-s-black.png', 50, 32),
(104, 'green', 'hyundai-toma-green.png', 50, 33);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(6, 'king truong', 'nam', 'king truong', 'DA NANG', '0984567856', 'PLEASE SHIP SPEED FOR ME !!!\r\nLET\'S GO.', '2017-07-11 04:43:35', '2017-07-11 04:43:35'),
(7, 'king truong', 'nam', 'king truong', 'DA NANG', '0984567856', 'PLEASE SHIP SPEED FOR ME !!!\r\nLET\'S GO.', '2017-07-11 04:44:42', '2017-07-11 04:44:42'),
(8, 'king truong', 'nam', 'king truong', 'DA NANG', '0984567856', 'PLEASE SHIP SPEED FOR ME !!!\r\nLET\'S GO.', '2017-07-11 04:46:29', '2017-07-11 04:46:29'),
(9, 'king truong', 'nam', 'king truong', 'DA NANG', '0984567856', 'PLEASE SHIP SPEED FOR ME !!!\r\nLET\'S GO.', '2017-07-11 04:48:06', '2017-07-11 04:48:06'),
(10, 'nxt', 'nam', 'nxt', 'sfsfs', '987654475', 'fsfsfsf', '2017-07-11 04:51:54', '2017-07-11 04:51:54'),
(11, 'sfsfs', 'nam', 'sfsfs', 'sgsgsg', '34252525', 'sgs42525', '2017-07-11 04:58:21', '2017-07-11 04:58:21'),
(12, 'sfsfs', 'nam', 'sfsfs', 'sgsgsg', '34252525', 'sgs42525', '2017-07-11 04:59:01', '2017-07-11 04:59:01'),
(13, 'cus1', 'nam', 'cus1', 'cus1adress', '0543476547', 'please !!!', '2017-07-11 05:02:32', '2017-07-11 05:02:32'),
(14, 'dai ka truong', 'nam', 'dai ka truong', 'DA NANG', '0908437958', 'please shipping spedd for me.', '2017-07-11 05:12:28', '2017-07-11 05:12:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_brand_product` int(11) NOT NULL,
  `id_type_product` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `unit_price` double NOT NULL,
  `promotion_price` double NOT NULL,
  `manufacturing_date` date NOT NULL,
  `num_likes` int(11) NOT NULL,
  `summary_info` varchar(1000) NOT NULL,
  `detail_info` varchar(10000) NOT NULL,
  `num_products` int(11) NOT NULL,
  `made_in` varchar(100) NOT NULL,
  `thumbnail` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `id_brand_product`, `id_type_product`, `name`, `unit_price`, `promotion_price`, `manufacturing_date`, `num_likes`, `summary_info`, `detail_info`, `num_products`, `made_in`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'XE ĐẠP ĐIỆN NIJIA DELUXE', 10500000, 9900000, '2016-07-30', 776, '<p>\r\n                            Xe đạp điện Nijia Deluxe là phiên bản mới, cao cấp nhất của dòng xe Nijia. Với 4 ắc quy cỡ lớn 48V-20Ah, quãng đường đi lên tới 80 km, vận tốc 40 km/h. Nijia Deluxe chính hãng có đặc trưng của xe là V\r\n                        </p>', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện NIJIA DELUXE</p>\r\n<p>Xe điện NIJIA DELUXE&nbsp;sẽ cho bạn cảm giác đó. NIJIA DELUXE được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện NIJIA DELUXE này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em NIJIA DELUXE này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em NIJIA DELUXE này thì bạn khỏi phải chê rồi, NIJIA DELUXE được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 15, 'Nhập khẩu', 'ninja-deluxe-blue.png', '2017-08-03 12:02:45', '0000-00-00 00:00:00'),
(2, 1, 1, 'XE ĐẠP ĐIỆN NIJIA DIBAO', 8600000, 0, '2015-07-12', 400, '<p>\r\n                            XE ĐẠP ĐIỆN NIJIA DIBAO mang kiểu dáng Nijia, cải tiến nhựa bền khó vỡ. Nijia Dibao chắc chắn sẽ thổi luồng gío mới vào trào lưu sử dụng xe đạp điện của người Hà Nội\r\n                        </p>', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện NIJIA DIBAO</p>\r\n<p>Xe điện NIJIA DIBAO&nbsp;sẽ cho bạn cảm giác đó. NIJIA DIBAO được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện NIJIA DIBAO này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em NIJIA DIBAO này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em NIJIA DIBAO này thì bạn khỏi phải chê rồi, NIJIA DIBAOE được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 30, 'Nhập khẩu', 'ninja-dibao-green.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00'),
(3, 1, 1, 'XE ĐẠP ĐIỆN NIJIA MAXBIKE', 9600000, 8600000, '2016-07-05', 850, '<p>\r\n                            Nijia Maxbike 12A bánh nhỏ hơn so với phiên bản maxbike 20A. quãng đường đi chỉ bằng một nửa so với người anh em chạy ắc quy 48v-20A (100km)\r\n                        </p>', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện NIJIA MAXBIKE</p>\r\n<p>Xe điện NIJIA MAXBIKE&nbsp;sẽ cho bạn cảm giác đó. NIJIA MAXBIKE được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện NIJIA MAXBIKE này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em NIJIA MAXBIKE này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em NIJIA MAXBIKE này thì bạn khỏi phải chê rồi, NIJIA MAXBIKEE được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 20, 'Trong nước', 'ninja-maxbike-red.png', '2017-08-03 07:55:57', '0000-00-00 00:00:00'),
(4, 1, 1, 'XE ĐẠP ĐIỆN NIJIA PLUS 2017', 8800000, 7900000, '2017-07-10', 780, '<p>\r\n                            XE ĐẠP ĐIỆN NIJIA - PLUS:  Là phiên bản cao cấp của dòng xe Nijia với đặc điểm nhận biết là VÀNH ĐỎ - ĐỘNG CƠ ĐỎ. Vận tốc cải tiến lên tới 35 - 40 km/h, quãng đường di chuyển vượt trội 50 - 55 km\r\n                        </p>', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện NIJIA PLUS 2017</p>\r\n<p>Xe điện NIJIA PLUS 2017&nbsp;sẽ cho bạn cảm giác đó. NIJIA PLUS 2017 được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện NIJIA PLUS 2017 này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em NIJIA PLUS 2017 này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em NIJIA PLUS 2017 này thì bạn khỏi phải chê rồi, NIJIA PLUS 2017E được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 17, 'Nhập khẩu', 'nijia-plus-2017-red.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00'),
(5, 3, 1, 'XE ĐẠP ĐIỆN HONDA M6', 10900000, 9900000, '2017-07-02', 1007, '<p>\r\n                            Xe đạp điện Honda M6 -Xe điện Nhật Bản, vận hành êm ái, ngồi thoải mái, đạp nhẹ nhàng. Xe có thể di chuyển quãng đường lên tới 80 km, vận tốc tối đa 30 km/h\r\n                        </p>', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện HONDA M6</p>\r\n<p>Xe điện HONDA M6&nbsp;sẽ cho bạn cảm giác đó. HONDA M6 được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện HONDA M6 này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em HONDA M6 này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em HONDA M6 này thì bạn khỏi phải chê rồi, HONDA M6E được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 0, 'Nhập khẩu', 'honda-m6-green.png', '2017-08-06 03:10:28', '0000-00-00 00:00:00'),
(6, 3, 1, 'XE ĐẠP ĐIỆN HONDA A6', 11750000, 10600000, '2016-07-15', 343, '<p>\r\n                            Honda A6 là bước bứt phá trong mẫu mã và tính năng của Honda trong lĩnh vực xe đạp điện. Áp dụng nguyên mẫu mã và màu sắc của Honda A5, Honda A6 có thêm 2 giảm sóc sau giúp xe di chuyển êm hơn.<br>C\r\n                        </p>', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện HONDA A6</p>\r\n<p>Xe điện HONDA A6&nbsp;sẽ cho bạn cảm giác đó. HONDA A6 được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện HONDA A6 này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em HONDA A6 này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em HONDA A6 này thì bạn khỏi phải chê rồi, HONDA A6E được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 55, 'Nhập khẩu', 'honda-a6-red.png', '2017-08-05 11:07:51', '0000-00-00 00:00:00'),
(7, 3, 1, 'XE ĐẠP ĐIỆN HONDA A5', 10000000, 9000000, '2017-07-02', 456, '<p>\r\n                            XE ĐẠP ĐIỆN HONDA A5 có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện HONDA A5</p>\r\n<p>Xe điện HONDA A5&nbsp;sẽ cho bạn cảm giác đó. HONDA A5 được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện HONDA A5 này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em HONDA A5 này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em HONDA A5 này thì bạn khỏi phải chê rồi, HONDA A5E được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 22, 'Nhập khẩu', 'honda-a5-blue.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00'),
(8, 3, 1, 'XE ĐẠP ĐIỆN HONDA M7', 13500000, 0, '2018-07-19', 350, '<p>\r\n                            XE ĐẠP ĐIỆN HONDA M7 có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện HONDA M7</p>\r\n<p>Xe điện HONDA M7&nbsp;sẽ cho bạn cảm giác đó. HONDA M7 được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện HONDA M7 này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em HONDA M7 này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em HONDA M7 này thì bạn khỏi phải chê rồi, HONDA M7E được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 10, 'Trong nước', 'honda-m7-white.png', '2017-08-03 00:56:51', '0000-00-00 00:00:00'),
(9, 3, 1, 'XE ĐẠP ĐIỆN HONDA A8', 15500000, 14500000, '2017-07-01', 280, '<p>\r\n                            XE ĐẠP ĐIỆN HONDA A8 có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện HONDA A8</p>\r\n<p>Xe điện HONDA A8&nbsp;sẽ cho bạn cảm giác đó. HONDA A8 được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện HONDA A8 này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em HONDA A8 này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em HONDA A8 này thì bạn khỏi phải chê rồi, HONDA A8E được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 15, 'Nhập khẩu', 'honda-a8-yellow.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00'),
(10, 3, 1, 'XE ĐẠP ĐIỆN HONDA M8', 15000000, 13700000, '2018-07-26', 990, '<p>\r\n                            XE ĐẠP ĐIỆN HONDA M8 có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện HONDA M8</p>\r\n<p>Xe điện HONDA M8&nbsp;sẽ cho bạn cảm giác đó. HONDA M8 được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện HONDA M8 này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em HONDA M8 này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em HONDA M8 này thì bạn khỏi phải chê rồi, HONDA M8E được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 15, 'Nhập khẩu', 'honda-m8-blue.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00'),
(11, 3, 1, 'XE ĐẠP ĐIỆN HONDA COOL', 9000000, 0, '2017-07-10', 444, '<p>\r\n                            XE ĐẠP ĐIỆN HONDA COOL có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện HONDA COOL</p>\r\n<p>Xe điện HONDA COOL&nbsp;sẽ cho bạn cảm giác đó. HONDA COOL được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện HONDA COOL này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em HONDA COOL này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em HONDA COOL này thì bạn khỏi phải chê rồi, HONDA COOLE được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 20, 'Nhập khẩu', 'honda-cool-red.png', '2017-08-03 00:57:13', '0000-00-00 00:00:00'),
(12, 2, 1, 'XE ĐẠP ĐIỆN GIANT M133 MINI', 16500000, 15300000, '2015-07-12', 343, '<p>\r\n                            XE ĐẠP ĐIỆN GIANT M133 MINI có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện GIANT M133 MINI</p>\r\n<p>Xe điện GIANT M133 MINI&nbsp;sẽ cho bạn cảm giác đó. GIANT M133 MINI được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện GIANT M133 MINI này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em GIANT M133 MINI này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em GIANT M133 MINI này thì bạn khỏi phải chê rồi, GIANT M133 MINIE được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 15, 'Nhập khẩu', 'giant-m133-mini-pink.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00'),
(13, 2, 1, 'XE ĐẠP ĐIỆN GIANT M133G', 12500000, 11300000, '2017-07-13', 999, '<p>\r\n                            XE ĐẠP ĐIỆN GIANT M133 G có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện GIANT M133G</p>\r\n<p>Xe điện GIANT M133G&nbsp;sẽ cho bạn cảm giác đó. GIANT M133G được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện GIANT M133G này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em GIANT M133G này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em GIANT M133G này thì bạn khỏi phải chê rồi, GIANT M133GE được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 30, 'Nhập khẩu', 'giant-m133g-black.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00'),
(14, 2, 1, 'XE ĐẠP ĐIỆN M133 PLUS', 11500000, 0, '2015-07-21', 1200, '<p>\r\n                            XE ĐẠP ĐIỆN GIANT M133 PLUS có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện M133 PLUS</p>\r\n<p>Xe điện M133 PLUS&nbsp;sẽ cho bạn cảm giác đó. M133 PLUS được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện M133 PLUS này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em M133 PLUS này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em M133 PLUS này thì bạn khỏi phải chê rồi, M133 PLUSE được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 60, 'Trong nước', 'giant-m133-plus-red.png', '2017-08-06 03:11:43', '0000-00-00 00:00:00'),
(15, 2, 1, 'XE ĐẠP ĐIỆN M133S MINI', 22000000, 21500000, '2017-07-06', 1400, '<p>\r\n                            XE ĐẠP ĐIỆN GIANT M133S MINI có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện M133S MINI</p>\r\n<p>Xe điện M133S MINI&nbsp;sẽ cho bạn cảm giác đó. M133S MINI được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện M133S MINI này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em M133S MINI này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em M133S MINI này thì bạn khỏi phải chê rồi, M133S MINIE được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 55, 'Trong nước', 'giant-m133s-mini-red.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00'),
(16, 2, 1, 'XE ĐẠP ĐIỆN GIANT M133', 32000000, 0, '2015-07-23', 2100, '<p>\r\n                            XE ĐẠP ĐIỆN GIANT M133 có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện GIANT M133</p>\r\n<p>Xe điện GIANT M133&nbsp;sẽ cho bạn cảm giác đó. GIANT M133 được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện GIANT M133 này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em GIANT M133 này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em GIANT M133 này thì bạn khỏi phải chê rồi, GIANT M133E được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 43, 'Nhập khẩu', 'giant-m133-white.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00'),
(17, 6, 1, 'XE ĐẠP ĐIỆN HKBIKE CAP A2', 25300000, 24300000, '2017-07-21', 3200, '<p>\r\n                            XE ĐẠP ĐIỆN HKBIKE CAP A2 có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện HKBIKE CAP A2</p>\r\n<p>Xe điện HKBIKE CAP A2&nbsp;sẽ cho bạn cảm giác đó. HKBIKE CAP A2 được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện HKBIKE CAP A2 này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em HKBIKE CAP A2 này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em HKBIKE CAP A2 này thì bạn khỏi phải chê rồi, HKBIKE CAP A2E được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 32, 'Trong nước', 'hkbike-cap-a2-blue.png', '2017-08-06 03:12:14', '0000-00-00 00:00:00'),
(18, 6, 1, 'XE ĐẠP ĐIỆN HKBIKE ZINGER EXTRA', 12000000, 0, '2017-07-05', 1567, '\r\n<p>\r\n                            XE ĐẠP ĐIỆN HKBIKE ZINGER EXTRA có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện HKBIKE ZINGER EXTRA</p>\r\n<p>Xe điện HKBIKE ZINGER EXTRA&nbsp;sẽ cho bạn cảm giác đó. HKBIKE ZINGER EXTRA được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện HKBIKE ZINGER EXTRA này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em HKBIKE ZINGER EXTRA này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em HKBIKE ZINGER EXTRA này thì bạn khỏi phải chê rồi, HKBIKE ZINGER EXTRAE được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 65, 'Trong nước', 'hkbike-zinger-extra-red.png', '2017-08-06 03:12:34', '0000-00-00 00:00:00'),
(19, 6, 1, 'XE ĐẠP ĐIỆN HKBIKE CAP A', 10900000, 0, '2017-01-08', 2490, '<p>\r\n                            XE ĐẠP ĐIỆN HKBIKE CAP A có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện HKBIKE CAP A</p>\r\n<p>Xe điện HKBIKE CAP A&nbsp;sẽ cho bạn cảm giác đó. HKBIKE CAP A được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện HKBIKE CAP A này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em HKBIKE CAP A này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em HKBIKE CAP A này thì bạn khỏi phải chê rồi, HKBIKE CAP AE được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 120, 'Trong nước', 'hkbike-cap-a-red.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00'),
(20, 6, 1, 'XE ĐẠP ĐIỆN HKBIKE ZINGER COLOR 2', 14200000, 13200000, '2017-02-11', 777, '<p>\r\n                            XE ĐẠP ĐIỆN HKBIKE ZINGER COLOR 2 có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện HKBIKE ZINGER COLOR 2</p>\r\n<p>Xe điện HKBIKE ZINGER COLOR 2&nbsp;sẽ cho bạn cảm giác đó. HKBIKE ZINGER COLOR 2 được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện HKBIKE ZINGER COLOR 2 này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em HKBIKE ZINGER COLOR 2 này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em HKBIKE ZINGER COLOR 2 này thì bạn khỏi phải chê rồi, HKBIKE ZINGER COLOR 2E được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 45, 'Nhập khẩu', 'hkbike-zinger-color-2-orange.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00'),
(21, 6, 1, 'XE ĐẠP ĐIỆN HKBIKE ZINGER COLOR', 8900000, 8000000, '2017-12-08', 644, '<p>\r\n                            XE ĐẠP ĐIỆN HKBIKE ZINGER COLOR  có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện HKBIKE ZINGER COLOR</p>\r\n<p>Xe điện HKBIKE ZINGER COLOR&nbsp;sẽ cho bạn cảm giác đó. HKBIKE ZINGER COLOR được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện HKBIKE ZINGER COLOR này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em HKBIKE ZINGER COLOR này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em HKBIKE ZINGER COLOR này thì bạn khỏi phải chê rồi, HKBIKE ZINGER COLORE được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 80, 'Nhập khẩu', 'hkbike-zinger-color-blue.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00'),
(22, 9, 1, 'XE ĐẠP ĐIỆN BRIDGESTONE PKLI', 14000000, 13200000, '2016-03-20', 773, '<p>\r\n                            XE ĐẠP ĐIỆN BRIDGESTONE PKLI  có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện BRIDGESTONE PKLI</p>\r\n<p>Xe điện BRIDGESTONE PKLI&nbsp;sẽ cho bạn cảm giác đó. BRIDGESTONE PKLI được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện BRIDGESTONE PKLI này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em BRIDGESTONE PKLI này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em BRIDGESTONE PKLI này thì bạn khỏi phải chê rồi, BRIDGESTONE PKLIE được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 94, 'Trong nước', 'bridgestone-pkli-orange.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00'),
(23, 9, 1, 'XE ĐẠP ĐIỆN BRIDGESTONE QLI', 13500000, 12700000, '2017-10-09', 2154, '<p>\r\n                            XE ĐẠP ĐIỆN BRIDGESTONE QLI  có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện BRIDGESTONE QLI</p>\r\n<p>Xe điện BRIDGESTONE QLI&nbsp;sẽ cho bạn cảm giác đó. BRIDGESTONE QLI được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện BRIDGESTONE QLI này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em BRIDGESTONE QLI này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em BRIDGESTONE QLI này thì bạn khỏi phải chê rồi, BRIDGESTONE QLIE được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 50, 'Trong nước', 'bridgestone-qli-orange.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00'),
(24, 9, 1, 'XE ĐẠP ĐIỆN BRIDGESTONE SLI 48', 13000000, 0, '2017-08-14', 1400, '<p>\r\n                            XE ĐẠP ĐIỆN BRIDGESTONE SLI 48  có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện BRIDGESTONE SLI 48</p>\r\n<p>Xe điện BRIDGESTONE SLI 48&nbsp;sẽ cho bạn cảm giác đó. BRIDGESTONE SLI 48 được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện BRIDGESTONE SLI 48 này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em BRIDGESTONE SLI 48 này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em BRIDGESTONE SLI 48 này thì bạn khỏi phải chê rồi, BRIDGESTONE SLI 48E được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 50, 'Nhập khẩu', 'bridgestone-sli-48-pink.png', '2017-08-06 03:13:16', '0000-00-00 00:00:00'),
(25, 9, 1, 'XE ĐẠP ĐIỆN BRIDGESTONE PKE 16', 12300000, 11700000, '2017-05-05', 342, '<p>\r\n                            XE ĐẠP ĐIỆN BRIDGESTONE PKE 16  có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện BRIDGESTONE PKE 16</p>\r\n<p>Xe điện BRIDGESTONE PKE 16&nbsp;sẽ cho bạn cảm giác đó. BRIDGESTONE PKE 16 được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện BRIDGESTONE PKE 16 này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em BRIDGESTONE PKE 16 này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em BRIDGESTONE PKE 16 này thì bạn khỏi phải chê rồi, BRIDGESTONE PKE 16E được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 70, 'Nhập khẩu', 'bridgestone-pke-16-white.png', '2017-08-06 03:13:29', '0000-00-00 00:00:00'),
(26, 9, 1, 'XE ĐẠP ĐIỆN BRIDGESTONE PKD 14', 17500000, 17000000, '2017-12-01', 1567, '<p>\r\n                            XE ĐẠP ĐIỆN BRIDGESTONE PKD 14  có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện BRIDGESTONE PKD 14</p>\r\n<p>Xe điện BRIDGESTONE PKD 14&nbsp;sẽ cho bạn cảm giác đó. BRIDGESTONE PKD 14 được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện BRIDGESTONE PKD 14 này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em BRIDGESTONE PKD 14 này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em BRIDGESTONE PKD 14 này thì bạn khỏi phải chê rồi, BRIDGESTONE PKD 14E được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 22, 'Trong nước', 'bridgestone-pkd-14-yellow.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00'),
(27, 9, 1, 'XE ĐẠP ĐIỆN BRIDGESTONE PKB16', 11500000, 0, '2017-11-11', 1567, '<p>\r\n                            XE ĐẠP ĐIỆN BRIDGESTONE PKD 16  có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện BRIDGESTONE PKB16</p>\r\n<p>Xe điện BRIDGESTONE PKB16&nbsp;sẽ cho bạn cảm giác đó. BRIDGESTONE PKB16 được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện BRIDGESTONE PKB16 này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em BRIDGESTONE PKB16 này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em BRIDGESTONE PKB16 này thì bạn khỏi phải chê rồi, BRIDGESTONE PKB16E được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 60, 'Nhập khẩu', 'bridgestone-pkb-16-blue.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00'),
(28, 9, 1, 'XE ĐẠP ĐIỆN BRIDGESTONE SPK48', 7800000, 0, '2017-06-03', 1111, '<p>\r\n                            XE ĐẠP ĐIỆN BRIDGESTONE SPK48 có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện BRIDGESTONE SPK48</p>\r\n<p>Xe điện BRIDGESTONE SPK48&nbsp;sẽ cho bạn cảm giác đó. BRIDGESTONE SPK48 được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện BRIDGESTONE SPK48 này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em BRIDGESTONE SPK48 này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em BRIDGESTONE SPK48 này thì bạn khỏi phải chê rồi, BRIDGESTONE SPK48E được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 45, 'Trong nước', 'bridgestone-spk-48-blue.png', '2017-08-06 03:14:06', '0000-00-00 00:00:00'),
(29, 7, 1, 'XE ĐẠP ĐIỆN HYUNDAI I CTITY 20', 18500000, 0, '2017-07-17', 235, '<p>\r\n                            XE ĐẠP ĐIỆN HYUNDAI I CTITY 20 có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện HYUNDAI I CTITY 20</p>\r\n<p>Xe điện HYUNDAI I CTITY 20&nbsp;sẽ cho bạn cảm giác đó. HYUNDAI I CTITY 20 được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện HYUNDAI I CTITY 20 này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em HYUNDAI I CTITY 20 này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em HYUNDAI I CTITY 20 này thì bạn khỏi phải chê rồi, HYUNDAI I CTITY 20E được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 22, 'Nhập khẩu', 'hyundai-i-city-20-white.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00');
INSERT INTO `product` (`id`, `id_brand_product`, `id_type_product`, `name`, `unit_price`, `promotion_price`, `manufacturing_date`, `num_likes`, `summary_info`, `detail_info`, `num_products`, `made_in`, `thumbnail`, `created_at`, `updated_at`) VALUES
(30, 7, 1, 'XE ĐẠP ĐIỆN HYUNDAI I-CITY+', 12500000, 11000000, '2017-04-21', 1522, '<p>\r\n                            XE ĐẠP ĐIỆN HYUNDAI I CTITY+ 20 có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện HYUNDAI I-CITY+</p>\r\n<p>Xe điện HYUNDAI I-CITY+&nbsp;sẽ cho bạn cảm giác đó. HYUNDAI I-CITY+ được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện HYUNDAI I-CITY+ này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em HYUNDAI I-CITY+ này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em HYUNDAI I-CITY+ này thì bạn khỏi phải chê rồi, HYUNDAI I-CITY+E được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div><h2><a href=\"http://xedapdienlananh.vn/xe-dap-dien-nijia-b884800.html\">Xe đạp điện HYUNDAI I CTITY+</a> HYUNDAI I CTITY+ (20Ah)&nbsp;- Làn gió mới</h2><p>Mẫu HYUNDAI I CTITY 20  không còn xa lạ với người sử dụng xe điện nói riêng và người tham gia giao thông nói chung.</p><p>Tuy vậy cha đẻ của mẫu HYUNDAI I CTITY+ vẫn rất kỳ vọng vào phiên bản mới này. Vẫn mang thông điệp \"người bạn đường tin cậy\", hãng HYUNDAI I CTITY 20  bật mí:&nbsp;chiếc HYUNDAI I CTITY+  tiếp tục phát huy quãng đường 100km và bổ sung 1 vài thay đổi.</p><p>Ra mắt vào cuối&nbsp;năm 2016, đầu 2017, phiên bản M133 hứa hẹn sẽ mang đến những điều bất ngờ.</p><h2><span style=\"font-size:14px;\">Thông số kỹ thuật của&nbsp;xe đạp điện HYUNDAI I CTITY+ </span></h2><p>- Công suất động cơ: 500w, cao hơn phiên bản cũ (350w)</p><p>- Ắc quy: 4 bình ắc quy cỡ lớn&nbsp;48V20A</p><p>- Vận tốc tối đa: 40 km/h</p><p>- Quãng đường di chuyển: 80 -90 km/một lần sạc đầy</p>', 34, 'Trong nước', 'hyundai-i-city+-blue.png', '2017-08-06 03:14:28', '0000-00-00 00:00:00'),
(31, 7, 1, 'XE ĐẠP ĐIỆN HYUNDAI AVEN', 11000000, 0, '2017-09-14', 1444, '\r\n<p>\r\n                            XE ĐẠP ĐIỆN HYUNDAI EVEN có kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>\r\n', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện HYUNDAI AVEN</p>\r\n<p>Xe điện HYUNDAI AVEN&nbsp;sẽ cho bạn cảm giác đó. HYUNDAI AVEN được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện HYUNDAI AVEN này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em HYUNDAI AVEN này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em HYUNDAI AVEN này thì bạn khỏi phải chê rồi, HYUNDAI AVENE được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 17, 'Nhập khẩu', 'hyundai-even-orange.png', '2017-08-06 03:14:47', '0000-00-00 00:00:00'),
(32, 7, 1, 'XE ĐẠP ĐIỆN HYUNDAI I CITY S', 10900000, 0, '2017-05-18', 1987, '<p>\r\n                            XE ĐẠP ĐIỆN HYUNDAI I CITY Scó kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện HYUNDAI I CITY S</p>\r\n<p>Xe điện HYUNDAI I CITY S&nbsp;sẽ cho bạn cảm giác đó. HYUNDAI I CITY S được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện HYUNDAI I CITY S này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em HYUNDAI I CITY S này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em HYUNDAI I CITY S này thì bạn khỏi phải chê rồi, HYUNDAI I CITY SE được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 40, 'Trong nước', 'hyundai-ict-s-green.png', '2017-08-01 02:07:48', '0000-00-00 00:00:00'),
(33, 7, 1, 'XE ĐẠP ĐIỆN HYUNDAI TOMA', 21000000, 20500000, '2017-08-16', 2021, '<p>\r\n                            XE ĐẠP ĐIỆN HYUNDAI TOMA Scó kiểu dáng khỏe khoắn, khung sườn chắc chắn, máy bền và êm. Có thể đạp dễ dàng như xe đạp. Xe có tựa lưng cho người ngôi sau\r\n                        </p>', '<div class=\"rte\">\r\n										\r\n										<p>Xe điện HYUNDAI TOMA</p>\r\n<p>Xe điện HYUNDAI TOMA&nbsp;sẽ cho bạn cảm giác đó. HYUNDAI TOMA được thiết kế cải tiến vượt trội, nâng cấp thêm động cơ so với phiên bản M6. Nếu bạn đã từng trải nghiệm em M6 trên đường phố, thì chắc chắn em xe điện HYUNDAI TOMA này sẽ còn làm bạn thích thú và ấn tượng hơn rất nhiều.</p>\r\n<p>Nhờ động cơ khỏe khoắn kết hợp với bách xe được trang bị thêm thắng cơ an toàn, bộ giảm sóc sẽ cho bạn những phút giây bon bon trên đường thoải mái.</p>\r\n<p>Thiết kế độc lập nhưng hài hoà kiểu dáng.<br>\r\nTừ ghi-đông, cốp xe, sàn xe, yên xe được thiết kế tạo sự khoẻ khoắn. Kết hợp với giỏ xe phía trước có kiểu dáng thông minh, tạo sự tiện dụng khi sử dụng.</p>\r\n<p>Thoải mái khi sử dụng.<br>\r\nGiỏ xe&nbsp;<br>\r\nGiỏ xe được bố trí ở phần thân trước xe rất thông minh, theo cách thiết kế mới. Giỏ xe được thiết kế thanh gọn, tiện dụngcó thể dễ dàng mở ra và đựng vật dụng bạn muốn. Chắc chắn rằng, với tiện dụng của giỏ xe em HYUNDAI TOMA này sẽ làm nhiều bạn yêu thích.</p>\r\n<p>Động cơ<br>\r\nĐộng cơ em HYUNDAI TOMA này thì bạn khỏi phải chê rồi, HYUNDAI TOMAE được trang bị động hiện đại, khỏe khoắn, đặc biệt vi vu trên đường rất em đấy.</p>\r\n																		\r\n									</div>', 200, 'Nhập khẩu', 'hyundai-toma-green.png', '2017-08-03 01:23:42', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `link` varchar(300) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_product`
--

CREATE TABLE `type_product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `type_product`
--

INSERT INTO `type_product` (`id`, `name`, `description`, `image`) VALUES
(1, 'Xe đạp điện', 'Xe đạp máy là xe thô sơ hai bánh có lắp động cơ, vận tốc thiết kế lớn nhất không lớn hơn 25 km/h và khi tắt máy thì đạp xe đi được (kể cả xe đạp điện).', 'eBike.png'),
(2, 'Xe máy điện', 'Xe máy điện là xe gắn máy được dẫn động bằng động cơ điện có công suất lớn nhất không lớn hơn 4 kW, có vận tốc thiết kế lớn nhất không lớn hơn 50 km/h', 'eMotoBike.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `full_name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'aaaaaaaaaaaaaa', 'kingtruong79@gmail.com', '$2y$10$JBe2PU3NmaZ01KaA8yxCLuwPZPCWKiz2h4eUm1wcIFwP6B7hg5BLi', 'eiYzQLZrQFj5TK1WCwdP89SzenaS04hRMXmqnin5ojoygX1Q1gcWFlPxhPes', '2017-07-11 09:27:45', '2017-07-11 09:27:45'),
(2, 'bbbbbbbbbbbbbb', 'kinghackeranonymous@gmail.com', '$2y$10$T7Qj07nWQIdEQ8tcJxOzRuumNu1MUDXMvI.XycKhGy1oGFSHXLv2S', 'IPopVHpaqpxoxsULRt0Mwg0Iy5mB8p0YkqS7iAmJUqGiBCiB9DbzvuCW85QC', '2017-07-11 09:29:30', '2017-07-11 09:29:30'),
(3, 'gggggggggggggg', 'nxt@gmail.com', '$2y$10$TCRJn33DXKqGs4BnGNZYxu1Bmygkg13.caif/VSEvna3kg3vAoUG6', NULL, '2017-07-11 13:38:40', '2017-07-11 13:38:40');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_ibfk_1` (`id_customer`);

--
-- Chỉ mục cho bảng `brand_product`
--
ALTER TABLE `brand_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `color_product`
--
ALTER TABLE `color_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT cho bảng `brand_product`
--
ALTER TABLE `brand_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT cho bảng `color_product`
--
ALTER TABLE `color_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `type_product`
--
ALTER TABLE `type_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
