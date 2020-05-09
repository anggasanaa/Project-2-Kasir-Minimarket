-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 09 Bulan Mei 2020 pada 15.16
-- Versi server: 5.7.24
-- Versi PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir_minimarket`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `product_type` varchar(200) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `expired` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `name`, `product_type`, `stock`, `price`, `expired`) VALUES
(1, 'Odol Pepsodent', 'Peralatan Mandi', 100, 10000, '2020-08-15'),
(2, 'Sabun Shinzui', 'Peralatan Mandi', 200, 12000, '2020-11-11'),
(3, 'Sabun Dettol', 'Peralatan Mandi', 150, 6000, '2021-06-12'),
(4, 'Sabun Lux', 'Peralatan Mandi', 110, 5000, '2022-12-10'),
(5, 'Cusson Baby', 'Peralatan Mandi', 130, 4500, '2022-07-17'),
(6, 'Shampo Clear', 'Peralatan Mandi', 250, 12000, '2022-10-21'),
(7, 'Shampo Pantene', 'Peralatan Mandi', 280, 12800, '2022-09-30'),
(8, 'Shampo Sunsilk Smooth', 'Peralatan Mandi', 130, 15700, '2023-04-18'),
(9, 'Shampo Lifebouy Anti Dandruf', 'Peralatan Mandi', 270, 20000, '2023-01-14'),
(10, 'Rinso Anti Noda 900G', 'Detergent & Pelembut', 160, 23400, '2024-02-25'),
(11, 'Rinso Molto 900G', 'Detergent & Pelembut', 130, 22800, '2024-03-16'),
(12, 'Attack  Easy 900G', 'Detergent & Pelembut', 120, 20500, '2023-06-11'),
(13, 'Attack Softener 900G', 'Detergent & Pelembut', 140, 19800, '2023-02-20'),
(14, 'WOW Sejuta Bunga 900G', 'Detergent & Pelembut', 100, 18500, '2023-01-03'),
(15, 'Molto Ultra Biru 300ML', 'Detergent & Pelembut', 300, 17500, '2023-05-10'),
(16, 'Molto Ultra Pink 300ML', 'Detergent & Pelembut', 300, 20800, '2023-06-18'),
(17, 'Molto Pewangi Flower', 'Detergent & Pelembut', 230, 21300, '2020-10-19'),
(18, 'Downy Mystique 720ML', 'Detergent & Pelembut', 300, 23700, '2023-08-26'),
(19, 'Downy Sunrise Fresh 750ML', 'Detergent & Pelembut', 350, 24500, '2023-06-30'),
(20, 'Downy Passion 1.5L', 'Detergent & Pelembut', 350, 30000, '2024-12-18'),
(21, 'Minyak Bimoli 2L', 'Sembako', 1000, 35000, '2023-08-22'),
(22, 'Bimoli 1L', 'Sembako', 1000, 22800, '2023-08-29'),
(23, 'Filma 2L', 'Sembako', 1000, 26200, '2023-07-22'),
(24, 'Filma 1L', 'Sembako', 1000, 22900, '2023-02-24'),
(25, 'Tropical 2L', 'Sembako', 1000, 30000, '2023-06-26'),
(26, 'Tropical 1L', 'Sembako', 1000, 18000, '2023-05-21'),
(27, 'Indomie Soto ', 'Sembako', 2000, 2500, '2023-07-25'),
(28, 'Indomie Goreng', 'Sembako', 2000, 2500, '2023-09-19'),
(29, 'Indomie Ayam Bawang', 'Sembako', 2000, 2500, '2024-08-30'),
(30, 'Indomie Ayam Spesial', 'Sembako', 2000, 2500, '2023-04-18'),
(31, 'Indomie Kari Ayam', 'Sembako', 2000, 2500, '2023-06-28'),
(32, 'Mie Sedap Goreng', 'Sembako', 2000, 2200, '2023-07-23'),
(33, 'Mie Sedap Soto', 'Sembako', 2000, 2200, '2023-05-03'),
(34, 'Mie Sedap Ayam Spesial', 'Sembako', 2000, 2200, '2023-04-08'),
(35, 'Kapal Api Spesail 185G', 'Sembako', 1500, 10000, '2023-02-09'),
(36, 'Kapal Api Spesial', 'Sembako', 1500, 10000, '2023-03-10'),
(37, 'SKM ULTRA COKLAT 390G', 'Sembako', 900, 8000, '2025-09-11'),
(38, 'SKM ULTRA PUTIH 397G', 'Sembako', 900, 10000, '2024-12-08'),
(39, 'SKM BENDERA COKLAT385G', 'Sembako', 900, 8700, '2024-12-02'),
(40, 'SKM BENDERA PUTIH 385G', 'Sembako', 900, 10800, '2024-12-12'),
(41, 'SKM INDOMILK COKLAT 385G', 'Sembako', 900, 8500, '2024-10-23'),
(42, 'SKM INDOMILK PUTIH 385G', 'Sembako', 900, 10900, '2024-11-12'),
(43, 'SOSRO CELUP 30?S ', 'Sembako', 1000, 5500, '2024-10-01'),
(44, 'SOSRO JASMINE CELUP 25?S', 'Sembako', 1000, 7000, '2024-09-22'),
(45, 'POCI CELUP VANILA 25?S', 'Sembako', 1000, 6200, '2024-08-11'),
(46, 'SARIWANGI CELUP 25?S ', 'Sembako', 1000, 6300, '2024-08-17'),
(47, 'GULA PASIR A 1 KG (PUTIH) ', 'Sembako', 1000, 8800, '2024-12-12'),
(48, 'GULA PASIR B 1 KG (AGAK COKLAT)', 'Sembako', 1000, 7800, '2024-12-09'),
(49, 'KECAP ABC MANIS 140ML', 'Sembako', 1000, 5000, '2024-07-01'),
(50, 'KECAP SEDAAP MANIS 140ML', 'Sembako', 1000, 4800, '2023-06-03'),
(51, 'ABC SAMBAL ASLI 340ML', 'Sembako', 1000, 9000, '2024-05-02'),
(52, 'ABC EXTRA PEDAS 140ML', 'Sembako', 1000, 5500, '2024-03-20'),
(53, 'INDOFOOD SAMBAL PEDAS 140ML', 'Sembako', 1000, 5800, '2023-03-21'),
(55, 'INDOFOOD SAMBAL EXTRA PEDAS 140ML', 'Sembako', 1000, 5300, '2023-03-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `total_kuantitas` bigint(20) DEFAULT NULL,
  `harga_satuan` varchar(200) DEFAULT NULL,
  `total_harga` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `user_id`, `product_id`, `total_kuantitas`, `harga_satuan`, `total_harga`) VALUES
(1, 3, 4, 10, '5000', 50000);

--
-- Trigger `transaksi`
--
DELIMITER $$
CREATE TRIGGER `stock_fall` AFTER INSERT ON `transaksi` FOR EACH ROW BEGIN
	UPDATE produk SET stock=stock-NEW.total_kuantitas
    WHERE id=NEW.product_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` varchar(1) NOT NULL DEFAULT 'U'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `type`) VALUES
(1, 'shadam', 'shadam04', 'U'),
(2, 'azhar', 'azhar05', 'U'),
(3, 'angga', 'angga07', 'U');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users` (`user_id`),
  ADD KEY `fk_produk` (`product_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
