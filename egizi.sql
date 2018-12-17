-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17 Des 2018 pada 16.48
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egizi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_hitung`
--

CREATE TABLE `log_hitung` (
  `id_log` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `hasil` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `tinggi_badan` int(11) NOT NULL,
  `berat_badan` int(11) NOT NULL,
  `usia` int(11) NOT NULL,
  `level_aktivitas` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log_hitung`
--

INSERT INTO `log_hitung` (`id_log`, `id_user`, `id_menu`, `hasil`, `nama`, `jk`, `tinggi_badan`, `berat_badan`, `usia`, `level_aktivitas`, `timestamp`) VALUES
(2, 13, 1, 1972, 'EDAS', 'L', 190, 80, 30, 'tidakaktif', '2018-01-16 15:27:30'),
(3, 14, 2, 2482, 'Hawari', 'L', 190, 90, 28, 'tidakaktif', '2018-02-12 15:17:21'),
(4, 14, 1, 1935, 'jjhjhj', 'L', 170, 80, 60, 'tidakaktif', '2018-02-12 15:17:37'),
(5, 14, 1, 1635, 'kjkjkj', 'L', 120, 80, 60, 'tidakaktif', '2018-03-12 15:17:55'),
(6, 14, 2, 2544, 'Hawari', 'L', 190, 90, 60, 'ringan', '2018-03-12 15:18:19'),
(7, 13, 2, 2259, 'Putri', 'P', 190, 80, 30, 'ringan', '2018-01-16 16:06:03'),
(14, 13, 2, 2127, 'Desti', 'P', 190, 70, 30, 'ringan', '2018-01-16 16:08:45'),
(15, 13, 2, 2127, 'Desi', 'P', 190, 70, 30, 'ringan', '2018-01-16 16:06:03'),
(16, 13, 2, 2127, 'Mei', 'P', 190, 70, 30, 'ringan', '2018-01-16 16:06:03'),
(17, 13, 2, 2127, 'Novi', 'P', 190, 70, 30, 'ringan', '2018-02-16 16:09:00'),
(18, 13, 2, 2127, 'Reni', 'P', 190, 70, 30, 'ringan', '2018-02-16 16:09:12'),
(19, 13, 2, 2127, 'Devita', 'P', 190, 70, 30, 'ringan', '2018-03-16 16:09:17'),
(20, 13, 2, 2127, 'Delia', 'P', 190, 70, 30, 'ringan', '2018-03-16 16:09:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nmuser` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `lv_user` enum('user','admin','','') NOT NULL,
  `publish` enum('T','F','','') NOT NULL,
  `foto` varchar(255) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `email`, `username`, `nmuser`, `password`, `lv_user`, `publish`, `foto`) VALUES
(13, 'hawari@ekola.com', 'hawari123', 'Hawari Muhtarom', '11e0af74af05a830b647f38d183e4f6e', 'admin', 'T', 'default.jpg'),
(14, 'karin@ekola.com', 'karin123', 'Karin Fitriliyana', '87c2bb2e46e63ecc018b7bb6eb2f5057', 'admin', 'T', '153055771851994117648260051_8233045.jpg'),
(16, 'dodi@gmail.com', 'dodi123', 'Dodi', 'bcfeb3c97660cbaabb9fc3a345465f3f', 'user', 'T', '153056165865245503333309200_8233045.jpg'),
(17, 'cindi@gmail.com', 'cindi123', 'cindi', '6ea31ff746dacf297e333900384cd19e', 'user', 'T', 'default.jpg'),
(18, 'anga@gmail.com', 'angga123', 'angga', '1fd5cd9766249f170035b7251e2c6b61', 'user', 'T', '1530683296olinela.png'),
(19, 'hasfi@gmail.com', 'hasfi123', 'hasfi', '2c880268ef268ff0a3523bf50e7fce61', 'user', 'T', 'default.jpg'),
(21, 'dedi@gmail.com', 'dedi123', 'dedi', '827ccb0eea8a706c4c34a16891f84e7b', 'user', 'T', 'default.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log_hitung`
--
ALTER TABLE `log_hitung`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `fk_user` (`id_user`),
  ADD KEY `fk_kalori` (`id_menu`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log_hitung`
--
ALTER TABLE `log_hitung`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `log_hitung`
--
ALTER TABLE `log_hitung`
  ADD CONSTRAINT `fk_kalori` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
