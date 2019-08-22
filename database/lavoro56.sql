-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 22, 2019 lúc 05:28 PM
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
  `hot` int(11) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `name`, `slug`, `image`, `description`, `content`, `active`, `hot`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Giới thiệu sản phẩm Chuck Taylor Classic', 'gioi-thieu-san-pham-chuck-taylor-classic', 'converse-chuck-taylor-classic-24.jpg', 'Chuck Taylor Classic là dòng giày truyền thống của Converse được giữ đúng với nguyên bản ban đầu.', '<p><strong>Thiết kế Converse Chuck Taylor Classic &ldquo;vừa mắt vừa bền&rdquo;</strong></p>\r\n\r\n<p>Chuck Taylor Classic c&oacute; thiết kế giống như d&ograve;ng Converse All Star được cho ra mắt v&agrave;o 1917 d&agrave;nh ri&ecirc;ng cho c&aacute;c vận động vi&ecirc;n b&oacute;ng rổ chuy&ecirc;n nghiệp.</p>\r\n\r\n<p>Tuy nhi&ecirc;n thời điểm n&agrave;y gi&agrave;y Converse All Star chỉ thế hiện đ&uacute;ng chức năng của m&igrave;nh m&agrave; chưa đạt được độ tinh tế về thời trang. V&igrave; vậy, sau khi Chuck Taylor tham gia v&agrave;o đội ngũ Converse đ&atilde; mang đến cho sản phẩm một sự thay đổi mới, đảm được t&iacute;nh thời trang cho sản phẩm. Sự thay đổi n&agrave;y đ&atilde; khiến Converse c&oacute; những bước chuyển m&igrave;nh v&agrave; dần khẳng định được vị thế trong lĩnh vực gi&agrave;y thể thao.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor Classic\" src=\"https://drake.vn/image/catalog/Cv%20Classic/converse-chuck-taylor-classic-20-1.jpg\" /></p>\r\n\r\n<p><em>Thiết kế của Converse trước đ&acirc;y phục vụ cho c&aacute;c hoạt động thể thao, đặc biệt l&agrave; b&oacute;ng rổ</em></p>\r\n\r\n<p>C&aacute;c thiết kế gi&agrave;y tại Converse Chuck Taylor Classic ghi điểm bởi sự đơn giản, tinh tế nhưng kh&ocirc;ng k&eacute;m phần thời trang, năng động. Đặc biệt l&agrave; với d&ograve;ng Classic cổ cao với thiết kế &ocirc;m s&aacute;t phần cổ ch&acirc;n, vừa độc đ&aacute;o, vừa lạ mắt gi&uacute;p bạn khẳng định được phong c&aacute;ch thời trang của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor Classic\" src=\"https://drake.vn/image/catalog/Cv%20Classic/converse-chuck-taylor-classic-18.jpg\" /></p>\r\n\r\n<p><em>Converse cổ cao được thiết kế mang n&eacute;t trẻ trung, khỏe khoắn</em></p>\r\n\r\n<p>Hiện tại Chuck Classic c&oacute; hai phi&ecirc;n bản gi&agrave;y: cổ cao v&agrave; cổ thấp với 6 m&agrave;u cơ bản: trắng, đen, đỏ, xanh navy, full đen v&agrave; full đen da.</p>\r\n\r\n<ul>\r\n	<li>Lựa chọn vải Canvas cho phần th&acirc;n gi&agrave;y để đảm bảo độ mềm mại, nhẹ ch&acirc;n c&ugrave;ng lỗ xỏ d&acirc;y tho&aacute;ng kh&iacute; cho người mang</li>\r\n	<li>Phần đế cao su bền chắc c&oacute; đường viền m&agrave;u đặc trưng xung quanh, gi&uacute;p người mang đảm bảo độ ma s&aacute;t.\r\n	<p><img alt=\"Converse Chuck Taylor Classic\" src=\"https://drake.vn/image/catalog/Cv%20Classic/converse-chuck-taylor-classic-21.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Chuck Taylor Classic với đầy đủ 2 phi&ecirc;n bản: cổ thấp, cổ cao</em></p>\r\n\r\n<ul>\r\n	<li>Thiết kế logo tr&ograve;n vẫn được giữ nguy&ecirc;n kh&ocirc;ng thay đổi:</li>\r\n</ul>\r\n\r\n<p>- Converse Classic cổ thấp: c&oacute; logo All Star được in 3D ở phần g&oacute;t gi&agrave;y v&agrave; lưỡi g&agrave;</p>\r\n\r\n<p>- Converse Classic cổ cao: c&oacute; logo chữ k&yacute; của Chuck Taylor được in b&ecirc;n h&ocirc;ng gi&agrave;y, k&egrave;m logo All Star được in ở đế gi&agrave;y v&agrave; lưỡi g&agrave;.</p>\r\n\r\n<p>Đặc điểm dễ nhận diện của Chuck Classic ch&iacute;nh l&agrave; ngo&agrave;i hai m&agrave;u trắng &ndash; full đen c&oacute; đường chỉ tr&ugrave;ng với m&agrave;u gi&agrave;y. Ở c&aacute;c m&agrave;u c&ograve;n lại đều sử dụng đường chỉ trắng may dọc hai b&ecirc;n th&acirc;n gi&agrave;y một c&aacute;ch cẩn thận, tỉ mỉ.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor Classic\" src=\"https://drake.vn/image/catalog/Cv%20Classic/converse-chuck-taylor-classic-22.jpg\" /></p>\r\n\r\n<p><em>C&aacute;c mẫu gi&agrave;y đều c&oacute; chỉ trắng may dọc th&acirc;n gi&agrave;y chỉn chu, tỉ mỉ</em></p>\r\n\r\n<p><strong>Đa dạng phong c&aacute;ch với Converse Chuck Taylor All Star Classic</strong></p>\r\n\r\n<p>C&oacute; thể thấy, cả hai d&ograve;ng Converse Chuck Classic đều được c&aacute;c bạn trẻ ưa chuộng bởi sự đơn giản, thời trang, đặc biệt kh&ocirc;ng k&eacute;n người mang.</p>\r\n\r\n<p>Nếu phi&ecirc;n bản Chuck Classic cổ cao vẫn giữ được n&eacute;t độc đ&aacute;o đặc trưng của thương hiệu, mang đến cho người mang một phong c&aacute;ch mới. Th&igrave; phi&ecirc;n bản cổ thấp lại đảm bảo sự đơn giản, phổ biến hơn v&igrave; ch&uacute;ng dễ đi, dễ kết hợp quần &aacute;o.</p>\r\n\r\n<p>Kh&ocirc;ng &iacute;t c&aacute;c t&iacute;n đồ thời trang hiện nay đ&atilde; nhanh ch&oacute;ng sở hữu cho m&igrave;nh item &ldquo;huyền thoại&rdquo; n&agrave;y với sự đột ph&aacute; về phong c&aacute;ch thời trang.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor Classic\" src=\"https://drake.vn/image/catalog/Cv%20Classic/converse-chuck-taylor-classic-9.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor Classic\" src=\"https://drake.vn/image/catalog/Cv%20Classic/converse-chuck-taylor-classic-5.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor Classic\" src=\"https://drake.vn/image/catalog/Cv%20Classic/converse-chuck-taylor-classic-10.jpg\" /></p>\r\n\r\n<p><em>Rất nhiều sao đ&atilde; th&ecirc;m item n&agrave;y v&agrave;o bộ sưu tập gi&agrave;y của m&igrave;nh</em></p>\r\n\r\n<p><strong>Converse Chuck Taylor Classic với nhiều mức gi&aacute; &ldquo;vừa tay tầm t&uacute;i&rdquo;</strong></p>\r\n\r\n<p>C&oacute; thể n&oacute;i, so với mặt bằng chung, mức gi&aacute; cho một đ&ocirc;i Converse Chuck Classic ch&iacute;nh h&atilde;ng vẫn l&agrave; chi ph&iacute; hợp l&yacute; cho những ai y&ecirc;u th&iacute;ch thời trang. Đặc biệt l&agrave; mong muốn cho được một đ&ocirc;i gi&agrave;y đ&uacute;ng với xu hướng v&agrave; c&oacute; được độ bền bỉ nhất định. Hiện tại mức gi&aacute; của Converse Chuck Classic dao động từ 1.200.000 đồng đến 1.600.000 đồng t&ugrave;y v&agrave;o phi&ecirc;n bản v&agrave; chất liệu bạn chọn.Một nguy&ecirc;n l&yacute; khi sử dụng gi&agrave;y Converse được mọi người truyền tai nhau:&nbsp;<em>&ldquo;Gi&agrave;y Converse khi bẩn c&ograve;n đẹp hơn khi sạch v&agrave; c&agrave;ng được sử dụng nhiều c&agrave;ng l&ecirc;n m&atilde;. Đ&oacute; l&agrave; chưa kể n&oacute; bền đến mức tưởng như kh&ocirc;ng bao giờ bị hỏng&rdquo;</em>.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor Classic\" src=\"https://drake.vn/image/catalog/Cv%20Classic/converse-chuck-taylor-classic-19.jpg\" /></p>\r\n\r\n<p><em>Converse Chuck Classic m&agrave;u trắng nếu b&aacute;m bẩn vẫn kh&ocirc;ng vấn đề g&igrave;!</em></p>\r\n\r\n<p>Với xu hướng gi&agrave;y Converse cực chất như hiện nay, đặc biệt l&agrave; dễ sử dụng v&agrave; ph&ugrave; hợp với mọi nơi, mọi phong c&aacute;ch. Bạn c&ograve;n chần chừ g&igrave; m&agrave; kh&ocirc;ng li&ecirc;n hệ ngay với Drake&nbsp;hệ thống gi&agrave;y Converse ch&iacute;nh h&atilde;ng tại TP.HCM để nhanh ch&oacute;ng sở hữu sản phẩm c&ugrave;ng phần qu&agrave; hấp dẫn.</p>', 1, 0, 5, '2019-07-29 22:20:46', '2019-08-19 07:26:11'),
(2, 'Chi tiết Converse Chuck Taylor All Star 1970s', 'chi-tiet-converse-chuck-taylor-all-star-1970s', 'converse-chuck-taylor-classic-21.jpg', 'Cho đến nay Converse Chuck Taylor All Star 1970s vẫn là xu hướng được nhiều bạn trẻ “bắt trend”.', '<p><strong>Những điểm cộng tr&ecirc;n đ&ocirc;i gi&agrave;y Converse Chuck Taylor All Star 1970s</strong></p>\r\n\r\n<p>Vẫn giữ nguy&ecirc;n thiết kế gi&agrave;y đặc trưng của đế chế Converse, Chuck Taylor 1970s mang trong m&igrave;nh một dấu ấn của thời trang cố điển. Với những chi tiết gi&agrave;y đảm bảo đ&uacute;ng chất vintage, đồng thời tạo được chất lượng tốt hơn cho người mang. Trong đ&oacute;, những điểm mới tr&ecirc;n đ&ocirc;i gi&agrave;y Chuck 1970s được c&aacute;c nh&agrave; thiết kế đưa v&agrave;o m&agrave; bạn c&oacute; thể nhận diện ngay:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Phần đế gi&agrave;y c&oacute; m&agrave;u ng&agrave; hơn so với c&aacute;c thiết kế trước, cao hơn v&agrave; được phủ một lớp b&oacute;ng để hạn chế b&aacute;m bẩn v&agrave; dễ d&agrave;ng vệ sinh.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp vải Canvas phần th&acirc;n gi&agrave;y được dệt d&agrave;y hơn, c&oacute; lớp l&oacute;t đệm gi&uacute;p gi&agrave;y cứng c&aacute;p hơn, kh&ocirc;ng c&ograve;n t&igrave;nh trạng ọp ẹp sau một thời&nbsp;gian sử dụng như c&aacute;c mẫu cũ.</p>\r\n\r\n	<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-4.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Chất liệu v&agrave; phần đế c&oacute; sự thay đổi r&otilde; nhất</em></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đệm ch&acirc;n Ortholite &reg; &ecirc;m &aacute;i gi&uacute;p giảm khả năng trơn trượt, l&agrave;m giảm lực ma s&aacute;t giữa ng&oacute;n - g&oacute;t ch&acirc;n với gi&agrave;y.</p>\r\n	</li>\r\n	<li>\r\n	<p>Form gi&agrave;y được thiết kế chuẩn hơn với g&oacute;t gi&agrave;y v&agrave; mũi gi&agrave;y &ocirc;m s&aacute;t v&agrave;o ch&acirc;n nhưng kh&ocirc;ng g&acirc;y cảm gi&aacute;c kh&oacute; chịu cho người mang.</p>\r\n\r\n	<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-5.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Form gi&agrave;y vừa ch&acirc;n, chuẩn size</em></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đường viền đen quanh đế nổi l&ecirc;n tr&ecirc;n nền trắng ng&agrave; tạo sự bắt mắt, điểm nhấn cho đ&ocirc;i gi&agrave;y.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường kim mũi chỉ quanh th&acirc;n gi&agrave;y được gia c&ocirc;ng tỉ mỉ tạo n&ecirc;n sự tinh tế, nổi bật cho đ&ocirc;i gi&agrave;y.</p>\r\n	</li>\r\n	<li>\r\n	<p>Logo sau g&oacute;t gi&agrave;y được thiết kế lại với font chữ của những năm 1970, chữ &ldquo;Converse All Star Chuck Taylor&rdquo; trắng nằm tr&ecirc;n nền đen tạo n&ecirc;n sự kh&aacute;c biết so với c&aacute;c thiết kế trước.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-9.jpg\" /></p>\r\n\r\n<p><em>Thiết kế logo l&agrave; điểm thay đổi đ&aacute;ng kể nhất tr&ecirc;n đ&ocirc;i gi&agrave;y</em></p>\r\n\r\n<p><strong>Chuck 1970s - Khả năng &ldquo;hợp outfit đến ph&aacute;t hờn&rdquo; kh&ocirc;ng cần suy nghĩ</strong></p>\r\n\r\n<p>Một điểm &ldquo;chất như nước cất&rdquo; của d&ograve;ng gi&agrave;y Chuck Taylor 1970s ch&iacute;nh l&agrave; khả năng h&ograve;a hợp với tất cả c&aacute;c phong c&aacute;ch thời trang.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/admin/index.php?route=common/filemanager/connector&amp;token=3H9LIHPcl8w1J8bBgs7kNvozbtTAMs74\" /><img alt=\"\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-14.jpg\" /></p>\r\n\r\n<p>Bạn sẽ kh&ocirc;ng cần phải suy nghĩ h&ocirc;m nay &ldquo;mặc g&igrave;, mang g&igrave;&rdquo; khi chỉ cần một đ&ocirc;i Chuck 1970s. Bạn c&oacute; thể c&acirc;n tất cả mọi phong c&aacute;ch từ quần t&acirc;y &ndash; sơ mi đi học, cho đến phong c&aacute;ch bụi bặm, nổi loạn hay nhẹ nh&agrave;ng, thanh lịch, &hellip; Bởi thiết kế của Chuck Taylor 1970s mặc d&ugrave; mang đậm phong c&aacute;ch vintage, cổ điển. Nhưng vẫn giữ được sự hiện đại trong thiết kế của m&igrave;nh với đầy đủ hai phi&ecirc;n bản cổ thấp v&agrave; cổ cao c&ugrave;ng sự đa dạng về m&agrave;u sắc (v&agrave;ng, xanh dương, đỏ, đen, trắng, full đen da v&agrave; full đen trắng). Điều n&agrave;y gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng lựa chọn một phong c&aacute;ch thời trang cho ri&ecirc;ng m&igrave;nh.</p>\r\n\r\n<p>C&ugrave;ng ngắm qua những bạn trẻ&nbsp;đ&atilde; diện đ&ocirc;i gi&agrave;y n&agrave;y với sự đa dạng trong phong c&aacute;ch để c&oacute; thể định h&igrave;nh được những g&igrave; m&agrave; Chuck Taylor 1970s mang lại cho bạn nh&eacute;!</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-20.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-16.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-18.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-17.jpg\" /></p>\r\n\r\n<p><strong>Mức gi&aacute; hợp l&yacute; cho nhiều đối tượng muốn sở hữu Converse Chuck 1970s</strong></p>\r\n\r\n<p>Converse Chuck Taylor 1970s được xem l&agrave; đỉnh cao của &ldquo;nghệ thuật&rdquo; thời trang bởi sự pha trộn giữa n&eacute;t cổ điển v&agrave; hiện đại.</p>\r\n\r\n<p>Với thiết kế v&agrave; những ưu điểm về chất lượng m&agrave; Chuck 1970s mang lại, đ&acirc;y thật sự l&agrave; một &ldquo;si&ecirc;u phẩm&rdquo; đ&aacute;ng &ldquo;đồng tiền b&aacute;t gạo&rdquo; m&agrave; bạn c&oacute; thể chi ra. Hiện nay đối với một đ&ocirc;i gi&agrave;y Converse Chuck 1970s ch&iacute;nh h&atilde;ng c&oacute; gi&aacute; dao động từ 1.500.000 đồng. Mức gi&aacute; c&oacute; thể thay đổi t&ugrave;y v&agrave;o phi&ecirc;n bản bạn lựa chọn cũng như chất liệu (vải canvas/da) của gi&agrave;y.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-8.jpg\" /></p>\r\n\r\n<p><em>Chi ph&iacute; cho một đ&ocirc;i Converse Chuck Taylor 1970s kh&aacute; hợp l&yacute; với chất lượng n&oacute; mang lại</em></p>\r\n\r\n<p>Kh&aacute;c với những loại gi&agrave;y kh&aacute;c, ri&ecirc;ng với Converse, một điều kh&aacute; lạ l&agrave; việc c&agrave;ng mang l&acirc;u, đ&ocirc;i gi&agrave;y lại c&agrave;ng to&aacute;t ra được vẻ trẻ trung, hiện đại, khỏe khoắn đ&uacute;ng với chất Converse. Đặc biệt, bạn c&oacute; thể lựa chọn c&aacute;c t&ocirc;ng gi&agrave;y m&agrave;u s&aacute;ng để những set đồ của bạn tr&ocirc;ng rực rỡ, năng động hơn so với ng&agrave;y thường.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-11.jpg\" /></p>\r\n\r\n<p><em>Với nhiều phi&ecirc;n bản bạn c&oacute; thể lựa chọn mẫu gi&agrave;y y&ecirc;u th&iacute;ch</em></p>\r\n\r\n<p>Với sự nổi bật, c&aacute; t&iacute;nh v&agrave; chất lượng của m&igrave;nh, Chuck Taylor 1970s lu&ocirc;n nằm trong những mẫu gi&agrave;y b&aacute;n chạy nhất hiện nay. Nếu bạn cũng đang c&oacute; sự quan t&acirc;m đối với d&ograve;ng gi&agrave;y n&agrave;y v&agrave; mong muốn sở hữu một đ&ocirc;i gi&agrave;y chất lượng như những g&igrave; bạn đ&atilde; bỏ ra.</p>\r\n\r\n<p>Li&ecirc;n hệ với Drake&nbsp;ngay h&ocirc;m nay để được tư vấn v&agrave; lựa chọn một sản phẩm ph&ugrave; hợp với phong c&aacute;ch của bạn.</p>', 1, 0, 1, '2019-07-29 22:21:55', '2019-07-29 22:21:55'),
(3, 'Vans Old Skool là “át chủ bài” của Vans', 'vans-old-skool-la-at-chu-bai-cua-vans', 'converse-chuck-taylor-classic-22.jpg', 'Lý do nào khiến Vans Old Skool lại trở thành hot item của giới trẻ', '<p><em><strong>L&yacute; do để Vans Old Skool trở th&agrave;nh &ldquo;best seller&rdquo; của Vans?</strong></em></p>\r\n\r\n<p>&ldquo;Thời trang &ndash; Thời thượng &ndash; Kh&ocirc;ng lỗi mốt&rdquo; l&agrave; những từ kh&oacute;a khi nhắc đến Vans. Thời gian cứ tr&ocirc;i, sự xuất hiện của c&aacute;c thương hiệu gi&agrave;y ng&agrave;y c&agrave;ng nhiều, thế nhưng Vans Old Skool vẫn đứng đ&oacute; v&agrave; giữ được gi&aacute; trị v&agrave; sức h&uacute;t của m&igrave;nh. Người ta thường n&oacute;i, c&aacute;i g&igrave; c&agrave;ng đơn giản c&agrave;ng kh&ocirc;ng thay đổi th&igrave; sẽ bị l&atilde;ng qu&ecirc;n v&agrave; đ&agrave;o thải. Ri&ecirc;ng với Vans Old Skool, c&acirc;u n&oacute;i n&agrave;y ho&agrave;n to&agrave;n sai, bởi sự ph&aacute;t triển &ldquo;gần như kh&ocirc;ng thay đổi&rdquo;, trong gần nửa thế kỷ vừa qua, Vans Old Skool vẫn l&agrave; sản phẩm best seller tr&ecirc;n thị trường thế giới.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/Vans%20Old%20Skool/vans-old-skool-17.jpg\" /></p>\r\n\r\n<p><em>Thiết kế đơn giản nhưng tạo được điểm nhấn</em></p>\r\n\r\n<p>Mặc d&ugrave; vừa mới du nhập v&agrave;o thị trường Việt Nam trong khoảng 8 &ndash; 9 năm trở lại đ&acirc;y. Thế nhưng, c&oacute; thể thấy sự phủ s&oacute;ng của d&ograve;ng gi&agrave;y Vans trong giới trẻ Việt, đặc biệt l&agrave; phi&ecirc;n bản gi&agrave;y Vans Old Skool c&oacute; một đường sọc trắng lượn s&oacute;ng b&ecirc;n h&ocirc;ng gi&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/Vans%20Old%20Skool/vans-old-skool-13.jpg\" /></p>\r\n\r\n<p><em>Đặc trưng thiết kế đến từ sọc trắng lượn s&oacute;ng b&ecirc;n h&ocirc;ng gi&agrave;y</em></p>\r\n\r\n<p>C&oacute; thể thấy, thiết kế của Vans Old Skool hướng đến sự đơn giản, dễ sử dụng d&ugrave; ở bất k&igrave; trường hợp n&agrave;o: đi học được, đi chơi được, c&aacute;c dịp lễ quan trọng vẫn được, &hellip; Điểm cộng cho Vans Old Skool ch&iacute;nh l&agrave; chất liệu da lộn được cải tiến, kh&ocirc;ng c&ograve;n bị x&ugrave; l&ocirc;ng sau thời gian d&agrave;i sử dụng; mũi gi&agrave;y l&agrave;m từ da lộn mềm mại, gi&uacute;p bạn kh&ocirc;ng c&ograve;n cảm gi&aacute;c đau ở c&aacute;c đầu ng&oacute;n ch&acirc;n. Cổ gi&agrave;y c&oacute; phần đệm m&uacute;t bảo vệ phần mắt c&aacute;, gi&uacute;p cổ ch&acirc;n v&agrave; g&oacute;t ch&acirc;n kh&ocirc;ng bị đau khi di chuyển. Đ&oacute; c&oacute; thể l&agrave; l&yacute; do gi&uacute;p Vans Old Skool đạt được sự h&agrave;i l&ograve;ng của giới trẻ vốn vận động v&agrave; di chuyển nhiều.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/Vans%20Old%20Skool/vans-old-skool-3.jpg\" /></p>\r\n\r\n<p><em>Rất nhiều phi&ecirc;n bản m&agrave;u sắc hiện đại, trẻ trung</em></p>\r\n\r\n<p>Hiện nay, Vans Old Skool c&oacute; được thiết kế &ldquo;vừa quen vừa lạ&rdquo; với sự xuất hiện của nhiều phi&ecirc;n bản m&agrave;u sắc gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; nhiều lựa chọn hơn.</p>\r\n\r\n<p><strong>Vans Old Skool chưa bao giờ hạ nhiệt nhờ v&agrave;o sự ưu &aacute;i của giới fashionista</strong></p>\r\n\r\n<p>Một trong những l&yacute; do gi&uacute;p Vans Old Skool nhận được sự quan t&acirc;m của giới trẻ ch&iacute;nh l&agrave; nhờ v&agrave;o sự ưu &aacute;i của giới fashionista. Kh&ocirc;ng kh&oacute; để nhận ra rằng bất kỳ một nh&acirc;n vật c&oacute; tầm ảnh hưởng đến giới trẻ đều sở hữu một item Vans Old Skool trong bộ sưu tập của m&igrave;nh. Thậm ch&iacute; việc diện &ldquo;hot hit&rdquo; item n&agrave;y đ&atilde; trở th&agrave;nh xu hướng m&agrave; kh&ocirc;ng &iacute;t người săn đ&oacute;n.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/Vans%20Old%20Skool/vans-old-skool-5.jpg\" /></p>\r\n\r\n<p><em>&ldquo;Hot item&rdquo; được săn đ&oacute;n ở mọi nơi</em></p>\r\n\r\n<p>Mỗi một outfit kết hợp với Vans Old Skool sẽ mang đến cho bạn một &ldquo;ngọn gi&oacute; mới&rdquo; trong phong c&aacute;ch. C&ugrave;ng xem qua những sự kết hợp n&agrave;o đ&atilde; mang đến phi&ecirc;n bản Vans n&agrave;y một độ hot chưa bao giờ hạ nhiệt như vậy.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/Vans%20Old%20Skool/vans-old-skool-2-1.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/Vans%20Old%20Skool/vans-old-skool-23.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/Vans%20Old%20Skool/vans-old-skool-24.jpg\" /></p>\r\n\r\n<p><em>Thiết kế Unisex biến h&oacute;a đa dạng phong c&aacute;ch</em></p>', 1, 1, 4, '2019-08-06 05:28:54', '2019-08-13 17:56:46');

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
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `active`, `parent_id`, `description`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 'Converse', 'converse', 1, 0, 'Converse', 'Converse', '2019-06-01 02:14:45', '2019-07-31 23:50:24'),
(2, 'Chuck II', 'chuck-ii', 1, 1, 'Chuck II', 'Chuck II', '2019-06-01 02:29:36', '2019-08-05 04:17:43'),
(3, 'Vans', 'vans', 1, 0, 'Vans', 'Vans', '2019-06-01 03:11:52', '2019-06-01 03:11:52'),
(4, 'Classic', 'classic', 1, 3, 'Classic', 'Classic', '2019-06-01 03:12:06', '2019-07-31 06:19:04'),
(5, 'Palladium', 'palladium', 1, 0, 'Palladium', 'Palladium', '2019-06-01 03:12:23', '2019-06-01 03:13:15'),
(6, 'Sneaker', 'sneaker', 1, 5, 'Sneaker', 'Sneaker', '2019-06-01 03:13:00', '2019-07-31 23:56:31'),
(7, 'Kid', 'kid', 1, 5, 'Kid', 'Kid', '2019-06-01 03:26:33', '2019-08-05 03:21:40'),
(8, 'Điện thoại', 'dien-thoai', 0, 0, 'Điện thoại', 'Điện thoại', '2019-06-01 03:26:52', '2019-08-08 13:08:36'),
(9, 'Chuck 1970s', 'chuck-1970s', 1, 1, 'Chuck 1970s', 'Chuck 1970s', '2019-07-11 15:32:39', '2019-08-05 03:47:53'),
(10, 'One Stars', 'one-stars', 1, 1, 'One Stars', 'One Stars', '2019-07-11 15:33:25', '2019-07-11 15:33:25');

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
(1, '1906443086', 'fixed', 100000, NULL, 4, '2019-08-18 06:55:29', '2019-08-18 07:22:13');

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
(7, '2019_06_21_155258_create_product_images_table', 1),
(8, '2019_07_23_135425_create_product_properties_table', 1),
(9, '2019_07_26_161342_create_sale_products_table', 1),
(10, '2019_07_29_072403_create_coupons_table', 1),
(11, '2019_07_30_094938_create_orders_table', 1),
(12, '2019_07_30_095058_create_order_details_table', 1),
(13, '2019_08_07_071450_create_slides_table', 1),
(14, '2019_08_08_080342_create_notifications_table', 1),
(15, '2019_08_13_171734_create_vnpays_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Chuck II 150147', 'chuck-ii-150147', '150147-500x500.jpg', 1600000, 0, 0, 1, 1, 0, '<p><strong>Converse Chuck Taylor All Star II &ndash; Sự h&agrave;i h&ograve;a giữa cũ v&agrave; mới</strong></p>\r\n\r\n<p>Nh&igrave;n chung, Chuck Taylor All Star II<strong>&nbsp;</strong>vẫn mang những đặc điểm tương đồng với những mẫu gi&agrave;y Converse. Tuy nhi&ecirc;n, những cải tiến nổi bật về thiết kế ch&iacute;nh l&agrave; điểm thu h&uacute;t của d&ograve;ng n&agrave;y. Chắc chắn, bạn sẽ ho&agrave;n to&agrave;n ấn tượng với sự pha trộn giữa c&aacute;i cũ v&agrave; c&aacute;i mới từ những chi tiết thiết kế cho đến chất liệu trong đ&ocirc;i Converse Chuck Taylor All Star II:</p>\r\n\r\n<ul>\r\n	<li>Vẫn giữ nguy&ecirc;n chất liệu canvas Tencel mềm mại với từng thớ dệt bền, chắc, đảm bảo độ mềm mại, thoải m&aacute;i, tho&aacute;ng kh&iacute; cho người mang</li>\r\n	<li>D&acirc;y gi&agrave;y v&agrave; lỗ xỏ d&acirc;y tr&ugrave;ng m&agrave;u với gi&agrave;y, kh&aacute;c với d&ograve;ng gi&agrave;y trước đ&acirc;y đa số l&agrave; những khoen tr&ograve;n d&ugrave;ng chung m&agrave;u bạc\r\n	<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-16.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Chất liệu được n&acirc;ng cấp với nhiều chi tiết thiết kế được thay đổi</em></p>\r\n\r\n<ul>\r\n	<li>Logo của Converse Chuck II ở b&ecirc;n h&ocirc;ng gi&agrave;y phi&ecirc;n bản cổ cao cũng được th&ecirc;u l&ecirc;n một c&aacute;ch tỉ mỉ tạo được sự sắc xảo cho đ&ocirc;i gi&agrave;y</li>\r\n	<li>Đế gi&agrave;y trắng bằng cao su chắc chắn, kh&ocirc;ng viền, logo dập nổi 3D sau g&oacute;t gi&agrave;y</li>\r\n	<li>Miếng đệm l&oacute;t gi&agrave;y sử dụng miếng l&oacute;t của Nike Lunarlon tạo sự &ecirc;m &aacute;i, tho&aacute;ng kh&iacute; cho người mang. Đặc biệt c&oacute; thể dễ d&agrave;ng th&aacute;o ra để vệ sinh gi&agrave;y khi cần thiết</li>\r\n</ul>\r\n\r\n<p>Phần d&acirc;y thun ở hai b&ecirc;n th&acirc;n đ&ocirc;i gi&agrave;y c&ugrave;ng hai sợi thun cố định lưỡi g&agrave; b&ecirc;n trong gi&agrave;y tạo cảm gi&aacute;c đ&ocirc;i gi&agrave;y &ocirc;m form v&agrave; vừa ch&acirc;n hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-8-1.jpg\" /></p>\r\n\r\n<p><em>Miếng đệm l&oacute;t ứng dụng c&ocirc;ng nghệ Lunarlon</em></p>\r\n\r\n<p>Với phi&ecirc;n bản Chuck II lần n&agrave;y, Converse tr&igrave;nh l&agrave;ng với bốn gam m&agrave;u quen thuộc: đen, trắng, xanh, đỏ c&ugrave;ng đầy đủ hai d&ograve;ng gi&agrave;y cơ bản: cổ thấp, cổ cao.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-19.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-20.jpg\" /></p>\r\n\r\n<p><em>Converse Chuck Taylor All Star II mang đến nhiều phi&ecirc;n bản cho bạn lựa chọn</em></p>', 'Sắc xám trung tính đồng bộ từ thân giày cho đến dây giày và các khoen xỏ dây giày cho bạn một thiết kế cực tinh tế và đẹp mắt.', NULL, 4, 2, '2019-07-11 15:42:02', '2019-08-18 07:07:43'),
(2, 'Chuck II 150143', 'chuck-ii-150143', '150143-500x500.jpg', 1600000, 0, 0, 1, 1, 0, '<p><strong>Converse Chuck Taylor All Star II &ndash; Sự h&agrave;i h&ograve;a giữa cũ v&agrave; mới</strong></p>\r\n\r\n<p>Nh&igrave;n chung, Chuck Taylor All Star II<strong>&nbsp;</strong>vẫn mang những đặc điểm tương đồng với những mẫu gi&agrave;y Converse. Tuy nhi&ecirc;n, những cải tiến nổi bật về thiết kế ch&iacute;nh l&agrave; điểm thu h&uacute;t của d&ograve;ng n&agrave;y. Chắc chắn, bạn sẽ ho&agrave;n to&agrave;n ấn tượng với sự pha trộn giữa c&aacute;i cũ v&agrave; c&aacute;i mới từ những chi tiết thiết kế cho đến chất liệu trong đ&ocirc;i Converse Chuck Taylor All Star II:</p>\r\n\r\n<ul>\r\n	<li>Vẫn giữ nguy&ecirc;n chất liệu canvas Tencel mềm mại với từng thớ dệt bền, chắc, đảm bảo độ mềm mại, thoải m&aacute;i, tho&aacute;ng kh&iacute; cho người mang</li>\r\n	<li>D&acirc;y gi&agrave;y v&agrave; lỗ xỏ d&acirc;y tr&ugrave;ng m&agrave;u với gi&agrave;y, kh&aacute;c với d&ograve;ng gi&agrave;y trước đ&acirc;y đa số l&agrave; những khoen tr&ograve;n d&ugrave;ng chung m&agrave;u bạc\r\n	<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-16.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Chất liệu được n&acirc;ng cấp với nhiều chi tiết thiết kế được thay đổi</em></p>\r\n\r\n<ul>\r\n	<li>Logo của Converse Chuck II ở b&ecirc;n h&ocirc;ng gi&agrave;y phi&ecirc;n bản cổ cao cũng được th&ecirc;u l&ecirc;n một c&aacute;ch tỉ mỉ tạo được sự sắc xảo cho đ&ocirc;i gi&agrave;y</li>\r\n	<li>Đế gi&agrave;y trắng bằng cao su chắc chắn, kh&ocirc;ng viền, logo dập nổi 3D sau g&oacute;t gi&agrave;y</li>\r\n	<li>Miếng đệm l&oacute;t gi&agrave;y sử dụng miếng l&oacute;t của Nike Lunarlon tạo sự &ecirc;m &aacute;i, tho&aacute;ng kh&iacute; cho người mang. Đặc biệt c&oacute; thể dễ d&agrave;ng th&aacute;o ra để vệ sinh gi&agrave;y khi cần thiết</li>\r\n</ul>\r\n\r\n<p>Phần d&acirc;y thun ở hai b&ecirc;n th&acirc;n đ&ocirc;i gi&agrave;y c&ugrave;ng hai sợi thun cố định lưỡi g&agrave; b&ecirc;n trong gi&agrave;y tạo cảm gi&aacute;c đ&ocirc;i gi&agrave;y &ocirc;m form v&agrave; vừa ch&acirc;n hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-8-1.jpg\" /></p>\r\n\r\n<p><em>Miếng đệm l&oacute;t ứng dụng c&ocirc;ng nghệ Lunarlon</em></p>\r\n\r\n<p>Với phi&ecirc;n bản Chuck II lần n&agrave;y, Converse tr&igrave;nh l&agrave;ng với bốn gam m&agrave;u quen thuộc: đen, trắng, xanh, đỏ c&ugrave;ng đầy đủ hai d&ograve;ng gi&agrave;y cơ bản: cổ thấp, cổ cao.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-19.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-20.jpg\" /></p>\r\n\r\n<p><em>Converse Chuck Taylor All Star II mang đến nhiều phi&ecirc;n bản cho bạn lựa chọn</em></p>', 'Thiết kế Trắng - Đen cơ bản nhưng vẫn tạo được điểm khác biệt với 2 khối màu riêng biệt ở phần thân giày và đế giày.', NULL, 1, 2, '2019-07-11 15:46:48', '2019-08-18 07:22:13'),
(3, 'Chuck 1970s 150146', 'chuck-1970s-150146', '150146-500x500.jpg', 1600000, 1, 0, 1, 1, 0, '<p><strong>Chất lượng b&ecirc;n trong ho&agrave;n to&agrave;n thuyết phục người mang</strong></p>\r\n\r\n<p>Sắc v&agrave;ng nổi bật, thu h&uacute;t nay lại sở hữu chất lượng vượt trội từ thiết kế của Chuck 70s &ndash; vốn được xem l&agrave; một trong những d&ograve;ng gi&agrave;y cao cấp của Converse. Tất cả tạo n&ecirc;n một si&ecirc;u phẩm kh&ocirc;ng một ai c&oacute; thể chối từ. Tối ưu sản phẩm v&agrave; cho người d&ugrave;ng th&ecirc;m sự lựa chọn, Converse cho ra mắt hai phi&ecirc;n bản Sunflower bao gồm cổ thấp v&agrave; cổ cao. Với:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Chất liệu Canvas ở phần Upper với tone v&agrave;ng chủ đạo tạo cảm gi&aacute;c thoải m&aacute;i cho người mang</p>\r\n	</li>\r\n	<li>\r\n	<p>Đế gi&agrave;y trắng ng&agrave; đặc trưng được phủ b&oacute;ng, đế d&agrave;y hơn gi&uacute;p bạn dễ vệ sinh</p>\r\n	</li>\r\n	<li>\r\n	<p>Tem logo ở đế gi&agrave;y m&agrave;u đen c&ugrave;ng font chữ trắng đậm chất Retro tạo điểm nhấn cho sản phẩm</p>\r\n	</li>\r\n	<li>\r\n	<p>Logo Chuck Taylor All Star b&ecirc;n h&ocirc;ng th&acirc;n gi&agrave;y được khắc laser sắc n&eacute;t, tỉ mỉ</p>\r\n	</li>\r\n	<li>\r\n	<p>Đệm l&oacute;t Ortholite được đ&aacute;nh gi&aacute; cao bởi độ &ecirc;m &aacute;i v&agrave; th&ocirc;ng tho&aacute;ng cho người mang</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"Chuck 70s Sunflower – Đôi giày vàng của làng thời trang là đây!\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/chuck%2070s%20sunflower/chuck-70s-sunflower-4.jpg\" /></p>\r\n\r\n<p>Với độ hot của m&igrave;nh, việc xuất hiện nhiều bản Fake của Chuck 70s Sunflower l&agrave; điều ho&agrave;n to&agrave;n tự nhi&ecirc;n. V&igrave; vậy t&ugrave;y v&agrave;o mong muốn m&agrave; bạn c&oacute; thể sở hữu những sản phẩm theo &yacute; th&iacute;ch của m&igrave;nh. Thế nhưng, để c&oacute; thể trải nghiệm một sản phẩm chất lượng từ trong ra ngo&agrave;i, bạn n&ecirc;n t&igrave;m đến những cửa h&agrave;ng chuy&ecirc;n cung cấp sản phẩm ch&iacute;nh h&atilde;ng. Tại Drake&nbsp;lu&ocirc;n lu&ocirc;n cập nhật c&aacute;c sản phẩm mới v&agrave; RESTOCK h&agrave;ng li&ecirc;n tục để đ&aacute;p ứng nhu cầu của kh&aacute;ch h&agrave;ng. Bạn c&oacute; thể li&ecirc;n hệ với Drake ngay h&ocirc;m nay để được hỗ trợ, giải đ&aacute;p v&agrave; tư vấn sản phẩm y&ecirc;u th&iacute;ch sớm nhất nh&eacute;!</p>', 'Màu xanh lạ mắt đồng bộ từ thân giày cho đến dây giày và các khoen xỏ dây giày cho bạn một thiết kế khá nổi bật và đẹp mắt.', NULL, 1, 9, '2019-07-11 15:50:14', '2019-08-13 17:52:53'),
(4, 'One Stars 111', 'one-stars-111', '96205-740-M-DRAKE-500x500.jpg', 2300000, 0, 0, 1, 0, 0, '<p><strong>Chất lượng b&ecirc;n trong ho&agrave;n to&agrave;n thuyết phục người mang</strong></p>\r\n\r\n<p>Sắc v&agrave;ng nổi bật, thu h&uacute;t nay lại sở hữu chất lượng vượt trội từ thiết kế của Chuck 70s &ndash; vốn được xem l&agrave; một trong những d&ograve;ng gi&agrave;y cao cấp của Converse. Tất cả tạo n&ecirc;n một si&ecirc;u phẩm kh&ocirc;ng một ai c&oacute; thể chối từ. Tối ưu sản phẩm v&agrave; cho người d&ugrave;ng th&ecirc;m sự lựa chọn, Converse cho ra mắt hai phi&ecirc;n bản Sunflower bao gồm cổ thấp v&agrave; cổ cao. Với:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Chất liệu Canvas ở phần Upper với tone v&agrave;ng chủ đạo tạo cảm gi&aacute;c thoải m&aacute;i cho người mang</p>\r\n	</li>\r\n	<li>\r\n	<p>Đế gi&agrave;y trắng ng&agrave; đặc trưng được phủ b&oacute;ng, đế d&agrave;y hơn gi&uacute;p bạn dễ vệ sinh</p>\r\n	</li>\r\n	<li>\r\n	<p>Tem logo ở đế gi&agrave;y m&agrave;u đen c&ugrave;ng font chữ trắng đậm chất Retro tạo điểm nhấn cho sản phẩm</p>\r\n	</li>\r\n	<li>\r\n	<p>Logo Chuck Taylor All Star b&ecirc;n h&ocirc;ng th&acirc;n gi&agrave;y được khắc laser sắc n&eacute;t, tỉ mỉ</p>\r\n	</li>\r\n	<li>\r\n	<p>Đệm l&oacute;t Ortholite được đ&aacute;nh gi&aacute; cao bởi độ &ecirc;m &aacute;i v&agrave; th&ocirc;ng tho&aacute;ng cho người mang</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"Chuck 70s Sunflower – Đôi giày vàng của làng thời trang là đây!\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/chuck%2070s%20sunflower/chuck-70s-sunflower-4.jpg\" /></p>\r\n\r\n<p>Với độ hot của m&igrave;nh, việc xuất hiện nhiều bản Fake của Chuck 70s Sunflower l&agrave; điều ho&agrave;n to&agrave;n tự nhi&ecirc;n. V&igrave; vậy t&ugrave;y v&agrave;o mong muốn m&agrave; bạn c&oacute; thể sở hữu những sản phẩm theo &yacute; th&iacute;ch của m&igrave;nh. Thế nhưng, để c&oacute; thể trải nghiệm một sản phẩm chất lượng từ trong ra ngo&agrave;i, bạn n&ecirc;n t&igrave;m đến những cửa h&agrave;ng chuy&ecirc;n cung cấp sản phẩm ch&iacute;nh h&atilde;ng. Tại Drake&nbsp;lu&ocirc;n lu&ocirc;n cập nhật c&aacute;c sản phẩm mới v&agrave; RESTOCK h&agrave;ng li&ecirc;n tục để đ&aacute;p ứng nhu cầu của kh&aacute;ch h&agrave;ng. Bạn c&oacute; thể li&ecirc;n hệ với Drake ngay h&ocirc;m nay để được hỗ trợ, giải đ&aacute;p v&agrave; tư vấn sản phẩm y&ecirc;u th&iacute;ch sớm nhất nh&eacute;!</p>', 'Chất lượng bên trong hoàn toàn thuyết phục người mang', NULL, 1, 10, '2019-07-11 15:53:30', '2019-08-13 17:52:39'),
(5, 'Vans Classic Slip On', 'vans-classic-slip-on', 'EYENVY-500x500.jpg', 1350000, 0, 0, 1, 1, 0, '<p>Vans l&agrave; một nh&atilde;n h&agrave;ng chuy&ecirc;n về phong c&aacute;ch cho những thể loại thể thao đường phố như Skateboarding , BMX&hellip; những t&iacute;n đồ của c&aacute;c m&ocirc;n thể thao mạo hiểm n&agrave;y lu&ocirc;n ưa chuộng những sản phẩm của Vans bởi v&igrave; n&oacute; qu&aacute; đơn thuần m&agrave; vẫn &ldquo;chất&rdquo;. nh&atilde;n h&agrave;ng được x&acirc;y dựng thương hiệu năm 1966 do Paul Van Doren, Gordon C.Lee, Serge d&rsquo;Elia v&agrave; Jame Van Doren. mang 40 năm kinh nghiệm trong l&agrave;ng gi&agrave;y thế giới, Vans đem đến cảm gi&aacute;c thoải m&aacute;i v&agrave; phong c&aacute;ch trẻ trung, năng động cho kh&aacute;ch h&agrave;ng nhưng vẫn v&ocirc; c&ugrave;ng tinh tế đối với&nbsp;từng loại sản phẩm,&nbsp;đặc th&ugrave; l&agrave; những đ&ocirc;i gi&agrave;y đẹp với c&aacute;c d&ograve;ng sản phẩm cơ bản : Authentic , Era , Oldkool , Sk8 - Hi , Slip - on</p>\r\n\r\n<p>Hệ thống Drake VN l&agrave; đại l&yacute; ch&iacute;nh thức ph&acirc;n phối sản phẩm Vans, tất cả sản phẩm b&aacute;n ra đều đầy đủ phụ kiện k&egrave;m theo: Gi&agrave;y, T&uacute;i vải, Phiếu bảo h&agrave;nh, Hộp tr&ugrave;ng code. Nếu l&agrave; một fans của những đ&ocirc;i gi&agrave;y Vans th&igrave; h&atilde;y đừng bỏ lỡ cơ hội mua gi&agrave;y Vans ch&iacute;nh h&atilde;ng với những ưu đ&atilde;i cực tốt từ Hệ thống Drake VN nh&eacute;.</p>', 'Với thiết kế đơn giản đi kèm với chất lượng, thiết kế phần đế cao su với độ bám tốt và bền thích hợp cho các bạn yêu bộ môn ván trượt.', NULL, 5, 4, '2019-07-31 06:14:49', '2019-07-31 06:14:49'),
(6, 'Vans Slip-on Nextor Checkerboard', 'vans-slip-on-nextor-checkerboard', 'VN0A38F7P9I-500x500.jpg', 950000, 0, 0, 1, 0, 0, '<p>Vans l&agrave; một nh&atilde;n h&agrave;ng chuy&ecirc;n về phong c&aacute;ch cho những thể loại thể thao đường phố như Skateboarding , BMX&hellip; những t&iacute;n đồ của c&aacute;c m&ocirc;n thể thao mạo hiểm n&agrave;y lu&ocirc;n ưa chuộng những sản phẩm của Vans bởi v&igrave; n&oacute; qu&aacute; đơn thuần m&agrave; vẫn &ldquo;chất&rdquo;. nh&atilde;n h&agrave;ng được x&acirc;y dựng thương hiệu năm 1966 do Paul Van Doren, Gordon C.Lee, Serge d&rsquo;Elia v&agrave; Jame Van Doren. mang 40 năm kinh nghiệm trong l&agrave;ng gi&agrave;y thế giới, Vans lu&ocirc;n mang lượng qu&yacute; kh&aacute;ch khổng lồ ph&ugrave; hợp. sở hữu bắt mắt kh&ocirc;ng h&atilde;ng gi&agrave;y n&agrave;o mang, Vans đem đến cảm gi&aacute;c thoải m&aacute;i&nbsp;cho kh&aacute;ch h&agrave;ng nhưng vẫn v&ocirc; c&ugrave;ng tinh tế cho từng loại sản phẩm. đặc th&ugrave; l&agrave; những đ&ocirc;i gi&agrave;y đẹp với c&aacute;c d&ograve;ng sản phẩm cơ bản : Authentic , Era , Oldkool , Sk8 - Hi , Slip - on</p>\r\n\r\n<p>Hệ thống Drake &ndash; Drake VN l&agrave; đại l&yacute; ch&iacute;nh thức ph&acirc;n phối sản phẩm Vans, tất cả sản phẩm b&aacute;n ra đều đầy đủ phụ kiện k&egrave;m theo: Gi&agrave;y, T&uacute;i vải, Phiếu bảo h&agrave;nh, Hộp tr&ugrave;ng code. Nếu l&agrave; một fans của những đ&ocirc;i gi&agrave;y Vans th&igrave; h&atilde;y đừng bỏ lỡ cơ hội mua gi&agrave;y Vans ch&iacute;nh h&atilde;ng với những ưu đ&atilde;i cực tốt Drake nh&eacute;.</p>', 'Với tông màu nữ tính phối carô trắng, hồng, kiểu dáng Slip-On dễ dàng phối đồ, thiết kế phần đế cao su với độ bám tốt và bền giúp bạn thoải mái vận động.', NULL, 4, 4, '2019-07-31 06:19:03', '2019-08-20 01:10:49'),
(7, 'Palladium Pampa Lite Cuff WaterProof', 'palladium-pampa-lite-cuff-waterproof', '76259-011-M-500x500.jpg', 3000000, 0, 0, 1, 1, 0, '<p><strong>Palladium Waterproof - Chất lượng l&agrave;m n&ecirc;n thương hiệu</strong></p>\r\n\r\n<p>Palladium được biết đến với phong c&aacute;ch v&agrave; thiết kế đậm chất tự do v&agrave; ph&oacute;ng kho&aacute;ng. Thương hiệu tạo được chỗ đứng vững chắc trong l&ograve;ng những người y&ecirc;u th&iacute;ch sneaker thực thụ. B&ecirc;n cạnh đ&oacute;, thương hiệu n&agrave;y kh&ocirc;ng chỉ quan t&acirc;m đến chất lượng sản phẩm m&agrave; c&ograve;n quan t&acirc;m đến nhu cầu v&agrave; những trải nghiệm của người ti&ecirc;u d&ugrave;ng. V&igrave; lẽ đ&oacute;, BST gi&agrave;y&nbsp;<strong>Palladium Waterproof</strong>&nbsp;gi&uacute;p bạn tự tin &ldquo;chống chọi&rdquo; với những cơn mưa bất chợt v&agrave; bất chấp điều kiện thời tiết.</p>\r\n\r\n<p><img alt=\"Palladium Waterproof - Dòng giày với thiết kế chống nước độc đáo\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/palla-waterproof/Palladium-waterproof-2.jpg\" /></p>\r\n\r\n<p><em>BST Palladium WaterProof với thiết kế nổi bật phối m&agrave;u nam t&iacute;nh khiến c&aacute;c fans nghiện sneaker phải &ldquo;trầm trồ&rdquo;</em></p>\r\n\r\n<p><strong>Review tận tay d&ograve;ng Palldium Waterproof với thiết kế chống nước độc đ&aacute;o</strong></p>\r\n\r\n<p>Với BST lần n&agrave;y, phải c&ocirc;ng nhận một điều l&agrave; nh&agrave; Palladium kh&aacute; chiều fans khi đ&aacute;p ứng tất cả c&aacute;c y&ecirc;u cầu từ chất liệu, kiểu d&aacute;ng đến m&agrave;u sắc.</p>\r\n\r\n<p>Đầu ti&ecirc;n khi n&oacute;i đến d&ograve;ng&nbsp;<strong>Palladium Waterproof</strong>&nbsp;phải nhắc đến thiết kế chống nước &ldquo;xịn s&ograve;&rdquo; l&agrave;m từ chất liệu vải Polyester kh&ocirc;ng thấm nước. V&agrave; phần cổ gi&agrave;y cũng được trang bị lớp vải lưới Polyester gi&uacute;p bạn c&oacute; thể diện ch&uacute;ng mọi l&uacute;c mọi nơi d&ugrave; l&agrave; đi l&agrave;m, đi học, hay đi chơi c&ugrave;ng bạn b&egrave; đều ph&ugrave; hợp v&igrave; sẽ kh&ocirc;ng phải lo lắng khi thời tiết xấu.</p>\r\n\r\n<p><img alt=\"Palladium Waterproof - Dòng giày với thiết kế chống nước độc đáo\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/palla-waterproof/Palladium-waterproof-8.jpg\" /></p>\r\n\r\n<p>Thứ hai, phối m&agrave;u của d&ograve;ng sản phẩm&nbsp;<strong>Palladium</strong>&nbsp;<strong>Waterproof</strong>&nbsp;v&ocirc; c&ugrave;ng lạ mắt tạo thiện cảm từ &aacute;nh nh&igrave;n đầu ti&ecirc;n với ba gam m&agrave;u: X&aacute;m kh&oacute;i, x&aacute;m trắng, xanh r&ecirc;u. Với ba gam m&agrave;u n&agrave;y sẽ gi&uacute;p bạn kh&ocirc;ng lo bị b&aacute;m bẩn v&agrave;o những ng&agrave;y mưa. Đặc biệt c&ograve;n gi&uacute;p outfit hằng ng&agrave;y của bạn trở n&ecirc;n &ldquo;chất ngất&rdquo;. C&ograve;n đối với d&acirc;n phượt th&igrave; khỏi phải b&agrave;n v&igrave; độ tiện dụng khi thiết kế n&agrave;y sinh ra l&agrave; d&agrave;nh cho c&aacute;c bạn - những con người th&iacute;ch phi&ecirc;u lưu, kh&aacute;m ph&aacute;.</p>\r\n\r\n<p><img alt=\"Palladium Waterproof - Dòng giày với thiết kế chống nước độc đáo\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/palla-waterproof/Palladium-waterproof-10.jpg\" /></p>\r\n\r\n<p><em>Phối m&agrave;u x&aacute;m kh&oacute;i&nbsp;cực h&uacute;t gi&uacute;p fans Palladium c&oacute; những set đồ &ldquo;best&rdquo; nhất</em></p>', 'Thiết kế chống nước cao cấp với chất liệu Polyester giúp bạn có thể diện giày ở mọi lúc.', NULL, 5, 6, '2019-07-31 06:21:54', '2019-07-31 06:21:54'),
(8, 'Palladium Blanc Hi', 'palladium-blanc-hi', '72886-009-original_2000x-500x500.png', 3000000, 1, 0, 1, 1, 0, '<p>Thương hiệu Palladium với phong c&aacute;ch thiết kế nổi bật lấn &aacute;t những d&ograve;ng gi&agrave;y thể thao kh&aacute;c tr&ecirc;n thị trường. D&ugrave; l&agrave; phi&ecirc;n bản cổ cao hay cổ thấp đều khiến bạn trở n&ecirc;n c&aacute; t&iacute;nh v&agrave; &ldquo;chất chơi&rdquo; hơn bao giờ hết. Với BST&nbsp;<strong>gi&agrave;y</strong>&nbsp;<strong>Palladium Blanc &ndash; Hi</strong>&nbsp;lần n&agrave;y, m&agrave;u sắc v&agrave; thiết kế ch&iacute;nh l&agrave; điểm nhấn nổi bật nhất gi&uacute;p bạn c&oacute; th&ecirc;m nhiều sự chọn s&aacute;ng tạo trong phong c&aacute;ch thời trang của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"Palladium Blanc Hi – “Cá tính” làm nên thương hiệu\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/palladium-blanc-hi/palladium-blanc-hi-3.jpg\" /></p>\r\n\r\n<p><img alt=\"Palladium Blanc Hi – “Cá tính” làm nên thương hiệu\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/palladium-blanc-hi/palladium-blanc-hi-10.jpg\" /></p>\r\n\r\n<p>Sự đa dạng m&agrave;u sắc trong<em>&nbsp;</em>BST n&agrave;y chứng tỏ sức s&aacute;ng tạo &ldquo;kh&ocirc;ng nhỏ&rdquo; của nh&agrave; thiết kế với những gam m&agrave;u h&uacute;t mắt: xanh r&ecirc;u h&agrave;i h&ograve;a, xanh dương huyền b&iacute;, đỏ rượu vang, v&agrave; gam m&agrave;u hồng dịu nhẹ c&ugrave;ng với hai tone m&agrave;u x&aacute;m - đen quen thuộc tạo n&ecirc;n sự l&ocirc;i cuốn.</p>\r\n\r\n<p><strong>Palladium Blanc - Hi</strong>&nbsp;c&oacute; thiết kế đơn giản với những tone m&agrave;u c&aacute; t&iacute;nh tạo được điểm nhấn rất ri&ecirc;ng gi&uacute;p c&aacute;c fans y&ecirc;u th&iacute;ch thương hiệu n&agrave;y. Tone m&agrave;u thời thượng bắt trend, dễ mix đồ, gi&uacute;p c&aacute;c bạn tự tin khoe c&aacute; t&iacute;nh b&ecirc;n những bộ oufit đẹp mắt, đầy sức s&aacute;ng tạo.</p>\r\n\r\n<p><img alt=\"Palladium Blanc Hi – “Cá tính” làm nên thương hiệu\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/palladium-blanc-hi/palladium-blanc-hi-6.jpg\" /></p>\r\n\r\n<p><em>Với tone m&agrave;u hồng dịu nhẹ sẽ gi&uacute;p &ldquo;chụy em&rdquo; nữ t&iacute;nh quyến rũ&nbsp;hơn trong những&nbsp;set đồ của m&igrave;nh</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/palladium-blanc-hi/palladium-blanc-hi-8.jpg\" /></p>\r\n\r\n<p><em>C&aacute;c fans boy sẽ trở n&ecirc;n cuốn h&uacute;t&nbsp;v&agrave; chất chơi&nbsp;hơn bao giờ hết vưới gam m&agrave;u xanh r&ecirc;u lạ mắt</em></p>\r\n\r\n<p>Phần mũi&nbsp;<strong>gi&agrave;y Palladium Blanc - Hi</strong>&nbsp;được thiết kế một lớp cao su cao cấp gi&uacute;p hạn chế những t&aacute;c động từ b&ecirc;n ngo&agrave;i l&ecirc;n b&agrave;n ch&acirc;n. Phần upper (th&acirc;n gi&agrave;y) sử dụng chất liệu vải Canvas nhẹ, d&agrave;y dặn khiến bạn cảm thấy thoải m&aacute;i dễ chịu trong từng bước đi.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/palladium-blanc-hi/palladium-blanc-hi-7.jpg\" /></p>\r\n\r\n<p><em>Thiết kế form d&aacute;ng trẻ trung, năng động đậm t&iacute;nh thời trang</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/palladium-blanc-hi/palladium-blanc-hi-4.jpg\" /></em></p>\r\n\r\n<p><em>Chất vải mỏng nhẹ, d&agrave;y dặn tạo cảm gi&aacute;c &ecirc;m dịu cho đ&ocirc;i ch&acirc;n của bạn&nbsp;</em></p>\r\n\r\n<p>Điểm đang ch&uacute; &yacute; ch&iacute;nh l&agrave; đế gi&agrave;y với chất liệu d&ugrave;ng để chế tạo b&aacute;nh xe m&aacute;y bay gi&uacute;p tạo độ b&aacute;m vững chắc, hạn chế tối đa trơn trượt. Đệm l&oacute;t Eva b&ecirc;n trong th&acirc;n gi&agrave;y tạo cảm gi&aacute;c &ecirc;m &aacute;i, chưa kể phần trọng lượng gi&agrave;y được n&acirc;ng cấp gi&uacute;p ch&acirc;n người mang di chuyển linh hoạt hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/palladium-blanc-hi/palladium-blanc-hi-9.png\" /></p>\r\n\r\n<p><em>Đế gi&agrave;y được thiết kế cao su cao cấp&nbsp;c&oacute; độ b&aacute;m vững chắc, chống trơn trượt</em></p>\r\n\r\n<p>N&agrave;o, c&ograve;n đợi chờ g&igrave; nữa m&agrave; kh&ocirc;ng nhanh tay chọn cho m&igrave;nh những sản phẩm chất lượng trong BST&nbsp;<strong>Palladium Blanc &ndash; Hi&nbsp;</strong>lần n&agrave;y đi n&agrave;o. Nếu bạn y&ecirc;u th&iacute;ch phong c&aacute;ch nhẹ nh&agrave;ng th&igrave; gam hồng nữ t&iacute;nh sẽ v&ocirc; c&ugrave;ng th&iacute;ch hợp với bạn. Con nếu bạn l&agrave; người mong muốn sự đặc biệt, nổi bật th&igrave; sắc đỏ rượu vang sẽ gi&uacute;p bạn trở n&ecirc;n tự tin hơn. Ngược lại nếu bạn th&iacute;ch phi&ecirc;u lưu mạo hiểm th&igrave; tone m&agrave;u xanh hoặc x&aacute;m - đen sẽ gi&uacute;p bạn điều đ&oacute;. Chỉ cần bạn th&iacute;ch!</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/palladium-blanc-hi/palladium_blanc_hi_1.jpg\" /></p>\r\n\r\n<p>Hiện tại c&aacute;c sản phẩm mới nhất của thương hiệu gi&agrave;y Palladium đều được l&ecirc;n kệ tại Drake. Li&ecirc;n hệ ngay với Drake VN để được tư vấn miễn ph&iacute; để nhanh ch&oacute;ng chọn ra những sản phẩm ph&ugrave; hợp với phong c&aacute;ch của m&igrave;nh nh&eacute;!</p>', 'Chất liệu vải Textile cao cấp, nổi bật nhất là logo phần lưỡi gà được may gia công tỉ mỉ.', NULL, 4, 7, '2019-08-05 03:21:39', '2019-08-13 17:52:55'),
(9, 'Chuck Taylor All Star 1970s Psy-Kicks', 'chuck-taylor-all-star-1970s-psy-kicks', '164212C-DRAKE-500x500.jpg', 1800000, 0, 0, 1, 0, 0, '<p>Họa tiết &Acirc;m &ndash; Dương hay c&ograve;n gọi l&agrave; Yin &ndash; Yang, một trong những biểu tượng của người ch&acirc;u &Aacute; cả về văn h&oacute;a lẫn t&acirc;m linh. Nếu ở c&aacute;c nước phương T&acirc;y sử dụng h&igrave;nh ảnh &ldquo;Sun and Moon&rdquo; (Mặt Trăng &ndash; Mặt Trời) để n&oacute;i về sự đồng nhất, h&agrave;i h&ograve;a th&igrave; người ch&acirc;u &Aacute; lại sử dụng thuyết &Acirc;m &ndash; Dương để n&oacute;i về điều n&agrave;y. Quan trọng hơn, việc ứng dụng họa tiết n&agrave;y v&agrave;o trong thiết kế của Chuck 70s, Converse c&ograve;n mang đến một th&ocirc;ng điệp về sự ph&oacute;ng kho&aacute;ng, tự do, thoải m&aacute;i trong lối chơi gi&agrave;y của cộng đồng sneaker-head.</p>\r\n\r\n<p><img alt=\"“Huyền thoại” Converse Yin-Yang trên thiết kế của Chuck 70s\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/yin%20yang/converse-chuck-70s-yin-yang-6.jpg\" /></p>\r\n\r\n<p>Bộ sưu tập Yin-Yang Psy-Kicks lần n&agrave;y giữ nguy&ecirc;n kiểu d&aacute;ng của d&ograve;ng Chuck 70s với phần th&acirc;n gi&agrave;y ho&agrave;n to&agrave;n bằng chất liệu Cotton mềm nhẹ c&ugrave;ng đế gi&agrave;y trắng ng&agrave; được phủ b&oacute;ng tạo th&ecirc;m chất Vintage, cổ điển cho c&aacute;c item. Cho ra mắt đầy đủ hai phi&ecirc;n bản cổ cao v&agrave; cổ thấp với c&aacute;c tone m&agrave;u thời trang, đậm chất c&aacute; t&iacute;nh: trắng &ndash; đen, v&agrave;ng, hồng, &hellip;</p>\r\n\r\n<p><img alt=\"“Huyền thoại” Converse Yin-Yang trên thiết kế của Chuck 70s\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/yin%20yang/converse-chuck-70s-yin-yang-4.jpg\" /></p>\r\n\r\n<p>Quan s&aacute;t chi tiết hơn về thiết kế gi&agrave;y của bộ sưu tập lần n&agrave;y. Họa tiết Yin &ndash; Yang đ&atilde; được Converse tạo điểm nhấn ở khắp &ldquo;mặt trận&rdquo; nhưng vẫn đảm bảo sự tinh tế, thời trang m&agrave; kh&ocirc;ng g&acirc;y rối mắt cho người nh&igrave;n:</p>\r\n\r\n<ul>\r\n	<li>Logo brand tr&ograve;n ở c&aacute;c thiết kế cổ cao sử dụng biểu tượng &Acirc;m &ndash; Dương l&agrave;m nền tạo điểm nhấn nổi bật nhất</li>\r\n	<li>To&agrave;n bộ thiết kế d&acirc;y gi&agrave;y sử dụng h&igrave;nh tr&ograve;n B&aacute;t qu&aacute;i với hai m&agrave;u trắng đen cơ bản gi&uacute;p đ&ocirc;i gi&agrave;y trở n&ecirc;n lạ mắt hơn</li>\r\n	<li>Mặt đế gi&agrave;y vẫn l&agrave; sự kết hợp của hai tone m&agrave;u đen &ndash; trắng dễ d&agrave;ng li&ecirc;n tưởng đến họa tiết &acirc;m dương</li>\r\n	<li>Tem gi&agrave;y sau g&oacute;t c&oacute; sự đồng bộ với m&agrave;u sắc của gi&agrave;y thay v&igrave; l&agrave; nền đen chữ trắng như những thiết kế trước đ&acirc;y</li>\r\n</ul>\r\n\r\n<p><img alt=\"“Huyền thoại” Converse Yin-Yang trên thiết kế của Chuck 70s\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/yin%20yang/converse-chuck-70s-yin-yang-3.jpg\" /></p>\r\n\r\n<p>Bộ sưu tập Yin-Yang Psy-Kicks kh&ocirc;ng chỉ mang đến một sự độc đ&aacute;o trong thiết kế m&agrave; c&ograve;n đại diện cho một nền văn h&oacute;a đặc trưng của ch&acirc;u &Aacute;. Diện item n&agrave;y bạn sẽ kh&ocirc;ng tr&aacute;nh được những &aacute;nh nh&igrave;n ngạc nhi&ecirc;n đến trầm trồ của mọi người xung quanh với phong c&aacute;ch lạ mắt v&agrave; nổi bật của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"“Huyền thoại” Converse Yin-Yang trên thiết kế của Chuck 70s\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/yin%20yang/converse-chuck-70s-yin-yang-7.jpg\" /></p>\r\n\r\n<p><img alt=\"“Huyền thoại” Converse Yin-Yang trên thiết kế của Chuck 70s\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/yin%20yang/converse-chuck-70s-yin-yang-2.jpg\" /></p>\r\n\r\n<p>Hiện tại sản phẩm đ&atilde;&nbsp;c&oacute; mặt tại hệ thống Drake VN, bạn c&oacute; thể sớm&nbsp;đến c&aacute;c showroom gần nhất để thử v&agrave; trải nghiệm nh&eacute;!</p>', 'Không thể rời mắt trước tone màu Hồng đầy nữ tính của BST Psy-Kicks lần này kết hợp với kiểu dáng của Chuck 70s.', NULL, 4, 9, '2019-08-05 03:25:43', '2019-08-05 03:25:43'),
(10, 'Chuck Taylor All Star 1970s Goretex', 'chuck-taylor-all-star-1970s-goretex', '162347-DRAKE-500x500.jpg', 2100000, 0, 0, 1, 1, 0, '<p><strong>Những điểm cộng tr&ecirc;n đ&ocirc;i gi&agrave;y Converse Chuck Taylor All Star 1970s</strong></p>\r\n\r\n<p>Vẫn giữ nguy&ecirc;n thiết kế gi&agrave;y đặc trưng của đế chế Converse, Chuck Taylor 1970s mang trong m&igrave;nh một dấu ấn của thời trang cố điển. Với những chi tiết gi&agrave;y đảm bảo đ&uacute;ng chất vintage, đồng thời tạo được chất lượng tốt hơn cho người mang. Trong đ&oacute;, những điểm mới tr&ecirc;n đ&ocirc;i gi&agrave;y Chuck 1970s được c&aacute;c nh&agrave; thiết kế đưa v&agrave;o m&agrave; bạn c&oacute; thể nhận diện ngay:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Phần đế gi&agrave;y c&oacute; m&agrave;u ng&agrave; hơn so với c&aacute;c thiết kế trước, cao hơn v&agrave; được phủ một lớp b&oacute;ng để hạn chế b&aacute;m bẩn v&agrave; dễ d&agrave;ng vệ sinh.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp vải Canvas phần th&acirc;n gi&agrave;y được dệt d&agrave;y hơn, c&oacute; lớp l&oacute;t đệm gi&uacute;p gi&agrave;y cứng c&aacute;p hơn, kh&ocirc;ng c&ograve;n t&igrave;nh trạng ọp ẹp sau một thời&nbsp;gian sử dụng như c&aacute;c mẫu cũ.</p>\r\n\r\n	<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-4.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Chất liệu v&agrave; phần đế c&oacute; sự thay đổi r&otilde; nhất</em></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đệm ch&acirc;n Ortholite &reg; &ecirc;m &aacute;i gi&uacute;p giảm khả năng trơn trượt, l&agrave;m giảm lực ma s&aacute;t giữa ng&oacute;n - g&oacute;t ch&acirc;n với gi&agrave;y.</p>\r\n	</li>\r\n	<li>\r\n	<p>Form gi&agrave;y được thiết kế chuẩn hơn với g&oacute;t gi&agrave;y v&agrave; mũi gi&agrave;y &ocirc;m s&aacute;t v&agrave;o ch&acirc;n nhưng kh&ocirc;ng g&acirc;y cảm gi&aacute;c kh&oacute; chịu cho người mang.</p>\r\n\r\n	<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-5.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Form gi&agrave;y vừa ch&acirc;n, chuẩn size</em></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đường viền đen quanh đế nổi l&ecirc;n tr&ecirc;n nền trắng ng&agrave; tạo sự bắt mắt, điểm nhấn cho đ&ocirc;i gi&agrave;y.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường kim mũi chỉ quanh th&acirc;n gi&agrave;y được gia c&ocirc;ng tỉ mỉ tạo n&ecirc;n sự tinh tế, nổi bật cho đ&ocirc;i gi&agrave;y.</p>\r\n	</li>\r\n	<li>\r\n	<p>Logo sau g&oacute;t gi&agrave;y được thiết kế lại với font chữ của những năm 1970, chữ &ldquo;Converse All Star Chuck Taylor&rdquo; trắng nằm tr&ecirc;n nền đen tạo n&ecirc;n sự kh&aacute;c biết so với c&aacute;c thiết kế trước.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-9.jpg\" /></p>\r\n\r\n<p><em>Thiết kế logo l&agrave; điểm thay đổi đ&aacute;ng kể nhất tr&ecirc;n đ&ocirc;i gi&agrave;y</em></p>\r\n\r\n<p><strong>Chuck 1970s - Khả năng &ldquo;hợp outfit đến ph&aacute;t hờn&rdquo; kh&ocirc;ng cần suy nghĩ</strong></p>\r\n\r\n<p>Một điểm &ldquo;chất như nước cất&rdquo; của d&ograve;ng gi&agrave;y Chuck Taylor 1970s ch&iacute;nh l&agrave; khả năng h&ograve;a hợp với tất cả c&aacute;c phong c&aacute;ch thời trang.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/admin/index.php?route=common/filemanager/connector&amp;token=3H9LIHPcl8w1J8bBgs7kNvozbtTAMs74\" /><img alt=\"\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-14.jpg\" /></p>\r\n\r\n<p>Bạn sẽ kh&ocirc;ng cần phải suy nghĩ h&ocirc;m nay &ldquo;mặc g&igrave;, mang g&igrave;&rdquo; khi chỉ cần một đ&ocirc;i Chuck 1970s. Bạn c&oacute; thể c&acirc;n tất cả mọi phong c&aacute;ch từ quần t&acirc;y &ndash; sơ mi đi học, cho đến phong c&aacute;ch bụi bặm, nổi loạn hay nhẹ nh&agrave;ng, thanh lịch, &hellip; Bởi thiết kế của Chuck Taylor 1970s mặc d&ugrave; mang đậm phong c&aacute;ch vintage, cổ điển. Nhưng vẫn giữ được sự hiện đại trong thiết kế của m&igrave;nh với đầy đủ hai phi&ecirc;n bản cổ thấp v&agrave; cổ cao c&ugrave;ng sự đa dạng về m&agrave;u sắc (v&agrave;ng, xanh dương, đỏ, đen, trắng, full đen da v&agrave; full đen trắng). Điều n&agrave;y gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng lựa chọn một phong c&aacute;ch thời trang cho ri&ecirc;ng m&igrave;nh.</p>\r\n\r\n<p>C&ugrave;ng ngắm qua những bạn trẻ&nbsp;đ&atilde; diện đ&ocirc;i gi&agrave;y n&agrave;y với sự đa dạng trong phong c&aacute;ch để c&oacute; thể định h&igrave;nh được những g&igrave; m&agrave; Chuck Taylor 1970s mang lại cho bạn nh&eacute;!</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-20.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-16.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-18.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-17.jpg\" /></p>\r\n\r\n<p><strong>Mức gi&aacute; hợp l&yacute; cho nhiều đối tượng muốn sở hữu Converse Chuck 1970s</strong></p>\r\n\r\n<p>Converse Chuck Taylor 1970s được xem l&agrave; đỉnh cao của &ldquo;nghệ thuật&rdquo; thời trang bởi sự pha trộn giữa n&eacute;t cổ điển v&agrave; hiện đại.</p>\r\n\r\n<p>Với thiết kế v&agrave; những ưu điểm về chất lượng m&agrave; Chuck 1970s mang lại, đ&acirc;y thật sự l&agrave; một &ldquo;si&ecirc;u phẩm&rdquo; đ&aacute;ng &ldquo;đồng tiền b&aacute;t gạo&rdquo; m&agrave; bạn c&oacute; thể chi ra. Hiện nay đối với một đ&ocirc;i gi&agrave;y Converse Chuck 1970s ch&iacute;nh h&atilde;ng c&oacute; gi&aacute; dao động từ 1.500.000 đồng. Mức gi&aacute; c&oacute; thể thay đổi t&ugrave;y v&agrave;o phi&ecirc;n bản bạn lựa chọn cũng như chất liệu (vải canvas/da) của gi&agrave;y.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-8.jpg\" /></p>\r\n\r\n<p><em>Chi ph&iacute; cho một đ&ocirc;i Converse Chuck Taylor 1970s kh&aacute; hợp l&yacute; với chất lượng n&oacute; mang lại</em></p>\r\n\r\n<p>Kh&aacute;c với những loại gi&agrave;y kh&aacute;c, ri&ecirc;ng với Converse, một điều kh&aacute; lạ l&agrave; việc c&agrave;ng mang l&acirc;u, đ&ocirc;i gi&agrave;y lại c&agrave;ng to&aacute;t ra được vẻ trẻ trung, hiện đại, khỏe khoắn đ&uacute;ng với chất Converse. Đặc biệt, bạn c&oacute; thể lựa chọn c&aacute;c t&ocirc;ng gi&agrave;y m&agrave;u s&aacute;ng để những set đồ của bạn tr&ocirc;ng rực rỡ, năng động hơn so với ng&agrave;y thường.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-11.jpg\" /></p>\r\n\r\n<p><em>Với nhiều phi&ecirc;n bản bạn c&oacute; thể lựa chọn mẫu gi&agrave;y y&ecirc;u th&iacute;ch</em></p>\r\n\r\n<p>Với sự nổi bật, c&aacute; t&iacute;nh v&agrave; chất lượng của m&igrave;nh, Chuck Taylor 1970s lu&ocirc;n nằm trong những mẫu gi&agrave;y b&aacute;n chạy nhất hiện nay. Nếu bạn cũng đang c&oacute; sự quan t&acirc;m đối với d&ograve;ng gi&agrave;y n&agrave;y v&agrave; mong muốn sở hữu một đ&ocirc;i gi&agrave;y chất lượng như những g&igrave; bạn đ&atilde; bỏ ra.</p>\r\n\r\n<p>Li&ecirc;n hệ với Drake&nbsp;ngay h&ocirc;m nay để được tư vấn v&agrave; lựa chọn một sản phẩm ph&ugrave; hợp với phong c&aacute;ch của bạn.</p>', 'Ấn tượng và cuốn hút với những họa tiết chữ \"GORETEX\" đan xen nhau cùng sắc đen cổ điển giúp bạn tạo nên những outfit cá tính và highfashion nhất.', NULL, 4, 9, '2019-08-05 03:43:00', '2019-08-13 17:52:51'),
(11, 'Chuck Taylor All Star 1970s', 'chuck-taylor-all-star-1970s', '162372-500x500.jpg', 1700000, 0, 0, 1, 1, 0, '<p><strong>Những điểm cộng tr&ecirc;n đ&ocirc;i gi&agrave;y Converse Chuck Taylor All Star 1970s</strong></p>\r\n\r\n<p>Vẫn giữ nguy&ecirc;n thiết kế gi&agrave;y đặc trưng của đế chế Converse, Chuck Taylor 1970s mang trong m&igrave;nh một dấu ấn của thời trang cố điển. Với những chi tiết gi&agrave;y đảm bảo đ&uacute;ng chất vintage, đồng thời tạo được chất lượng tốt hơn cho người mang. Trong đ&oacute;, những điểm mới tr&ecirc;n đ&ocirc;i gi&agrave;y Chuck 1970s được c&aacute;c nh&agrave; thiết kế đưa v&agrave;o m&agrave; bạn c&oacute; thể nhận diện ngay:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Phần đế gi&agrave;y c&oacute; m&agrave;u ng&agrave; hơn so với c&aacute;c thiết kế trước, cao hơn v&agrave; được phủ một lớp b&oacute;ng để hạn chế b&aacute;m bẩn v&agrave; dễ d&agrave;ng vệ sinh.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp vải Canvas phần th&acirc;n gi&agrave;y được dệt d&agrave;y hơn, c&oacute; lớp l&oacute;t đệm gi&uacute;p gi&agrave;y cứng c&aacute;p hơn, kh&ocirc;ng c&ograve;n t&igrave;nh trạng ọp ẹp sau một thời&nbsp;gian sử dụng như c&aacute;c mẫu cũ.</p>\r\n\r\n	<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-4.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Chất liệu v&agrave; phần đế c&oacute; sự thay đổi r&otilde; nhất</em></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đệm ch&acirc;n Ortholite &reg; &ecirc;m &aacute;i gi&uacute;p giảm khả năng trơn trượt, l&agrave;m giảm lực ma s&aacute;t giữa ng&oacute;n - g&oacute;t ch&acirc;n với gi&agrave;y.</p>\r\n	</li>\r\n	<li>\r\n	<p>Form gi&agrave;y được thiết kế chuẩn hơn với g&oacute;t gi&agrave;y v&agrave; mũi gi&agrave;y &ocirc;m s&aacute;t v&agrave;o ch&acirc;n nhưng kh&ocirc;ng g&acirc;y cảm gi&aacute;c kh&oacute; chịu cho người mang.</p>\r\n\r\n	<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-5.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Form gi&agrave;y vừa ch&acirc;n, chuẩn size</em></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đường viền đen quanh đế nổi l&ecirc;n tr&ecirc;n nền trắng ng&agrave; tạo sự bắt mắt, điểm nhấn cho đ&ocirc;i gi&agrave;y.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường kim mũi chỉ quanh th&acirc;n gi&agrave;y được gia c&ocirc;ng tỉ mỉ tạo n&ecirc;n sự tinh tế, nổi bật cho đ&ocirc;i gi&agrave;y.</p>\r\n	</li>\r\n	<li>\r\n	<p>Logo sau g&oacute;t gi&agrave;y được thiết kế lại với font chữ của những năm 1970, chữ &ldquo;Converse All Star Chuck Taylor&rdquo; trắng nằm tr&ecirc;n nền đen tạo n&ecirc;n sự kh&aacute;c biết so với c&aacute;c thiết kế trước.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-9.jpg\" /></p>\r\n\r\n<p><em>Thiết kế logo l&agrave; điểm thay đổi đ&aacute;ng kể nhất tr&ecirc;n đ&ocirc;i gi&agrave;y</em></p>\r\n\r\n<p><strong>Chuck 1970s - Khả năng &ldquo;hợp outfit đến ph&aacute;t hờn&rdquo; kh&ocirc;ng cần suy nghĩ</strong></p>\r\n\r\n<p>Một điểm &ldquo;chất như nước cất&rdquo; của d&ograve;ng gi&agrave;y Chuck Taylor 1970s ch&iacute;nh l&agrave; khả năng h&ograve;a hợp với tất cả c&aacute;c phong c&aacute;ch thời trang.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/admin/index.php?route=common/filemanager/connector&amp;token=3H9LIHPcl8w1J8bBgs7kNvozbtTAMs74\" /><img alt=\"\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-14.jpg\" /></p>\r\n\r\n<p>Bạn sẽ kh&ocirc;ng cần phải suy nghĩ h&ocirc;m nay &ldquo;mặc g&igrave;, mang g&igrave;&rdquo; khi chỉ cần một đ&ocirc;i Chuck 1970s. Bạn c&oacute; thể c&acirc;n tất cả mọi phong c&aacute;ch từ quần t&acirc;y &ndash; sơ mi đi học, cho đến phong c&aacute;ch bụi bặm, nổi loạn hay nhẹ nh&agrave;ng, thanh lịch, &hellip; Bởi thiết kế của Chuck Taylor 1970s mặc d&ugrave; mang đậm phong c&aacute;ch vintage, cổ điển. Nhưng vẫn giữ được sự hiện đại trong thiết kế của m&igrave;nh với đầy đủ hai phi&ecirc;n bản cổ thấp v&agrave; cổ cao c&ugrave;ng sự đa dạng về m&agrave;u sắc (v&agrave;ng, xanh dương, đỏ, đen, trắng, full đen da v&agrave; full đen trắng). Điều n&agrave;y gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng lựa chọn một phong c&aacute;ch thời trang cho ri&ecirc;ng m&igrave;nh.</p>\r\n\r\n<p>C&ugrave;ng ngắm qua những bạn trẻ&nbsp;đ&atilde; diện đ&ocirc;i gi&agrave;y n&agrave;y với sự đa dạng trong phong c&aacute;ch để c&oacute; thể định h&igrave;nh được những g&igrave; m&agrave; Chuck Taylor 1970s mang lại cho bạn nh&eacute;!</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-20.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-16.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-18.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-17.jpg\" /></p>\r\n\r\n<p><strong>Mức gi&aacute; hợp l&yacute; cho nhiều đối tượng muốn sở hữu Converse Chuck 1970s</strong></p>\r\n\r\n<p>Converse Chuck Taylor 1970s được xem l&agrave; đỉnh cao của &ldquo;nghệ thuật&rdquo; thời trang bởi sự pha trộn giữa n&eacute;t cổ điển v&agrave; hiện đại.</p>\r\n\r\n<p>Với thiết kế v&agrave; những ưu điểm về chất lượng m&agrave; Chuck 1970s mang lại, đ&acirc;y thật sự l&agrave; một &ldquo;si&ecirc;u phẩm&rdquo; đ&aacute;ng &ldquo;đồng tiền b&aacute;t gạo&rdquo; m&agrave; bạn c&oacute; thể chi ra. Hiện nay đối với một đ&ocirc;i gi&agrave;y Converse Chuck 1970s ch&iacute;nh h&atilde;ng c&oacute; gi&aacute; dao động từ 1.500.000 đồng. Mức gi&aacute; c&oacute; thể thay đổi t&ugrave;y v&agrave;o phi&ecirc;n bản bạn lựa chọn cũng như chất liệu (vải canvas/da) của gi&agrave;y.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-8.jpg\" /></p>\r\n\r\n<p><em>Chi ph&iacute; cho một đ&ocirc;i Converse Chuck Taylor 1970s kh&aacute; hợp l&yacute; với chất lượng n&oacute; mang lại</em></p>\r\n\r\n<p>Kh&aacute;c với những loại gi&agrave;y kh&aacute;c, ri&ecirc;ng với Converse, một điều kh&aacute; lạ l&agrave; việc c&agrave;ng mang l&acirc;u, đ&ocirc;i gi&agrave;y lại c&agrave;ng to&aacute;t ra được vẻ trẻ trung, hiện đại, khỏe khoắn đ&uacute;ng với chất Converse. Đặc biệt, bạn c&oacute; thể lựa chọn c&aacute;c t&ocirc;ng gi&agrave;y m&agrave;u s&aacute;ng để những set đồ của bạn tr&ocirc;ng rực rỡ, năng động hơn so với ng&agrave;y thường.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-11.jpg\" /></p>\r\n\r\n<p><em>Với nhiều phi&ecirc;n bản bạn c&oacute; thể lựa chọn mẫu gi&agrave;y y&ecirc;u th&iacute;ch</em></p>\r\n\r\n<p>Với sự nổi bật, c&aacute; t&iacute;nh v&agrave; chất lượng của m&igrave;nh, Chuck Taylor 1970s lu&ocirc;n nằm trong những mẫu gi&agrave;y b&aacute;n chạy nhất hiện nay. Nếu bạn cũng đang c&oacute; sự quan t&acirc;m đối với d&ograve;ng gi&agrave;y n&agrave;y v&agrave; mong muốn sở hữu một đ&ocirc;i gi&agrave;y chất lượng như những g&igrave; bạn đ&atilde; bỏ ra.</p>\r\n\r\n<p>Li&ecirc;n hệ với Drake&nbsp;ngay h&ocirc;m nay để được tư vấn v&agrave; lựa chọn một sản phẩm ph&ugrave; hợp với phong c&aacute;ch của bạn.</p>', 'Đế giày được làm cao hơn, phần cao su được phủ một lớp bóng tạo điểm nhấn riêng cho dòng 1970s', NULL, 1, 10, '2019-08-05 03:44:50', '2019-08-08 13:07:02'),
(12, 'Converse Chuck Taylor All Star', 'converse-chuck-taylor-all-star', '561762-500x500.jpg', 850000, 0, 0, 1, 1, 0, '<p><strong>Converse Chuck Taylor All Star II &ndash; Sự h&agrave;i h&ograve;a giữa cũ v&agrave; mới</strong></p>\r\n\r\n<p>Nh&igrave;n chung, Chuck Taylor All Star II<strong>&nbsp;</strong>vẫn mang những đặc điểm tương đồng với những mẫu gi&agrave;y Converse. Tuy nhi&ecirc;n, những cải tiến nổi bật về thiết kế ch&iacute;nh l&agrave; điểm thu h&uacute;t của d&ograve;ng n&agrave;y. Chắc chắn, bạn sẽ ho&agrave;n to&agrave;n ấn tượng với sự pha trộn giữa c&aacute;i cũ v&agrave; c&aacute;i mới từ những chi tiết thiết kế cho đến chất liệu trong đ&ocirc;i Converse Chuck Taylor All Star II:</p>\r\n\r\n<ul>\r\n	<li>Vẫn giữ nguy&ecirc;n chất liệu canvas Tencel mềm mại với từng thớ dệt bền, chắc, đảm bảo độ mềm mại, thoải m&aacute;i, tho&aacute;ng kh&iacute; cho người mang</li>\r\n	<li>D&acirc;y gi&agrave;y v&agrave; lỗ xỏ d&acirc;y tr&ugrave;ng m&agrave;u với gi&agrave;y, kh&aacute;c với d&ograve;ng gi&agrave;y trước đ&acirc;y đa số l&agrave; những khoen tr&ograve;n d&ugrave;ng chung m&agrave;u bạc\r\n	<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-16.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Chất liệu được n&acirc;ng cấp với nhiều chi tiết thiết kế được thay đổi</em></p>\r\n\r\n<ul>\r\n	<li>Logo của Converse Chuck II ở b&ecirc;n h&ocirc;ng gi&agrave;y phi&ecirc;n bản cổ cao cũng được th&ecirc;u l&ecirc;n một c&aacute;ch tỉ mỉ tạo được sự sắc xảo cho đ&ocirc;i gi&agrave;y</li>\r\n	<li>Đế gi&agrave;y trắng bằng cao su chắc chắn, kh&ocirc;ng viền, logo dập nổi 3D sau g&oacute;t gi&agrave;y</li>\r\n	<li>Miếng đệm l&oacute;t gi&agrave;y sử dụng miếng l&oacute;t của Nike Lunarlon tạo sự &ecirc;m &aacute;i, tho&aacute;ng kh&iacute; cho người mang. Đặc biệt c&oacute; thể dễ d&agrave;ng th&aacute;o ra để vệ sinh gi&agrave;y khi cần thiết</li>\r\n</ul>\r\n\r\n<p>Phần d&acirc;y thun ở hai b&ecirc;n th&acirc;n đ&ocirc;i gi&agrave;y c&ugrave;ng hai sợi thun cố định lưỡi g&agrave; b&ecirc;n trong gi&agrave;y tạo cảm gi&aacute;c đ&ocirc;i gi&agrave;y &ocirc;m form v&agrave; vừa ch&acirc;n hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-8-1.jpg\" /></p>\r\n\r\n<p><em>Miếng đệm l&oacute;t ứng dụng c&ocirc;ng nghệ Lunarlon</em></p>\r\n\r\n<p>Với phi&ecirc;n bản Chuck II lần n&agrave;y, Converse tr&igrave;nh l&agrave;ng với bốn gam m&agrave;u quen thuộc: đen, trắng, xanh, đỏ c&ugrave;ng đầy đủ hai d&ograve;ng gi&agrave;y cơ bản: cổ thấp, cổ cao.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-19.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-20.jpg\" /></p>\r\n\r\n<p><em>Converse Chuck Taylor All Star II mang đến nhiều phi&ecirc;n bản cho bạn lựa chọn</em></p>', 'Với chất liệu Canvas mềm mại', NULL, 4, 9, '2019-08-05 03:47:53', '2019-08-05 03:47:53');
INSERT INTO `products` (`id`, `name`, `slug`, `image`, `price`, `hot`, `view`, `active`, `gender`, `pay`, `content`, `description`, `keyword`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(13, 'Wordmark Wool', 'wordmark-wool', '159677--DRAKE-CONVERSE-500x500.jpg', 2300000, 0, 0, 1, 1, 0, '<p><strong>Những điểm cộng tr&ecirc;n đ&ocirc;i gi&agrave;y Converse Chuck Taylor All Star 1970s</strong></p>\r\n\r\n<p>Vẫn giữ nguy&ecirc;n thiết kế gi&agrave;y đặc trưng của đế chế Converse, Chuck Taylor 1970s mang trong m&igrave;nh một dấu ấn của thời trang cố điển. Với những chi tiết gi&agrave;y đảm bảo đ&uacute;ng chất vintage, đồng thời tạo được chất lượng tốt hơn cho người mang. Trong đ&oacute;, những điểm mới tr&ecirc;n đ&ocirc;i gi&agrave;y Chuck 1970s được c&aacute;c nh&agrave; thiết kế đưa v&agrave;o m&agrave; bạn c&oacute; thể nhận diện ngay:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Phần đế gi&agrave;y c&oacute; m&agrave;u ng&agrave; hơn so với c&aacute;c thiết kế trước, cao hơn v&agrave; được phủ một lớp b&oacute;ng để hạn chế b&aacute;m bẩn v&agrave; dễ d&agrave;ng vệ sinh.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp vải Canvas phần th&acirc;n gi&agrave;y được dệt d&agrave;y hơn, c&oacute; lớp l&oacute;t đệm gi&uacute;p gi&agrave;y cứng c&aacute;p hơn, kh&ocirc;ng c&ograve;n t&igrave;nh trạng ọp ẹp sau một thời&nbsp;gian sử dụng như c&aacute;c mẫu cũ.</p>\r\n\r\n	<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-4.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Chất liệu v&agrave; phần đế c&oacute; sự thay đổi r&otilde; nhất</em></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đệm ch&acirc;n Ortholite &reg; &ecirc;m &aacute;i gi&uacute;p giảm khả năng trơn trượt, l&agrave;m giảm lực ma s&aacute;t giữa ng&oacute;n - g&oacute;t ch&acirc;n với gi&agrave;y.</p>\r\n	</li>\r\n	<li>\r\n	<p>Form gi&agrave;y được thiết kế chuẩn hơn với g&oacute;t gi&agrave;y v&agrave; mũi gi&agrave;y &ocirc;m s&aacute;t v&agrave;o ch&acirc;n nhưng kh&ocirc;ng g&acirc;y cảm gi&aacute;c kh&oacute; chịu cho người mang.</p>\r\n\r\n	<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-5.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Form gi&agrave;y vừa ch&acirc;n, chuẩn size</em></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đường viền đen quanh đế nổi l&ecirc;n tr&ecirc;n nền trắng ng&agrave; tạo sự bắt mắt, điểm nhấn cho đ&ocirc;i gi&agrave;y.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường kim mũi chỉ quanh th&acirc;n gi&agrave;y được gia c&ocirc;ng tỉ mỉ tạo n&ecirc;n sự tinh tế, nổi bật cho đ&ocirc;i gi&agrave;y.</p>\r\n	</li>\r\n	<li>\r\n	<p>Logo sau g&oacute;t gi&agrave;y được thiết kế lại với font chữ của những năm 1970, chữ &ldquo;Converse All Star Chuck Taylor&rdquo; trắng nằm tr&ecirc;n nền đen tạo n&ecirc;n sự kh&aacute;c biết so với c&aacute;c thiết kế trước.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-9.jpg\" /></p>\r\n\r\n<p><em>Thiết kế logo l&agrave; điểm thay đổi đ&aacute;ng kể nhất tr&ecirc;n đ&ocirc;i gi&agrave;y</em></p>\r\n\r\n<p><strong>Chuck 1970s - Khả năng &ldquo;hợp outfit đến ph&aacute;t hờn&rdquo; kh&ocirc;ng cần suy nghĩ</strong></p>\r\n\r\n<p>Một điểm &ldquo;chất như nước cất&rdquo; của d&ograve;ng gi&agrave;y Chuck Taylor 1970s ch&iacute;nh l&agrave; khả năng h&ograve;a hợp với tất cả c&aacute;c phong c&aacute;ch thời trang.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/admin/index.php?route=common/filemanager/connector&amp;token=3H9LIHPcl8w1J8bBgs7kNvozbtTAMs74\" /><img alt=\"\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-14.jpg\" /></p>\r\n\r\n<p>Bạn sẽ kh&ocirc;ng cần phải suy nghĩ h&ocirc;m nay &ldquo;mặc g&igrave;, mang g&igrave;&rdquo; khi chỉ cần một đ&ocirc;i Chuck 1970s. Bạn c&oacute; thể c&acirc;n tất cả mọi phong c&aacute;ch từ quần t&acirc;y &ndash; sơ mi đi học, cho đến phong c&aacute;ch bụi bặm, nổi loạn hay nhẹ nh&agrave;ng, thanh lịch, &hellip; Bởi thiết kế của Chuck Taylor 1970s mặc d&ugrave; mang đậm phong c&aacute;ch vintage, cổ điển. Nhưng vẫn giữ được sự hiện đại trong thiết kế của m&igrave;nh với đầy đủ hai phi&ecirc;n bản cổ thấp v&agrave; cổ cao c&ugrave;ng sự đa dạng về m&agrave;u sắc (v&agrave;ng, xanh dương, đỏ, đen, trắng, full đen da v&agrave; full đen trắng). Điều n&agrave;y gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng lựa chọn một phong c&aacute;ch thời trang cho ri&ecirc;ng m&igrave;nh.</p>\r\n\r\n<p>C&ugrave;ng ngắm qua những bạn trẻ&nbsp;đ&atilde; diện đ&ocirc;i gi&agrave;y n&agrave;y với sự đa dạng trong phong c&aacute;ch để c&oacute; thể định h&igrave;nh được những g&igrave; m&agrave; Chuck Taylor 1970s mang lại cho bạn nh&eacute;!</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-20.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-16.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-18.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-17.jpg\" /></p>\r\n\r\n<p><strong>Mức gi&aacute; hợp l&yacute; cho nhiều đối tượng muốn sở hữu Converse Chuck 1970s</strong></p>\r\n\r\n<p>Converse Chuck Taylor 1970s được xem l&agrave; đỉnh cao của &ldquo;nghệ thuật&rdquo; thời trang bởi sự pha trộn giữa n&eacute;t cổ điển v&agrave; hiện đại.</p>\r\n\r\n<p>Với thiết kế v&agrave; những ưu điểm về chất lượng m&agrave; Chuck 1970s mang lại, đ&acirc;y thật sự l&agrave; một &ldquo;si&ecirc;u phẩm&rdquo; đ&aacute;ng &ldquo;đồng tiền b&aacute;t gạo&rdquo; m&agrave; bạn c&oacute; thể chi ra. Hiện nay đối với một đ&ocirc;i gi&agrave;y Converse Chuck 1970s ch&iacute;nh h&atilde;ng c&oacute; gi&aacute; dao động từ 1.500.000 đồng. Mức gi&aacute; c&oacute; thể thay đổi t&ugrave;y v&agrave;o phi&ecirc;n bản bạn lựa chọn cũng như chất liệu (vải canvas/da) của gi&agrave;y.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-8.jpg\" /></p>\r\n\r\n<p><em>Chi ph&iacute; cho một đ&ocirc;i Converse Chuck Taylor 1970s kh&aacute; hợp l&yacute; với chất lượng n&oacute; mang lại</em></p>\r\n\r\n<p>Kh&aacute;c với những loại gi&agrave;y kh&aacute;c, ri&ecirc;ng với Converse, một điều kh&aacute; lạ l&agrave; việc c&agrave;ng mang l&acirc;u, đ&ocirc;i gi&agrave;y lại c&agrave;ng to&aacute;t ra được vẻ trẻ trung, hiện đại, khỏe khoắn đ&uacute;ng với chất Converse. Đặc biệt, bạn c&oacute; thể lựa chọn c&aacute;c t&ocirc;ng gi&agrave;y m&agrave;u s&aacute;ng để những set đồ của bạn tr&ocirc;ng rực rỡ, năng động hơn so với ng&agrave;y thường.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor 1970s\" src=\"https://drake.vn/image/catalog/CV%201970s/converse-chuck-taylor-all-star-1970s-11.jpg\" /></p>\r\n\r\n<p><em>Với nhiều phi&ecirc;n bản bạn c&oacute; thể lựa chọn mẫu gi&agrave;y y&ecirc;u th&iacute;ch</em></p>\r\n\r\n<p>Với sự nổi bật, c&aacute; t&iacute;nh v&agrave; chất lượng của m&igrave;nh, Chuck Taylor 1970s lu&ocirc;n nằm trong những mẫu gi&agrave;y b&aacute;n chạy nhất hiện nay. Nếu bạn cũng đang c&oacute; sự quan t&acirc;m đối với d&ograve;ng gi&agrave;y n&agrave;y v&agrave; mong muốn sở hữu một đ&ocirc;i gi&agrave;y chất lượng như những g&igrave; bạn đ&atilde; bỏ ra.</p>\r\n\r\n<p>Li&ecirc;n hệ với Drake&nbsp;ngay h&ocirc;m nay để được tư vấn v&agrave; lựa chọn một sản phẩm ph&ugrave; hợp với phong c&aacute;ch của bạn.</p>', 'Chuck Taylor 70 Wordmark Wool là một phiên bản nổi bật', NULL, 4, 2, '2019-08-05 04:10:17', '2019-08-05 04:10:17'),
(14, 'Ox x Nike Flyknit Multi', 'ox-x-nike-flyknit-multi', '157593-DRAKE-1-500x500.jpg', 800000, 0, 0, 1, 1, 0, '<p><strong>Converse Chuck Taylor All Star II &ndash; Sự h&agrave;i h&ograve;a giữa cũ v&agrave; mới</strong></p>\r\n\r\n<p>Nh&igrave;n chung, Chuck Taylor All Star II<strong>&nbsp;</strong>vẫn mang những đặc điểm tương đồng với những mẫu gi&agrave;y Converse. Tuy nhi&ecirc;n, những cải tiến nổi bật về thiết kế ch&iacute;nh l&agrave; điểm thu h&uacute;t của d&ograve;ng n&agrave;y. Chắc chắn, bạn sẽ ho&agrave;n to&agrave;n ấn tượng với sự pha trộn giữa c&aacute;i cũ v&agrave; c&aacute;i mới từ những chi tiết thiết kế cho đến chất liệu trong đ&ocirc;i Converse Chuck Taylor All Star II:</p>\r\n\r\n<ul>\r\n	<li>Vẫn giữ nguy&ecirc;n chất liệu canvas Tencel mềm mại với từng thớ dệt bền, chắc, đảm bảo độ mềm mại, thoải m&aacute;i, tho&aacute;ng kh&iacute; cho người mang</li>\r\n	<li>D&acirc;y gi&agrave;y v&agrave; lỗ xỏ d&acirc;y tr&ugrave;ng m&agrave;u với gi&agrave;y, kh&aacute;c với d&ograve;ng gi&agrave;y trước đ&acirc;y đa số l&agrave; những khoen tr&ograve;n d&ugrave;ng chung m&agrave;u bạc\r\n	<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-16.jpg\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Chất liệu được n&acirc;ng cấp với nhiều chi tiết thiết kế được thay đổi</em></p>\r\n\r\n<ul>\r\n	<li>Logo của Converse Chuck II ở b&ecirc;n h&ocirc;ng gi&agrave;y phi&ecirc;n bản cổ cao cũng được th&ecirc;u l&ecirc;n một c&aacute;ch tỉ mỉ tạo được sự sắc xảo cho đ&ocirc;i gi&agrave;y</li>\r\n	<li>Đế gi&agrave;y trắng bằng cao su chắc chắn, kh&ocirc;ng viền, logo dập nổi 3D sau g&oacute;t gi&agrave;y</li>\r\n	<li>Miếng đệm l&oacute;t gi&agrave;y sử dụng miếng l&oacute;t của Nike Lunarlon tạo sự &ecirc;m &aacute;i, tho&aacute;ng kh&iacute; cho người mang. Đặc biệt c&oacute; thể dễ d&agrave;ng th&aacute;o ra để vệ sinh gi&agrave;y khi cần thiết</li>\r\n</ul>\r\n\r\n<p>Phần d&acirc;y thun ở hai b&ecirc;n th&acirc;n đ&ocirc;i gi&agrave;y c&ugrave;ng hai sợi thun cố định lưỡi g&agrave; b&ecirc;n trong gi&agrave;y tạo cảm gi&aacute;c đ&ocirc;i gi&agrave;y &ocirc;m form v&agrave; vừa ch&acirc;n hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-8-1.jpg\" /></p>\r\n\r\n<p><em>Miếng đệm l&oacute;t ứng dụng c&ocirc;ng nghệ Lunarlon</em></p>\r\n\r\n<p>Với phi&ecirc;n bản Chuck II lần n&agrave;y, Converse tr&igrave;nh l&agrave;ng với bốn gam m&agrave;u quen thuộc: đen, trắng, xanh, đỏ c&ugrave;ng đầy đủ hai d&ograve;ng gi&agrave;y cơ bản: cổ thấp, cổ cao.</p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-19.jpg\" /></p>\r\n\r\n<p><img alt=\"Converse Chuck Taylor All Star II\" src=\"https://drake.vn/image/catalog/CV%20Chuck%202/converse-chuck-taylor-all-star-2-20.jpg\" /></p>\r\n\r\n<p><em>Converse Chuck Taylor All Star II mang đến nhiều phi&ecirc;n bản cho bạn lựa chọn</em></p>', 'Với chất liệu Flyknit từ Nike, công nghệ này sử dụng các loại sợi đặc biệt được đan một cách khoa học', NULL, 4, 2, '2019-08-05 04:17:43', '2019-08-05 04:17:43'),
(15, 'Converse El Distrito', 'converse-el-distrito', '563430V-DRAKE-500x500.jpg', 990000, 0, 0, 1, 0, 0, '<p><strong>Converse trở lại đường đua với BST El Distrito mới toanh</strong></p>\r\n\r\n<p>C&oacute; thể khẳng định rằng d&ograve;ng chảy Sneaker dường như l&agrave; v&ocirc; tận, khi c&oacute; sự tham gia của c&aacute;c thương hiệu đ&igrave;nh đ&aacute;m như: Palladium, Vans, Puma, &hellip; lần lượt tung ra thị trường những bộ sưu tập với thiết kế v&agrave; chất liệu v&ocirc; c&ugrave;ng ấn tượng.</p>\r\n\r\n<p><img alt=\"Fans Converse lại một phen dậy sóng với BST El Distrito cá tính\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/converse-el-distrito/converse-el-distrito-10.jpg\" /></p>\r\n\r\n<p>Ch&iacute;nh v&igrave; thế, để kh&ocirc;ng k&eacute;m cạnh c&aacute;c đối thủ của m&igrave;nh. Converse vừa tung ra thị trường một chiến binh &ldquo;quyến rũ chết người&rdquo; mang t&ecirc;n&nbsp;<strong>El Distrito</strong>&nbsp;khiến c&aacute;c fans boy, fans girl đứng ngồi kh&ocirc;ng y&ecirc;n với c&aacute;c phi&ecirc;n bản: Xanh r&ecirc;u - X&aacute;m be d&agrave;nh của Nam, Đỏ Hồng v&agrave; X&aacute;m nhạt phi&ecirc;n bản d&agrave;nh cho Nữ tạo n&ecirc;n c&uacute; h&iacute;t lớn trong l&agrave;ng gi&agrave;y thể thao thế giới.</p>\r\n\r\n<p><img alt=\"Fans Converse lại một phen dậy sóng với BST El Distrito cá tính\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/converse-el-distrito/converse-el-distrito-11.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>El Distrito - Bộ sưu tập gi&uacute;p &ldquo;ch&agrave;ng v&agrave; n&agrave;ng&rdquo; tỏa s&aacute;ng</strong></p>\r\n\r\n<p>Giống như những &ldquo;đ&agrave;n chị&rdquo; đi trước, BST&nbsp;<strong>El Distrito</strong>&nbsp;lần n&agrave;y vẫn giữ nguy&ecirc;n thiết kế v&agrave; kiểu d&aacute;ng nhỏ gọn, mỏng nhẹ quen thuộc. Phần cổ gi&agrave;y &ocirc;m ch&acirc;n nhưng kh&ocirc;ng g&acirc;y ra cảm gi&aacute;c kh&oacute; chịu. V&igrave; thế,&nbsp;<strong>El</strong>&nbsp;<strong>Distrito</strong>&nbsp;dường như ph&ugrave; hợp với bất k&igrave; trang phục v&agrave; phong c&aacute;ch n&agrave;o từ: Free style, Streetwear, Sporty đến Rock Chic - D&ograve;ng sản phẩm&nbsp;<strong>El Distrito</strong>&nbsp;đều c&oacute; thể &ldquo;c&acirc;n&rdquo; tất.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, điểm đặc biệt của thiết kế nằm ở phần Upper với chất liệu vải Textile được gia c&ocirc;ng tỉ mỉ đến từng đường kim mũi chỉ, tạo được cảm gi&aacute;c &ecirc;m dịu v&agrave; thoải m&aacute;i. Với chất vải mịn m&agrave;ng,&nbsp;<strong>Converse El Distrio</strong>&nbsp;sẽ l&agrave; lựa chọn tuyệt vời cho đ&ocirc;i ch&acirc;n của bạn trong những chuyến du lịch xa hay cơ bản l&agrave; khi bạn phải vận động nhiều.</p>\r\n\r\n<p><img alt=\"Fans Converse lại một phen dậy sóng với BST El Distrito cá tính\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/converse-el-distrito/converse-el-distrito-2.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Thiết kế nổi&nbsp;bật c&ugrave;ng gam m&agrave;u đỏ hồng dịu nhẹ gi&uacute;p c&aacute;c n&agrave;ng xinh xắn hơn trong bộ c&aacute;ch của m&igrave;nh</em></p>', 'Với tone màu xám trung tính thanh lịch và thân giày Converse El Distrito được làm từ chất vải dệt Textile tỉ mỉ trên từng đườg kim mũi chỉ.', NULL, 4, 10, '2019-08-20 01:06:43', '2019-08-20 01:06:43'),
(16, 'Vans Sk8-Hi', 'vans-sk8-hi', 'D5IW00-DRAKE-VANS-500x500.jpg', 2500000, 0, 0, 1, 1, 0, '<p><em><strong>Vans SK8 mang đến sự nổi bật, độc đ&aacute;o từ thiết kế, kiểu d&aacute;ng</strong></em></p>\r\n\r\n<p>Chỉ ra đời sau Vans Old Skool một năm, d&ograve;ng gi&agrave;y Vans SK8 &ndash; Hi tiếp tục giữ lại nhiều thiết kế tr&ecirc;n Old Skool v&agrave; ph&aacute;t triển th&ecirc;m nhiều chi tiết kh&aacute;c. Điều n&agrave;y gi&uacute;p sản phẩm được cải thiện ho&agrave;n hảo hơn v&agrave; ph&ugrave; hợp hơn với bộ m&ocirc;n lướt v&aacute;n cũng như c&aacute;c hoạt động thể thao trong thời kỳ n&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/Vans%20SK8/vans-sk8-hi-1.jpg\" /></p>\r\n\r\n<p><em>&ldquo;Phi&ecirc;n bản cổ cao của Vans Old Skool&rdquo; với t&ecirc;n gọi Vans SK8 - Hi</em></p>\r\n\r\n<p>V&igrave; sao Vans SK8 &ndash; Hi được xem l&agrave; phi&ecirc;n bản cổ cao của Vans Old Skool? Bởi ngo&agrave;i điểm kh&aacute;c biệt duy nhất l&agrave; thiết kế cổ cao qua mắt c&aacute; ch&acirc;n th&igrave; c&ograve;n lại những chi tiết kh&aacute;c đều giống với d&ograve;ng Vans Old Skool. Trong đ&oacute;, cổ gi&agrave;y Vans SK8 được đệm miếng l&oacute;t xung quanh một c&aacute;ch đặc biệt với 3 đường chỉ được may c&aacute;ch đều nhau tạo n&ecirc;n điểm đặc trưng cho cổ gi&agrave;y. N&oacute; gi&uacute;p người d&ugrave;ng tr&aacute;nh khỏi những tổn thương ở cổ ch&acirc;n cũng như hỗ trợ cho việc di chuyển được linh hoạt hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/Vans%20SK8/vans-sk8-hi-12.jpg\" /></p>\r\n\r\n<p><em>Phần cổ ch&acirc;n được ch&uacute; trọng gi&uacute;p người mang dễ di chuyển hơn</em></p>\r\n\r\n<p>Sự kết hợp của vải v&agrave; da lộn cũng l&agrave; điều đặc biệt cho đ&ocirc;i gi&agrave;y SK8 &ndash; Hi đảm bảo được độ bền, &ocirc;m form cho đ&ocirc;i ch&acirc;n.</p>\r\n\r\n<p>T&iacute;nh đến hiện tại, d&ograve;ng Vans SK8 &ndash; Hi đ&atilde; cho ra mắt h&agrave;ng trăm bản phối m&agrave;u v&agrave; h&agrave;ng chục kiểu custom cho đ&ocirc;i gi&agrave;y. Với những ưu điểm về thiết kế v&agrave; chất liệu, Vans SK8 &ndash; Hi thật sự l&agrave; một lựa chọn cho những ai y&ecirc;u th&iacute;ch d&ograve;ng sneaker.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/Vans%20SK8/vans-sk8-hi-11.jpg\" /></p>\r\n\r\n<p><em><strong>&ldquo;Cơn lốc mix&amp;match&rdquo; c&agrave;n qu&eacute;t s&agrave;n thời trang với Vans SK8</strong></em></p>\r\n\r\n<p>C&oacute; một sự thật l&agrave; Vans SK8 &ndash; Hi ph&ugrave; hợp với mọi phong c&aacute;ch thời trang v&agrave; được xem l&agrave; một đ&ocirc;i gi&agrave;y kh&ocirc;ng thể thiếu trong mọi tủ đồ. Đặc biệt l&agrave; những t&iacute;n đồ của phong c&aacute;ch streetstyle bụi bặm, c&aacute; t&iacute;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://drake.vn/image/catalog/Vans%20SK8/vans-sk8-hi-23.jpg\" /></p>\r\n\r\n<p><em>Nhiều bản phối của Vans SK8 &ndash; Hi đ&atilde; được ra mắt</em></p>', 'Vans SK8 trắng không tì vết sẽ là lựa chọn vô cùng cá tính và chất lừ cho phong cách streetstyle', NULL, 4, 4, '2019-08-20 01:09:51', '2019-08-20 01:09:51'),
(17, 'Palladium Pallabrouse Baggy', 'palladium-pallabrouse-baggy', '92478-066-500x500.jpg', 1990000, 0, 0, 1, 1, 0, '<p>Phong c&aacute;ch bụi bặm, pha ch&uacute;t phong trần của Palladium&nbsp;đ&atilde; chinh phục cả nước Ph&aacute;p, New York, Lu&acirc;n Đ&ocirc;n, Nhật Bản&hellip;l&agrave; những quốc gia lu&ocirc;n giữ vai tr&ograve; ti&ecirc;n phong trong lĩnh vực thời trang. Lấy &yacute; tưởng từ những chuyến phi&ecirc;u lưu mạo hiểm, gi&agrave;y Palladium l&agrave; loại gi&agrave;y cho những bạn trẻ ưa kh&aacute;m ph&aacute;, đế gi&agrave;y bền bỉ, tr&ocirc;ng th&ocirc; nhưng rất nhẹ nh&agrave;ng thoải m&aacute;i, thiết kế nhấn mạnh sự đơn giản, kết hợp c&aacute;ch sử dụng chất liệu, tạo cảm gi&aacute;c kh&aacute;c biệt đặc trưng rất cho từng người khi mang Palladium. L&agrave; thương hiệu của sự kh&aacute;m ph&aacute;, Palladium đề cao sự thoải m&aacute;i, x&oacute;a bỏ cảm gi&aacute;c g&ograve; b&oacute; khi mang gi&agrave;y, linh hoạt trong mọi địa h&igrave;nh từ nền đất trũng ẩm ướt cho tới v&aacute;ch n&uacute;i cheo leo cũng kh&ocirc;ng l&agrave; kh&oacute; khăn với Palladium, thỏa m&atilde;n nhu cầu kh&aacute;m ph&aacute; v&agrave; thử th&aacute;ch mạo hiểm của giới trẻ.</p>', 'Được phối với tone màu đen cá tính cùng kiểu dáng cao cổ và các khoen xỏ kim loại với màu đồng giúp đôi giày có thêm điểm nhấn', NULL, 4, 6, '2019-08-20 01:13:01', '2019-08-20 01:13:01'),
(18, 'Palladium Pampa Hi W', 'palladium-pampa-hi-w', '92352-693-W-500x500.jpg', 790000, 0, 0, 1, 0, 0, '<p><img alt=\"\" src=\"http://skihaussteamboat.com/wp-content/uploads/2015/05/15_Palladium_Shoes_Boots.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Phong c&aacute;ch bụi bặm, pha ch&uacute;t phong trần của Palladium&nbsp;đ&atilde; chinh phục cả nước Ph&aacute;p, New York, Lu&acirc;n Đ&ocirc;n, Nhật Bản&hellip;l&agrave; những quốc gia lu&ocirc;n giữ vai tr&ograve; ti&ecirc;n phong trong lĩnh vực thời trang. Lấy &yacute; tưởng từ những chuyến phi&ecirc;u lưu mạo hiểm, gi&agrave;y Palladium l&agrave; loại gi&agrave;y cho những bạn trẻ ưa kh&aacute;m ph&aacute;, đế gi&agrave;y bền bỉ, tr&ocirc;ng th&ocirc; nhưng rất nhẹ nh&agrave;ng thoải m&aacute;i, thiết kế nhấn mạnh sự đơn giản, kết hợp c&aacute;ch sử dụng chất liệu, tạo cảm gi&aacute;c kh&aacute;c biệt đặc trưng rất cho từng người khi mang Palladium. L&agrave; thương hiệu của sự kh&aacute;m ph&aacute;, Palladium đề cao sự thoải m&aacute;i, x&oacute;a bỏ cảm gi&aacute;c g&ograve; b&oacute; khi mang gi&agrave;y, linh hoạt trong mọi địa h&igrave;nh từ nền đất trũng ẩm ướt cho tới v&aacute;ch n&uacute;i cheo leo cũng kh&ocirc;ng l&agrave; kh&oacute; khăn với Palladium, thỏa m&atilde;n nhu cầu kh&aacute;m ph&aacute; v&agrave; thử th&aacute;ch mạo hiểm của giới trẻ.</p>', 'Palladium Pampa Hi W trang bị phần lưỡi gà và cổ giày dày dăn giúp bảo vệ đôi chân tránh các tác động bên ngoài khi vận động mạnh, cũng như mạng lại cảm giác êm ái và dễ chịu', NULL, 4, 6, '2019-08-20 01:14:50', '2019-08-20 01:14:50'),
(19, 'Palladium Blanc Textile', 'palladium-blanc-textile', '72886-679-DRAKE-CONVERSE-500x500.jpg', 1440000, 0, 0, 1, 0, 0, '<p>Thương hiệu Palladium với phong c&aacute;ch thiết kế nổi bật lấn &aacute;t những d&ograve;ng gi&agrave;y thể thao kh&aacute;c tr&ecirc;n thị trường. D&ugrave; l&agrave; phi&ecirc;n bản cổ cao hay cổ thấp đều khiến bạn trở n&ecirc;n c&aacute; t&iacute;nh v&agrave; &ldquo;chất chơi&rdquo; hơn bao giờ hết. Với BST&nbsp;<strong>gi&agrave;y</strong>&nbsp;<strong>Palladium Blanc &ndash; Hi</strong>&nbsp;lần n&agrave;y, m&agrave;u sắc v&agrave; thiết kế ch&iacute;nh l&agrave; điểm nhấn nổi bật nhất gi&uacute;p bạn c&oacute; th&ecirc;m nhiều sự chọn s&aacute;ng tạo trong phong c&aacute;ch thời trang của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"Palladium Blanc Hi – “Cá tính” làm nên thương hiệu\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/palladium-blanc-hi/palladium-blanc-hi-3.jpg\" /></p>\r\n\r\n<p><img alt=\"Palladium Blanc Hi – “Cá tính” làm nên thương hiệu\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/palladium-blanc-hi/palladium-blanc-hi-10.jpg\" /></p>\r\n\r\n<p>Sự đa dạng m&agrave;u sắc trong<em>&nbsp;</em>BST n&agrave;y chứng tỏ sức s&aacute;ng tạo &ldquo;kh&ocirc;ng nhỏ&rdquo; của nh&agrave; thiết kế với những gam m&agrave;u h&uacute;t mắt: xanh r&ecirc;u h&agrave;i h&ograve;a, xanh dương huyền b&iacute;, đỏ rượu vang, v&agrave; gam m&agrave;u hồng dịu nhẹ c&ugrave;ng với hai tone m&agrave;u x&aacute;m - đen quen thuộc tạo n&ecirc;n sự l&ocirc;i cuốn.</p>\r\n\r\n<p><strong>Palladium Blanc - Hi</strong>&nbsp;c&oacute; thiết kế đơn giản với những tone m&agrave;u c&aacute; t&iacute;nh tạo được điểm nhấn rất ri&ecirc;ng gi&uacute;p c&aacute;c fans y&ecirc;u th&iacute;ch thương hiệu n&agrave;y. Tone m&agrave;u thời thượng bắt trend, dễ mix đồ, gi&uacute;p c&aacute;c bạn tự tin khoe c&aacute; t&iacute;nh b&ecirc;n những bộ oufit đẹp mắt, đầy sức s&aacute;ng tạo.</p>\r\n\r\n<p><img alt=\"Palladium Blanc Hi – “Cá tính” làm nên thương hiệu\" src=\"https://drake.vn/image/catalog/H%C3%ACnh%20content/palladium-blanc-hi/palladium-blanc-hi-6.jpg\" /></p>\r\n\r\n<p><em>Với tone m&agrave;u hồng dịu nhẹ sẽ gi&uacute;p &ldquo;chụy em&rdquo; nữ t&iacute;nh quyến rũ&nbsp;hơn trong những&nbsp;set đồ của m&igrave;nh</em></p>', 'Thiết kế với tone hồng thu hút giúp bạn dễ dàng phối với nhiều loại trang phục. Chất liệu vải Textile dày dặn bền bỉ tạo cảm giác thoải mái, dễ chịu cho người mang.', NULL, 4, 7, '2019-08-20 01:19:17', '2019-08-20 01:19:17'),
(20, 'Palladium Blanc Ox', 'palladium-blanc-ox', '72885-419-500x500.jpg', 880000, 0, 0, 1, 1, 0, '<p><img alt=\"\" src=\"https://drake.vn/image/catalog/banner/IMG_8896.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Phong c&aacute;ch bụi bặm, pha ch&uacute;t phong trần của Palladium&nbsp;đ&atilde; chinh phục cả nước Ph&aacute;p, New York, Lu&acirc;n Đ&ocirc;n, Nhật Bản&hellip;l&agrave; những quốc gia lu&ocirc;n giữ vai tr&ograve; ti&ecirc;n phong trong lĩnh vực thời trang. Lấy &yacute; tưởng từ những chuyến phi&ecirc;u lưu mạo hiểm, gi&agrave;y Palladium l&agrave; loại gi&agrave;y cho những bạn trẻ ưa kh&aacute;m ph&aacute;, đế gi&agrave;y bền bỉ, tr&ocirc;ng th&ocirc; nhưng rất nhẹ nh&agrave;ng thoải m&aacute;i, thiết kế nhấn mạnh sự đơn giản, kết hợp c&aacute;ch sử dụng chất liệu, tạo cảm gi&aacute;c kh&aacute;c biệt đặc trưng rất cho từng người khi mang Palladium. L&agrave; thương hiệu của sự kh&aacute;m ph&aacute;, Palladium đề cao sự thoải m&aacute;i, x&oacute;a bỏ cảm gi&aacute;c g&ograve; b&oacute; khi mang gi&agrave;y, linh hoạt trong mọi địa h&igrave;nh từ nền đất trũng ẩm ướt cho tới v&aacute;ch n&uacute;i cheo leo cũng kh&ocirc;ng l&agrave; kh&oacute; khăn với Palladium, thỏa m&atilde;n nhu cầu kh&aacute;m ph&aacute; v&agrave; thử th&aacute;ch mạo hiểm của giới trẻ.</p>', 'Nổi bật với gam màu xanh biển huyền bí kết hợp với thiết kế đế cổ thấp mới lạ của nhà Palladium, hứa hẹn sẽ làm nên những outfit cực \"chất\" không làm cho các tín đồ nghiện giày thất vọng.', NULL, 4, 7, '2019-08-20 01:26:56', '2019-08-20 01:26:56');

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
(16, '96205-740-M-DRAKE6-150x150.jpg', 4),
(17, 'IMG_8995-150x150.jpg', 5),
(18, 'IMG_8996-150x150.jpg', 5),
(19, 'IMG_9001-150x150.jpg', 5),
(20, 'IMG_9002-150x150.jpg', 5),
(21, 'VN0A38F7P9I-DRAKE1-150x150.jpg', 6),
(22, 'VN0A38F7P9I-DRAKE3-150x150.jpg', 6),
(23, 'VN0A38F7P9I-DRAKE4-150x150.jpg', 6),
(24, '76259-011-M-DRAKE1-1-150x150.jpg', 7),
(25, '76259-011-M-DRAKE2-1-150x150.jpg', 7),
(26, '76259-011-M-DRAKE3-1-150x150.jpg', 7),
(27, '76259-011-M-DRAKE6-150x150.jpg', 7),
(28, 'IMG_4323-150x150.jpg', 1),
(29, 'IMG_4325-150x150.jpg', 1),
(30, 'IMG_4330-150x150.jpg', 1),
(31, 'IMG_4334-150x150.jpg', 1),
(32, '9-150x150.jpg', 8),
(33, '13-150x150.jpg', 8),
(34, '20-150x150.jpg', 8),
(35, 'IMG_8620-150x150.jpg', 9),
(36, 'IMG_8621-150x150.jpg', 9),
(37, 'IMG_8627-150x150.jpg', 9),
(38, 'IMG_8632-150x150.jpg', 9),
(39, '162347-DRAKE1-150x150.jpg', 10),
(40, '162347-DRAKE2-150x150.jpg', 10),
(41, '162347-DRAKE3-150x150.jpg', 10),
(42, '162347-DRAKE-150x150.jpg', 10),
(43, 'IMG_9402-150x150.jpg', 11),
(44, 'IMG_9403-150x150.jpg', 11),
(45, 'IMG_9405-150x150.jpg', 11),
(46, 'IMG_9408-150x150.jpg', 11),
(47, 'IMG_1080-150x150.jpg', 12),
(48, 'IMG_1081-150x150.jpg', 12),
(49, 'IMG_1083-150x150.jpg', 12),
(50, 'IMG_1086-150x150.jpg', 12),
(51, 'IMG_0008-150x150.jpg', 13),
(52, 'IMG_0009-_2_-150x150.jpg', 13),
(53, 'IMG_9995-150x150.jpg', 13),
(54, '157593-drake1-150x150.jpg', 14),
(55, '157593-drake2-150x150.jpg', 14),
(56, '157593-drake-150x150.jpg', 14),
(57, '563430V-DRAKE1-150x150.jpg', 15),
(58, '563430V-DRAKE2-150x150.jpg', 15),
(59, '563430V-DRAKE3-150x150.jpg', 15),
(60, '563430V-DRAKE4-150x150.jpg', 15),
(61, 'VN000D5IW00-DRAKE1-150x150.jpg', 16),
(62, 'VN000D5IW00-DRAKE2-150x150.jpg', 16),
(63, 'VN000D5IW00-DRAKE3-150x150.jpg', 16),
(64, '92478-066-DRAKE-3-150x150.jpg', 17),
(65, '92478-066-DRAKE-150x150.jpg', 17),
(66, '92352-693-DRAKE-CONVERSE-_2_-150x150.jpg', 18),
(67, '92352-693-DRAKE-CONVERSE-_4_-150x150.jpg', 18),
(68, '92352-693-DRAKE-CONVERSE-_5_-150x150.jpg', 18),
(69, '92352-693-DRAKE-CONVERSE-150x150.jpg', 18),
(70, '72886-679-DRAKE-CONVERSE1-150x150.jpg', 19),
(71, '72886-679-DRAKE-CONVERSE2-150x150.jpg', 19),
(72, '72886-679-DRAKE-CONVERSE3-150x150.jpg', 19),
(73, '72885-419-DRAKE-CONVERSE1-150x150.jpg', 20),
(74, '72885-419-DRAKE-CONVERSE3-150x150.jpg', 20),
(75, '72885-419-DRAKE-CONVERSE6-150x150.jpg', 20),
(76, '72885-419-DRAKE-CONVERSE-150x150.jpg', 20);

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
(1, 1, 8, NULL, NULL),
(1, 2, 10, NULL, NULL),
(3, 1, 10, NULL, NULL),
(3, 8, 20, NULL, NULL),
(1, 4, 15, NULL, NULL),
(1, 8, 12, NULL, NULL),
(2, 6, 14, NULL, NULL),
(2, 8, 15, NULL, NULL),
(2, 9, 12, NULL, NULL),
(4, 3, 11, NULL, NULL),
(4, 5, 15, NULL, NULL),
(4, 6, 10, NULL, NULL),
(4, 8, 11, NULL, NULL),
(4, 10, 1, NULL, NULL),
(5, 1, 12, NULL, NULL),
(5, 2, 12, NULL, NULL),
(5, 4, 12, NULL, NULL),
(5, 6, 12, NULL, NULL),
(5, 8, 2, NULL, NULL),
(5, 10, 10, NULL, NULL),
(6, 6, 10, NULL, NULL),
(6, 8, 10, NULL, NULL),
(6, 10, 10, NULL, NULL),
(8, 6, 11, NULL, NULL),
(8, 7, 10, NULL, NULL),
(8, 8, 10, NULL, NULL),
(8, 9, 10, NULL, NULL),
(8, 10, 10, NULL, NULL),
(9, 6, 10, NULL, NULL),
(9, 7, 10, NULL, NULL),
(9, 10, 10, NULL, NULL);

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
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `image`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, 'slider1.jpg', 1, '0', '2019-08-06 04:21:03', '2019-08-06 05:09:03'),
(2, 'slider2.jpg', 1, '0', '2019-08-06 04:26:00', '2019-08-06 04:26:00'),
(3, 'slider3.jpg', 1, '0', '2019-08-06 04:26:13', '2019-08-06 04:26:13'),
(4, 'banner1.jpg', 1, '1', '2019-08-06 04:27:02', '2019-08-07 13:30:48'),
(6, 'banner2.jpg', 0, '1', '2019-08-06 05:03:34', '2019-08-06 05:19:34');

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
(1, 'Supperadmin', 'supperadmin@gmail.com', '0912345678', 1, '$2y$10$txB2s3yQuL9jO1zl2VNaiO07l7e0rIPiQ/ET3KS7X6a2sAsENRxFq', 'gCxsGWH1iqUsQ5NeulkTVjPrDTTFUURtfMl0asm5IVjIVkRM2sheCPFz3uwD', NULL, '2019-06-05 10:53:53'),
(3, 'Phạm Hồng Nhung', 'hongnhung9496@gmail.com', '0396314985', 0, '$2y$10$2JwB1k0D2TpO4PtbY.m1yOBgeLfubwlyKU5RKGplFdLYzM.nlBu/y', 'mu0YrfxGvKsOVrwS3YtMSlukItQqRGMxo55tHWexoYDkK7cO4GDS32d2NiWP', '2019-06-05 06:07:06', '2019-06-05 11:15:06'),
(4, 'Admin', 'admin@gmail.com', '0977423252', 1, '$2y$10$8xybjtDdhiULPgOGaInagOLa7hpE.wrxCkfIRk76n54gjBLfusMFO', '9l66taP6SDUISobfDjWNv7LIa0ClPj3o70xwpGr8e11UP3wEmZoSBnvItrW7', '2019-06-05 06:47:00', '2019-06-05 06:47:00'),
(5, 'Nguyễn Hoàng Hải', 'nghhai2712@gmail.com', '0977423252', 1, '$2y$10$/VTgGof.p8Ifqd870HGJ5OXbIfXyIJipAMX8O5LVauBhvcMW4JLIe', '3m5T3k9mdNpivRaPZLACCcomi6gJQ9UAUbkB1OLz4o5oaNxs2HJo55dmAffQ', '2019-06-05 08:23:40', '2019-06-05 08:23:40'),
(6, 'admin1', 'admin1@gmail.com', '1234567890', 1, '$2y$10$4gGwTM9/aav6bCGy0ZUtPexplku7GlE2.vgZA3dqisUY3fcgtqj9q', '3IPgcKItM3wi3o7JFfpoNJkWVvTejaEbviaWuToqPyQy8CoNogxnfeHHccJ9', '2019-06-05 11:04:31', '2019-06-05 12:41:15'),
(7, 'admin2', 'admin2@gmail.com', '1234567890', 0, '$2y$10$GtYw3RwpWITHg.n7q34i.eo7JUcgoCe5GomtyF5ZrAUwT8FxvYs5e', '7CbvudUqlMllyDOHQ7spEvnxLU4LLzKQUI9bvq25QmMEugBP4WzYAF5nI76W', '2019-06-05 11:06:03', '2019-06-05 11:59:28'),
(8, 'Hải Hoàng', 'nguyenhoanghai271294@gmail.com', '0977423252', 0, '$2y$10$rtPvtX2LyeC/uhA4fAIYD.aumcvEh329S0RhLdOqxUgsrS0ctUUoS', 'naJ7NPTSNgOUtTys7HJfxZ0n9CajjnuBStphb1Lt086kmmk2Uhees0zuxGOw', '2019-07-11 15:56:54', '2019-07-11 15:56:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vnpays`
--

CREATE TABLE `vnpays` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `bank_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `vnp_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vnpays`
--
ALTER TABLE `vnpays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vnpays_order_id_foreign` (`order_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

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
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `vnpays`
--
ALTER TABLE `vnpays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
