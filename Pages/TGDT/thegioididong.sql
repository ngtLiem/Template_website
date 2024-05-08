-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2020 at 11:01 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thegioididong`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nhasanxuat`
--

CREATE TABLE `tbl_nhasanxuat` (
  `NhaSanXuat_id` int(11) NOT NULL,
  `TenNhaSanXuat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_nhasanxuat`
--

INSERT INTO `tbl_nhasanxuat` (`NhaSanXuat_id`, `TenNhaSanXuat`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Xiaomi'),
(4, 'Oppo'),
(5, 'Huawei'),
(6, 'Bphone'),
(7, 'VSmart'),
(8, 'Nokia'),
(9, 'Realmi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `SanPham_id` int(11) NOT NULL,
  `TenSanPham` varchar(100) NOT NULL,
  `NhaSanXuat_id` int(11) NOT NULL,
  `ManHinh` varchar(100) NOT NULL,
  `HeDieuHanh` varchar(100) NOT NULL,
  `CameraSau` varchar(100) NOT NULL,
  `CameraTruoc` varchar(100) NOT NULL,
  `CPU` varchar(100) NOT NULL,
  `RAM` varchar(100) NOT NULL,
  `ROM` varchar(100) NOT NULL,
  `SDCard` varchar(100) NOT NULL,
  `Pin` varchar(100) NOT NULL,
  `DonGia` varchar(100) NOT NULL,
  `DonGiaKhuyenMai` varchar(100) NOT NULL,
  `Discount` varchar(100) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `HinhAnh` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`SanPham_id`, `TenSanPham`, `NhaSanXuat_id`, `ManHinh`, `HeDieuHanh`, `CameraSau`, `CameraTruoc`, `CPU`, `RAM`, `ROM`, `SDCard`, `Pin`, `DonGia`, `DonGiaKhuyenMai`, `Discount`, `SoLuong`, `TrangThai`, `HinhAnh`) VALUES
(1, 'Iphone 11', 1, '	6.1 inchs, Liquid Retina HD, 828 x 1792 Pixels', '	iOS 13', '	Dual 12MP Ultra Wide and Wide cameras', '	12.0 MP', '	Apple A13 Bionic, 6, Đang cập nhật', '	4 GB', '64 GB', 'Không', '	Lithium-ion', '21.990.000đ', '19.990.000đ', 'Giảm 2.000.000đ', 10, 1, '../TGDT/image/dt2.jpg'),
(15, 'Samsung Galaxy S20 Plus', 2, '	6.7 inchs, 2K+, 2K+ (1440 x 3200 Pixels)', '	Android 10.0', '	Chính 12 MP & Phụ 64 MP, 12 MP, TOF 3D\r\n', '	10MP', '	Exynos 990, 8, 2 nhân 2.73 GHz, 2 nhân 2.6 GHz & 4 nhân 2.0 GHz\r\n', '	8 GB', '	128 GB', 'Tối đa 1TB', '	4500 mAh', '23.990.000đ', '19.990.000đ', 'Giảm 4.000.000đ', 10, 1, '../TGDT/image/dt1.jpg'),
(16, 'Xiaomi Redmi Note 8', 3, '	6.7 inchs, 2K+, 2K+ (1440 x 3200 Pixels)', '	Android 10.0', '	Chính 12 MP & Phụ 64 MP, 12 MP, TOF 3D\r\n', '	10MP', '	Exynos 990, 8, 2 nhân 2.73 GHz, 2 nhân 2.6 GHz & 4 nhân 2.0 GHz\r\n', '	8 GB', '	128 GB', 'Tối đa 1TB', '	4500 mAh', '23.990.000đ', '19.990.000đ', 'Giảm 4.000.000đ', 10, 1, '../TGDT/image/dt3.jpg'),
(17, 'Xiaomi Redmi Note 9', 3, '	6.7 inchs, 2K+, 2K+ (1440 x 3200 Pixels)', '	Android 10.0', '	Chính 12 MP & Phụ 64 MP, 12 MP, TOF 3D\r\n', '	10MP', '	Exynos 990, 8, 2 nhân 2.73 GHz, 2 nhân 2.6 GHz & 4 nhân 2.0 GHz\r\n', '	8 GB', '	128 GB', 'Tối đa 1TB', '	4500 mAh', '23.990.000đ', '19.990.000đ', 'Giảm 4.000.000đ', 10, 1, '../TGDT/image/dt4.jpg'),
(18, 'Oppo F11', 4, '	6.7 inchs, 2K+, 2K+ (1440 x 3200 Pixels)', '	Android 10.0', '	Chính 12 MP & Phụ 64 MP, 12 MP, TOF 3D\r\n', '	10MP', '	Exynos 990, 8, 2 nhân 2.73 GHz, 2 nhân 2.6 GHz & 4 nhân 2.0 GHz\r\n', '	8 GB', '	128 GB', 'Tối đa 1TB', '	4500 mAh', '23.990.000đ', '19.990.000đ', 'Giảm 4.000.000đ', 10, 1, '../TGDT/image/dt5.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_nhasanxuat`
--
ALTER TABLE `tbl_nhasanxuat`
  ADD PRIMARY KEY (`NhaSanXuat_id`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`SanPham_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_nhasanxuat`
--
ALTER TABLE `tbl_nhasanxuat`
  MODIFY `NhaSanXuat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `SanPham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
