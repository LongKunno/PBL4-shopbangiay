-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 29, 2022 lúc 07:43 AM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pbl4`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) UNSIGNED NOT NULL,
  `binhluan_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `binhluan_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binhluan_noi_dung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `binhluan_trang_thai` int(11) NOT NULL,
  `sanpham_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `binhluan_ten`, `binhluan_email`, `binhluan_noi_dung`, `binhluan_trang_thai`, `sanpham_id`, `created_at`, `updated_at`) VALUES
(1, 'long', 'long@gmail.com', 'Giày đẹp', 1, 29, '2022-12-03 00:43:35', '2022-12-03 00:43:35'),
(2, 'Thịnh', 'admin@gmail.com', 'Giày đẹp giá tốt', 1, 19, '2022-12-23 13:39:30', '2022-12-23 13:39:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `sanpham_id` int(10) UNSIGNED NOT NULL,
  `donhang_id` int(10) UNSIGNED NOT NULL,
  `chitietdonhang_so_luong` int(11) NOT NULL,
  `chitietdonhang_thanh_tien` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `sanpham_id`, `donhang_id`, `chitietdonhang_so_luong`, `chitietdonhang_thanh_tien`, `created_at`, `updated_at`) VALUES
(1, 29, 2, 1, '5000000.00', NULL, NULL),
(2, 29, 3, 1, '5000000.00', NULL, NULL),
(3, 29, 4, 2, '10000000.00', NULL, NULL),
(4, 29, 5, 3, '15000000.00', NULL, NULL),
(5, 29, 6, 3, '15000000.00', NULL, NULL),
(6, 29, 7, 3, '15000000.00', NULL, NULL),
(7, 29, 8, 3, '15000000.00', NULL, NULL),
(8, 29, 9, 3, '15000000.00', NULL, NULL),
(9, 29, 10, 3, '15000000.00', NULL, NULL),
(10, 29, 11, 3, '15000000.00', NULL, NULL),
(11, 29, 12, 3, '15000000.00', NULL, NULL),
(12, 29, 13, 3, '15000000.00', NULL, NULL),
(13, 29, 14, 3, '15000000.00', NULL, NULL),
(14, 29, 15, 3, '15000000.00', NULL, NULL),
(15, 29, 16, 3, '15000000.00', NULL, NULL),
(16, 29, 17, 1, '5000000.00', NULL, NULL),
(17, 28, 18, 1, '4399000.00', NULL, NULL),
(18, 27, 18, 1, '3599000.00', NULL, NULL),
(19, 26, 18, 1, '4499000.00', NULL, NULL),
(20, 25, 18, 1, '3790000.00', NULL, NULL),
(21, 23, 18, 1, '4999999.00', NULL, NULL),
(22, 29, 19, 1, '5000000.00', NULL, NULL),
(23, 27, 19, 1, '3203110.00', NULL, NULL),
(24, 17, 20, 1, '5223410.00', NULL, NULL),
(25, 29, 21, 1, '5000000.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(10) UNSIGNED NOT NULL,
  `donhang_nguoi_nhan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `donhang_nguoi_nhan_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `donhang_nguoi_nhan_sdt` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `donhang_nguoi_nhan_dia_chi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `donhang_ghi_chu` longtext COLLATE utf8_unicode_ci NOT NULL,
  `donhang_tong_tien` decimal(10,2) NOT NULL,
  `khachhang_id` int(10) UNSIGNED NOT NULL,
  `tinhtranghd_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `donhang_nguoi_nhan`, `donhang_nguoi_nhan_email`, `donhang_nguoi_nhan_sdt`, `donhang_nguoi_nhan_dia_chi`, `donhang_ghi_chu`, `donhang_tong_tien`, `khachhang_id`, `tinhtranghd_id`, `created_at`, `updated_at`) VALUES
(1, 'dfgds', 'duylong@gmail.com', '0919900743', 'afdsa', 'fdsafs', '5000000.00', 12, 3, '2022-11-17 03:37:49', '2022-11-17 03:37:49'),
(2, 'Dao Duy Long', 'duylong@gmail.com', '0919900743', 'QB', 'size xl', '5000000.00', 12, 4, '2022-11-17 03:39:07', '2022-11-17 03:39:07'),
(3, 'Đào_Duy_Long', 'duylong@gmail.com', '0919900743', 'QB', 'size xl', '5000000.00', 12, 4, '2022-11-17 03:40:08', '2022-11-17 03:40:08'),
(4, 'a', 'duylong@gmail.com', '0919900743', 'zx', 'zx', '10000000.00', 10, 4, '2022-11-17 03:40:43', '2022-11-17 03:40:43'),
(5, 'a', 'longkun29112002x123@gmail.com', '0919900378', 'sdad', 'dsada', '15000000.00', 13, 4, '2022-11-17 03:43:27', '2022-11-17 03:43:27'),
(6, 'a', 'longkun29112002x123@gmail.com', '0919900378', 'sdad', 'dsada', '15000000.00', 13, 4, '2022-11-17 03:52:11', '2022-11-17 03:52:11'),
(7, 'a', 'longkun29112002x123@gmail.com', '0919900378', 'sdad', 'dsada', '15000000.00', 13, 4, '2022-11-17 03:53:18', '2022-11-17 03:53:18'),
(8, 'a', 'longkun29112002x123@gmail.com', '0919900378', 'sdad', 'dsada', '15000000.00', 13, 4, '2022-11-17 03:53:26', '2022-11-17 03:53:26'),
(9, 'a', 'longkun29112002x123@gmail.com', '0919900378', 'sdad', 'dsada', '15000000.00', 13, 4, '2022-11-17 04:01:17', '2022-11-17 04:01:17'),
(10, 'a', 'longkun29112002x123@gmail.com', '0919900378', 'sdad', 'dsada', '15000000.00', 13, 4, '2022-11-17 04:16:17', '2022-11-17 04:16:17'),
(11, 'a', 'longkun29112002x123@gmail.com', '0919900378', 'sdad', 'dsada', '15000000.00', 13, 4, '2022-11-17 04:17:26', '2022-11-17 04:17:26'),
(12, 'a', 'longkun29112002x123@gmail.com', '0919900378', 'sdads', 'dsada', '15000000.00', 13, 4, '2022-11-17 04:17:37', '2022-11-17 04:17:37'),
(13, 'a', 'longkun29112002x123@gmail.com', '0919900378', 'sdads', 'dsada', '15000000.00', 13, 1, '2022-11-17 04:18:00', '2022-11-17 04:18:00'),
(14, 'a', 'longkun29112002x123@gmail.com', '0919900378', 'sdads', 'dsada', '15000000.00', 13, 1, '2022-11-17 04:18:09', '2022-11-17 04:18:09'),
(15, 'a', 'longkun29112002x123@gmail.com', '0919900378', 'sdads', 'dsada', '15000000.00', 13, 1, '2022-11-17 04:18:26', '2022-11-17 04:18:26'),
(16, 'a', 'longkun29112002x123@gmail.com', '0919900378', 'sdads', 'dsada', '15000000.00', 13, 1, '2022-11-17 04:18:29', '2022-11-17 04:18:29'),
(17, 'Đào_Duy_Long', 'duylong@gmail.com', '0919900743', 'DN', 'dsd', '5000000.00', 12, 1, '2022-12-03 00:16:11', '2022-12-03 00:16:11'),
(18, 'Đào_Duy_Long', 'duylong@gmail.com', '0919900743', 'DN', 'abc', '21286999.00', 12, 1, '2022-12-03 00:42:43', '2022-12-03 00:42:43'),
(19, 'Thịnh', 'thinh@gmail.com', '0987654321', 'Quang Nam', 'Giao nhanh giúp em', '8203110.00', 11, 1, '2022-12-23 13:50:13', '2022-12-23 13:50:13'),
(20, 'Thinh', 'thinh@gmail.com', '0987654321', 'Quang Nam', 'abc', '5223410.00', 10, 1, '2022-12-28 03:43:24', '2022-12-28 03:43:24'),
(21, 'Thinh', 'thinh@gmail.com', '0987654321', 'Quảng Nam', 'abc', '5000000.00', 10, 1, '2022-12-28 03:59:35', '2022-12-28 03:59:35'),
(22, 'Thinh', 'thinh@gmail.com', '0987654321', 'Quảng Nam', 'abc', '0.00', 10, 1, '2022-12-28 04:07:50', '2022-12-28 04:07:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donvitinh`
--

CREATE TABLE `donvitinh` (
  `id` int(10) UNSIGNED NOT NULL,
  `donvitinh_ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `donvitinh_mo_ta` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donvitinh`
--

INSERT INTO `donvitinh` (`id`, `donvitinh_ten`, `donvitinh_mo_ta`, `created_at`, `updated_at`) VALUES
(1, 'Đôi', '', NULL, NULL),
(2, 'Combo', '', NULL, NULL),
(4, 'Cái', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhsanpham`
--

CREATE TABLE `hinhsanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `hinhsanpham_ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sanpham_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhsanpham`
--

INSERT INTO `hinhsanpham` (`id`, `hinhsanpham_ten`, `sanpham_id`, `created_at`, `updated_at`) VALUES
(88, 'NJ001_2.jpg', 17, NULL, NULL),
(89, 'NJ001_3.jpg', 17, NULL, NULL),
(90, 'NJ001_4.jpg', 17, NULL, NULL),
(91, 'NJ001_5.jpg', 17, NULL, NULL),
(92, 'NJ001_6.jpg', 17, NULL, NULL),
(98, 'NA001_2.jpg', 19, NULL, NULL),
(99, 'NA001_3.jpg', 19, NULL, NULL),
(100, 'NA001_4.jpg', 19, NULL, NULL),
(101, 'NA001_5.jpg', 19, NULL, NULL),
(102, 'NA001_6.jpg', 19, NULL, NULL),
(103, 'NA002_2.jpg', 20, NULL, NULL),
(104, 'NA002_3.jpg', 20, NULL, NULL),
(105, 'NA002_4.jpg', 20, NULL, NULL),
(106, 'NA002_5.jpg', 20, NULL, NULL),
(107, 'NA002_6.jpg', 20, NULL, NULL),
(108, 'NA003_2.jpg', 21, NULL, NULL),
(109, 'NA003_3.jpg', 21, NULL, NULL),
(110, 'NA003_4.jpg', 21, NULL, NULL),
(111, 'NA003_5.jpg', 21, NULL, NULL),
(112, 'NA003_6.jpg', 21, NULL, NULL),
(113, 'NA004_2.jpg', 22, NULL, NULL),
(114, 'NA004_3.jpg', 22, NULL, NULL),
(115, 'NA004_4.jpg', 22, NULL, NULL),
(116, 'NA004_5.jpg', 22, NULL, NULL),
(117, 'NA004_6.jpg', 22, NULL, NULL),
(118, 'NK001_2.jpg', 23, NULL, NULL),
(119, 'NK001_3.jpg', 23, NULL, NULL),
(120, 'NK001_4.jpg', 23, NULL, NULL),
(121, 'NK001_5.jpg', 23, NULL, NULL),
(122, 'NK001_6.jpg', 23, NULL, NULL),
(123, 'NK002_2.jpg', 24, NULL, NULL),
(124, 'NK002_3.jpg', 24, NULL, NULL),
(125, 'NK002_4.jpg', 24, NULL, NULL),
(126, 'NK002_5.jpg', 24, NULL, NULL),
(127, 'NK002_6.jpg', 24, NULL, NULL),
(128, 'NK003_2.jpg', 25, NULL, NULL),
(129, 'NK003_3.jpg', 25, NULL, NULL),
(130, 'NK003_4.jpg', 25, NULL, NULL),
(131, 'NK003_5.jpg', 25, NULL, NULL),
(132, 'NK003_6.jpg', 25, NULL, NULL),
(133, 'AU001_2.jpg', 26, NULL, NULL),
(134, 'AU001_3.jpg', 26, NULL, NULL),
(135, 'AU001_4.jpg', 26, NULL, NULL),
(136, 'AU001_5.jpg', 26, NULL, NULL),
(137, 'AU001_6.jpg', 26, NULL, NULL),
(138, 'AU002_2.jpg', 27, NULL, NULL),
(139, 'AU002_3.jpg', 27, NULL, NULL),
(140, 'AU002_4.jpg', 27, NULL, NULL),
(141, 'AU002_5.jpg', 27, NULL, NULL),
(142, 'AU002_6.jpg', 27, NULL, NULL),
(143, 'AU003_2.jpg', 28, NULL, NULL),
(144, 'AU003_3.jpg', 28, NULL, NULL),
(145, 'AU003_4.jpg', 28, NULL, NULL),
(146, 'AU003_5.jpg', 28, NULL, NULL),
(147, 'AU003_6.jpg', 28, NULL, NULL),
(148, 'AU004_2.jpg', 29, NULL, NULL),
(149, 'AU004_3.jpg', 29, NULL, NULL),
(150, 'AU004_4.jpg', 29, NULL, NULL),
(151, 'AU004_5.jpg', 29, NULL, NULL),
(152, 'AU004_6.jpg', 29, NULL, NULL),
(153, 'AK001_1.jpg', 30, NULL, NULL),
(154, 'AK001_2.jpg', 30, NULL, NULL),
(155, 'AK001_3.jpg', 30, NULL, NULL),
(156, 'AK001_4.jpg', 30, NULL, NULL),
(157, 'AK001_5.jpg', 30, NULL, NULL),
(158, 'AK002_1.jpg', 31, NULL, NULL),
(159, 'AK002_2.jpg', 31, NULL, NULL),
(160, 'AK002_3.jpg', 31, NULL, NULL),
(161, 'AK002_4.jpg', 31, NULL, NULL),
(162, 'AK002_5.jpg', 31, NULL, NULL),
(163, 'PN001_1.jpg', 32, NULL, NULL),
(164, 'PN001_2.jpg', 32, NULL, NULL),
(165, 'PN001_3.jpg', 32, NULL, NULL),
(166, 'PN001_4.jpg', 32, NULL, NULL),
(167, 'PN001_5.jpg', 32, NULL, NULL),
(168, 'PK001_1.jpg', 33, NULL, NULL),
(169, 'PK001_2.jpg', 33, NULL, NULL),
(170, 'PK001_3.jpg', 33, NULL, NULL),
(171, 'PK001_4.jpg', 33, NULL, NULL),
(172, 'PK001_5.jpg', 33, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(10) UNSIGNED NOT NULL,
  `khachhang_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `khachhang_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `khachhang_sdt` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `khachhang_dia_chi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `khachhang_ten`, `khachhang_email`, `khachhang_sdt`, `khachhang_dia_chi`, `user_id`, `created_at`, `updated_at`) VALUES
(10, 'Đào Duy Long', 'admin@gmail.com', '0987654321', 'Quảng Bình', 17, NULL, NULL),
(11, 'Long', 'long@gmail.com', '0919900743', 'QB\r\n', 18, NULL, NULL),
(12, 'Đào_Duy_Long', 'duylong@gmail.com', '0919900747', 'QB', 19, NULL, NULL),
(13, 'Đào Duy Long2', 'duylong2@gmail.com', '0919900378', 'QB', 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `id` int(10) UNSIGNED NOT NULL,
  `khuyenmai_tieu_de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `khuyenmai_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `khuyenmai_noi_dung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `khuyenmai_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `khuyenmai_phan_tram` int(11) NOT NULL,
  `khuyenmai_thoi_gian` int(11) NOT NULL,
  `khuyenmai_tinh_trang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`id`, `khuyenmai_tieu_de`, `khuyenmai_url`, `khuyenmai_noi_dung`, `khuyenmai_anh`, `khuyenmai_phan_tram`, `khuyenmai_thoi_gian`, `khuyenmai_tinh_trang`, `created_at`, `updated_at`) VALUES
(4, '11/11', '11/11', '<p>Giảm gi&aacute; shock ng&agrave;y 11/11</p>\r\n', 'QC1.png', 11, 30, 1, '2022-12-22 14:28:05', '2022-12-22 14:28:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loainguoidung`
--

CREATE TABLE `loainguoidung` (
  `id` int(10) UNSIGNED NOT NULL,
  `loainguoidung_ten` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loainguoidung`
--

INSERT INTO `loainguoidung` (`id`, `loainguoidung_ten`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `loaisanpham_ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `loaisanpham_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `loaisanpham_mo_ta` longtext COLLATE utf8_unicode_ci,
  `loaisanpham_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loaisanpham_da_xoa` int(11) NOT NULL,
  `nhom_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `loaisanpham_ten`, `loaisanpham_url`, `loaisanpham_mo_ta`, `loaisanpham_anh`, `loaisanpham_da_xoa`, `nhom_id`, `created_at`, `updated_at`) VALUES
(1, 'Nike Air ', 'nike-air-', '<p>Th&ocirc;ng tin thương hiệu Nike</p>\r\n\r\n<p><img alt=\"Nike\" src=\"https://cdn.tgdd.vn/2021/12/Sports/Images/49/logo-nike-216x78.png\" /></p>\r\n\r\n<p>- Thương hiệu của Mỹ.</p>\r\n\r\n<p>- Được th&agrave;nh lập v&agrave;o năm 1964.</p>\r\n\r\n<p>- Th&agrave;nh tựu: Thương hiệu thời trang thể thao số 1 thế giới, t&iacute;nh đến năm 2020.</p>\r\n\r\n<p>- C&aacute;c d&ograve;ng sản phẩm ch&iacute;nh: Nike cung cấp đa dạng c&aacute;c sản phẩm như&nbsp;<a href=\"https://www.avasport.com/giay\" title=\"Mua giày Nike nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">gi&agrave;y thể thao</a>,&nbsp;<a href=\"https://www.avasport.com/quan\" title=\"Mua quần Nike nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">quần thể thao</a>,&nbsp;<a href=\"https://www.avasport.com/ao\" title=\"Mua áo Nike nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">&aacute;o thể thao</a>, dụng cụ, thiết bị v&agrave; phụ kiện thể thao, bao gồm b&oacute;ng rổ, b&oacute;ng đ&aacute;, chạy bộ, leo n&uacute;i.</p>\r\n', 'Logo_nike.png', 1, 1, NULL, NULL),
(2, 'Nike Jordan', 'nike-jordan', '<p>Th&ocirc;ng tin thương hiệu Nike</p>\r\n\r\n<p><img alt=\"Nike\" src=\"https://cdn.tgdd.vn/2021/12/Sports/Images/49/logo-nike-216x78.png\" /></p>\r\n\r\n<p>- Thương hiệu của Mỹ.</p>\r\n\r\n<p>- Được th&agrave;nh lập v&agrave;o năm 1964.</p>\r\n\r\n<p>- Th&agrave;nh tựu: Thương hiệu thời trang thể thao số 1 thế giới, t&iacute;nh đến năm 2020.</p>\r\n\r\n<p>- C&aacute;c d&ograve;ng sản phẩm ch&iacute;nh: Nike cung cấp đa dạng c&aacute;c sản phẩm như&nbsp;<a href=\"https://www.avasport.com/giay\" title=\"Mua giày Nike nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">gi&agrave;y thể thao</a>,&nbsp;<a href=\"https://www.avasport.com/quan\" title=\"Mua quần Nike nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">quần thể thao</a>,&nbsp;<a href=\"https://www.avasport.com/ao\" title=\"Mua áo Nike nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">&aacute;o thể thao</a>, dụng cụ, thiết bị v&agrave; phụ kiện thể thao, bao gồm b&oacute;ng rổ, b&oacute;ng đ&aacute;, chạy bộ, leo n&uacute;i.</p>\r\n', 'Logo_nike.png', 1, 1, NULL, NULL),
(3, 'Nike khác', 'nike-khac', '<p>Th&ocirc;ng tin thương hiệu Nike</p>\r\n\r\n<p><img alt=\"Nike\" src=\"https://cdn.tgdd.vn/2021/12/Sports/Images/49/logo-nike-216x78.png\" /></p>\r\n\r\n<p>- Thương hiệu của Mỹ.</p>\r\n\r\n<p>- Được th&agrave;nh lập v&agrave;o năm 1964.</p>\r\n\r\n<p>- Th&agrave;nh tựu: Thương hiệu thời trang thể thao số 1 thế giới, t&iacute;nh đến năm 2020.</p>\r\n\r\n<p>- C&aacute;c d&ograve;ng sản phẩm ch&iacute;nh: Nike cung cấp đa dạng c&aacute;c sản phẩm như&nbsp;<a href=\"https://www.avasport.com/giay\" title=\"Mua giày Nike nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">gi&agrave;y thể thao</a>,&nbsp;<a href=\"https://www.avasport.com/quan\" title=\"Mua quần Nike nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">quần thể thao</a>,&nbsp;<a href=\"https://www.avasport.com/ao\" title=\"Mua áo Nike nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">&aacute;o thể thao</a>, dụng cụ, thiết bị v&agrave; phụ kiện thể thao, bao gồm b&oacute;ng rổ, b&oacute;ng đ&aacute;, chạy bộ, leo n&uacute;i.</p>\r\n', 'Logo_nike.png', 1, 1, NULL, NULL),
(4, 'Adidas Ultraboost', 'adidas-ultraboost', '<p>Th&ocirc;ng tin thương hiệu Adidas</p>\r\n\r\n<p><img alt=\"Adidas\" src=\"https://cdn.tgdd.vn/2022/04/Sports/Images/2/logo-adidass-216x78.png\" /></p>\r\n\r\n<p>- Thương hiệu của Đức.</p>\r\n\r\n<p>- Được th&agrave;nh lập v&agrave;o năm 1924.</p>\r\n\r\n<p>- Th&agrave;nh tựu: Thương hiệu gi&agrave;y thể thao đứng thứ 2 thế giới chỉ sau Nike, t&iacute;nh đến năm 2020.</p>\r\n\r\n<p>- C&aacute;c d&ograve;ng sản phẩm ch&iacute;nh:&nbsp;<a href=\"https://www.avasport.com/giay\" title=\"Mua giày Adidas nam nữ chính hãng, giá rẻ - Ưu Đãi Hấp Dẫn\">gi&agrave;y thể thao</a>,&nbsp;<a href=\"https://www.avasport.com/quan-ao\" title=\"Mua quần áo Adidas nam nữ chính hãng, giá rẻ - Ưu Đãi Hấp Dẫn\">quần&nbsp;&aacute;o thể thao</a>&nbsp;v&agrave;&nbsp;<a href=\"https://www.avasport.com/phu-kien-the-thao\" title=\"Mua phụ kiện thể thao Adidas nam nữ chính hãng, giá rẻ - Ưu Đãi Hấp Dẫn\">phụ kiện thể thao</a>&nbsp;phục vụ cho nhu cầu luyện tập c&aacute;c m&ocirc;n thể thao phổ biến, ở mọi độ tuổi v&agrave; giới t&iacute;nh.</p>\r\n', 'Logo_Adidas.png', 1, 2, NULL, NULL),
(5, 'Adidas khác', 'adidas-khac', '<p>Th&ocirc;ng tin thương hiệu Adidas</p>\r\n\r\n<p><img alt=\"Adidas\" src=\"https://cdn.tgdd.vn/2022/04/Sports/Images/2/logo-adidass-216x78.png\" /></p>\r\n\r\n<p>- Thương hiệu của Đức.</p>\r\n\r\n<p>- Được th&agrave;nh lập v&agrave;o năm 1924.</p>\r\n\r\n<p>- Th&agrave;nh tựu: Thương hiệu gi&agrave;y thể thao đứng thứ 2 thế giới chỉ sau Nike, t&iacute;nh đến năm 2020.</p>\r\n\r\n<p>- C&aacute;c d&ograve;ng sản phẩm ch&iacute;nh:&nbsp;<a href=\"https://www.avasport.com/giay\" title=\"Mua giày Adidas nam nữ chính hãng, giá rẻ - Ưu Đãi Hấp Dẫn\">gi&agrave;y thể thao</a>,&nbsp;<a href=\"https://www.avasport.com/quan-ao\" title=\"Mua quần áo Adidas nam nữ chính hãng, giá rẻ - Ưu Đãi Hấp Dẫn\">quần&nbsp;&aacute;o thể thao</a>&nbsp;v&agrave;&nbsp;<a href=\"https://www.avasport.com/phu-kien-the-thao\" title=\"Mua phụ kiện thể thao Adidas nam nữ chính hãng, giá rẻ - Ưu Đãi Hấp Dẫn\">phụ kiện thể thao</a>&nbsp;phục vụ cho nhu cầu luyện tập c&aacute;c m&ocirc;n thể thao phổ biến, ở mọi độ tuổi v&agrave; giới t&iacute;nh.</p>\r\n', 'Logo_Adidas.png', 1, 2, NULL, NULL),
(6, 'Puma Nitro', 'puma-nitro', '<p>Th&ocirc;ng tin thương hiệu Puma</p>\r\n\r\n<p><img alt=\"Puma\" src=\"https://cdn.tgdd.vn/2021/12/Sports/Images/54/logo-puma-new-216x78.png\" /></p>\r\n\r\n<p>- Thương hiệu của Đức.</p>\r\n\r\n<p>- Được th&agrave;nh lập v&agrave;o năm 1924.</p>\r\n\r\n<p>- Th&agrave;nh tựu: Puma l&agrave; một trong những thương hiệu gi&agrave;y h&agrave;ng đầu tại Đức v&agrave; thuộc top c&aacute;c sản phẩm thể thao tốt nhất thế giới hiện nay.</p>\r\n\r\n<p>- C&aacute;c d&ograve;ng sản phẩm ch&iacute;nh: Puma c&oacute; 5 d&ograve;ng sản phẩm ch&iacute;nh, được chia theo chức năng gồm phong c&aacute;ch thể thao, sản phẩm cho b&oacute;ng rổ, sản phẩm cho chạy bộ, thể thao đồng đội v&agrave; thể thao m&ocirc; t&ocirc;. Trong từng d&ograve;ng, Puma cung cấp đa dạng sản phẩm từ&nbsp;<a href=\"https://www.avasport.com/giay\" title=\"Mua giày Puma nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">gi&agrave;y thể thao</a>,&nbsp;<a href=\"https://www.avasport.com/quan\" title=\"Mua quần Puma nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">quần</a>,&nbsp;<a href=\"https://www.avasport.com/ao\" title=\"Mua áo Puma nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">&aacute;o</a>&nbsp;thể thao đến c&aacute;c phụ kiện thể thao chuy&ecirc;n dụng.</p>\r\n', 'logo-puma-new-216x78.png', 1, 3, NULL, NULL),
(7, 'Giày Mizuno', 'giay-mizuno', '<p>Gi&agrave;y Mizuno chất lượng cao</p>\r\n', 'Logo_Mizuno.png', 1, 4, NULL, NULL),
(11, 'Áo chính hãng', 'ao-chinh-hang', '<p>&Aacute;o Ch&iacute;nh H&atilde;ng</p>\r\n', 'SPKHAC.jpg', 0, 4, NULL, NULL),
(12, 'Quần chính hãng', 'quan-chinh-hang', '<p>H&agrave;ng ch&iacute;nh h&atilde;ng</p>\r\n', 'SPQUAN.jpg', 0, 4, NULL, NULL),
(13, 'Puma khác', 'puma-khac', '<p>Th&ocirc;ng tin thương hiệu Puma</p>\r\n\r\n<p><img alt=\"Puma\" src=\"https://cdn.tgdd.vn/2021/12/Sports/Images/54/logo-puma-new-216x78.png\" /></p>\r\n\r\n<p>- Thương hiệu của Đức.</p>\r\n\r\n<p>- Được th&agrave;nh lập v&agrave;o năm 1924.</p>\r\n\r\n<p>- Th&agrave;nh tựu: Puma l&agrave; một trong những thương hiệu gi&agrave;y h&agrave;ng đầu tại Đức v&agrave; thuộc top c&aacute;c sản phẩm thể thao tốt nhất thế giới hiện nay.</p>\r\n\r\n<p>- C&aacute;c d&ograve;ng sản phẩm ch&iacute;nh: Puma c&oacute; 5 d&ograve;ng sản phẩm ch&iacute;nh, được chia theo chức năng gồm phong c&aacute;ch thể thao, sản phẩm cho b&oacute;ng rổ, sản phẩm cho chạy bộ, thể thao đồng đội v&agrave; thể thao m&ocirc; t&ocirc;. Trong từng d&ograve;ng, Puma cung cấp đa dạng sản phẩm từ&nbsp;<a href=\"https://www.avasport.com/giay\" title=\"Mua giày Puma nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">gi&agrave;y thể thao</a>,&nbsp;<a href=\"https://www.avasport.com/quan\" title=\"Mua quần Puma nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">quần</a>,&nbsp;<a href=\"https://www.avasport.com/ao\" title=\"Mua áo Puma nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">&aacute;o</a>&nbsp;thể thao đến c&aacute;c phụ kiện thể thao chuy&ecirc;n dụng.</p>\r\n', 'logo-puma-new-216x78.png', 0, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lohang`
--

CREATE TABLE `lohang` (
  `id` int(10) UNSIGNED NOT NULL,
  `lohang_ky_hieu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lohang_han_su_dung` int(11) NOT NULL,
  `lohang_gia_mua_vao` decimal(10,2) NOT NULL,
  `lohang_gia_ban_ra` decimal(10,2) NOT NULL,
  `lohang_so_luong_nhap` int(11) NOT NULL,
  `lohang_so_luong_da_ban` int(11) NOT NULL,
  `lohang_so_luong_doi_tra` int(11) NOT NULL,
  `lohang_so_luong_hien_tai` int(11) NOT NULL,
  `lohang_tinh_trang` int(11) DEFAULT NULL COMMENT '1',
  `sanpham_id` int(10) UNSIGNED NOT NULL,
  `nhacungcap_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lohang`
--

INSERT INTO `lohang` (`id`, `lohang_ky_hieu`, `lohang_han_su_dung`, `lohang_gia_mua_vao`, `lohang_gia_ban_ra`, `lohang_so_luong_nhap`, `lohang_so_luong_da_ban`, `lohang_so_luong_doi_tra`, `lohang_so_luong_hien_tai`, `lohang_tinh_trang`, `sanpham_id`, `nhacungcap_id`, `created_at`, `updated_at`) VALUES
(27, 'NJ001', 100, '5000000.00', '5869000.00', 10, 0, 0, 10, NULL, 17, 4, '2022-11-09 09:41:00', '2022-11-09 09:41:00'),
(28, 'NA001', 1000, '4000000.00', '4490000.00', 100, 0, 0, 100, NULL, 19, 4, '2022-11-09 09:56:14', '2022-11-09 09:56:14'),
(29, 'NA002', 1000, '4000000.00', '4409000.00', 100, 0, 0, 100, NULL, 20, 4, '2022-11-09 10:58:50', '2022-11-09 10:58:50'),
(30, 'NA003', 1000, '4000000.00', '4409000.00', 100, 0, 0, 100, NULL, 21, 4, '2022-11-09 11:02:08', '2022-11-09 11:02:08'),
(31, 'NA004', 1000, '4000000.00', '4699000.00', 100, 0, 0, 100, NULL, 22, 4, '2022-11-09 11:11:12', '2022-11-09 11:11:12'),
(32, 'NK001', 1000, '4000000.00', '4999999.00', 100, 0, 0, 100, NULL, 23, 4, '2022-11-09 11:24:03', '2022-11-09 11:24:03'),
(33, 'NK002', 1000, '5000000.00', '5999999.00', 100, 0, 0, 100, NULL, 24, 4, '2022-11-09 11:24:35', '2022-11-09 11:24:35'),
(34, 'NK003', 1000, '3000000.00', '3790000.00', 100, 0, 0, 100, NULL, 25, 4, '2022-11-09 11:25:19', '2022-11-09 11:25:19'),
(35, 'AU001', 1000, '4000000.00', '4499000.00', 100, 0, 0, 100, NULL, 26, 3, '2022-11-09 11:25:55', '2022-11-09 11:25:55'),
(36, 'AU002', 1000, '3000000.00', '3599000.00', 100, 0, 0, 100, NULL, 27, 3, '2022-11-09 13:34:48', '2022-11-09 13:34:48'),
(37, 'AU003', 1000, '4000000.00', '4399000.00', 100, 0, 0, 100, NULL, 28, 3, '2022-11-09 13:38:07', '2022-11-09 13:38:07'),
(38, 'AU004', 1000, '4000000.00', '5000000.00', 100, 28, 0, 72, NULL, 29, 3, '2022-11-11 13:40:58', '2022-11-11 13:40:58'),
(39, 'AK001', 1000, '3000000.00', '2400000.00', 100, 0, 0, 100, NULL, 30, 3, '2022-12-28 04:49:00', '2022-12-28 04:49:00'),
(40, 'AK002', 1000, '2280000.00', '2850000.00', 100, 0, 0, 100, NULL, 31, 3, '2022-12-28 04:53:46', '2022-12-28 04:53:46'),
(41, 'PN001', 1000, '3199000.00', '3999000.00', 100, 0, 0, 100, NULL, 32, 5, '2022-12-28 04:56:27', '2022-12-28 04:56:27'),
(42, 'PK001', 1000, '2639000.00', '3299000.00', 100, 0, 0, 100, NULL, 33, 5, '2022-12-28 05:13:38', '2022-12-28 05:13:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguyenlieu`
--

CREATE TABLE `nguyenlieu` (
  `thongtin_id` int(10) UNSIGNED NOT NULL,
  `sanpham_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhacungcap_ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nhacungcap_dia_chi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nhacungcap_sdt` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`id`, `nhacungcap_ten`, `nhacungcap_dia_chi`, `nhacungcap_sdt`, `created_at`, `updated_at`) VALUES
(1, 'giayxshop.vn', '<p>Hải Ch&acirc;u - Đ&agrave; Nẵng</p>\r\n', '0123456789', NULL, NULL),
(2, 'Shopgiaydanang', '<p>Thanh Kh&ecirc; - Đ&agrave; Nẵng</p>\r\n', '0123456788', NULL, NULL),
(3, 'Adidas', '<p>Sơn Tr&agrave; - Đ&agrave; Nẵng</p>\r\n', '0123456787', NULL, NULL),
(4, 'Nike', '<p>Li&ecirc;n Chiểu - Đ&agrave; Nẵng</p>\r\n', '0123456786', NULL, NULL),
(5, 'Puma', '<p>Th&agrave;nh Phố Hồ Ch&iacute; Minh</p>\r\n', '0123456985', NULL, NULL),
(6, 'Mizuno', '<p>Hồ Ho&agrave;n Kiếm - H&agrave; Nội</p>\r\n', '0123456783', NULL, NULL),
(7, 'Juno', '<p>Lệ Thuỷ - Quảng B&igrave;nh</p>\r\n', '0123456456', NULL, NULL),
(8, 'Bata', '<p>Tp. Thừa Thi&ecirc;n Huế</p>\r\n', '0123456123', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhom`
--

CREATE TABLE `nhom` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhom_ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nhom_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nhom_mo_ta` text COLLATE utf8_unicode_ci,
  `nhom_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhom`
--

INSERT INTO `nhom` (`id`, `nhom_ten`, `nhom_url`, `nhom_mo_ta`, `nhom_anh`, `created_at`, `updated_at`) VALUES
(1, 'Giày Nike', 'giay-nike', '<p>Th&ocirc;ng tin thương hiệu Nike</p>\r\n\r\n<p><img alt=\"Nike\" src=\"https://cdn.tgdd.vn/2021/12/Sports/Images/49/logo-nike-216x78.png\" /></p>\r\n\r\n<p>- Thương hiệu của Mỹ.</p>\r\n\r\n<p>- Được th&agrave;nh lập v&agrave;o năm 1964.</p>\r\n\r\n<p>- Th&agrave;nh tựu: Thương hiệu thời trang thể thao số 1 thế giới, t&iacute;nh đến năm 2020.</p>\r\n\r\n<p>- C&aacute;c d&ograve;ng sản phẩm ch&iacute;nh: Nike cung cấp đa dạng c&aacute;c sản phẩm như&nbsp;<a href=\"https://www.avasport.com/giay\" title=\"Mua giày Nike nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">gi&agrave;y thể thao</a>,&nbsp;<a href=\"https://www.avasport.com/quan\" title=\"Mua quần Nike nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">quần thể thao</a>,&nbsp;<a href=\"https://www.avasport.com/ao\" title=\"Mua áo Nike nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">&aacute;o thể thao</a>, dụng cụ, thiết bị v&agrave; phụ kiện thể thao, bao gồm b&oacute;ng rổ, b&oacute;ng đ&aacute;, chạy bộ, leo n&uacute;i.</p>\r\n', 'Logo_nike.png', NULL, NULL),
(2, 'Giày Adidas', 'giay-adidas', '<p>Th&ocirc;ng tin thương hiệu Adidas</p>\r\n\r\n<p><img alt=\"Adidas\" src=\"https://cdn.tgdd.vn/2022/04/Sports/Images/2/logo-adidass-216x78.png\" /></p>\r\n\r\n<p>- Thương hiệu của Đức.</p>\r\n\r\n<p>- Được th&agrave;nh lập v&agrave;o năm 1924.</p>\r\n\r\n<p>- Th&agrave;nh tựu: Thương hiệu gi&agrave;y thể thao đứng thứ 2 thế giới chỉ sau Nike, t&iacute;nh đến năm 2020.</p>\r\n\r\n<p>- C&aacute;c d&ograve;ng sản phẩm ch&iacute;nh:&nbsp;<a href=\"https://www.avasport.com/giay\" title=\"Mua giày Adidas nam nữ chính hãng, giá rẻ - Ưu Đãi Hấp Dẫn\">gi&agrave;y thể thao</a>,&nbsp;<a href=\"https://www.avasport.com/quan-ao\" title=\"Mua quần áo Adidas nam nữ chính hãng, giá rẻ - Ưu Đãi Hấp Dẫn\">quần&nbsp;&aacute;o thể thao</a>&nbsp;v&agrave;&nbsp;<a href=\"https://www.avasport.com/phu-kien-the-thao\" title=\"Mua phụ kiện thể thao Adidas nam nữ chính hãng, giá rẻ - Ưu Đãi Hấp Dẫn\">phụ kiện thể thao</a>&nbsp;phục vụ cho nhu cầu luyện tập c&aacute;c m&ocirc;n thể thao phổ biến, ở mọi độ tuổi v&agrave; giới t&iacute;nh.</p>\r\n', 'Logo_Adidas.png', NULL, NULL),
(3, 'Giày Puma', 'giay-puma', '<p>Th&ocirc;ng tin thương hiệu Puma</p>\r\n\r\n<p><img alt=\"Puma\" src=\"https://cdn.tgdd.vn/2021/12/Sports/Images/54/logo-puma-new-216x78.png\" /></p>\r\n\r\n<p>- Thương hiệu của Đức.</p>\r\n\r\n<p>- Được th&agrave;nh lập v&agrave;o năm 1924.</p>\r\n\r\n<p>- Th&agrave;nh tựu: Puma l&agrave; một trong những thương hiệu gi&agrave;y h&agrave;ng đầu tại Đức v&agrave; thuộc top c&aacute;c sản phẩm thể thao tốt nhất thế giới hiện nay.</p>\r\n\r\n<p>- C&aacute;c d&ograve;ng sản phẩm ch&iacute;nh: Puma c&oacute; 5 d&ograve;ng sản phẩm ch&iacute;nh, được chia theo chức năng gồm phong c&aacute;ch thể thao, sản phẩm cho b&oacute;ng rổ, sản phẩm cho chạy bộ, thể thao đồng đội v&agrave; thể thao m&ocirc; t&ocirc;. Trong từng d&ograve;ng, Puma cung cấp đa dạng sản phẩm từ&nbsp;<a href=\"https://www.avasport.com/giay\" title=\"Mua giày Puma nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">gi&agrave;y thể thao</a>,&nbsp;<a href=\"https://www.avasport.com/quan\" title=\"Mua quần Puma nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">quần</a>,&nbsp;<a href=\"https://www.avasport.com/ao\" title=\"Mua áo Puma nam nữ chính hãng, đẹp, giá rẻ - Ưu đãi hấp dẫn\">&aacute;o</a>&nbsp;thể thao đến c&aacute;c phụ kiện thể thao chuy&ecirc;n dụng.</p>\r\n', 'logo-puma-new-216x78.png', NULL, NULL),
(4, 'Sẩn phẩm khác', 'san-pham-khac', '<p>H&agrave;ng ch&iacute;nh h&atilde;ng</p>\r\n', 'SPKHAC.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quangcao`
--

CREATE TABLE `quangcao` (
  `id` int(10) UNSIGNED NOT NULL,
  `quangcao_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quangcao_trang_thai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quangcao`
--

INSERT INTO `quangcao` (`id`, `quangcao_anh`, `quangcao_trang_thai`, `created_at`, `updated_at`) VALUES
(3, 'QC1.png', 1, NULL, NULL),
(4, 'QC2.png', 1, NULL, NULL),
(6, 'QC4.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `sanpham_ky_hieu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sanpham_ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sanpham_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sanpham_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sanpham_mo_ta` longtext COLLATE utf8_unicode_ci NOT NULL,
  `loaisanpham_id` int(10) UNSIGNED NOT NULL,
  `donvitinh_id` int(10) UNSIGNED NOT NULL,
  `sanpham_khuyenmai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `sanpham_ky_hieu`, `sanpham_ten`, `sanpham_url`, `sanpham_anh`, `sanpham_mo_ta`, `loaisanpham_id`, `donvitinh_id`, `sanpham_khuyenmai`, `created_at`, `updated_at`) VALUES
(17, 'NJ001', 'Giày Bóng Rổ Nam Nike Jordan CZ4166-102', 'giay-bong-ro-nam-nike-jordan-cz4166-102', 'NJ001_1.jpg', '<p>Đặc điểm nổi bật:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.avasport.com/giay/giay-bong-ro-nam-nike-jordan-point-lane-cz4166-102\" target=\"_blank\" title=\"Xem thêm Giày Bóng Rổ Nam Nike Jordan Point Lane CZ4166-102 chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm Giày Bóng Rổ Nam Nike Jordan Point Lane CZ4166-102 chính hãng, đang kinh doanh tại AVASport\">Gi&agrave;y b&oacute;ng rổ nam Nike Jordan Point Lane CZ4166-102</a>&nbsp;với chất liệu th&acirc;n được l&agrave;m từ&nbsp;22% sợi tổng hợp, 26% sợi dệt, 52% Leather, c&oacute; khả năng tho&aacute;ng kh&iacute; v&agrave; mang lại cảm gi&aacute;c &ecirc;m &aacute;i cho b&agrave;n ch&acirc;n</li>\r\n	<li>C&ocirc;ng nghệ&nbsp;Air max của&nbsp;<a href=\"https://www.avasport.com/giay-nike\" target=\"_blank\" title=\"Xem thêm giày Nike chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày Nike chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y Nike</a>&nbsp;gi&uacute;p tăng độ nảy v&agrave; l&agrave;m giảm thương chấn cơ học cho b&agrave;n ch&acirc;n khi di chuyển, tập luyện</li>\r\n	<li>Kiểu d&aacute;ng&nbsp;<a href=\"https://www.avasport.com/giay\" target=\"_blank\" title=\"Xem thêm giày dép chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày dép chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y</a>&nbsp;cổ thấp năng động, tiện lợi v&agrave; ph&ugrave; hợp với mọi đối tượng</li>\r\n</ul>\r\n\r\n<p>Th&ocirc;ng tin chi tiết</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thương hi&ecirc;̣u</p>\r\n\r\n	<p>Nike (Mỹ)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&ugrave; hợp với</p>\r\n\r\n	<p>Nam</p>\r\n	</li>\r\n	<li>\r\n	<p>M&ocirc;n th&ecirc;̉ thao</p>\r\n\r\n	<p>B&oacute;ng rổ</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại giày</p>\r\n\r\n	<p>Thể thao chuy&ecirc;n dụng</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu th&acirc;n</p>\r\n\r\n	<p>52% Leather</p>\r\n\r\n	<p>22% Sợi tổng hợp</p>\r\n\r\n	<p>26% Sợi dệt</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp l&oacute;t trong</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ</p>\r\n\r\n	<p>Air Max</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu đế</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng</p>\r\n\r\n	<p>Gi&agrave;y cổ thấp</p>\r\n	</li>\r\n	<li>\r\n	<p>Khối lượng</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng tin cảnh b&aacute;o</p>\r\n\r\n	<p>An to&agrave;n cho người sử dụng</p>\r\n	</li>\r\n</ul>\r\n', 2, 1, 1, '2022-11-09 09:39:59', '2022-11-09 09:50:43'),
(19, 'NA001', 'Giày Lifestyle Nữ Nike Air Max CJ0619-001', 'giay-lifestyle-nu-nike-air-max-cj0619-001', 'NA001_1.jpg', '<p>Đặc điểm nổi bật:</p>\r\n\r\n<ul>\r\n	<li>Th&acirc;n&nbsp;<a href=\"https://www.avasport.com/giay/giay-lifestyle-nu-nike-air-max-270-react-cj0619-001\" target=\"_blank\" title=\"Xem thêm giày Lifestyle Nữ Nike Air Max 270 React CJ0619-001 chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày Lifestyle Nữ Nike Air Max 270 React CJ0619-001 chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y&nbsp;Nike Air Max 270 React CJ0619-001</a>&nbsp;được l&agrave;m từ vải dệt c&oacute; độ bền dẻo cao v&agrave; khả năng chống nước tốt</li>\r\n	<li><a href=\"https://avasport.com/giay-nike\" target=\"_blank\" title=\"Xem thêm giày Nike chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày Nike chính hãng, đang kinh doanh tại AVASport\">Gi&agrave;y Nike</a>&nbsp;sở hữu c&ocirc;ng nghệ Air max chứa miếng đệm kh&ocirc;ng kh&iacute; giảm c&aacute;c chấn động khi luyện tập, Nike React được thiết kế để l&agrave;m giảm c&aacute;c chấn thương, tăng độ linh hoạt</li>\r\n	<li>Với thiết kế kiểu d&aacute;ng&nbsp;<a href=\"https://www.avasport.com/giay\" target=\"_blank\" title=\"Xem thêm giày dép chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày dép chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y</a>&nbsp;cổ thấp dễ d&agrave;ng hơn trong c&aacute;c b&agrave;i tập cổ ch&acirc;n</li>\r\n</ul>\r\n\r\n<p>Th&ocirc;ng tin chi tiết</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thương hi&ecirc;̣u</p>\r\n\r\n	<p>Nike (Mỹ)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&ugrave; hợp với</p>\r\n\r\n	<p>Nữ</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại giày</p>\r\n\r\n	<p>Thể thao lifestyle (thời trang)</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu th&acirc;n</p>\r\n\r\n	<p>Vải dệt</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp l&oacute;t trong</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ</p>\r\n\r\n	<p>Nike React</p>\r\n\r\n	<p>Air Max</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu đế</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng</p>\r\n\r\n	<p>Gi&agrave;y cổ thấp</p>\r\n	</li>\r\n	<li>\r\n	<p>Khối lượng</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng tin cảnh b&aacute;o</p>\r\n\r\n	<p>An to&agrave;n cho người sử dụng</p>\r\n	</li>\r\n</ul>\r\n', 1, 1, 0, '2022-11-09 09:52:16', '2022-11-09 09:52:16'),
(20, 'NA002', 'Giày Lifestyle Nữ Nike Air Max CV8818-102', 'giay-lifestyle-nu-nike-air-max-cv8818-102', 'NA002_1.jpg', '<p>Đặc điểm nổi bật:</p>\r\n\r\n<ul>\r\n	<li>Th&acirc;n&nbsp;<a href=\"https://www.avasport.com/giay\" title=\"Xem thêm các mẫu giày dép chính hãng, giá rẻ tại Avasport\" type=\"Xem thêm các mẫu giày dép chính hãng, giá rẻ tại Avasport\">gi&agrave;y</a>&nbsp;được l&agrave;m từ 17% sợi dệt v&agrave; 83% sợi tổng hợp mỏng nhẹ, co gi&atilde;n tốt, th&ocirc;ng tho&aacute;ng, dễ l&agrave;m sạch</li>\r\n	<li>C&ocirc;ng nghệ&nbsp;<a href=\"https://www.avasport.com/giay-airmax\" title=\"Xem thêm các dòng giày Nike Air max chính hãng đang kinh doanh tại Avasport\" type=\"Xem thêm các dòng giày Nike Air max chính hãng đang kinh doanh tại Avasport\">Air max</a>&nbsp;th&iacute;ch hợp với hoạt động chạy nhảy li&ecirc;n tục, bền hơn v&agrave; nh&uacute;n tốt hơn khi sử dụng thường xuy&ecirc;n</li>\r\n	<li>Đế cao su đ&agrave;n hồi tốt, độ bền cao, bề mặt &ecirc;m &aacute;i, an to&agrave;n cho người sử dụng</li>\r\n	<li><a href=\"https://www.avasport.com/giay/giay-lifestyle-nu-nike-air-max-270-react-cv8818-102\" title=\"Giày Lifestyle Nữ Nike Air Max 270 React CV8818-102 chính hãng đang kinh doanh tại Avasport\" type=\"Giày Lifestyle Nữ Nike Air Max 270 React CV8818-102 chính hãng đang kinh doanh tại Avasport\">Nike Air Max 270 React CV8818-102</a>&nbsp;l&agrave; kiểu d&aacute;ng gi&agrave;y cổ thấp truyền thống, mang lại cảm gi&aacute;c cổ điển, thoải m&aacute;i khi mang, ph&ugrave; hợp nhiều đối tượng</li>\r\n</ul>\r\n\r\n<p>Th&ocirc;ng tin chi tiết</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thương hi&ecirc;̣u</p>\r\n\r\n	<p>Nike (Mỹ)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&ugrave; hợp với</p>\r\n\r\n	<p>Nữ</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại giày</p>\r\n\r\n	<p>Thể thao lifestyle (thời trang)</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu th&acirc;n</p>\r\n\r\n	<p>83% Sợi tổng hợp</p>\r\n\r\n	<p>17% Sợi dệt</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp l&oacute;t trong</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ</p>\r\n\r\n	<p>Nike React</p>\r\n\r\n	<p>Air Max</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu đế</p>\r\n\r\n	<p>Cao su</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng</p>\r\n\r\n	<p>Gi&agrave;y cổ thấp</p>\r\n	</li>\r\n	<li>\r\n	<p>Khối lượng</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng tin cảnh b&aacute;o</p>\r\n\r\n	<p>An to&agrave;n cho người sử dụng</p>\r\n	</li>\r\n</ul>\r\n', 1, 1, 0, '2022-11-09 10:58:03', '2022-11-09 10:58:03'),
(21, 'NA003', 'Giày Lifestyle Nữ Nike Air Max CV8818-500', 'giay-lifestyle-nu-nike-air-max-cv8818-500', 'NA003_1.jpg', '<p>Đặc điểm nổi bật:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.avasport.com/giay/giay-lifestyle-nu-nike-air-max-270-react-cv8818-500\" target=\"_blank\" title=\"Giày Nike Air Max 270 React CV8818-500 chính hãng, đang kinh doanh tại AVASport\" type=\"Giày Nike Air Max 270 React CV8818-500 chính hãng, đang kinh doanh tại AVASport\">Nike Air Max 270 React CV8818-500</a>&nbsp;được l&agrave;m từ 17% sợi dệt, 83% sợi tổng hợp gi&uacute;p tho&aacute;ng kh&iacute; tốt</li>\r\n	<li><a href=\"https://www.avasport.com/giay-nike\" target=\"_blank\" title=\"Xem thêm các sản phẩm giày Nike chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm các sản phẩm giày Nike chính hãng, đang kinh doanh tại AVASport\">Gi&agrave;y Nike</a>&nbsp;sở hữu c&ocirc;ng nghệ Air max c&oacute; đệm chứa kh&ocirc;ng kh&iacute; nhằm giảm c&aacute;c chấn động</li>\r\n	<li>Bộ đế cao su gi&uacute;p b&aacute;m đường tốt hơn v&agrave; an to&agrave;n khi vận động</li>\r\n	<li>Kiểu d&aacute;ng&nbsp;<a href=\"https://www.avasport.com/giay\" target=\"_blank\" title=\"Xem thêm các loại giày dép chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm các loại giày dép chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y</a>&nbsp;cổ thấp linh hoạt, ph&ugrave; hợp để mang hằng ng&agrave;y</li>\r\n</ul>\r\n\r\n<p>Th&ocirc;ng tin chi tiết</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thương hi&ecirc;̣u</p>\r\n\r\n	<p>Nike (Mỹ)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&ugrave; hợp với</p>\r\n\r\n	<p>Nữ</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại giày</p>\r\n\r\n	<p>Thể thao lifestyle (thời trang)</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu th&acirc;n</p>\r\n\r\n	<p>83% Sợi tổng hợp</p>\r\n\r\n	<p>17% Sợi dệt</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp l&oacute;t trong</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ</p>\r\n\r\n	<p>Nike React</p>\r\n\r\n	<p>Air Max</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu đế</p>\r\n\r\n	<p>Cao su</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng</p>\r\n\r\n	<p>Gi&agrave;y cổ thấp</p>\r\n	</li>\r\n	<li>\r\n	<p>Khối lượng</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng tin cảnh b&aacute;o</p>\r\n\r\n	<p>An to&agrave;n cho người sử dụng</p>\r\n	</li>\r\n</ul>\r\n', 1, 1, 0, '2022-11-09 11:01:26', '2022-11-09 11:01:26'),
(22, 'NA004', 'Giày Lifestyle Nam Nike Air Max DH4245-400', 'giay-lifestyle-nam-nike-air-max-dh4245-400', 'NA004_1.jpg', '<p>Đặc điểm nổi bật:</p>\r\n\r\n<ul>\r\n	<li>Sử dụng 58% sợi tổng hợp c&ugrave;ng 42% sợi dệt mang lại cho&nbsp;<a href=\"https://www.avasport.com/giay-nike\" target=\"_blank\" title=\"Xem thêm giày Nike chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày Nike chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y Nike</a>&nbsp;độ bền v&agrave; độ đ&agrave;n hồi tốt, t&iacute;nh thẩm mỹ cao v&agrave; dễ d&agrave;ng vệ sinh hơn.</li>\r\n	<li><a href=\"https://www.avasport.com/giay/giay-lifestyle-nam-nike-air-max-2021-dh4245-400\" target=\"_blank\" title=\"Nike Air Max 2021 DH4245-400 chính hãng, đang kinh doanh tại AVASport\" type=\"Nike Air Max 2021 DH4245-400 chính hãng, đang kinh doanh tại AVASport\">Nike Air Max 2021 DH4245-400</a>&nbsp;với c&ocirc;ng nghệ&nbsp;Air Max sẽ mang lại trải nghiệm tuyệt vời hơn cho bạn mỗi khi sử dụng.</li>\r\n	<li>Đế&nbsp;<a href=\"https://www.avasport.com/giay\" target=\"_blank\" title=\"Xem thêm giày dép chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày dép chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y</a>&nbsp;cao su sẽ gi&uacute;p chống trơn trượt v&agrave; chống m&agrave;i m&ograve;n hiệu quả hơn.</li>\r\n</ul>\r\n\r\n<p>Th&ocirc;ng tin chi tiết</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thương hi&ecirc;̣u</p>\r\n\r\n	<p>Nike (Mỹ)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&ugrave; hợp với</p>\r\n\r\n	<p>Nam</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại giày</p>\r\n\r\n	<p>Thể thao lifestyle (thời trang)</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu th&acirc;n</p>\r\n\r\n	<p>58% Sợi tổng hợp</p>\r\n\r\n	<p>42% Sợi dệt</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp l&oacute;t trong</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ</p>\r\n\r\n	<p>Air Max</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu đế</p>\r\n\r\n	<p>Cao su</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng</p>\r\n\r\n	<p>Gi&agrave;y cổ thấp</p>\r\n	</li>\r\n	<li>\r\n	<p>Khối lượng</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng tin cảnh b&aacute;o</p>\r\n\r\n	<p>An to&agrave;n cho người sử dụng</p>\r\n	</li>\r\n</ul>\r\n', 1, 1, 0, '2022-11-09 11:08:32', '2022-11-09 11:08:32'),
(23, 'NK001', 'Giày Bóng Rổ Unisex Nike CV7562-104', 'giay-bong-ro-unisex-nike-cv7562-104', 'NK001_1.jpg', '<p>Đặc điểm nổi bật:</p>\r\n\r\n<ul>\r\n	<li>Th&acirc;n&nbsp;<a href=\"https://www.avasport.com/giay/giay-bong-ro-unisex-nike-lebron-xviii-low-cv7562-104\" target=\"_blank\" title=\"Xem thêm giày  Nike Lebron Xviii Low CV7562-104 chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày  Nike Lebron Xviii Low CV7562-104 chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y&nbsp;Nike Lebron Xviii Low CV7562-104</a>&nbsp;được l&agrave;m từ 36% sợi dệt, 64% sợi tổng hợp th&ocirc;ng tho&aacute;ng kh&oacute; b&aacute;m bụi, dễ d&agrave;ng vệ sinh gi&agrave;y</li>\r\n	<li>Đế&nbsp;<a href=\"https://www.avasport.com/giay\" target=\"_blank\" title=\"Xem thêm giày dép chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày dép chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y</a>&nbsp;c&oacute; nhiều gai l&agrave;m tăng độ ma s&aacute;t, chống trơn trượt mỗi khi vận động</li>\r\n	<li>Kiểu d&aacute;ng&nbsp;<a href=\"https://www.avasport.com/giay-nike\" target=\"_blank\" title=\"Xem thêm giày Nike chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày Nike chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y Nike</a>&nbsp;cổ cao c&aacute; t&iacute;nh, thời trang, bảo vệ ch&acirc;n tốt khi chơi thể thao</li>\r\n</ul>\r\n\r\n<p>Th&ocirc;ng tin chi tiết</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thương hi&ecirc;̣u</p>\r\n\r\n	<p>Nike (Mỹ)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&ugrave; hợp với</p>\r\n\r\n	<p>Unisex</p>\r\n	</li>\r\n	<li>\r\n	<p>M&ocirc;n th&ecirc;̉ thao</p>\r\n\r\n	<p>B&oacute;ng rổ</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại giày</p>\r\n\r\n	<p>Thể thao chuy&ecirc;n dụng</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu th&acirc;n</p>\r\n\r\n	<p>64% Sợi tổng hợp</p>\r\n\r\n	<p>36% Sợi dệt</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp l&oacute;t trong</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu đế</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng</p>\r\n\r\n	<p>Gi&agrave;y cổ thấp</p>\r\n	</li>\r\n	<li>\r\n	<p>Khối lượng</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng tin cảnh b&aacute;o</p>\r\n\r\n	<p>An to&agrave;n cho người sử dụng</p>\r\n	</li>\r\n</ul>\r\n', 3, 1, 0, '2022-11-09 11:15:02', '2022-11-09 11:15:02'),
(24, 'NK002', 'Giày Nike React Infinity Run Fk 2 Prm DH2497-600', 'giay-nike-react-infinity-run-fk-2-prm-dh2497-600', 'NK002_1.jpg', '<p>Đặc điểm nổi bật:</p>\r\n\r\n<ul>\r\n	<li>Th&acirc;n&nbsp;<a href=\"https://www.avasport.com/giay/giay-chay-bo-nu-nike-w-react-infinity-run-fk-2-prm-dh2497-600\" target=\"_blank\" title=\"Xem thêm giày Nike W React Infinity Run Fk 2 Prm DH2497-600 chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày Nike W React Infinity Run Fk 2 Prm DH2497-600 chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y Nike W React Infinity Run Fk 2 Prm DH2497-600</a>&nbsp;được l&agrave;m từ chất liệu 82% sợi dệt, 18% sợi tổng hợp mang lại cảm gi&aacute;c &ecirc;m &aacute;i, độ bền cao, &iacute;t b&aacute;m bẩn, dễ d&agrave;ng lau ch&ugrave;i</li>\r\n	<li>Mẫu&nbsp;<a href=\"https://www.avasport.com/giay\" target=\"_blank\" title=\"Xem thêm giày dép chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày dép chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y</a>&nbsp;cổ thấp tạo sự trẻ trung, năng động, ph&ugrave; hợp cho c&aacute;c bạn nữ thường xuy&ecirc;n chạy bộ</li>\r\n</ul>\r\n\r\n<p>Th&ocirc;ng tin chi tiết</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thương hi&ecirc;̣u</p>\r\n\r\n	<p>Nike (Mỹ)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&ugrave; hợp với</p>\r\n\r\n	<p>Nữ</p>\r\n	</li>\r\n	<li>\r\n	<p>M&ocirc;n th&ecirc;̉ thao</p>\r\n\r\n	<p>Chạy bộ/ Đi bộ</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại giày</p>\r\n\r\n	<p>Thể thao chuy&ecirc;n dụng</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu th&acirc;n</p>\r\n\r\n	<p>18% Sợi tổng hợp</p>\r\n\r\n	<p>82% Sợi dệt</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp l&oacute;t trong</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ</p>\r\n\r\n	<p>Nike Flywire</p>\r\n\r\n	<p>Nike React</p>\r\n\r\n	<p>Flyknit</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu đế</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng</p>\r\n\r\n	<p>Gi&agrave;y cổ thấp</p>\r\n	</li>\r\n	<li>\r\n	<p>Khối lượng</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng tin cảnh b&aacute;o</p>\r\n\r\n	<p>An to&agrave;n cho người sử dụng</p>\r\n	</li>\r\n</ul>\r\n', 3, 1, 0, '2022-11-09 11:17:11', '2022-12-28 03:36:56'),
(25, 'NK003', 'Giày Bóng Rổ Nike Nam Kyrie Infinity Ep DC9134-400', 'giay-bong-ro-nike-nam-kyrie-infinity-ep-dc9134-400', 'NK003_1.jpg', '<p>Đặc điểm nổi bật:</p>\r\n\r\n<ul>\r\n	<li>Được l&agrave;m từ Polyester mang lại cho đ&ocirc;i&nbsp;<a href=\"https://www.avasport.com/giay\" target=\"_blank\" title=\"Xem thêm giày dép chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày dép chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y</a>&nbsp;sự bền bỉ, dễ d&agrave;ng vệ sinh, giữ form gi&agrave;y tốt sau một thời gian sử dụng</li>\r\n	<li>Sở hữu c&ocirc;ng nghệ Air Zoom hỗ trợ tối đa cho việc phản hồi lực, gi&uacute;p cho đ&ocirc;i&nbsp;<a href=\"https://www.avasport.com/giay-nike\" target=\"_blank\" title=\"Xem thêm giày Nike chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày Nike chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y Nike</a>&nbsp;rất th&iacute;ch hợp cho bộ m&ocirc;n b&oacute;ng rổ</li>\r\n	<li><a href=\"https://www.avasport.com/giay/giay-bong-ro-nam-nike-kyrie-infinity-ep-dc9134-400\" target=\"_blank\" title=\"Giày Bóng Rổ Nam Nike Kyrie Infinity Ep DC9134-400 chính hãng, đang kinh doanh tại AVASport\" type=\"Giày Bóng Rổ Nam Nike Kyrie Infinity Ep DC9134-400 chính hãng, đang kinh doanh tại AVASport\">Nike Kyrie Infinity Ep DC9134-400</a>&nbsp;c&oacute;&nbsp;đế cao su với khả năng b&aacute;m đường tốt, hạn chế trơn trượt</li>\r\n</ul>\r\n\r\n<p>Th&ocirc;ng tin chi tiết</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thương hi&ecirc;̣u</p>\r\n\r\n	<p>Nike (Mỹ)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&ugrave; hợp với</p>\r\n\r\n	<p>Nam</p>\r\n	</li>\r\n	<li>\r\n	<p>M&ocirc;n th&ecirc;̉ thao</p>\r\n\r\n	<p>B&oacute;ng rổ</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại giày</p>\r\n\r\n	<p>Thể thao chuy&ecirc;n dụng</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu th&acirc;n</p>\r\n\r\n	<p>Polyester</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp l&oacute;t trong</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ</p>\r\n\r\n	<p><a href=\"https://www.avasport.com/sportlife/cong-nghe-nike-air-zoom-la-gi-air-zoom-co-tren-1435314\" target=\"_blank\">Air Zoom</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu đế</p>\r\n\r\n	<p>Cao su</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng</p>\r\n\r\n	<p>Gi&agrave;y cổ cao</p>\r\n	</li>\r\n	<li>\r\n	<p>Khối lượng</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng tin cảnh b&aacute;o</p>\r\n\r\n	<p>An to&agrave;n cho người sử dụng</p>\r\n	</li>\r\n</ul>\r\n', 3, 1, 0, '2022-11-09 11:19:20', '2022-11-09 11:19:20'),
(26, 'AU001', 'Giày Chạy Bộ Unisex Adidas Ultraboost FX0031', 'giay-chay-bo-unisex-adidas-ultraboost-fx0031', 'AU001_1.jpg', '<p>Đặc điểm nổi bật:</p>\r\n\r\n<ul>\r\n	<li>Phần th&acirc;n&nbsp;<a href=\"https://www.avasport.com/giay\" target=\"_blank\" title=\"Xem thêm giày chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y</a>&nbsp;sử dụng chất liệu vải dệt c&oacute; độ bền cao c&ugrave;ng khả năng chống phai m&agrave;u tốt, dễ d&agrave;ng vệ sinh lại khi cần thiết</li>\r\n	<li>Sử dụng c&ocirc;ng nghệ Boost c&oacute; cơ chế đ&agrave;n hồi v&agrave; ho&agrave;n trả năng lượng tối ưu gi&uacute;p tạo cảm gi&aacute;c thoải m&aacute;i cho đ&ocirc;i ch&acirc;n</li>\r\n	<li>Đế&nbsp;<a href=\"https://www.avasport.com/giay-adidas\" target=\"_blank\" title=\"Xem thêm giày Adidas chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày Adidas chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y Adidas</a>&nbsp;l&agrave;m bằng cao su c&oacute; khả năng chống m&agrave;i m&ograve;n cao c&ugrave;ng độ b&aacute;m d&iacute;nh với đất tốt, tốc độ biến dạng thấp</li>\r\n	<li>Với chất liệu v&agrave; c&ocirc;ng nghệ tho&aacute;ng kh&iacute;,&nbsp;<a href=\"https://www.avasport.com/giay/giay-chay-bo-nam-adidas-ultraboost-srdy-tyo-fx0031\" target=\"_blank\" title=\"Xem thêm Giày Chạy Bộ Nam Adidas ULTRABOOST S.RDY TYO FX0031 chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm Giày Chạy Bộ Nam Adidas ULTRABOOST S.RDY TYO FX0031 chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y Adidas FX0031</a>&nbsp;sẽ l&agrave; lựa chọn ph&ugrave; hợp của c&aacute;c bạn nam chạy bộ v&agrave;o những ng&agrave;y n&oacute;ng</li>\r\n</ul>\r\n\r\n<p>Th&ocirc;ng tin chi tiết</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thương hi&ecirc;̣u</p>\r\n\r\n	<p>Adidas (Đức)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&ugrave; hợp với</p>\r\n\r\n	<p>Unisex</p>\r\n	</li>\r\n	<li>\r\n	<p>M&ocirc;n th&ecirc;̉ thao</p>\r\n\r\n	<p>Chạy bộ/ Đi bộ</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại giày</p>\r\n\r\n	<p>Thể thao chuy&ecirc;n dụng</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu th&acirc;n</p>\r\n\r\n	<p>Vải dệt</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp l&oacute;t trong</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ</p>\r\n\r\n	<p>Boost</p>\r\n\r\n	<p>Primeblue</p>\r\n\r\n	<p>Adidas Primeknit</p>\r\n\r\n	<p>SUMMER.RDY</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu đế</p>\r\n\r\n	<p>Cao su Continental</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng</p>\r\n\r\n	<p>Gi&agrave;y cổ thấp</p>\r\n	</li>\r\n	<li>\r\n	<p>Khối lượng</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng tin cảnh b&aacute;o</p>\r\n\r\n	<p>An to&agrave;n cho người sử dụng</p>\r\n	</li>\r\n</ul>\r\n', 4, 1, 1, '2022-11-09 11:22:36', '2022-11-09 11:22:36'),
(27, 'AU002', 'Giày Chạy Bộ Nữ Adidas Solar Glide 5 W GX6719', 'giay-chay-bo-nu-adidas-solar-glide-5-w-gx6719', 'AU002_1.jpg', '<p>Đặc điểm nổi bật:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.avasport.com/giay/giay-chay-bo-nu-adidas-solar-glide-5-w-gx6719\" target=\"_blank\" title=\"Giày chạy bộ nữ Adidas SOLAR GLIDE 5 W GX6719 chính hãng, đang kinh doanh tại AVASport\" type=\"Giày chạy bộ nữ Adidas SOLAR GLIDE 5 W GX6719 chính hãng, đang kinh doanh tại AVASport\">Adidas GX6719</a>&nbsp;mang tr&ecirc;n m&igrave;nh phần th&acirc;n với chất liệu vải dệt kim tr&ograve;n giữ nhiệt tốt nhưng vẫn kh&ocirc;ng cản trở qu&aacute; tr&igrave;nh tho&aacute;ng kh&iacute; tạo cảm gi&aacute;c dễ chịu cho người d&ugrave;ng.</li>\r\n	<li>C&ocirc;ng nghệ Boost được ứng dụng trong qu&aacute; tr&igrave;nh sản xuất, gi&uacute;p&nbsp;<a href=\"https://www.avasport.com/giay-adidas\" target=\"_blank\" title=\"Xem thêm các loại giày dép chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm các loại giày dép chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y</a>&nbsp;c&oacute; khả năng ho&agrave;n trả năng lượng tuyệt vời khi chạy, đồng thời tạo sự &ecirc;m &aacute;i khi sử dụng.</li>\r\n	<li>Đế được l&agrave;m từ Continental&trade; Rubber gi&uacute;p cho&nbsp;<a href=\"https://www.avasport.com/giay-adidas\" target=\"_blank\" title=\"Xem thêm các sản phẩm giày Adidas chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm các sản phẩm giày Adidas chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y Adidas</a>&nbsp;c&oacute; độ b&aacute;m cao, an to&agrave;n khi tập luyện.</li>\r\n</ul>\r\n\r\n<p>Th&ocirc;ng tin chi tiết</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thương hi&ecirc;̣u</p>\r\n\r\n	<p>Adidas (Đức)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&ugrave; hợp với</p>\r\n\r\n	<p>Nữ</p>\r\n	</li>\r\n	<li>\r\n	<p>M&ocirc;n th&ecirc;̉ thao</p>\r\n\r\n	<p>Chạy bộ/ Đi bộ</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại giày</p>\r\n\r\n	<p>Thể thao chuy&ecirc;n dụng</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu th&acirc;n</p>\r\n\r\n	<p>Vải dệt kim tr&ograve;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp l&oacute;t trong</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ</p>\r\n\r\n	<p>Boost</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu đế</p>\r\n\r\n	<p>Continental&trade; Rubber</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng</p>\r\n\r\n	<p>Gi&agrave;y cổ thấp</p>\r\n	</li>\r\n	<li>\r\n	<p>Khối lượng</p>\r\n\r\n	<p>335 g</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng tin cảnh b&aacute;o</p>\r\n\r\n	<p>An to&agrave;n cho người sử dụng</p>\r\n	</li>\r\n</ul>\r\n', 4, 1, 1, '2022-11-09 13:34:23', '2022-11-09 13:34:23'),
(28, 'AU003', 'Giày Chạy Bộ Nữ Adidas Ultraboost GZ1540-6', 'giay-chay-bo-nu-adidas-ultraboost-gz1540-6', 'AU003_1.jpg', '<p>Đặc điểm nổi bật:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.avasport.com/giay/giay-chay-bo-nu-adidas-ultraboost-50-dna-gz1540\" target=\"_blank\" title=\"Xem thêm giày Adidas ULTRABOOST 5.0 DNA GZ1540 chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày Adidas ULTRABOOST 5.0 DNA GZ1540 chính hãng, đang kinh doanh tại AVASport\">Gi&agrave;y&nbsp;Adidas ULTRABOOST 5.0 DNA GZ1540</a>&nbsp;được l&agrave;m từ chất liệu vải dệt c&oacute; bề mặt vải rất mềm mại, xốp lại v&ocirc; c&ugrave;ng th&ocirc;ng tho&aacute;ng</li>\r\n	<li>Sự t&iacute;ch hợp giữa c&aacute;c c&ocirc;ng nghệ Adidas Primeknit, Boots v&agrave; Stretchweb sẽ gi&uacute;p&nbsp;<a href=\"https://www.avasport.com/giay\" target=\"_blank\" title=\"Xem thêm các loại giày chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm các loại giày chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y</a>&nbsp;đảm bảo t&iacute;nh thoải m&aacute;i, độ linh hoạt m&agrave; vẫn rất nhẹ v&agrave; cực k&igrave; bền, đem tới cảm gi&aacute;c &ecirc;m &aacute;i cho từng bộ phận tr&ecirc;n b&agrave;n ch&acirc;n</li>\r\n	<li>Đế&nbsp;<a href=\"https://www.avasport.com/giay-adidas\" target=\"_blank\" title=\"Xem thêm các sản phẩm giày Adidas chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm các sản phẩm giày Adidas chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y Adidas</a>&nbsp;được l&agrave;m từ cao su Continental&nbsp;gi&uacute;p gi&agrave;y c&oacute; khả năng hỗ trợ tốt, ph&ugrave; hợp để di chuyển tr&ecirc;n mọi địa h&igrave;nh, cộng với tr&ecirc;n bề mặt đế c&oacute; nhiều r&atilde;nh để tăng ma s&aacute;t gi&uacute;p chống trơn trượt</li>\r\n</ul>\r\n\r\n<p>Th&ocirc;ng tin chi tiết</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thương hi&ecirc;̣u</p>\r\n\r\n	<p>Adidas (Đức)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&ugrave; hợp với</p>\r\n\r\n	<p>Nữ</p>\r\n	</li>\r\n	<li>\r\n	<p>M&ocirc;n th&ecirc;̉ thao</p>\r\n\r\n	<p>Chạy bộ/ Đi bộ</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại giày</p>\r\n\r\n	<p>Thể thao chuy&ecirc;n dụng</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu th&acirc;n</p>\r\n\r\n	<p>Vải dệt</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp l&oacute;t trong</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ</p>\r\n\r\n	<p>Stretchweb</p>\r\n\r\n	<p>Boost</p>\r\n\r\n	<p>Adidas Primeknit</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu đế</p>\r\n\r\n	<p>Cao su Continental</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng</p>\r\n\r\n	<p>Gi&agrave;y cổ thấp</p>\r\n	</li>\r\n	<li>\r\n	<p>Khối lượng</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng tin cảnh b&aacute;o</p>\r\n\r\n	<p>An to&agrave;n cho người sử dụng</p>\r\n	</li>\r\n</ul>\r\n', 4, 1, 0, '2022-11-09 13:37:41', '2022-11-09 13:37:41'),
(29, 'AU004', 'Giày Chạy Bộ Nữ Adidas Ultraboost S23754', 'giay-chay-bo-nu-adidas-ultraboost-s23754', 'AU004_1.jpg', '<p>Đặc điểm nổi bật:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.avasport.com/giay/adidas-ultraboost-21-crdy-w-s23754\" target=\"_blank\" title=\"Giày Adidas Ultraboost 21 C.Rdy W S23754 chính hãng, đang kinh doanh tại AVASport\" type=\"Giày Adidas Ultraboost 21 C.Rdy W S23754 chính hãng, đang kinh doanh tại AVASport\">Gi&agrave;y Adidas Ultraboost 21 C.Rdy W S23754</a>&nbsp;được l&agrave;m từ chất liệu vải dệt Primeknit đảm bảo độ linh hoạt m&agrave; vẫn rất nhẹ v&agrave; bền, mang đến cảm gi&aacute;c &ecirc;m &aacute;i cho ch&acirc;n</li>\r\n	<li><a href=\"https://www.avasport.com/giay-adidas\" target=\"_blank\" title=\"Xem thêm các sản phẩm giày Adidas chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm các sản phẩm giày Adidas chính hãng, đang kinh doanh tại AVASport\">Gi&agrave;y Adidas</a>&nbsp;sử dụng c&ocirc;ng nghệ Primeblue bền đẹp, &iacute;t nhăn, giữ form tốt, th&ocirc;ng tho&aacute;ng</li>\r\n	<li>Đế&nbsp;<a href=\"https://www.avasport.com/giay\" target=\"_blank\" title=\"Xem thêm các sản phẩm giày dép chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm các sản phẩm giày dép chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y</a>&nbsp;cao su Continental gi&uacute;p tăng độ b&aacute;m ở những địa h&igrave;nh trơn trượt</li>\r\n</ul>\r\n\r\n<p>Th&ocirc;ng tin chi tiết</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thương hi&ecirc;̣u</p>\r\n\r\n	<p>Adidas (Đức)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&ugrave; hợp với</p>\r\n\r\n	<p>Nữ</p>\r\n	</li>\r\n	<li>\r\n	<p>M&ocirc;n th&ecirc;̉ thao</p>\r\n\r\n	<p>Chạy bộ/ Đi bộ</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại giày</p>\r\n\r\n	<p>Thể thao chuy&ecirc;n dụng</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu th&acirc;n</p>\r\n\r\n	<p>Vải dệt Primeknit</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp l&oacute;t trong</p>\r\n\r\n	<p>Vải dệt</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ</p>\r\n\r\n	<p>Boost</p>\r\n\r\n	<p>Primeblue</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu đế</p>\r\n\r\n	<p>Cao su Continental</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng</p>\r\n\r\n	<p>Gi&agrave;y cổ thấp</p>\r\n	</li>\r\n	<li>\r\n	<p>Khối lượng</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng tin cảnh b&aacute;o</p>\r\n\r\n	<p>An to&agrave;n cho người sử dụng</p>\r\n	</li>\r\n</ul>\r\n', 4, 1, 0, '2022-11-11 13:40:35', '2022-11-11 13:40:35'),
(30, 'AK001', 'Giày Chạy Bộ Nữ Adidas Supernova 2 W GW9100', 'giay-chay-bo-nu-adidas-supernova-2-w-gw9100', 'AK001_1.jpg', '<h2>Đặc điểm nổi bật:</h2>\r\n\r\n<ul>\r\n	<li>Chất liệu cao su Carbon c&oacute; trọng lượng nhẹ gi&uacute;p đ&ocirc;i&nbsp;<a href=\"https://www.avasport.com/giay\" target=\"_blank\" title=\"Xem thêm các loại giày dép chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm các loại giày dép chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y</a>&nbsp;c&oacute; cảm gi&aacute;c mang thoải m&aacute;i, bền bỉ v&agrave; t&iacute;nh thẩm mỹ cao</li>\r\n	<li>Sở hữu c&ocirc;ng nghệ Boost v&agrave; Bounce gi&uacute;p mẫu&nbsp;<a href=\"https://www.avasport.com/giay-adidas\" target=\"_blank\" title=\"Xem thêm các sản phẩm giày Adidas chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm các sản phẩm giày Adidas chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y Adidas</a>&nbsp;&ecirc;m m&aacute;i v&agrave; mềm mại khi mang</li>\r\n	<li><a href=\"https://www.avasport.com/giay/giay-chay-bo-nu-adidas-supernova-2-w-gw9100\" target=\"_blank\" title=\"Xem thêm giày Adidas Supernova 2 W GW9100 chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày Adidas Supernova 2 W GW9100 chính hãng, đang kinh doanh tại AVASport\">Adidas Supernova 2 W GW9100</a>&nbsp;c&oacute; bộ đế TPU gi&uacute;p tăng ma s&aacute;t v&agrave; b&aacute;m đường tốt n&ecirc;n an to&agrave;n trong mọi hoạt động</li>\r\n	<li>Kiểu d&aacute;ng gi&agrave;y cổ thấp linh hoạt v&agrave; năng động, ph&ugrave; hợp với những bạn nữ c&aacute; t&iacute;nh th&iacute;ch chạy bộ</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng tin chi tiết</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thương hi&ecirc;̣u</p>\r\n\r\n	<p>Adidas (Đức)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đối tượng sử dụng</p>\r\n\r\n	<p>Nữ</p>\r\n	</li>\r\n	<li>\r\n	<p>M&ocirc;n th&ecirc;̉ thao</p>\r\n\r\n	<p>Chạy bộ/ Đi bộ</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại giày</p>\r\n\r\n	<p>Thể thao chuy&ecirc;n dụng</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu th&acirc;n</p>\r\n\r\n	<p>Cao su Carbon</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp l&oacute;t trong</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ</p>\r\n\r\n	<p>Boost</p>\r\n\r\n	<p>Bounce</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu đế</p>\r\n\r\n	<p>TPU</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng</p>\r\n\r\n	<p>Gi&agrave;y cổ thấp</p>\r\n	</li>\r\n	<li>\r\n	<p>Khối lượng</p>\r\n\r\n	<p>245 g</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng tin cảnh b&aacute;o</p>\r\n\r\n	<p>An to&agrave;n cho người sử dụng</p>\r\n	</li>\r\n</ul>\r\n', 5, 1, 0, '2022-12-28 04:47:42', '2022-12-28 04:47:42'),
(31, 'AK002', 'Giày Chạy Bộ Nam Adidas X9000L2 GY0125', 'giay-chay-bo-nam-adidas-x9000l2-gy0125', 'AK002_1.jpg', '<h2>Đặc điểm nổi bật:</h2>\r\n\r\n<ul>\r\n	<li>Th&acirc;n&nbsp;<a href=\"https://www.avasport.com/giay/giay-chay-bo-nam-adidas-x9000l2-gy0125\" target=\"_blank\" title=\"Xem thêm giày Adidas X9000l2 Gy0125 chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày Adidas X9000l2 Gy0125 chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y Adidas X9000l2 Gy0125</a>&nbsp;l&agrave;m từ vải Primegreen bền đẹp, th&ocirc;ng tho&aacute;ng, th&acirc;n thiện với m&ocirc;i trường</li>\r\n	<li><a href=\"https://www.avasport.com/giay-adidas\" target=\"_blank\" title=\"Xem thêm giày Adidas chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày Adidas chính hãng, đang kinh doanh tại AVASport\">Gi&agrave;y Adidas</a>&nbsp;sử dụng c&ocirc;ng nghệ Jet Boost đ&agrave;n hồi tốt, n&acirc;ng đỡ ch&acirc;n tuyệt vời, c&ocirc;ng nghệ Bounce cho độ b&aacute;m c&ugrave;ng với độ ổn định cao hơn</li>\r\n	<li>V&agrave; c&ocirc;ng nghệ Primegreen kết hợp Adiwear gi&uacute;p dễ d&agrave;ng di chuyển ở mọi địa h&igrave;nh v&agrave; chống m&agrave;i m&ograve;n cao</li>\r\n	<li>Đế&nbsp;<a href=\"https://www.avasport.com/giay\" target=\"_blank\" title=\"Xem thêm giày dép chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày dép chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y</a>&nbsp;l&agrave;m từ cao su bền bỉ, đ&agrave;n hồi tốt, bề mặt &ecirc;m &aacute;i, an to&agrave;n cho người sử dụng</li>\r\n	<li>Kiểu d&aacute;ng gi&agrave;y cổ thấp truyền thống, mang lại cảm gi&aacute;c cổ điển, ph&ugrave; hợp nhiều đối tượng</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng tin chi tiết</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thương hi&ecirc;̣u</p>\r\n\r\n	<p>Adidas (Đức)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đối tượng sử dụng</p>\r\n\r\n	<p>Nam</p>\r\n	</li>\r\n	<li>\r\n	<p>M&ocirc;n th&ecirc;̉ thao</p>\r\n\r\n	<p>Chạy bộ/ Đi bộ</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại giày</p>\r\n\r\n	<p>Thể thao chuy&ecirc;n dụng</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu th&acirc;n</p>\r\n\r\n	<p>Vải Primegreen</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp l&oacute;t trong</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ</p>\r\n\r\n	<p>AdiWear&reg;</p>\r\n\r\n	<p>Primegreen</p>\r\n\r\n	<p>Bounce</p>\r\n\r\n	<p>Jet Boost</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu đế</p>\r\n\r\n	<p>Cao su</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng</p>\r\n\r\n	<p>Gi&agrave;y cổ thấp</p>\r\n	</li>\r\n	<li>\r\n	<p>Khối lượng</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng tin cảnh b&aacute;o</p>\r\n\r\n	<p>An to&agrave;n cho người sử dụng</p>\r\n	</li>\r\n</ul>\r\n', 5, 1, 0, '2022-12-28 04:52:54', '2022-12-28 04:52:54'),
(32, 'PN001', 'Giày Chạy Bộ Nữ Puma Deviate Nitro 194453-13', 'giay-chay-bo-nu-puma-deviate-nitro-194453-13', 'PN001_1.jpg', '<h2>Đặc điểm nổi bật:</h2>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.avasport.com/giay/giay-chay-bo-nu-puma-deviate-nitro-194453-13\" target=\"_blank\" title=\"Giày Chạy Bộ Nữ Puma Deviate Nitro 194453-13 chính hãng, đang kinh doanh tại AVASport\" type=\"Giày Chạy Bộ Nữ Puma Deviate Nitro 194453-13 chính hãng, đang kinh doanh tại AVASport\">Puma Deviate Nitro 194453-13</a>&nbsp;sử dụng chất liệu Mesh c&oacute; độ đ&agrave;n hồi tốt, tho&aacute;ng kh&iacute; tạo cảm gi&aacute;c thoải m&aacute;i khi mang</li>\r\n	<li>Phần đế&nbsp;<a href=\"https://www.avasport.com/giay-puma\" target=\"_blank\" title=\"Xem thêm các sản phẩm giày Puma chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm các sản phẩm giày Puma chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y Puma</a>&nbsp;được l&agrave;m từ chất liệu cao su/TPU với nhiều khe nhỏ tăng khả năng ma s&aacute;t với mặt đường, an to&agrave;n khi vận động</li>\r\n	<li>Kiểu d&aacute;ng&nbsp;<a href=\"https://www.avasport.com/giay\" target=\"_blank\" title=\"Xem thêm các loại giày dép chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm các loại giày dép chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y cổ thấp</a>&nbsp;linh động, hợp thời trang, rất ph&ugrave; hợp với những bạn nữ th&iacute;ch chạy bộ</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng tin chi tiết</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thương hi&ecirc;̣u</p>\r\n\r\n	<p>Puma (Đức)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đối tượng sử dụng</p>\r\n\r\n	<p>Nữ</p>\r\n	</li>\r\n	<li>\r\n	<p>M&ocirc;n th&ecirc;̉ thao</p>\r\n\r\n	<p>Chạy bộ/ Đi bộ</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại giày</p>\r\n\r\n	<p>Thể thao chuy&ecirc;n dụng</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu th&acirc;n</p>\r\n\r\n	<p>Mesh</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp l&oacute;t trong</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ</p>\r\n\r\n	<p>Nitro foam</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu đế</p>\r\n\r\n	<p>Cao su/TPU</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng</p>\r\n\r\n	<p>Gi&agrave;y cổ thấp</p>\r\n	</li>\r\n	<li>\r\n	<p>Khối lượng</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng tin cảnh b&aacute;o</p>\r\n\r\n	<p>An to&agrave;n cho người sử dụng</p>\r\n	</li>\r\n</ul>\r\n', 6, 1, 0, '2022-12-28 04:56:00', '2022-12-28 04:56:00'),
(33, 'PK001', 'Giày Lifestyle Unisex Puma RS-Fast 380562-05', 'giay-lifestyle-unisex-puma-rs-fast-380562-05', 'PK001_1.jpg', '<h2>Đặc điểm nổi bật:</h2>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.avasport.com/giay/giay-lifestyle-unisex-puma-rs-fast-380562-05\" target=\"_blank\" title=\"Xem thêm giày Lifestyle Unisex Puma Rs-Fast 380562-05 chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày Lifestyle Unisex Puma Rs-Fast 380562-05 chính hãng, đang kinh doanh tại AVASport\">Gi&agrave;y Lifestyle Unisex Puma Rs-Fast 380562-05</a>&nbsp;sử dụng chất liệu vải dệt cho th&acirc;n gi&agrave;y c&oacute; trọng lượng nhẹ, bề mặt mịn v&agrave; đứng d&aacute;ng</li>\r\n	<li>Kiểu d&aacute;ng&nbsp;<a href=\"https://www.avasport.com/giay\" target=\"_blank\" title=\"Xem thêm giày dép chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày dép chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y</a>&nbsp;cổ thấp dễ d&agrave;ng hơn trong việc vận động c&aacute;c b&agrave;i tập cổ ch&acirc;n</li>\r\n	<li>Đế&nbsp;<a href=\"https://www.avasport.com/giay-puma\" target=\"_blank\" title=\"Xem thêm giày Puma chính hãng, đang kinh doanh tại AVASport\" type=\"Xem thêm giày Puma chính hãng, đang kinh doanh tại AVASport\">gi&agrave;y Puma</a>&nbsp;kết hợp 3 m&agrave;u l&agrave;m tăng sự trẻ trung năng động, c&oacute; nhiều r&atilde;nh nhỏ kh&aacute;c nhau, gi&uacute;p tăng khả năng b&aacute;m đường tiện &iacute;ch cho người sử dụng</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng tin chi tiết</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thương hi&ecirc;̣u</p>\r\n\r\n	<p>Puma (Đức)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đối tượng sử dụng</p>\r\n\r\n	<p>Unisex</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại giày</p>\r\n\r\n	<p>Thể thao lifestyle (thời trang)</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu th&acirc;n</p>\r\n\r\n	<p>Vải dệt</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp l&oacute;t trong</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ</p>\r\n\r\n	<p>Running System</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu đế</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng</p>\r\n\r\n	<p>Gi&agrave;y cổ thấp</p>\r\n	</li>\r\n	<li>\r\n	<p>Khối lượng</p>\r\n\r\n	<p>H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng tin cảnh b&aacute;o</p>\r\n\r\n	<p>An to&agrave;n cho người sử dụng</p>\r\n	</li>\r\n</ul>\r\n', 13, 1, 0, '2022-12-28 05:13:07', '2022-12-28 05:13:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamkhuyenmai`
--

CREATE TABLE `sanphamkhuyenmai` (
  `khuyenmai_id` int(10) UNSIGNED NOT NULL,
  `sanpham_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphamkhuyenmai`
--

INSERT INTO `sanphamkhuyenmai` (`khuyenmai_id`, `sanpham_id`, `created_at`, `updated_at`) VALUES
(4, 26, NULL, NULL),
(4, 27, NULL, NULL),
(4, 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtin`
--

CREATE TABLE `thongtin` (
  `id` int(10) UNSIGNED NOT NULL,
  `thongtin_tieu_de` text COLLATE utf8_unicode_ci NOT NULL,
  `thongtin_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thongtin_tom_tat` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thongtin_noi_dung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thongtin_luot_xem` int(11) NOT NULL,
  `thongtin_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thongtin_da_xoa` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtin`
--

INSERT INTO `thongtin` (`id`, `thongtin_tieu_de`, `thongtin_url`, `thongtin_tom_tat`, `thongtin_noi_dung`, `thongtin_luot_xem`, `thongtin_anh`, `thongtin_da_xoa`, `created_at`, `updated_at`) VALUES
(1, 'Giày Chạy Bộ Nữ Adidas Ultraboost S23754', 'giay-chay-bo-nu-adidas-ultraboost-s23754', '<p>KHẢ NĂNG HO&Agrave;N TRẢ NĂNG LƯỢNG TẠI MŨI GI&Agrave;Y TĂNG 4% SO VỚI ULTRABOOST 21 VỚI ĐỘ &Ocirc;M CẢI THIỆN 360&deg; CHO B&Agrave;N CH&Acirc;N NỮ GIỚI</p>\r\n', '<p>KHẢ NĂNG HO&Agrave;N TRẢ NĂNG LƯỢNG TẠI MŨI GI&Agrave;Y TĂNG 4% SO VỚI ULTRABOOST 21 VỚI ĐỘ &Ocirc;M CẢI THIỆN 360&deg; CHO B&Agrave;N CH&Acirc;N NỮ GIỚI<br />\r\n<br />\r\nVới dữ liệu từ 1,2 triệu bản qu&eacute;t h&igrave;nh d&aacute;ng b&agrave;n ch&acirc;n, ch&uacute;ng t&ocirc;i đ&atilde; n&acirc;ng cấp d&ograve;ng gi&agrave;y Ultraboost tạo n&ecirc;n một phi&ecirc;n bản cải thiện độ &ocirc;m 360&deg; cho b&agrave;n ch&acirc;n nữ giới. Chưa dừng lại ở đ&oacute;. Ch&uacute;ng t&ocirc;i đ&atilde; cải tiến đế ngo&agrave;i bằng cao su. Ch&uacute;ng t&ocirc;i đ&atilde; thử nghiệm h&agrave;ng trăm bản mẫu. Ch&uacute;ng t&ocirc;i nỗ lực kh&ocirc;ng ngừng cho đến khi đạt được những c&aacute;i thiện r&otilde; rệt về hiệu năng. Th&agrave;nh quả l&agrave;? Khả ho&agrave;n trả năng lượng tại mũi gi&agrave;y tăng 4% so với phi&ecirc;n bản Ultraboost 21 d&agrave;nh cho nữ giới. Th&acirc;n gi&agrave;y adidas PRIMEKNIT với thiết kế phần g&oacute;t thon gọn hơn để tr&aacute;nh tuột g&oacute;t v&agrave; phồng rộp. Đế giữa BOOST n&acirc;ng đỡ &ecirc;m &aacute;i với hệ thống Linear Energy Push. Th&acirc;n gi&agrave;y l&agrave;m từ loại sợi c&oacute; chứa 50% chất liệu Parley Ocean Plastic &mdash; r&aacute;c thải nhựa t&aacute;i chế thu gom từ c&aacute;c v&ugrave;ng đảo xa, b&atilde;i biển, khu d&acirc;n cư ven biển v&agrave; đường bờ biển, nhằm ngăn chặn &ocirc; nhiễm đại dương.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h5><strong>BẢNG CHỌN SIZE CỠ</strong></h5>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/340/361/files/bang-size-giay-dep-adidas.png?v=1637829532534\" /></p>\r\n\r\n<p><strong>HƯỚNG DẪN BẢO QUẢN SẢN PHẨM ADIDAS</strong></p>\r\n\r\n<ul>\r\n	<li>Sử dụng nước dưới 35 độ để giặt sản phẩm</li>\r\n	<li>Kh&ocirc;ng sử dụng thuốc tẩy hoặc bột giặt c&oacute; độ tẩy cao</li>\r\n	<li>Sử dụng t&uacute;i giặt bảo quản khi d&ugrave;ng với m&aacute;y giặt</li>\r\n	<li>Tr&aacute;nh phơi dưới &aacute;nh nắng trực tiếp để bảo quản m&agrave;u sắc</li>\r\n</ul>\r\n\r\n<p><strong>TH&Ocirc;NG TIN THƯƠNG HIỆU ADIDAS</strong></p>\r\n\r\n<p>Ng&agrave;y nay Adidas kh&ocirc;ng chỉ l&agrave; nh&atilde;n hiệu thể thao chuy&ecirc;n nghiệp m&agrave; c&ograve;n l&agrave; một sản phẩm thời trang. Adidas đ&atilde; ph&acirc;n chia c&aacute;c d&ograve;ng sản phẩm của m&igrave;nh th&agrave;nh 3 ph&acirc;n nh&oacute;m:</p>\r\n\r\n<p>Th&agrave;nh t&iacute;ch thể thao: tập trung v&agrave;o t&iacute;nh năng của sản phẩm đ&aacute;p ứng cho c&aacute;c VĐV chuy&ecirc;n nghiệp</p>\r\n\r\n<ul>\r\n	<li><strong>Di sản thể thao</strong>: những sản phẩm truyền thống đ&atilde; mang lại danh tiếng</li>\r\n	<li><strong>Thời trang thể thao</strong>:&nbsp;tập trung v&agrave;o những kh&aacute;ch h&agrave;ng trẻ th&iacute;ch những sản phẩm trang phục thể thao hợp thời trang v&agrave; sang trọng.</li>\r\n	<li><strong>C&oacute; thể n&oacute;i Adidas th&agrave;nh c&ocirc;ng nhờ:</strong>\r\n	<ul>\r\n		<li>Lu&ocirc;n lu&ocirc;n s&aacute;ng tạo nhằm v&agrave;o sự n&acirc;ng cao th&agrave;nh t&iacute;ch cho c&aacute;c VĐV chuy&ecirc;n nghiệp.</li>\r\n		<li>Lu&ocirc;n trung th&agrave;nh với KH mục ti&ecirc;u l&agrave; c&aacute;c VĐV chuy&ecirc;n nghiệp.</li>\r\n		<li>Lu&ocirc;n giữ g&igrave;n lịch sử đẹp đẽ v&agrave; ph&aacute;t triển n&oacute; th&agrave;nh 1 phong c&aacute;ch thời trang.</li>\r\n		<li>Lu&ocirc;n ki&ecirc;n định với Hassler ng&agrave;y n&agrave;o: &ldquo;phong độ&rdquo; cho d&ugrave; c&oacute; l&uacute;c s&oacute;ng gi&oacute; nhưng họ kh&ocirc;ng bao giờ bắt sản phẩm m&igrave;nh phải trả gi&aacute;.</li>\r\n		<li>Những ng&ocirc;i sao thể hiện đ&uacute;ng phong c&aacute;ch m&agrave; Adidas truyền đạt.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>Năm 2010&nbsp;Si&ecirc;u thị thể thao MaxxSport&nbsp;&nbsp;ch&iacute;nh thức l&agrave; nh&agrave; b&aacute;n h&agrave;ng&nbsp;của adidas tại Việt Nam. Cho tới nay MaxxSport&nbsp;đ&atilde; c&oacute; rất nhiều&nbsp;&nbsp;Shop thời trang thể thao&nbsp;adidas tr&ecirc;n khắp địa b&agrave;n cả nước. Để đ&aacute;p ứng nhu cầu của kh&aacute;ch h&agrave;ng ở khắp nơi, MaxxSport&nbsp;sẽ tiếp tục mở rộng hệ thống shop b&aacute;n&nbsp;adidas tr&ecirc;n địa b&agrave;n H&agrave; nội v&agrave; c&aacute;c tỉnh tr&ecirc;n to&agrave;n quốc.&nbsp;&nbsp;</p>\r\n', 1, 'AU004_3.jpg', 1, '2022-11-17 02:42:04', '2022-11-17 02:42:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtranghd`
--

CREATE TABLE `tinhtranghd` (
  `id` int(10) UNSIGNED NOT NULL,
  `tinhtranghd_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tinhtranghd_mo_ta` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tinhtranghd`
--

INSERT INTO `tinhtranghd` (`id`, `tinhtranghd_ten`, `tinhtranghd_mo_ta`, `created_at`, `updated_at`) VALUES
(1, 'Chưa xác nhận', NULL, NULL, NULL),
(2, 'Giao hàng', NULL, NULL, NULL),
(3, 'Đã hủy', NULL, NULL, NULL),
(4, 'Đã thanh toán', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tuyendung`
--

CREATE TABLE `tuyendung` (
  `id` int(10) UNSIGNED NOT NULL,
  `tuyendung_tieu_de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tuyendung_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tuyendung_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tuyendung_mo_ta` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tuyendung_lien_he` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tuyendung_thoi_gian` int(11) NOT NULL,
  `tuyendung_tinh_trang` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tuyendung`
--

INSERT INTO `tuyendung` (`id`, `tuyendung_tieu_de`, `tuyendung_url`, `tuyendung_anh`, `tuyendung_mo_ta`, `tuyendung_lien_he`, `tuyendung_thoi_gian`, `tuyendung_tinh_trang`, `created_at`, `updated_at`) VALUES
(6, 'Tuyển dụng nhân viên IT.', 'tuyen-dung-nhan-vien-it.', 'TNV.png', '<p><strong>Địa điểm</strong></p>\r\n\r\n<p>Đ&agrave; Nẵng</p>\r\n\r\n<p><img alt=\"job_map_no_coordinates\" src=\"https://static.careerbuilder.vn/themes/careerbuilder/img/icon-map-notext.svg\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Ng&agrave;y cập nhật</strong>\r\n\r\n	<p>28/12/2022</p>\r\n	</li>\r\n	<li><strong>Ng&agrave;nh nghề</strong>\r\n	<p><a href=\"https://careerbuilder.vn/viec-lam/tiep-thi-marketing-c4-vi.html\">Tiếp thị / Marketing&nbsp;</a>,&nbsp;<a href=\"https://careerbuilder.vn/viec-lam/cntt-phan-mem-c1-vi.html\">CNTT - Phần mềm</a></p>\r\n	</li>\r\n	<li><strong>H&igrave;nh thức</strong>\r\n	<p>Nh&acirc;n vi&ecirc;n ch&iacute;nh thức</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Lương</strong>\r\n\r\n	<p>15 Tr - 22 Tr VND</p>\r\n	</li>\r\n	<li><strong>Kinh nghiệm</strong>\r\n	<p>Tr&ecirc;n 2 Năm</p>\r\n	</li>\r\n	<li><strong>Cấp bậc</strong>\r\n	<p>Nh&acirc;n vi&ecirc;n</p>\r\n	</li>\r\n	<li><strong>Thời gian nộp hồ sơ</strong>\r\n	<p>30 ng&agrave;y</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>PH&Uacute;C LỢI</h2>\r\n\r\n<ul>\r\n	<li>Laptop</li>\r\n	<li>Chế độ bảo hiểm</li>\r\n	<li>Du Lịch</li>\r\n	<li>Phụ cấp</li>\r\n	<li>Xe đưa đ&oacute;n</li>\r\n	<li>Đồng phục</li>\r\n	<li>Chế độ thưởng</li>\r\n	<li>Chăm s&oacute;c sức khỏe</li>\r\n	<li>Đ&agrave;o tạo</li>\r\n	<li>Tăng lương</li>\r\n	<li>C&ocirc;ng t&aacute;c ph&iacute;</li>\r\n	<li>Phụ cấp th&acirc;m ni&ecirc;n</li>\r\n	<li>Nghỉ ph&eacute;p năm</li>\r\n</ul>\r\n\r\n<h2>M&Ocirc; TẢ C&Ocirc;NG VIỆC</h2>\r\n\r\n<p>- Tham gia x&acirc;y dựng top 10 website ecommerce Việt Nam v&agrave;o 2023 - Trở th&agrave;nh c&ocirc;ng ty Global năm 2024<br />\r\n- Triển khai, đảm bảo hoạt động theo quy tr&igrave;nh vận h&agrave;nh đ&atilde; c&oacute; của c&aacute;c hệ thống (sản phẩm) được ph&acirc;n c&ocirc;ng.<br />\r\n- Hỗ trợ kiểm tra c&aacute;c lỗi ph&aacute;t sinh v&agrave; chuyển cho bộ phận chuy&ecirc;n tr&aacute;ch xử l&yacute;.<br />\r\n- Hỗ trợ triển khai chương tr&igrave;nh marketing để giới thiệu t&iacute;nh năng hoặc theo kế hoạch sale hoặc marketing<br />\r\n- Đề xuất c&aacute;c phương &aacute;n tối ưu c&aacute;c quy tr&igrave;nh đang đưa v&agrave;o vận h&agrave;nh.<br />\r\n- Hỗ trợ đề xuất c&aacute;c quy tr&igrave;nh vận h&agrave;nh mới, c&aacute;ch c&aacute;ch thức cải tiến vận h&agrave;nh<br />\r\n- B&aacute;o c&aacute;o hiệu quả của t&iacute;nh năng sau khi launching.</p>\r\n\r\n<h2>Y&Ecirc;U CẦU C&Ocirc;NG VIỆC</h2>\r\n\r\n<p>- C&oacute; kinh nghiệm từ 1 năm vị tr&iacute; tương đương, ưu ti&ecirc;n trong Retail, Fashion, Ecommerce,...<br />\r\n- Hiểu biết t&acirc;m l&yacute; kh&aacute;ch h&agrave;ng<br />\r\n- C&oacute; khả năng vận h&agrave;nh Sapo CMS hoặc c&ocirc;ng cụ tương đương<br />\r\n- C&oacute; Mindset về marketing<br />\r\n- C&oacute; khả năng đọc v&agrave; ph&acirc;n t&iacute;ch số liệu chuy&ecirc;n s&acirc;u<br />\r\n- L&agrave; người c&oacute; tư duy logic, trung thực, s&aacute;ng tạo v&agrave; đam m&ecirc;<br />\r\n&nbsp;</p>\r\n\r\n<h3>TH&Ocirc;NG TIN KH&Aacute;C</h3>\r\n\r\n<ul>\r\n	<li>Độ tuổi: 23 - 30</li>\r\n	<li>Lương: 15 Tr - 22 Tr VND</li>\r\n</ul>\r\n', '<p>Shop Gi&agrave;y Đ&agrave; Nẵng</p>\r\n\r\n<p>SĐT: 0919900XXX</p>\r\n\r\n<p>Địa chỉ: Kxx/Hxx/xx - xxx xxx xxx - Sơn Tr&agrave; - Đ&agrave; Nẵng</p>\r\n\r\n<p>Gmai: XXXxxx@gmail.com</p>\r\n', 30, 1, '2022-12-28 09:09:34', '2022-12-28 09:09:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `loainguoidung_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `loainguoidung_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(17, 'admin', 'admin@gmail.com', '$2y$10$Sfp3FuSRR/5xx0teewhh1Oe1Mc.15CxkKTrwG8VXenBAArGABwoUO', 1, 'W3j3i7G5fw3rEyOTXh4QFoEPVkFfE05LlFepZM8zWiKnGs6779WKg6x7jM6O', '2022-11-06 09:25:13', '2022-12-28 04:08:56'),
(18, 'long', 'long@gmail.com', '$2y$10$Sfp3FuSRR/5xx0teewhh1Oe1Mc.15CxkKTrwG8VXenBAArGABwoUO', 2, 'GUiMIqGTbDtYeMhhYvniolmmKhnDyAriZrsDl6Hen769vpS4AqnBK2SRWKx8', '2022-11-07 11:50:41', '2022-12-23 15:53:34'),
(19, 'duylong', 'duylong@gmail.com', '$2y$10$VQQARIXjvOeOqbRdYh4V7u/Vk4YCK9bQnyT0mHpd/ap3FGBKTjlr6', 2, 'FQJ3K8tMrelz573Ekwh0I0sI20IRqzLxryTIxuansfH40DkwWZF8a8GOuTRM', '2022-11-07 12:04:57', '2022-12-03 00:43:57'),
(20, 'duylong2', 'duylong2@gmail.com', '$2y$10$pnJBzH82K68M.iObmaB5y.dtKbr7TYhdvpndP5wRMFnOptV6fM9t2', 2, 'Zr8QarbuxNWYdd9QJJpFX8AvNgLxgncVzAlpCdprOgghPFqFdjW2IwDNtSuo', '2022-11-17 03:43:02', '2022-11-17 07:17:54');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binhluan_sanpham_id_foreign` (`sanpham_id`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietdonhang_sanpham_id_foreign` (`sanpham_id`),
  ADD KEY `chitietdonhang_donhang_id_foreign` (`donhang_id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donhang_khachhang_id_foreign` (`khachhang_id`),
  ADD KEY `donhang_tinhtranghd_id_foreign` (`tinhtranghd_id`);

--
-- Chỉ mục cho bảng `donvitinh`
--
ALTER TABLE `donvitinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hinhsanpham`
--
ALTER TABLE `hinhsanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hinhsanpham_sanpham_id_foreign` (`sanpham_id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `khachhang_khachhang_email_unique` (`khachhang_email`),
  ADD KEY `khachhang_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loainguoidung`
--
ALTER TABLE `loainguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loaisanpham_nhom_id_foreign` (`nhom_id`);

--
-- Chỉ mục cho bảng `lohang`
--
ALTER TABLE `lohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lohang_nhacungcap_id_foreign` (`nhacungcap_id`),
  ADD KEY `lohang_sanpham_id_foreign` (`sanpham_id`);

--
-- Chỉ mục cho bảng `nguyenlieu`
--
ALTER TABLE `nguyenlieu`
  ADD KEY `nguyenlieu_monngon_id_foreign` (`thongtin_id`),
  ADD KEY `nguyenlieu_sanpham_id_foreign` (`sanpham_id`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhom`
--
ALTER TABLE `nhom`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanpham_loaisanpham_id_foreign` (`loaisanpham_id`),
  ADD KEY `sanpham_donvitinh_id_foreign` (`donvitinh_id`);

--
-- Chỉ mục cho bảng `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD KEY `sanphamkhuyenmai_khuyenmai_id_foreign` (`khuyenmai_id`),
  ADD KEY `sanphamkhuyenmai_sanpham_id_foreign` (`sanpham_id`);

--
-- Chỉ mục cho bảng `thongtin`
--
ALTER TABLE `thongtin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tinhtranghd`
--
ALTER TABLE `tinhtranghd`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tuyendung`
--
ALTER TABLE `tuyendung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_loainguoidung_id_foreign` (`loainguoidung_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `donvitinh`
--
ALTER TABLE `donvitinh`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hinhsanpham`
--
ALTER TABLE `hinhsanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `loainguoidung`
--
ALTER TABLE `loainguoidung`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `lohang`
--
ALTER TABLE `lohang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nhom`
--
ALTER TABLE `nhom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `thongtin`
--
ALTER TABLE `thongtin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tinhtranghd`
--
ALTER TABLE `tinhtranghd`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tuyendung`
--
ALTER TABLE `tuyendung`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_donhang_id_foreign` FOREIGN KEY (`donhang_id`) REFERENCES `donhang` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietdonhang_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_khachhang_id_foreign` FOREIGN KEY (`khachhang_id`) REFERENCES `khachhang` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donhang_tinhtranghd_id_foreign` FOREIGN KEY (`tinhtranghd_id`) REFERENCES `tinhtranghd` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hinhsanpham`
--
ALTER TABLE `hinhsanpham`
  ADD CONSTRAINT `hinhsanpham_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `loaisanpham_nhom_id_foreign` FOREIGN KEY (`nhom_id`) REFERENCES `nhom` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `lohang`
--
ALTER TABLE `lohang`
  ADD CONSTRAINT `lohang_nhacungcap_id_foreign` FOREIGN KEY (`nhacungcap_id`) REFERENCES `nhacungcap` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `lohang_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguyenlieu`
--
ALTER TABLE `nguyenlieu`
  ADD CONSTRAINT `nguyenlieu_monngon_id_foreign` FOREIGN KEY (`thongtin_id`) REFERENCES `thongtin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nguyenlieu_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_donvitinh_id_foreign` FOREIGN KEY (`donvitinh_id`) REFERENCES `donvitinh` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_loaisanpham_id_foreign` FOREIGN KEY (`loaisanpham_id`) REFERENCES `loaisanpham` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD CONSTRAINT `sanphamkhuyenmai_khuyenmai_id_foreign` FOREIGN KEY (`khuyenmai_id`) REFERENCES `khuyenmai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanphamkhuyenmai_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_loainguoidung_id_foreign` FOREIGN KEY (`loainguoidung_id`) REFERENCES `loainguoidung` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
