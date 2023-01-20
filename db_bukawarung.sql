-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2023 at 01:20 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukawarung`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Izza Mufidah', 'admin', 'fcea920f7412b5da7be0cf42b8c93759', '+6288989366829', 'mufidahizza12@gmail.com', 'Jl. Cendono, Sumberyudho, Purwosari, Pasuruan 67162.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(17, 'Tas'),
(18, 'Sepatu'),
(19, 'Baju'),
(21, 'Celana'),
(22, 'Kalung'),
(23, 'Gelang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(5, 17, 'tas1', 120000, '<p>SPESIFIKASI PRODUK</p>\r\n\r\n<p>- Bahan : Kanvas</p>\r\n\r\n<p>- Ukuran : panjang 41 lebar 29</p>\r\n\r\n<p>- Berat 370 gram - 1 kg bisa muat untuk 3 pcs</p>\r\n\r\n<p>- KONDISI 100% BARU</p>\r\n\r\n<p>- Sudah Termasuk Pin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>KELEBIHAN PRODUK KAMI:</p>\r\n\r\n<p>- Model yang Simple Sehingga sangat Cocok Dipadu-padankan dengan OOTD Apapun,</p>\r\n\r\n<p>- Harga TERMURAH se-jagad raya</p>\r\n\r\n<p>- Kualitas Terbaik Dikelasnya.</p>\r\n', 'produk1672458991.jpg', 1, '2022-12-30 13:26:44'),
(7, 17, 'tas2', 250000, '<p>SPESIFIKASI PRODUK</p>\r\n\r\n<p>- Bahan : Kanvas</p>\r\n\r\n<p>- Ukuran : panjang 41 lebar 29</p>\r\n\r\n<p>- Berat 370 gram - 1 kg bisa muat untuk 3 pcs</p>\r\n\r\n<p>- KONDISI 100% BARU</p>\r\n\r\n<p>- Sudah Termasuk Pin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>KELEBIHAN PRODUK KAMI:</p>\r\n\r\n<p>- Model yang Simple Sehingga sangat Cocok Dipadu-padankan dengan OOTD Apapun,</p>\r\n\r\n<p>- Harga TERMURAH se-jagad raya</p>\r\n\r\n<p>- Kualitas Terbaik Dikelasnya.</p>\r\n', 'produk1672406973.jpg', 1, '2022-12-30 13:29:33'),
(8, 18, 'sepatu1', 200000, '<p>Sneaker kekinian dengan bahan kombinasi sintetis dan mess serta sol yang tebal sehingga memiliki bentuk yang unik dan stylish. Dengan variasi warna sehingga cocok dipadukan dengan atasan apapun.&nbsp;</p>\r\n\r\n<p>&bull; Kondisi : 100% Baru dan Kualitas Tinggi</p>\r\n\r\n<p>&bull; Bahan : Kombinasi,sintetis dan mess</p>\r\n\r\n<p>&bull;&nbsp; Warna : TOSKA,PINK,HITAM,KUNING</p>\r\n\r\n<p>&bull;&nbsp; Asesoris : Tali (Lace)</p>\r\n\r\n<p>Patokan Panjang Kaki dan Size :</p>\r\n\r\n<p>&bull; 37 : 22,5 cm</p>\r\n\r\n<p>&bull; 38 : 23 cm</p>\r\n\r\n<p>&bull; 39 : 23,5 cm</p>\r\n\r\n<p>&bull; 40 : 24 cm</p>\r\n', 'produk1672407024.jpg', 1, '2022-12-30 13:30:24'),
(9, 18, 'sepatu2', 270000, '<p>Sneaker kekinian dengan bahan kombinasi sintetis dan mess serta sol yang tebal sehingga memiliki bentuk yang unik dan stylish. Dengan variasi warna sehingga cocok dipadukan dengan atasan apapun. Juga dengan asesoris tali.</p>\r\n\r\n<p>&bull; Kondisi : 100% Baru dan Kualitas Tinggi</p>\r\n\r\n<p>&bull; Bahan : Kombinasi,sintetis dan mess</p>\r\n\r\n<p>&bull;&nbsp; Warna : TOSKA,PINK,HITAM,KUNING</p>\r\n\r\n<p>&bull;&nbsp; Asesoris : Tali (Lace)</p>\r\n\r\n<p>Patokan Panjang Kaki dan Size :</p>\r\n\r\n<p>&bull; 37 : 22,5 cm</p>\r\n\r\n<p>&bull; 38 : 23 cm</p>\r\n\r\n<p>&bull; 39 : 23,5 cm</p>\r\n\r\n<p>&bull; 40 : 24 cm</p>\r\n', 'produk1672407062.jpg', 1, '2022-12-30 13:31:02'),
(10, 19, 'baju1', 150000, '<p>matt : Rayon Crinkle Import mix lace import</p>\r\n\r\n<p>Size : All size ( Ld 100 , pjg 60 )</p>\r\n\r\n<p>Color : bw, nude, brick, choco.</p>\r\n', 'produk1672407106.png', 1, '2022-12-30 13:31:46'),
(11, 19, 'baju2', 150000, '<p>matt : Rayon Crinkle Import mix lace import</p>\r\n\r\n<p>Size : All size ( Ld 100 , pjg 60 )</p>\r\n\r\n<p>Color : bw, nude, brick, choco.</p>\r\n', 'produk1672407147.jpg', 1, '2022-12-30 13:32:27'),
(13, 21, 'celana1', 80000, '<p>Gaya : Basic, Korean</p>\r\n\r\n<p>✨ Model pinggang Highwaist.</p>\r\n\r\n<p>✨ Pinggang depan memakai kancing dan ada resleting</p>\r\n\r\n<p>✨ Pinggang belakang ada karet</p>\r\n\r\n<p>✨ 2 saku, samping kanan dan kiri</p>\r\n\r\n<p>✨ Celana yang multifungsi, bisa dipakai kerja, casual look, or korean look.</p>\r\n', 'produk1672408977.jpg', 1, '2022-12-30 14:02:58'),
(14, 21, 'celana2', 99000, '<p>Gaya : Basic, Korean</p>\r\n\r\n<p>✨ Model pinggang Highwaist.</p>\r\n\r\n<p>✨ Pinggang depan memakai kancing dan ada resleting</p>\r\n\r\n<p>✨ Pinggang belakang ada karet</p>\r\n\r\n<p>✨ 2 saku, samping kanan dan kiri</p>\r\n\r\n<p>✨ Celana yang multifungsi, bisa dipakai kerja, casual look, or korean look.</p>\r\n', 'produk1672409042.jpg', 1, '2022-12-30 14:04:02'),
(15, 22, 'kalung1', 30000, '<p>100% Merek baru dan kualitas tinggi</p>\r\n\r\n<p>Jenis: Kalung</p>\r\n\r\n<p>Warna: Perak, Emas</p>\r\n\r\n<p>Tema: Fashion</p>\r\n\r\n<p>Batu: Berlian</p>\r\n\r\n<p>Logam: Baja Titanium</p>\r\n\r\n<p>Ukuran: 40 + 5 cm</p>\r\n\r\n<p>Paket termasuk: 1 x Kalung</p>\r\n', 'produk1672409090.jpg', 1, '2022-12-30 14:04:50'),
(16, 22, 'kalung2', 30000, '<p>Gaya : Kasual, Elegan, Vintage</p>\r\n\r\n<p>100% Merek baru dan kualitas tinggi</p>\r\n\r\n<p>Jenis: Kalung</p>\r\n\r\n<p>Warna: Perak, Emas&nbsp;</p>\r\n\r\n<p>Ukuran: 40 + 5 cm</p>\r\n\r\n<p>Paket termasuk: 1 x Kalung</p>\r\n', 'produk1672409137.jpg', 1, '2022-12-30 14:05:37'),
(17, 23, 'gelang1', 20000, '<p>Harga yang tertera adalah harga satuan&nbsp;</p>\r\n\r\n<p>100% Brand New with High Quality</p>\r\n\r\n<p>Tipe: Gelang Fashion Mutiara</p>\r\n\r\n<p>Material: Stainless Ukuran: 22 cm</p>\r\n', 'produk1672409767.jpg', 1, '2022-12-30 14:06:35'),
(18, 23, 'gelang2', 19000, '<p>Harga yang tertera adalah harga satuan&nbsp;</p>\r\n\r\n<p>100% Brand New with High Quality</p>\r\n\r\n<p>Tipe: Gelang Fashion</p>\r\n\r\n<p>Material: Stainless Ukuran: 22 cm</p>\r\n', 'produk1672409239.jpg', 1, '2022-12-30 14:07:19'),
(19, 17, 'tas3', 120000, '<p>bahan bagus</p>\r\n', 'produk1672460825.jpg', 0, '2022-12-31 04:00:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
