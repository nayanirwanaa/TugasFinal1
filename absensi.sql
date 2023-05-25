-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Bulan Mei 2023 pada 01.15
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblogin`
--

CREATE TABLE `tblogin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tblogin`
--

INSERT INTO `tblogin` (`username`, `password`, `nama`) VALUES
('admin01', 'admin01', 'ADMIN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbmasuk`
--

CREATE TABLE `tbmasuk` (
  `NIP` varchar(20) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Posisi` varchar(20) NOT NULL,
  `Mapel` varchar(20) NOT NULL,
  `Absen` varchar(10) DEFAULT NULL,
  `Tanggal_Absen` date NOT NULL,
  `Jam` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbmasuk`
--

INSERT INTO `tbmasuk` (`NIP`, `Nama`, `Posisi`, `Mapel`, `Absen`, `Tanggal_Absen`, `Jam`) VALUES
('001', 'TASMAN', 'Guru', 'Matematika', 'Masuk', '2023-05-21', '10:08:19'),
('002', 'FAUZIL', 'Guru', 'Bahasa Indonesia', 'Masuk', '2023-05-21', '22:43:56'),
('13020210133', 'yayang', 'guru', 'bahasa indonesia', 'Masuk', '2023-05-21', '23:00:02'),
('002', 'Fauzil', 'Guru', 'IPA', 'Pulang', '2023-05-22', '04:32:01'),
('13020210133', 'yayang', 'guru', 'bahasa indonesia', 'Pulang', '2023-05-22', '04:54:38'),
('002', 'yayang', 'guru', 'bahasa indonesia', 'Masuk', '2023-05-26', '02:46:45'),
('002', 'yayang', 'Guru', 'Bahasa Indonesia', 'Pulang', '2023-05-26', '05:55:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpersonal`
--

CREATE TABLE `tbpersonal` (
  `NIP` varchar(20) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Posisi` varchar(20) NOT NULL,
  `Mapel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbpersonal`
--

INSERT INTO `tbpersonal` (`NIP`, `Nama`, `Posisi`, `Mapel`) VALUES
('001', 'TASMAN', 'Guru', 'Matematika'),
('002', 'yayang', 'Guru', 'Bahasa Indonesia'),
('003', 'naya', 'Guru', 'None');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tblogin`
--
ALTER TABLE `tblogin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `tbpersonal`
--
ALTER TABLE `tbpersonal`
  ADD PRIMARY KEY (`NIP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
