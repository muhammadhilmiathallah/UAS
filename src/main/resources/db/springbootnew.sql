-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Des 2023 pada 12.13
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `springbootnew`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins_roles`
--

CREATE TABLE `admins_roles` (
  `aid` int(11) NOT NULL,
  `rid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admins_roles`
--

INSERT INTO `admins_roles` (`aid`, `rid`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `candidate1` varchar(255) DEFAULT NULL,
  `candidate2` varchar(255) DEFAULT NULL,
  `candidate3` varchar(255) DEFAULT NULL,
  `candidate4` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`role_id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Struktur dari tabel `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `voters`
--

INSERT INTO `voters` (`id`, `email`, `name`, `password`, `phone`) VALUES
(2, 'hilmi@gmail.com', 'hilmi', '12345', '088977338898'),
(3, 'wasilah@gmail.com', 'wasilah', '12345', '085782101497');

-- --------------------------------------------------------

--
-- Struktur dari tabel `voters_roles`
--

CREATE TABLE `voters_roles` (
  `vid` int(11) NOT NULL,
  `rid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `voters_roles`
--

INSERT INTO `voters_roles` (`vid`, `rid`) VALUES
(2, 2),
(3, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admins_roles`
--
ALTER TABLE `admins_roles`
  ADD KEY `FKl5k76efp2kd2acnl3ojqyqip5` (`rid`),
  ADD KEY `FKiallhf4i27m0jni8mt4p1d2cx` (`aid`);

--
-- Indeks untuk tabel `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indeks untuk tabel `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `voters_roles`
--
ALTER TABLE `voters_roles`
  ADD KEY `FKpuucuk7napo9da7ic68o3p8rq` (`rid`),
  ADD KEY `FKoiff5hl2mlb23etobphod6xvm` (`vid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
