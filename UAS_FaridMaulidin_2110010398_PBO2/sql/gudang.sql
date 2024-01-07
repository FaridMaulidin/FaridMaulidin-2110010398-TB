-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2024 pada 14.35
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gudang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_barang`
--

CREATE TABLE `tabel_barang` (
  `ID_Barang` varchar(15) NOT NULL,
  `Nama_Barang` varchar(50) NOT NULL,
  `Harga_Barang` varchar(50) NOT NULL,
  `Stok_Barang` varchar(50) NOT NULL,
  `Tanggal_Masuk` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_barang`
--

INSERT INTO `tabel_barang` (`ID_Barang`, `Nama_Barang`, `Harga_Barang`, `Stok_Barang`, `Tanggal_Masuk`) VALUES
('1', 'Hot Whille skyline', '20000', '5', '25/03/2024'),
('2', 'Hot whille sparko', '300000', '305', '28/04/2024'),
('3', 'Hot whille poce', '20000', '5', '22/05/2024');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_supplier`
--

CREATE TABLE `tabel_supplier` (
  `ID_Supplier` varchar(15) NOT NULL,
  `Nama_Supplier` varchar(50) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Kontak` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_supplier`
--

INSERT INTO `tabel_supplier` (`ID_Supplier`, `Nama_Supplier`, `Alamat`, `Kontak`) VALUES
('1', 'FARID MAULIDIN', 'PALAPAN', '089678466659'),
('2', 'tono', 'manggis', '087627374612'),
('3', 'Amat', 'mahligai', '087247472546');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `ID_Transaksi` varchar(15) NOT NULL,
  `ID_Barang` varchar(15) NOT NULL,
  `ID_Supplier` varchar(15) NOT NULL,
  `Jumlah_Item` varchar(50) NOT NULL,
  `Total_Harga` varchar(50) NOT NULL,
  `Tanggal_Transaksi` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`ID_Transaksi`, `ID_Barang`, `ID_Supplier`, `Jumlah_Item`, `Total_Harga`, `Tanggal_Transaksi`) VALUES
('1', '1', '1', '5', '30000', '25/03/2024'),
('2', '2', '2', '2', '50000', '28/04/2024'),
('3', '3', '3', '5', '200000', '22/05/2024');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD PRIMARY KEY (`ID_Barang`);

--
-- Indeks untuk tabel `tabel_supplier`
--
ALTER TABLE `tabel_supplier`
  ADD PRIMARY KEY (`ID_Supplier`);

--
-- Indeks untuk tabel `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD PRIMARY KEY (`ID_Transaksi`,`ID_Barang`,`ID_Supplier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
