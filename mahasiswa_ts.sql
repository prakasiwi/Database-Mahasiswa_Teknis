-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Sep 2021 pada 08.54
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahasiswa_ts`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(155) NOT NULL,
  `nama` varchar(155) NOT NULL,
  `alamat` varchar(155) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `umur` int(155) DEFAULT NULL,
  `telp` int(155) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`, `jenis_kelamin`, `umur`, `telp`) VALUES
(10001, 'John', 'Medokan', 'L', 20, 987645321),
(10002, 'Agnes', 'Tandes', 'P', 21, 987645322),
(10003, 'Monica', 'Rungkut', 'P', 20, 987645323),
(10004, 'Sherlock', 'Lontar', 'L', 22, 987645324),
(10005, 'Holmes', 'Ngagel', 'L', 23, 987645325),
(10006, 'Watson', 'Nginden', 'L', 21, 987645326),
(10007, 'Irena', 'Benowo', 'P', 23, 987645327);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `nim` int(155) NOT NULL,
  `kode_mk` varchar(155) NOT NULL,
  `nama_mk` varchar(155) NOT NULL,
  `sks` int(155) DEFAULT NULL,
  `nilai_angka` int(155) NOT NULL,
  `nilai_huruf` enum('A','B','C','D','E') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`nim`, `kode_mk`, `nama_mk`, `sks`, `nilai_angka`, `nilai_huruf`) VALUES
(10001, 'MKA', 'Matematika', 2, 89, 'A'),
(10001, 'MKB', 'Biologi', 3, 75, 'B'),
(10001, 'MKC', 'Fisika', 4, 20, 'E'),
(10002, 'MKB', 'Biologi', 3, 43, 'D'),
(10002, 'MKA', 'Matematika', 2, 66, 'C');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD KEY `fk_nilai_mahasiswa` (`nim`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `fk_nilai_mahasiswa` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
