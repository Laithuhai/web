-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 09, 2018 at 06:56 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sofa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`, `ten`, `dienthoai`, `email`, `diachi`) VALUES
(1, 'admin', '123456', 'Hoàng Huyền', 974925124, 'huyenhoangthaibinh@gmail.com', 'Thái Bình'),
(2, 'admin1', '123457', 'Lại Thu Hải', 987657462, 'thuhai@gmail.com', 'Thái Bình'),
(3, 'admin2', '123458', 'Trương phềnh phềnh', 987868672, 'annatruong@gmail.com', 'Hà Nam');

-- --------------------------------------------------------

--
-- Table structure for table `tb_anh_chitiet`
--

CREATE TABLE `tb_anh_chitiet` (
  `id` int(11) UNSIGNED NOT NULL,
  `hinhanh` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `id_sp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_chatlieu`
--

CREATE TABLE `tb_chatlieu` (
  `id` int(11) NOT NULL,
  `chatlieu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_chatlieu`
--

INSERT INTO `tb_chatlieu` (`id`, `chatlieu`) VALUES
(1, 'Da'),
(2, 'Vải'),
(3, 'Nỉ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_chitiet_hoadon`
--

CREATE TABLE `tb_chitiet_hoadon` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_sp` int(11) NOT NULL,
  `id_hoadon` int(11) UNSIGNED NOT NULL,
  `soluong` int(10) NOT NULL,
  `dongia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_danhmuc`
--

CREATE TABLE `tb_danhmuc` (
  `id` int(11) UNSIGNED NOT NULL,
  `ten_danhmuc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngaytao` datetime NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `danhmuc_cha` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `vitri` int(10) NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dm_sp`
--

CREATE TABLE `tb_dm_sp` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_sp` int(11) NOT NULL,
  `id_danhmuc` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_hang`
--

CREATE TABLE `tb_hang` (
  `id` int(11) NOT NULL,
  `ten_hang` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `diachi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dienthoai` int(11) DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_hang`
--

INSERT INTO `tb_hang` (`id`, `ten_hang`, `mota`, `diachi`, `dienthoai`, `email`, `logo`) VALUES
(1, 'Venvato', 'Chất lượng, đẳng cấp, sang trọng', 'Hà Nội', 84654743, 'venvato@gmail.com', 'sofaImage/logo/brand-1.png'),
(2, 'Bellasofa', 'sofa nhập khẩu chính hãng với mẫu mã đa dạng, sang trọng cho nội thát, giá cả tốt', 'Hà Nội', 266489694, 'bellasofa@gmail.com', 'sofaImage/logo/bellasofa.png'),
(3, 'Sofa Center', 'Giá trị thương hiệu và giá trị sản phẩm đạt mức cao. Hầu hết thiết kế mang sự sang trong, tinh tế, pha trộn phong cách hiện đại của hai quốc gia Đức và Ý', 'Hà Nội', 678997997, 'sofacenter', 'sofaImage/logo/logo.jpg'),
(4, 'Omega Sofa', 'Những sản phẩm sofa mang xu hướng trẻ trung,hiện đại, độc đáo, ngọt ngào. Hệ thống phân phối tương đối ổn, mức giá hợp lý.', 'Hà Nội', 234568768, 'omegasofa@gmail.com', 'sofaImage/logo/omegasofa.jpg'),
(5, 'SofaWorks', 'Điểm mạnh về thương hiệu, là sản phẩm từ thương hiệu công ty Việt Nam với các sản phẩm chất lượng, bền nhưng giá cả vừa phải', 'Hải Phòng', 23856784, 'sofawork@gmail.com', 'sofaImage/logo/sofaworks.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hoadon`
--

CREATE TABLE `tb_hoadon` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_kh` int(11) UNSIGNED NOT NULL,
  `ten_kh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaytao` datetime NOT NULL,
  `tong_tien` double NOT NULL,
  `ghichu` text COLLATE utf8_unicode_ci NOT NULL,
  `id_trangthai_don` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_hoadon`
--

INSERT INTO `tb_hoadon` (`id`, `id_kh`, `ten_kh`, `dienthoai`, `email`, `diachi`, `ngaytao`, `tong_tien`, `ghichu`, `id_trangthai_don`) VALUES
(1, 1, 'hoàng huyền', 987868672, 'huyenhoangthaibinh@gmail.com', 'Thái Bình', '2018-11-23 00:00:00', 34567890, 'ko', 1),
(2, 5, 'Nguyễn Thị Bích Thảo', 1234566, 'nguyenbichthao@gmail.com', 'Phú Thọ', '2018-11-29 00:00:00', 12345444, 'ko', 4),
(3, 2, 'lai thu hai', 27457839, 'laithuhai@gmail.com', 'Thái Bình', '2018-11-06 00:00:00', 1246788, 'ko', 2),
(4, 3, 'trương thị thắm', 1234577, 'truongthitham@gmail.com', 'Hà Nam', '2018-11-02 00:00:00', 2456745, 'ko', 1),
(5, 7, 'Lê Quang Minh', 1233567, 'lequangminh@gmail.com', 'Thanh Hoá', '2018-11-03 00:00:00', 1234572, 'ko', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_khachhang`
--

CREATE TABLE `tb_khachhang` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten_kh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_khachhang`
--

INSERT INTO `tb_khachhang` (`id`, `username`, `password`, `ten_kh`, `dienthoai`, `email`, `diachi`) VALUES
(1, 'huyencute', '123456789', 'hoàng huyền', 987868672, 'huyenhoangthaibinh@gmail.com', 'Thái Bình'),
(2, 'hailm', 'hai12346', 'lại tu hải', 27457839, 'laithuhai@gmail.com', 'Thái Bình'),
(3, 'tham', 'tham12345', 'trương thị thắm', 1234577, 'truongthitham@gmail.com', 'Hà Nam'),
(4, 'Lan Anh', 'L.anh12345', 'Đỗ Lan Anh', 2345678, 'dolananh@gmail.com', 'Hà Nam'),
(5, 'Bích thảo', 'thảo12345', 'Nguyễn Thị Bích Thảo', 1234566, 'nguyenbichthao@gmail.com', 'Phú Thọ'),
(6, 'tùng sơn', 'tungson12345', 'Nguyễn Tùng Sơn', 2456789, 'nguyentungson@gmail.com', 'Hà Nội'),
(7, 'minh', 'minh12345', 'Lê Quang Minh', 1233567, 'lequangminh@gmail.com', 'Thanh Hoá'),
(8, 'thuỳ', 'thuy12345', 'Ngô Diệu Thuỳ', 12346852, 'ngodieuthuy@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kich_co`
--

CREATE TABLE `tb_kich_co` (
  `id` int(11) NOT NULL,
  `kich_co` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_kich_co`
--

INSERT INTO `tb_kich_co` (`id`, `kich_co`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L');

-- --------------------------------------------------------

--
-- Table structure for table `tb_loai_sp`
--

CREATE TABLE `tb_loai_sp` (
  `id` int(11) NOT NULL,
  `loai_sp` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_loai_sp`
--

INSERT INTO `tb_loai_sp` (`id`, `loai_sp`) VALUES
(1, 'Bedroom'),
(2, 'Livingroom'),
(3, 'Văn phòng'),
(4, 'Khách sạn'),
(5, 'Cổ điển');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mau_sac`
--

CREATE TABLE `tb_mau_sac` (
  `id` int(11) NOT NULL,
  `mau_sac` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_mau_sac`
--

INSERT INTO `tb_mau_sac` (`id`, `mau_sac`) VALUES
(1, 'Đỏ'),
(2, 'Đen'),
(3, 'Trắng'),
(4, 'Hồng'),
(5, 'Tím'),
(6, 'Vàng'),
(7, 'Xám'),
(8, 'Xanh');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sp`
--

CREATE TABLE `tb_sp` (
  `id` int(11) NOT NULL,
  `ten_sp` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `ngay_sx` datetime DEFAULT NULL,
  `anh_daidien` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soluong` int(20) DEFAULT NULL,
  `giacu` double(10,0) DEFAULT NULL,
  `giamoi` double(10,0) DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaynhapkho` datetime DEFAULT NULL,
  `trangthai` int(11) DEFAULT NULL,
  `an_hien` int(1) DEFAULT NULL,
  `id_kich_co` int(11) DEFAULT NULL,
  `id_mau_sac` int(11) DEFAULT NULL,
  `id_hang` int(11) DEFAULT NULL,
  `id_chatlieu` int(11) DEFAULT NULL,
  `id_loai_sp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_trangthai_don`
--

CREATE TABLE `tb_trangthai_don` (
  `id` int(11) NOT NULL,
  `trangthai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_trangthai_don`
--

INSERT INTO `tb_trangthai_don` (`id`, `trangthai`) VALUES
(1, 'đã hoàn thành'),
(2, 'Đang xử lý'),
(3, 'chưa giao hàng'),
(4, 'đang giao hàng');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_anh_chitiet`
--
ALTER TABLE `tb_anh_chitiet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sp` (`id_sp`) USING BTREE;

--
-- Indexes for table `tb_chatlieu`
--
ALTER TABLE `tb_chatlieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_chitiet_hoadon`
--
ALTER TABLE `tb_chitiet_hoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sp` (`id_sp`) USING BTREE,
  ADD KEY `id_hoadon` (`id_hoadon`) USING BTREE;

--
-- Indexes for table `tb_danhmuc`
--
ALTER TABLE `tb_danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_dm_sp`
--
ALTER TABLE `tb_dm_sp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sp` (`id_sp`) USING BTREE,
  ADD KEY `id_danhmuc` (`id_danhmuc`) USING BTREE;

--
-- Indexes for table `tb_hang`
--
ALTER TABLE `tb_hang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_hoadon`
--
ALTER TABLE `tb_hoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kh` (`id_kh`) USING BTREE,
  ADD KEY `id_trangthai_don` (`id_trangthai_don`) USING BTREE;

--
-- Indexes for table `tb_khachhang`
--
ALTER TABLE `tb_khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kich_co`
--
ALTER TABLE `tb_kich_co`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_loai_sp`
--
ALTER TABLE `tb_loai_sp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mau_sac`
--
ALTER TABLE `tb_mau_sac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_sp`
--
ALTER TABLE `tb_sp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_chatlieu` (`id_chatlieu`) USING BTREE,
  ADD KEY `id_kichco` (`id_kich_co`) USING BTREE,
  ADD KEY `id_mau_sac` (`id_mau_sac`) USING BTREE,
  ADD KEY `id_hang` (`id_hang`) USING BTREE,
  ADD KEY `id_loai_sp` (`id_loai_sp`) USING BTREE;

--
-- Indexes for table `tb_trangthai_don`
--
ALTER TABLE `tb_trangthai_don`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_chatlieu`
--
ALTER TABLE `tb_chatlieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_hang`
--
ALTER TABLE `tb_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_kich_co`
--
ALTER TABLE `tb_kich_co`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_loai_sp`
--
ALTER TABLE `tb_loai_sp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_mau_sac`
--
ALTER TABLE `tb_mau_sac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_sp`
--
ALTER TABLE `tb_sp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_anh_chitiet`
--
ALTER TABLE `tb_anh_chitiet`
  ADD CONSTRAINT `tb_anh_chitiet_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `tb_sp` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_chitiet_hoadon`
--
ALTER TABLE `tb_chitiet_hoadon`
  ADD CONSTRAINT `tb_chitiet_hoadon_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `tb_sp` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_chitiet_hoadon_ibfk_2` FOREIGN KEY (`id_hoadon`) REFERENCES `tb_hoadon` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_dm_sp`
--
ALTER TABLE `tb_dm_sp`
  ADD CONSTRAINT `tb_dm_sp_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `tb_sp` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_dm_sp_ibfk_2` FOREIGN KEY (`id_danhmuc`) REFERENCES `tb_danhmuc` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_hoadon`
--
ALTER TABLE `tb_hoadon`
  ADD CONSTRAINT `tb_hoadon_ibfk_1` FOREIGN KEY (`id_trangthai_don`) REFERENCES `tb_trangthai_don` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_hoadon_ibfk_2` FOREIGN KEY (`id_kh`) REFERENCES `tb_khachhang` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_sp`
--
ALTER TABLE `tb_sp`
  ADD CONSTRAINT `tb_mau_sac_ibfk_1` FOREIGN KEY (`id_mau_sac`) REFERENCES `tb_mau_sac` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
