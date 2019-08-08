-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 01, 2019 lúc 10:06 AM
-- Phiên bản máy phục vụ: 10.1.40-MariaDB
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lavoro56`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `view` int(11) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `name`, `slug`, `image`, `description`, `content`, `active`, `view`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Giới thiệu sản phẩm Chuck Taylor Classic', 'gioi-thieu-san-pham-chuck-taylor-classic', 'converse-chuck-taylor-classic-24.jpg', 'Chuck Taylor Classic là dòng giày truyền thống của Converse được giữ đúng với nguyên bản ban đầu.', '<p><strong>Thiết kế Converse Chuck Taylor Classic &ldquo;vừa mắt vừa bền&rdquo;</strong></p>\r\n\r\n<p>Chuck Taylor Classic c&oacute; thiết kế giống như d&ograve;ng Converse All Star được cho ra mắt v&agrave;o 1917 d&agrave;nh ri&ecirc;ng cho c&aacute;c vận động vi&ecirc;n b&oacute;ng rổ chuy&ecirc;n nghiệp.</p>\r\n\r\n<p>Tuy nhi&ecirc;n thời điểm n&agrave;y gi&agrave;y Converse All Star chỉ thế hiện đ&uacute;ng chức năng của m&igrave;nh m&agrave; chưa đạt được độ tinh tế về thời trang. V&igrave; vậy, sau khi Chuck Taylor tham gia v&agrave;o đội ngũ Converse đ&atilde; mang đến cho sản phẩm một sự thay đổi mới, đảm được t&iacute;nh thời trang cho sản phẩm. Sự thay đổi n&agrave;y đ&atilde; khiến Converse c&oacute; những bước chuyển m&igrave;nh v&agrave; dần khẳng định được vị thế trong lĩnh vực gi&agrave;y thể thao.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor Classic\" src=\"https://drake.vn/image/catalog/Cv%20Classic/converse-chuck-taylor-classic-20-1.jpg\" /></p>\r\n\r\n<p><em>Thiết kế của Converse trước đ&acirc;y phục vụ cho c&aacute;c hoạt động thể thao, đặc biệt l&agrave; b&oacute;ng rổ</em></p>\r\n\r\n<p>C&aacute;c thiết kế gi&agrave;y tại Converse Chuck Taylor Classic ghi điểm bởi sự đơn giản, tinh tế nhưng kh&ocirc;ng k&eacute;m phần thời trang, năng động. Đặc biệt l&agrave; với d&ograve;ng Classic cổ cao với thiết kế &ocirc;m s&aacute;t phần cổ ch&acirc;n, vừa độc đ&aacute;o, vừa lạ mắt gi&uacute;p bạn khẳng định được phong c&aacute;ch thời trang của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor Classic\" src=\"https://drake.vn/image/catalog/Cv%20Classic/converse-chuck-taylor-classic-18.jpg\" /></p>\r\n\r\n<p><em>Converse cổ cao được thiết kế mang n&eacute;t trẻ trung, khỏe khoắn</em></p>\r\n\r\n<p>Hiện tại Chuck Classic c&oacute; hai phi&ecirc;n bản gi&agrave;y: cổ cao v&agrave; cổ thấp với 6 m&agrave;u cơ bản: trắng, đen, đỏ, xanh navy, full đen v&agrave; full đen da.</p>\r\n\r\n<ul>\r\n	<li>Lựa chọn vải Canvas cho phần th&acirc;n gi&agrave;y để đảm bảo độ mềm mại, nhẹ ch&acirc;n c&ugrave;ng lỗ xỏ d&acirc;y tho&aacute;ng kh&iacute; cho người mang</li>\r\n	<li>Phần đế cao su bền chắc c&oacute; đường viền m&agrave;u đặc trưng xung quanh, gi&uacute;p người mang đảm bảo độ ma s&aacute;t.\r\n	<p><img alt=\"Converse Chuck Taylor Classic\" src=\"https://drake.vn/image/catalog/Cv%20Classic/converse-chuck-taylor-classic-21.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Chuck Taylor Classic với đầy đủ 2 phi&ecirc;n bản: cổ thấp, cổ cao</em></p>\r\n\r\n<ul>\r\n	<li>Thiết kế logo tr&ograve;n vẫn được giữ nguy&ecirc;n kh&ocirc;ng thay đổi:</li>\r\n</ul>\r\n\r\n<p>- Converse Classic cổ thấp: c&oacute; logo All Star được in 3D ở phần g&oacute;t gi&agrave;y v&agrave; lưỡi g&agrave;</p>\r\n\r\n<p>- Converse Classic cổ cao: c&oacute; logo chữ k&yacute; của Chuck Taylor được in b&ecirc;n h&ocirc;ng gi&agrave;y, k&egrave;m logo All Star được in ở đế gi&agrave;y v&agrave; lưỡi g&agrave;.</p>\r\n\r\n<p>Đặc điểm dễ nhận diện của Chuck Classic ch&iacute;nh l&agrave; ngo&agrave;i hai m&agrave;u trắng &ndash; full đen c&oacute; đường chỉ tr&ugrave;ng với m&agrave;u gi&agrave;y. Ở c&aacute;c m&agrave;u c&ograve;n lại đều sử dụng đường chỉ trắng may dọc hai b&ecirc;n th&acirc;n gi&agrave;y một c&aacute;ch cẩn thận, tỉ mỉ.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor Classic\" src=\"https://drake.vn/image/catalog/Cv%20Classic/converse-chuck-taylor-classic-22.jpg\" /></p>\r\n\r\n<p><em>C&aacute;c mẫu gi&agrave;y đều c&oacute; chỉ trắng may dọc th&acirc;n gi&agrave;y chỉn chu, tỉ mỉ</em></p>\r\n\r\n<p><strong>Đa dạng phong c&aacute;ch với Converse Chuck Taylor All Star Classic</strong></p>\r\n\r\n<p>C&oacute; thể thấy, cả hai d&ograve;ng Converse Chuck Classic đều được c&aacute;c bạn trẻ ưa chuộng bởi sự đơn giản, thời trang, đặc biệt kh&ocirc;ng k&eacute;n người mang.</p>\r\n\r\n<p>Nếu phi&ecirc;n bản Chuck Classic cổ cao vẫn giữ được n&eacute;t độc đ&aacute;o đặc trưng của thương hiệu, mang đến cho người mang một phong c&aacute;ch mới. Th&igrave; phi&ecirc;n bản cổ thấp lại đảm bảo sự đơn giản, phổ biến hơn v&igrave; ch&uacute;ng dễ đi, dễ kết hợp quần &aacute;o.</p>\r\n\r\n<p>Kh&ocirc;ng &iacute;t c&aacute;c t&iacute;n đồ thời trang hiện nay đ&atilde; nhanh ch&oacute;ng sở hữu cho m&igrave;nh item &ldquo;huyền thoại&rdquo; n&agrave;y với sự đột ph&aacute; về phong c&aacute;ch thời trang.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor Classic\" src=\"https://drake.vn/image/catalog/Cv%20Classic/converse-chuck-taylor-classic-9.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor Classic\" src=\"https://drake.vn/image/catalog/Cv%20Classic/converse-chuck-taylor-classic-5.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor Classic\" src=\"https://drake.vn/image/catalog/Cv%20Classic/converse-chuck-taylor-classic-10.jpg\" /></p>\r\n\r\n<p><em>Rất nhiều sao đ&atilde; th&ecirc;m item n&agrave;y v&agrave;o bộ sưu tập gi&agrave;y của m&igrave;nh</em></p>\r\n\r\n<p><strong>Converse Chuck Taylor Classic với nhiều mức gi&aacute; &ldquo;vừa tay tầm t&uacute;i&rdquo;</strong></p>\r\n\r\n<p>C&oacute; thể n&oacute;i, so với mặt bằng chung, mức gi&aacute; cho một đ&ocirc;i Converse Chuck Classic ch&iacute;nh h&atilde;ng vẫn l&agrave; chi ph&iacute; hợp l&yacute; cho những ai y&ecirc;u th&iacute;ch thời trang. Đặc biệt l&agrave; mong muốn cho được một đ&ocirc;i gi&agrave;y đ&uacute;ng với xu hướng v&agrave; c&oacute; được độ bền bỉ nhất định. Hiện tại mức gi&aacute; của Converse Chuck Classic dao động từ 1.200.000 đồng đến 1.600.000 đồng t&ugrave;y v&agrave;o phi&ecirc;n bản v&agrave; chất liệu bạn chọn.Một nguy&ecirc;n l&yacute; khi sử dụng gi&agrave;y Converse được mọi người truyền tai nhau:&nbsp;<em>&ldquo;Gi&agrave;y Converse khi bẩn c&ograve;n đẹp hơn khi sạch v&agrave; c&agrave;ng được sử dụng nhiều c&agrave;ng l&ecirc;n m&atilde;. Đ&oacute; l&agrave; chưa kể n&oacute; bền đến mức tưởng như kh&ocirc;ng bao giờ bị hỏng&rdquo;</em>.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor Classic\" src=\"https://drake.vn/image/catalog/Cv%20Classic/converse-chuck-taylor-classic-19.jpg\" /></p>\r\n\r\n<p><em>Converse Chuck Classic m&agrave;u trắng nếu b&aacute;m bẩn vẫn kh&ocirc;ng vấn đề g&igrave;!</em></p>\r\n\r\n<p>Với xu hướng gi&agrave;y Converse cực chất như hiện nay, đặc biệt l&agrave; dễ sử dụng v&agrave; ph&ugrave; hợp với mọi nơi, mọi phong c&aacute;ch. Bạn c&ograve;n chần chừ g&igrave; m&agrave; kh&ocirc;ng li&ecirc;n hệ ngay với Drake&nbsp;hệ thống gi&agrave;y Converse ch&iacute;nh h&atilde;ng tại TP.HCM để nhanh ch&oacute;ng sở hữu sản phẩm c&ugrave;ng phần qu&agrave; hấp dẫn.</p>', 1, 0, 1, '2019-07-30 19:20:46', '2019-07-30 19:20:46'),
(2, 'Chi tiết Converse Chuck Taylor All Star 1970s', 'chi-tiet-converse-chuck-taylor-all-star-1970s', 'converse-chuck-taylor-classic-21.jpg', 'Cho đến nay Converse Chuck Taylor All Star 1970s vẫn là xu hướng được nhiều bạn trẻ “bắt trend”.', '<p><strong>Những điểm cộng tr&ecirc;n đ&ocirc;i gi&agrave;y Converse Chuck Taylor All Star 1970s</strong></p>\r\n\r\n<p>Vẫn giữ nguy&ecirc;n thiết kế gi&agrave;y đặc trưng của đế chế Converse, Chuck Taylor 1970s mang trong m&igrave;nh một dấu ấn của thời trang cố điển. Với những chi tiết gi&agrave;y đảm bảo đ&uacute;ng chất vintage, đồng thời tạo được chất lượng tốt hơn cho người mang. Trong đ&oacute;, những điểm mới tr&ecirc;n đ&ocirc;i gi&agrave;y Chuck 1970s được c&aacute;c nh&agrave; thiết kế đưa v&agrave;o m&agrave; bạn c&oacute; thể nhận diện ngay:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Phần đế gi&agrave;y c&oacute; m&agrave;u ng&agrave; hơn so với c&aacute;c thiết kế trước, cao hơn v&agrave; được phủ một lớp b&oacute;ng để hạn chế b&aacute;m bẩn v&agrave; dễ d&agrave;ng vệ sinh.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp vải Canvas phần th&acirc;n gi&agrave;y được dệt d&agrave;y hơn, c&oacute; lớp l&oacute;t đệm gi&uacute;p gi&agrave;y cứng c&aacute;p hơn, kh&ocirc;ng c&ograve;n t&igrave;nh trạng ọp ẹp sau một thời&nbsp;gian sử dụng như c&aacute;c mẫu cũ.</p>\r\n\r\n	<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-4.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Chất liệu v&agrave; phần đế c&oacute; sự thay đổi r&otilde; nhất</em></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đệm ch&acirc;n Ortholite &reg; &ecirc;m &aacute;i gi&uacute;p giảm khả năng trơn trượt, l&agrave;m giảm lực ma s&aacute;t giữa ng&oacute;n - g&oacute;t ch&acirc;n với gi&agrave;y.</p>\r\n	</li>\r\n	<li>\r\n	<p>Form gi&agrave;y được thiết kế chuẩn hơn với g&oacute;t gi&agrave;y v&agrave; mũi gi&agrave;y &ocirc;m s&aacute;t v&agrave;o ch&acirc;n nhưng kh&ocirc;ng g&acirc;y cảm gi&aacute;c kh&oacute; chịu cho người mang.</p>\r\n\r\n	<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-5.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Form gi&agrave;y vừa ch&acirc;n, chuẩn size</em></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đường viền đen quanh đế nổi l&ecirc;n tr&ecirc;n nền trắng ng&agrave; tạo sự bắt mắt, điểm nhấn cho đ&ocirc;i gi&agrave;y.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường kim mũi chỉ quanh th&acirc;n gi&agrave;y được gia c&ocirc;ng tỉ mỉ tạo n&ecirc;n sự tinh tế, nổi bật cho đ&ocirc;i gi&agrave;y.</p>\r\n	</li>\r\n	<li>\r\n	<p>Logo sau g&oacute;t gi&agrave;y được thiết kế lại với font chữ của những năm 1970, chữ &ldquo;Converse All Star Chuck Taylor&rdquo; trắng nằm tr&ecirc;n nền đen tạo n&ecirc;n sự kh&aacute;c biết so với c&aacute;c thiết kế trước.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-9.jpg\" /></p>\r\n\r\n<p><em>Thiết kế logo l&agrave; điểm thay đổi đ&aacute;ng kể nhất tr&ecirc;n đ&ocirc;i gi&agrave;y</em></p>\r\n\r\n<p><strong>Chuck 1970s - Khả năng &ldquo;hợp outfit đến ph&aacute;t hờn&rdquo; kh&ocirc;ng cần suy nghĩ</strong></p>\r\n\r\n<p>Một điểm &ldquo;chất như nước cất&rdquo; của d&ograve;ng gi&agrave;y Chuck Taylor 1970s ch&iacute;nh l&agrave; khả năng h&ograve;a hợp với tất cả c&aacute;c phong c&aacute;ch thời trang.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/admin/index.php?route=common/filemanager/connector&amp;token=3H9LIHPcl8w1J8bBgs7kNvozbtTAMs74\" /><img alt=\"\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-14.jpg\" /></p>\r\n\r\n<p>Bạn sẽ kh&ocirc;ng cần phải suy nghĩ h&ocirc;m nay &ldquo;mặc g&igrave;, mang g&igrave;&rdquo; khi chỉ cần một đ&ocirc;i Chuck 1970s. Bạn c&oacute; thể c&acirc;n tất cả mọi phong c&aacute;ch từ quần t&acirc;y &ndash; sơ mi đi học, cho đến phong c&aacute;ch bụi bặm, nổi loạn hay nhẹ nh&agrave;ng, thanh lịch, &hellip; Bởi thiết kế của Chuck Taylor 1970s mặc d&ugrave; mang đậm phong c&aacute;ch vintage, cổ điển. Nhưng vẫn giữ được sự hiện đại trong thiết kế của m&igrave;nh với đầy đủ hai phi&ecirc;n bản cổ thấp v&agrave; cổ cao c&ugrave;ng sự đa dạng về m&agrave;u sắc (v&agrave;ng, xanh dương, đỏ, đen, trắng, full đen da v&agrave; full đen trắng). Điều n&agrave;y gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng lựa chọn một phong c&aacute;ch thời trang cho ri&ecirc;ng m&igrave;nh.</p>\r\n\r\n<p>C&ugrave;ng ngắm qua những bạn trẻ&nbsp;đ&atilde; diện đ&ocirc;i gi&agrave;y n&agrave;y với sự đa dạng trong phong c&aacute;ch để c&oacute; thể định h&igrave;nh được những g&igrave; m&agrave; Chuck Taylor 1970s mang lại cho bạn nh&eacute;!</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-20.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-16.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-18.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-17.jpg\" /></p>\r\n\r\n<p><strong>Mức gi&aacute; hợp l&yacute; cho nhiều đối tượng muốn sở hữu Converse Chuck 1970s</strong></p>\r\n\r\n<p>Converse Chuck Taylor 1970s được xem l&agrave; đỉnh cao của &ldquo;nghệ thuật&rdquo; thời trang bởi sự pha trộn giữa n&eacute;t cổ điển v&agrave; hiện đại.</p>\r\n\r\n<p>Với thiết kế v&agrave; những ưu điểm về chất lượng m&agrave; Chuck 1970s mang lại, đ&acirc;y thật sự l&agrave; một &ldquo;si&ecirc;u phẩm&rdquo; đ&aacute;ng &ldquo;đồng tiền b&aacute;t gạo&rdquo; m&agrave; bạn c&oacute; thể chi ra. Hiện nay đối với một đ&ocirc;i gi&agrave;y Converse Chuck 1970s ch&iacute;nh h&atilde;ng c&oacute; gi&aacute; dao động từ 1.500.000 đồng. Mức gi&aacute; c&oacute; thể thay đổi t&ugrave;y v&agrave;o phi&ecirc;n bản bạn lựa chọn cũng như chất liệu (vải canvas/da) của gi&agrave;y.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-8.jpg\" /></p>\r\n\r\n<p><em>Chi ph&iacute; cho một đ&ocirc;i Converse Chuck Taylor 1970s kh&aacute; hợp l&yacute; với chất lượng n&oacute; mang lại</em></p>\r\n\r\n<p>Kh&aacute;c với những loại gi&agrave;y kh&aacute;c, ri&ecirc;ng với Converse, một điều kh&aacute; lạ l&agrave; việc c&agrave;ng mang l&acirc;u, đ&ocirc;i gi&agrave;y lại c&agrave;ng to&aacute;t ra được vẻ trẻ trung, hiện đại, khỏe khoắn đ&uacute;ng với chất Converse. Đặc biệt, bạn c&oacute; thể lựa chọn c&aacute;c t&ocirc;ng gi&agrave;y m&agrave;u s&aacute;ng để những set đồ của bạn tr&ocirc;ng rực rỡ, năng động hơn so với ng&agrave;y thường.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-11.jpg\" /></p>\r\n\r\n<p><em>Với nhiều phi&ecirc;n bản bạn c&oacute; thể lựa chọn mẫu gi&agrave;y y&ecirc;u th&iacute;ch</em></p>\r\n\r\n<p>Với sự nổi bật, c&aacute; t&iacute;nh v&agrave; chất lượng của m&igrave;nh, Chuck Taylor 1970s lu&ocirc;n nằm trong những mẫu gi&agrave;y b&aacute;n chạy nhất hiện nay. Nếu bạn cũng đang c&oacute; sự quan t&acirc;m đối với d&ograve;ng gi&agrave;y n&agrave;y v&agrave; mong muốn sở hữu một đ&ocirc;i gi&agrave;y chất lượng như những g&igrave; bạn đ&atilde; bỏ ra.</p>\r\n\r\n<p>Li&ecirc;n hệ với Drake&nbsp;ngay h&ocirc;m nay để được tư vấn v&agrave; lựa chọn một sản phẩm ph&ugrave; hợp với phong c&aacute;ch của bạn.</p>', 1, 0, 1, '2019-07-30 19:21:55', '2019-07-30 19:21:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `total_product` int(11) NOT NULL DEFAULT '0',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `active`, `parent_id`, `total_product`, `description`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 'Converse', 'converse', 1, 0, 0, 'Converse', 'Converse', '2019-06-01 23:14:45', '2019-07-13 06:43:16'),
(2, 'Chuck II', 'chuck-ii', 1, 1, 0, 'Chuck II', 'Chuck II', '2019-06-01 23:29:36', '2019-06-01 23:29:36'),
(3, 'Vans', 'vans', 1, 0, 0, 'Vans', 'Vans', '2019-06-02 00:11:52', '2019-06-02 00:11:52'),
(4, 'Classic', 'classic', 1, 3, 0, 'Classic', 'Classic', '2019-06-02 00:12:06', '2019-06-02 00:12:06'),
(5, 'Palladium', 'palladium', 1, 0, 0, 'Palladium', 'Palladium', '2019-06-02 00:12:23', '2019-06-02 00:13:15'),
(6, 'Sneaker', 'sneaker', 1, 5, 0, 'Sneaker', 'Sneaker', '2019-06-02 00:13:00', '2019-06-02 00:13:00'),
(7, 'Kid', 'kid', 1, 5, 0, 'Kid', 'Kid', '2019-06-02 00:26:33', '2019-07-12 12:33:51'),
(8, 'Điện thoại', 'dien-thoai', 1, 0, 0, 'Điện thoại', 'Điện thoại', '2019-06-02 00:26:52', '2019-06-02 00:26:52'),
(9, 'Chuck 1970s', 'chuck-1970s', 1, 1, 0, 'Chuck 1970s', 'Chuck 1970s', '2019-07-12 12:32:39', '2019-07-12 12:32:39'),
(10, 'One Stars', 'one-stars', 1, 1, 0, 'One Stars', 'One Stars', '2019-07-12 12:33:25', '2019-07-12 12:33:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent_off`, `qty`, `created_at`, `updated_at`) VALUES
(1, '1459118399', 'percent', NULL, 10, 0, '2019-07-31 19:33:12', '2019-07-31 19:48:21'),
(2, '850746475', 'fixed', 200000, NULL, 10, '2019-07-31 21:52:58', '2019-07-31 21:52:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_27_042817_create_categories_table', 1),
(4, '2019_05_27_175408_create_products_table', 1),
(5, '2019_05_31_161324_create_articles_table', 1),
(6, '2019_06_16_154146_create_sizes_table', 1),
(7, '2019_06_17_151237_create_ratings_table', 1),
(8, '2019_06_21_155258_create_product_images_table', 1),
(9, '2019_07_23_135425_create_product_properties_table', 1),
(10, '2019_07_26_161342_create_sale_products_table', 1),
(11, '2019_07_29_072403_create_coupons_table', 1),
(12, '2019_07_30_094938_create_orders_table', 1),
(13, '2019_07_30_095058_create_order_details_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `email`, `address`, `note`, `phone`, `total`, `status`, `user_id`, `coupon_id`, `created_at`, `updated_at`) VALUES
(1, 'nghhai2712@gmail.com', 'bg', 'bg', '0977423252', 1440000, 2, 5, 1, '2019-07-31 19:41:29', '2019-07-31 19:42:48'),
(2, 'nghhai2712@gmail.com', 'bg', 'bg', '0977423252', 1440000, 2, 5, 1, '2019-07-31 19:47:24', '2019-07-31 19:48:21'),
(3, 'nghhai2712@gmail.com', 'ÂSAS', 'SSAS', '0977423252', 1600000, 0, 5, NULL, '2019-07-31 23:41:36', '2019-07-31 23:41:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` tinyint(4) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `price_sale` tinyint(4) NOT NULL DEFAULT '0',
  `size_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `qty`, `price`, `price_sale`, `size_id`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1600000, 0, 1, 1, 1, '2019-07-31 19:41:29', '2019-07-31 19:41:29'),
(2, 1, 1600000, 0, 1, 2, 1, '2019-07-31 19:47:24', '2019-07-31 19:47:24'),
(3, 1, 1600000, 0, 1, 3, 1, '2019-07-31 23:41:36', '2019-07-31 23:41:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `hot` tinyint(4) NOT NULL DEFAULT '0',
  `view` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `gender` tinyint(4) NOT NULL,
  `pay` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `price`, `hot`, `view`, `active`, `gender`, `pay`, `content`, `description`, `keyword`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Chuck II 150147', 'chuck-ii-150147', '150147-500x500.jpg', 1600000, 1, 0, 1, 1, 11, '<p><strong>Converse Chuck Taylor All Star II &ndash; Sự h&agrave;i h&ograve;a giữa cũ v&agrave; mới</strong></p>\r\n\r\n<p>Nh&igrave;n chung, Chuck Taylor All Star II<strong>&nbsp;</strong>vẫn mang những đặc điểm tương đồng với những mẫu gi&agrave;y Converse. Tuy nhi&ecirc;n, những cải tiến nổi bật về thiết kế ch&iacute;nh l&agrave; điểm thu h&uacute;t của d&ograve;ng n&agrave;y. Chắc chắn, bạn sẽ ho&agrave;n to&agrave;n ấn tượng với sự pha trộn giữa c&aacute;i cũ v&agrave; c&aacute;i mới từ những chi tiết thiết kế cho đến chất liệu trong đ&ocirc;i Converse Chuck Taylor All Star II:</p>\r\n\r\n<ul>\r\n	<li>Vẫn giữ nguy&ecirc;n chất liệu canvas Tencel mềm mại với từng thớ dệt bền, chắc, đảm bảo độ mềm mại, thoải m&aacute;i, tho&aacute;ng kh&iacute; cho người mang</li>\r\n	<li>D&acirc;y gi&agrave;y v&agrave; lỗ xỏ d&acirc;y tr&ugrave;ng m&agrave;u với gi&agrave;y, kh&aacute;c với d&ograve;ng gi&agrave;y trước đ&acirc;y đa số l&agrave; những khoen tr&ograve;n d&ugrave;ng chung m&agrave;u bạc\r\n	<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-16.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Chất liệu được n&acirc;ng cấp với nhiều chi tiết thiết kế được thay đổi</em></p>\r\n\r\n<ul>\r\n	<li>Logo của Converse Chuck II ở b&ecirc;n h&ocirc;ng gi&agrave;y phi&ecirc;n bản cổ cao cũng được th&ecirc;u l&ecirc;n một c&aacute;ch tỉ mỉ tạo được sự sắc xảo cho đ&ocirc;i gi&agrave;y</li>\r\n	<li>Đế gi&agrave;y trắng bằng cao su chắc chắn, kh&ocirc;ng viền, logo dập nổi 3D sau g&oacute;t gi&agrave;y</li>\r\n	<li>Miếng đệm l&oacute;t gi&agrave;y sử dụng miếng l&oacute;t của Nike Lunarlon tạo sự &ecirc;m &aacute;i, tho&aacute;ng kh&iacute; cho người mang. Đặc biệt c&oacute; thể dễ d&agrave;ng th&aacute;o ra để vệ sinh gi&agrave;y khi cần thiết</li>\r\n</ul>\r\n\r\n<p>Phần d&acirc;y thun ở hai b&ecirc;n th&acirc;n đ&ocirc;i gi&agrave;y c&ugrave;ng hai sợi thun cố định lưỡi g&agrave; b&ecirc;n trong gi&agrave;y tạo cảm gi&aacute;c đ&ocirc;i gi&agrave;y &ocirc;m form v&agrave; vừa ch&acirc;n hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-8-1.jpg\" /></p>\r\n\r\n<p><em>Miếng đệm l&oacute;t ứng dụng c&ocirc;ng nghệ Lunarlon</em></p>\r\n\r\n<p>Với phi&ecirc;n bản Chuck II lần n&agrave;y, Converse tr&igrave;nh l&agrave;ng với bốn gam m&agrave;u quen thuộc: đen, trắng, xanh, đỏ c&ugrave;ng đầy đủ hai d&ograve;ng gi&agrave;y cơ bản: cổ thấp, cổ cao.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-19.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-20.jpg\" /></p>\r\n\r\n<p><em>Converse Chuck Taylor All Star II mang đến nhiều phi&ecirc;n bản cho bạn lựa chọn</em></p>', 'Sắc xám trung tính đồng bộ từ thân giày cho đến dây giày và các khoen xỏ dây giày cho bạn một thiết kế cực tinh tế và đẹp mắt.', NULL, 1, 2, '2019-07-12 12:42:02', '2019-07-31 20:14:52'),
(2, 'Chuck II 150143', 'chuck-ii-150143', '150143-500x500.jpg', 1600000, 1, 0, 1, 1, 10, '<p><strong>Converse Chuck Taylor All Star II &ndash; Sự h&agrave;i h&ograve;a giữa cũ v&agrave; mới</strong></p>\r\n\r\n<p>Nh&igrave;n chung, Chuck Taylor All Star II<strong>&nbsp;</strong>vẫn mang những đặc điểm tương đồng với những mẫu gi&agrave;y Converse. Tuy nhi&ecirc;n, những cải tiến nổi bật về thiết kế ch&iacute;nh l&agrave; điểm thu h&uacute;t của d&ograve;ng n&agrave;y. Chắc chắn, bạn sẽ ho&agrave;n to&agrave;n ấn tượng với sự pha trộn giữa c&aacute;i cũ v&agrave; c&aacute;i mới từ những chi tiết thiết kế cho đến chất liệu trong đ&ocirc;i Converse Chuck Taylor All Star II:</p>\r\n\r\n<ul>\r\n	<li>Vẫn giữ nguy&ecirc;n chất liệu canvas Tencel mềm mại với từng thớ dệt bền, chắc, đảm bảo độ mềm mại, thoải m&aacute;i, tho&aacute;ng kh&iacute; cho người mang</li>\r\n	<li>D&acirc;y gi&agrave;y v&agrave; lỗ xỏ d&acirc;y tr&ugrave;ng m&agrave;u với gi&agrave;y, kh&aacute;c với d&ograve;ng gi&agrave;y trước đ&acirc;y đa số l&agrave; những khoen tr&ograve;n d&ugrave;ng chung m&agrave;u bạc\r\n	<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-16.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Chất liệu được n&acirc;ng cấp với nhiều chi tiết thiết kế được thay đổi</em></p>\r\n\r\n<ul>\r\n	<li>Logo của Converse Chuck II ở b&ecirc;n h&ocirc;ng gi&agrave;y phi&ecirc;n bản cổ cao cũng được th&ecirc;u l&ecirc;n một c&aacute;ch tỉ mỉ tạo được sự sắc xảo cho đ&ocirc;i gi&agrave;y</li>\r\n	<li>Đế gi&agrave;y trắng bằng cao su chắc chắn, kh&ocirc;ng viền, logo dập nổi 3D sau g&oacute;t gi&agrave;y</li>\r\n	<li>Miếng đệm l&oacute;t gi&agrave;y sử dụng miếng l&oacute;t của Nike Lunarlon tạo sự &ecirc;m &aacute;i, tho&aacute;ng kh&iacute; cho người mang. Đặc biệt c&oacute; thể dễ d&agrave;ng th&aacute;o ra để vệ sinh gi&agrave;y khi cần thiết</li>\r\n</ul>\r\n\r\n<p>Phần d&acirc;y thun ở hai b&ecirc;n th&acirc;n đ&ocirc;i gi&agrave;y c&ugrave;ng hai sợi thun cố định lưỡi g&agrave; b&ecirc;n trong gi&agrave;y tạo cảm gi&aacute;c đ&ocirc;i gi&agrave;y &ocirc;m form v&agrave; vừa ch&acirc;n hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-8-1.jpg\" /></p>\r\n\r\n<p><em>Miếng đệm l&oacute;t ứng dụng c&ocirc;ng nghệ Lunarlon</em></p>\r\n\r\n<p>Với phi&ecirc;n bản Chuck II lần n&agrave;y, Converse tr&igrave;nh l&agrave;ng với bốn gam m&agrave;u quen thuộc: đen, trắng, xanh, đỏ c&ugrave;ng đầy đủ hai d&ograve;ng gi&agrave;y cơ bản: cổ thấp, cổ cao.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-19.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-20.jpg\" /></p>\r\n\r\n<p><em>Converse Chuck Taylor All Star II mang đến nhiều phi&ecirc;n bản cho bạn lựa chọn</em></p>', 'Thiết kế Trắng - Đen cơ bản nhưng vẫn tạo được điểm khác biệt với 2 khối màu riêng biệt ở phần thân giày và đế giày.', NULL, 1, 2, '2019-07-12 12:46:48', '2019-07-30 18:43:32'),
(3, 'Chuck 1970s 150146', 'chuck-1970s-150146', '150146-500x500.jpg', 1600000, 0, 0, 1, 1, 0, '<p><strong>Chất lượng b&ecirc;n trong ho&agrave;n to&agrave;n thuyết phục người mang</strong></p>\r\n\r\n<p>Sắc v&agrave;ng nổi bật, thu h&uacute;t nay lại sở hữu chất lượng vượt trội từ thiết kế của Chuck 70s &ndash; vốn được xem l&agrave; một trong những d&ograve;ng gi&agrave;y cao cấp của Converse. Tất cả tạo n&ecirc;n một si&ecirc;u phẩm kh&ocirc;ng một ai c&oacute; thể chối từ. Tối ưu sản phẩm v&agrave; cho người d&ugrave;ng th&ecirc;m sự lựa chọn, Converse cho ra mắt hai phi&ecirc;n bản Sunflower bao gồm cổ thấp v&agrave; cổ cao. Với:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Chất liệu Canvas ở phần Upper với tone v&agrave;ng chủ đạo tạo cảm gi&aacute;c thoải m&aacute;i cho người mang</p>\r\n	</li>\r\n	<li>\r\n	<p>Đế gi&agrave;y trắng ng&agrave; đặc trưng được phủ b&oacute;ng, đế d&agrave;y hơn gi&uacute;p bạn dễ vệ sinh</p>\r\n	</li>\r\n	<li>\r\n	<p>Tem logo ở đế gi&agrave;y m&agrave;u đen c&ugrave;ng font chữ trắng đậm chất Retro tạo điểm nhấn cho sản phẩm</p>\r\n	</li>\r\n	<li>\r\n	<p>Logo Chuck Taylor All Star b&ecirc;n h&ocirc;ng th&acirc;n gi&agrave;y được khắc laser sắc n&eacute;t, tỉ mỉ</p>\r\n	</li>\r\n	<li>\r\n	<p>Đệm l&oacute;t Ortholite được đ&aacute;nh gi&aacute; cao bởi độ &ecirc;m &aacute;i v&agrave; th&ocirc;ng tho&aacute;ng cho người mang</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"Chuck 70s Sunflower – Đôi giày vàng của làng thời trang là đây!\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/chuck%2070s%20sunflower/chuck-70s-sunflower-4.jpg\" /></p>\r\n\r\n<p>Với độ hot của m&igrave;nh, việc xuất hiện nhiều bản Fake của Chuck 70s Sunflower l&agrave; điều ho&agrave;n to&agrave;n tự nhi&ecirc;n. V&igrave; vậy t&ugrave;y v&agrave;o mong muốn m&agrave; bạn c&oacute; thể sở hữu những sản phẩm theo &yacute; th&iacute;ch của m&igrave;nh. Thế nhưng, để c&oacute; thể trải nghiệm một sản phẩm chất lượng từ trong ra ngo&agrave;i, bạn n&ecirc;n t&igrave;m đến những cửa h&agrave;ng chuy&ecirc;n cung cấp sản phẩm ch&iacute;nh h&atilde;ng. Tại Drake&nbsp;lu&ocirc;n lu&ocirc;n cập nhật c&aacute;c sản phẩm mới v&agrave; RESTOCK h&agrave;ng li&ecirc;n tục để đ&aacute;p ứng nhu cầu của kh&aacute;ch h&agrave;ng. Bạn c&oacute; thể li&ecirc;n hệ với Drake ngay h&ocirc;m nay để được hỗ trợ, giải đ&aacute;p v&agrave; tư vấn sản phẩm y&ecirc;u th&iacute;ch sớm nhất nh&eacute;!</p>', 'Màu xanh lạ mắt đồng bộ từ thân giày cho đến dây giày và các khoen xỏ dây giày cho bạn một thiết kế khá nổi bật và đẹp mắt.', NULL, 1, 9, '2019-07-12 12:50:14', '2019-07-17 07:47:54'),
(4, 'One Stars 111', 'one-stars-111', '96205-740-M-DRAKE-500x500.jpg', 2300000, 1, 0, 1, 0, 3, '<p><strong>Chất lượng b&ecirc;n trong ho&agrave;n to&agrave;n thuyết phục người mang</strong></p>\r\n\r\n<p>Sắc v&agrave;ng nổi bật, thu h&uacute;t nay lại sở hữu chất lượng vượt trội từ thiết kế của Chuck 70s &ndash; vốn được xem l&agrave; một trong những d&ograve;ng gi&agrave;y cao cấp của Converse. Tất cả tạo n&ecirc;n một si&ecirc;u phẩm kh&ocirc;ng một ai c&oacute; thể chối từ. Tối ưu sản phẩm v&agrave; cho người d&ugrave;ng th&ecirc;m sự lựa chọn, Converse cho ra mắt hai phi&ecirc;n bản Sunflower bao gồm cổ thấp v&agrave; cổ cao. Với:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Chất liệu Canvas ở phần Upper với tone v&agrave;ng chủ đạo tạo cảm gi&aacute;c thoải m&aacute;i cho người mang</p>\r\n	</li>\r\n	<li>\r\n	<p>Đế gi&agrave;y trắng ng&agrave; đặc trưng được phủ b&oacute;ng, đế d&agrave;y hơn gi&uacute;p bạn dễ vệ sinh</p>\r\n	</li>\r\n	<li>\r\n	<p>Tem logo ở đế gi&agrave;y m&agrave;u đen c&ugrave;ng font chữ trắng đậm chất Retro tạo điểm nhấn cho sản phẩm</p>\r\n	</li>\r\n	<li>\r\n	<p>Logo Chuck Taylor All Star b&ecirc;n h&ocirc;ng th&acirc;n gi&agrave;y được khắc laser sắc n&eacute;t, tỉ mỉ</p>\r\n	</li>\r\n	<li>\r\n	<p>Đệm l&oacute;t Ortholite được đ&aacute;nh gi&aacute; cao bởi độ &ecirc;m &aacute;i v&agrave; th&ocirc;ng tho&aacute;ng cho người mang</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"Chuck 70s Sunflower – Đôi giày vàng của làng thời trang là đây!\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/chuck%2070s%20sunflower/chuck-70s-sunflower-4.jpg\" /></p>\r\n\r\n<p>Với độ hot của m&igrave;nh, việc xuất hiện nhiều bản Fake của Chuck 70s Sunflower l&agrave; điều ho&agrave;n to&agrave;n tự nhi&ecirc;n. V&igrave; vậy t&ugrave;y v&agrave;o mong muốn m&agrave; bạn c&oacute; thể sở hữu những sản phẩm theo &yacute; th&iacute;ch của m&igrave;nh. Thế nhưng, để c&oacute; thể trải nghiệm một sản phẩm chất lượng từ trong ra ngo&agrave;i, bạn n&ecirc;n t&igrave;m đến những cửa h&agrave;ng chuy&ecirc;n cung cấp sản phẩm ch&iacute;nh h&atilde;ng. Tại Drake&nbsp;lu&ocirc;n lu&ocirc;n cập nhật c&aacute;c sản phẩm mới v&agrave; RESTOCK h&agrave;ng li&ecirc;n tục để đ&aacute;p ứng nhu cầu của kh&aacute;ch h&agrave;ng. Bạn c&oacute; thể li&ecirc;n hệ với Drake ngay h&ocirc;m nay để được hỗ trợ, giải đ&aacute;p v&agrave; tư vấn sản phẩm y&ecirc;u th&iacute;ch sớm nhất nh&eacute;!</p>', 'Chất lượng bên trong hoàn toàn thuyết phục người mang', NULL, 1, 10, '2019-07-12 12:53:30', '2019-07-31 20:01:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `images`, `product_id`) VALUES
(1, 'IMG_4323-150x150.jpg', 1),
(2, 'IMG_4325-150x150.jpg', 1),
(3, 'IMG_4330-150x150.jpg', 1),
(4, 'IMG_4334-150x150.jpg', 1),
(5, 'IMG_4047-150x150.jpg', 2),
(6, 'IMG_4049-150x150.jpg', 2),
(7, 'IMG_4051-150x150.jpg', 2),
(8, 'IMG_4053-150x150.jpg', 2),
(9, 'IMG_4075-150x150.jpg', 3),
(10, 'IMG_4080-150x150.jpg', 3),
(11, 'IMG_4089-150x150.jpg', 3),
(12, 'IMG_4094-150x150.jpg', 3),
(13, '96205-740-M-DRAKE3-1-150x150.jpg', 4),
(14, '96205-740-M-DRAKE4-150x150.jpg', 4),
(15, '96205-740-M-DRAKE5-150x150.jpg', 4),
(16, '96205-740-M-DRAKE6-150x150.jpg', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_properties`
--

CREATE TABLE `product_properties` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `size_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_properties`
--

INSERT INTO `product_properties` (`product_id`, `size_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `number` tinyint(4) NOT NULL DEFAULT '0',
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale_products`
--

CREATE TABLE `sale_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale` tinyint(4) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `name`) VALUES
(1, '35'),
(2, '36'),
(3, '37'),
(4, '38'),
(5, '39'),
(6, '40'),
(7, '41'),
(8, '42'),
(9, '43'),
(10, '44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `level`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Supperadmin', 'supperadmin@gmail.com', '0912345678', 1, '$2y$10$txB2s3yQuL9jO1zl2VNaiO07l7e0rIPiQ/ET3KS7X6a2sAsENRxFq', 'r15D0PRYbHBVv9snu8xq7QmKTbFVHD83YoyldZuPTIGj4sOgtba4f8kFys2e', NULL, '2019-06-06 07:53:53'),
(3, 'Phạm Hồng Nhung', 'hongnhung9496@gmail.com', '0396314985', 0, '$2y$10$2JwB1k0D2TpO4PtbY.m1yOBgeLfubwlyKU5RKGplFdLYzM.nlBu/y', 'KUWUJzrJI9P6sVqCzXwEGrPZaSAlpmAXlUAbTdHa', '2019-06-06 03:07:06', '2019-06-06 08:15:06'),
(4, 'admin', 'admin@gmail.com', '0977423252', 1, '$2y$10$8xybjtDdhiULPgOGaInagOLa7hpE.wrxCkfIRk76n54gjBLfusMFO', 'HJkcNnpo8UGCQcw8V9azBZYCTYNDJBSYpk9klJfARvbxCozilFb0w3KI9Tle', '2019-06-06 03:47:00', '2019-06-06 03:47:00'),
(5, 'Nguyễn Hoàng Hải', 'nghhai2712@gmail.com', '0977423252', 1, '$2y$10$/VTgGof.p8Ifqd870HGJ5OXbIfXyIJipAMX8O5LVauBhvcMW4JLIe', 'p9zzr7fc5IgxJMSQMbM4snswDKDafww7aeTaPVGmyZGXKPLDiNhtcF5Ly7TT', '2019-06-06 05:23:40', '2019-06-06 05:23:40'),
(6, 'admin1', 'admin1@gmail.com', '1234567890', 1, '$2y$10$4gGwTM9/aav6bCGy0ZUtPexplku7GlE2.vgZA3dqisUY3fcgtqj9q', '3IPgcKItM3wi3o7JFfpoNJkWVvTejaEbviaWuToqPyQy8CoNogxnfeHHccJ9', '2019-06-06 08:04:31', '2019-06-06 09:41:15'),
(7, 'admin2', 'admin2@gmail.com', '1234567890', 0, '$2y$10$GtYw3RwpWITHg.n7q34i.eo7JUcgoCe5GomtyF5ZrAUwT8FxvYs5e', '7CbvudUqlMllyDOHQ7spEvnxLU4LLzKQUI9bvq25QmMEugBP4WzYAF5nI76W', '2019-06-06 08:06:03', '2019-06-06 08:59:28'),
(8, 'Hải Hoàng', 'nguyenhoanghai271294@gmail.com', '0977423252', 0, '$2y$10$rtPvtX2LyeC/uhA4fAIYD.aumcvEh329S0RhLdOqxUgsrS0ctUUoS', 'ej6Dq9fXLSq9jCsbTZ9Pr0sk2FIOD25ZNPNZGfL2wsH4Jk3VGlqRrZMJZkgd', '2019-07-12 12:56:54', '2019-07-12 12:56:54');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_name_unique` (`name`),
  ADD KEY `articles_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_active_index` (`active`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_size_id_foreign` (`size_id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_hot_index` (`hot`),
  ADD KEY `products_active_index` (`active`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `product_properties`
--
ALTER TABLE `product_properties`
  ADD KEY `product_properties_product_id_foreign` (`product_id`),
  ADD KEY `product_properties_size_id_foreign` (`size_id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_product_id_foreign` (`product_id`),
  ADD KEY `ratings_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `sale_products`
--
ALTER TABLE `sale_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_products_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sale_products`
--
ALTER TABLE `sale_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_properties`
--
ALTER TABLE `product_properties`
  ADD CONSTRAINT `product_properties_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_properties_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sale_products`
--
ALTER TABLE `sale_products`
  ADD CONSTRAINT `sale_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
