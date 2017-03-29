-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2017 at 07:11 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihanxirpl2`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `isbn` int(11) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `penerbit` varchar(30) NOT NULL,
  `pengarang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`isbn`, `judul`, `penerbit`, `pengarang`) VALUES
(3, 'terbit matahari', 'mentari', 'ujang'),
(4, 'bulan terang', 'laksana', 'jaja'),
(11, 'awan putih', 'langit', 'miharja'),
(12, 'awan putih', 'jaja', 'haha'),
(13, 'bulan terang', 'aaa1', 'bb1'),
(14, 'baba', 'aaa2', 'bb2'),
(15, 'gaga', 'gigi', 'haha'),
(17, 'jaja', 'jiji', 'nana'),
(18, 'rrr1', 'rr2', 'rr3'),
(19, 'rrr3', 'rrrr4', 'rrr5'),
(20, 'ada', 'affa', 'gaa'),
(21, 'gga', 'gaga', 'agga'),
(22, 'afag', 'adf', 'gaag'),
(23, 'gaaga', 'gaga', 'gagaga'),
(24, 'afqr1', '1rfa', 'fag'),
(25, 'gaagb', 'sva', 'qr1'),
(26, 'sbbhy3', 't2g', 'gs'),
(27, 'fag4', 'ta2', '2t2'),
(28, 'sggsg', 'sgsg', '2rr52'),
(29, 'fwfwt', 'tsffs', 'sgs');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `nomor` int(11) NOT NULL,
  `isbn` varchar(11) NOT NULL,
  `keterangan` enum('kembali','belum') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `tgl_pinjam`, `tgl_kembali`, `nomor`, `isbn`, `keterangan`) VALUES
(123, '2016-10-10', '2016-10-17', 3, '4', 'kembali'),
(128, '2016-10-12', '2016-10-31', 7, '11', 'kembali'),
(129, '2016-07-11', '2017-06-11', 1234, '2345', 'kembali'),
(130, '1985-02-02', '2000-09-09', 7777, '8888', 'belum'),
(133, '2016-07-22', '2020-09-10', 3, '3', 'kembali'),
(134, '2016-07-11', '2020-09-09', 3, '4', 'belum'),
(135, '2016-07-12', '2016-10-12', 3, '3', 'kembali'),
(136, '2016-07-12', '2016-10-20', 5, '13', 'belum'),
(138, '1985-02-02', '2020-09-09', 3, '11', 'kembali'),
(139, '2016-07-12', '2020-09-09', 5, '11', 'belum'),
(140, '2016-07-11', '2020-09-09', 3, '3', 'kembali'),
(141, '2016-07-12', '2016-10-12', 3, '3', 'kembali'),
(142, '2016-07-11', '2016-10-10', 3, '3', 'belum'),
(143, '2016-07-11', '2016-10-12', 3, '11', 'kembali'),
(144, '2016-07-12', '2016-10-10', 3, '3', 'kembali'),
(145, '2016-07-11', '2020-09-09', 5, '4', 'kembali'),
(146, '2016-10-20', '2020-09-09', 7, '3', 'kembali'),
(147, '2016-07-12', '2020-09-09', 5, '3', 'belum'),
(148, '1985-02-02', '2020-09-09', 5, '3', 'kembali'),
(149, '1985-02-02', '2016-10-10', 5, '3', 'belum'),
(150, '1985-02-02', '2016-10-10', 3, '3', 'belum'),
(152, '2016-07-23', '2020-09-18', 3, '4', 'kembali'),
(153, '2014-09-10', '2016-10-11', 5, '3', 'kembali');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nomor` int(11) UNSIGNED NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `foto` text NOT NULL,
  `kontak` varchar(50) DEFAULT NULL,
  `alamat` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nomor`, `nama`, `foto`, `kontak`, `alamat`) VALUES
(3, 'jainal Permana', '', '089999999999', 'cibiru'),
(5, 'uje', '', '085555555555', 'cibinong'),
(7, 'permana', '', '086666666666', 'panyileukan'),
(8, 'wingchun', '', '089797979797', 'sumedang'),
(9, 'baba', '11781892_1150459881637999_6288613210584550572_n.jpg', '081323232321', 'cibeureum'),
(10, 'ujang', '', '083253252351', 'siliwangi'),
(11, 'oting', '', '088765432321', 'tarogong'),
(12, 'rifan', '', '087656543456', 'cimahi'),
(13, 'mini', '', '087878765432', 'cikutra'),
(14, 'eman', '', '089999999993', 'cipadung'),
(15, 'tano', '', '087777777774', 'cikukang'),
(16, 'agus', '', '085555555534', 'kulon'),
(17, 'acan', '', '086666666661', 'ujungberung'),
(18, 'iyus', '', '085555555321', 'kosambi'),
(19, 'sidik', '', '086666634521', 'margacinta'),
(20, 'ikal', '', '087654342132', 'banjar'),
(21, 'irfal', '', '086547834212', 'tegalega'),
(22, 'kiki', '', '087698989543', 'kiarasari'),
(23, 'fadli', '', '089897654543', 'derwati'),
(24, 'fadlan', '', '089876767543', 'banda'),
(25, 'maman', '', '087323221567', 'cikapundung'),
(26, 'pinguin', 'img/img/Penguins.jpg', 'pinguinn', 'salju'),
(28, 'tulip', 'img/Tulips.jpg', 'bunga', 'bungakoneng'),
(29, 'hmm', 'img/img/Chrysanthemum.jpg', 'merah', 'background beureum'),
(30, 'baba', 'img/Desert.jpg', 'gurun', 'hahaha'),
(31, 'panjul', '12179623_961780893903325_1667427963_n.jpg', '123', 'mars'),
(32, 'uje', '01.jpg', '0914891410304', 'bandoeng');

-- --------------------------------------------------------

--
-- Table structure for table `tabeluser`
--

CREATE TABLE `tabeluser` (
  `userid` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabeluser`
--

INSERT INTO `tabeluser` (`userid`, `password`, `level`) VALUES
('admin', 'admin', 'admin'),
('user', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nomor`);

--
-- Indexes for table `tabeluser`
--
ALTER TABLE `tabeluser`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `isbn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `nomor` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
