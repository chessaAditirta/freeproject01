-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 22, 2018 at 07:40 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_lazy_of_monday`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountan`
--

CREATE TABLE `accountan` (
  `id_accountan` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountan`
--

INSERT INTO `accountan` (`id_accountan`, `name`, `username`, `password`, `role`) VALUES
(1, 'Restu Julian', 'accounting', 'cywu5gv4', 'accounting');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(9) NOT NULL,
  `id_spradmin` int(4) NOT NULL,
  `NIK` varchar(20) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `nick_name` varchar(25) NOT NULL,
  `gender` varchar(15) NOT NULL DEFAULT 'Laki-laki',
  `birth_place` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `religion` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL,
  `role` varchar(15) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `id_spradmin`, `NIK`, `full_name`, `nick_name`, `gender`, `birth_place`, `birthday`, `religion`, `address`, `email`, `no_telp`, `username`, `password`, `status`, `role`, `image`) VALUES
('ADM001', 1, '100000000001', 'Riski Kurniawan', 'Riski', 'Laki_laki', 'Bantul', '1995-01-02', 'Islam', 'Jl Parangtritis (masuk ke dalam - jauh)', 'riskikurniawan@gmail.com', '080000000001', 'riski01', 'riski01', 'active', 'admin', ''),
('ADM002', 1, '100000000002', 'Ricky Rodesta L', 'Ricky', 'Laki_laki', 'Balikpapan', '1995-01-01', 'Islam', 'Bantul, Yogyakarta', 'ricky@gmail.com', '080000000002', 'ricky01', 'ricky01', 'active', 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `commission`
--

CREATE TABLE `commission` (
  `id_commission` int(10) NOT NULL DEFAULT '0',
  `id_reseller` varchar(9) NOT NULL,
  `commission_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `commission` int(10) NOT NULL,
  `transfered` int(10) NOT NULL,
  `request` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commission`
--

INSERT INTO `commission` (`id_commission`, `id_reseller`, `commission_date`, `commission`, `transfered`, `request`) VALUES
(1, 'RSL0001', '2018-08-24 07:23:51', 66000, 0, 0),
(2, 'RSL0004', '2018-08-24 07:23:43', 69000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id_company` int(6) NOT NULL,
  `id_spradmin` int(4) NOT NULL,
  `name` varchar(40) NOT NULL,
  `company_type` varchar(50) NOT NULL,
  `address` varchar(75) NOT NULL,
  `manager` varchar(40) NOT NULL,
  `akta` varchar(25) NOT NULL,
  `license` varchar(25) NOT NULL,
  `NPWP` varchar(25) NOT NULL,
  `PKP` varchar(25) NOT NULL,
  `bank` varchar(20) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `fax` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id_company`, `id_spradmin`, `name`, `company_type`, `address`, `manager`, `akta`, `license`, `NPWP`, `PKP`, `bank`, `telp`, `fax`, `email`) VALUES
(1, 1, 'Republik WEB', 'Start Up', 'Jl Sukun', '-', '-/-', '-/-', '-/-', '-/-', '-/-', '-/-', '-/-', '-/-');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `gender` varchar(15) NOT NULL DEFAULT 'Laki-laki',
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `id_reseller` varchar(9) NOT NULL,
  `role` varchar(25) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `name`, `email`, `no_telp`, `gender`, `username`, `password`, `address`, `id_reseller`, `role`, `image`) VALUES
('CST0000001', 'Joni', 'joni@gmail.com', '08266346926', 'Laki-laki', 'joni01', 'joni01', 'Jl. Paris', 'RSL0004', 'customer', 'user.png'),
('CST0000002', 'Johan', 'johan@gmail.com', '08625397122', 'Laki-laki', 'johan01', 'johan01', 'Jl. Kusumanegara', 'RSL0004', 'customer', 'user.png'),
('CST0000003', 'Jono', 'jono@gmail.com', '08236285562', 'Laki-laki', 'jono01', 'jono01', 'Jl. Babarsari', 'RSL0001', 'customer', 'user.png');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id_delivery` int(9) NOT NULL,
  `id_admin` varchar(9) NOT NULL,
  `id_selling` int(9) NOT NULL,
  `delivery_date` datetime NOT NULL,
  ` weight` int(4) NOT NULL,
  `price` int(9) NOT NULL,
  `no_resi` varchar(30) NOT NULL,
  `info` varchar(75) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id_delivery`, `id_admin`, `id_selling`, `delivery_date`, ` weight`, `price`, `no_resi`, `info`, `status`) VALUES
(1, 'ADM001', 1, '2018-08-10 09:12:19', 1, 12000, 'BG0875658', '1 pcs', 'accepted'),
(2, 'ADM001', 2, '2018-07-13 09:11:09', 1, 17000, 'TKG0977655', '2 pcs', 'accepted'),
(3, 'ADM002', 3, '2018-06-21 13:21:17', 2, 42000, 'TKG54764244', '3 pcs', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id_item` varchar(10) NOT NULL,
  `id_spradmin` int(4) NOT NULL,
  `name` varchar(75) NOT NULL,
  `color` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `qty` int(6) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `price` int(9) NOT NULL,
  `retail_price` int(9) NOT NULL,
  `commision` int(9) NOT NULL,
  `info` varchar(100) NOT NULL,
  `status` varchar(15) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id_item`, `id_spradmin`, `name`, `color`, `size`, `qty`, `unit`, `price`, `retail_price`, `commision`, `info`, `status`, `image`) VALUES
('CL004', 1, 'Celana Panjang Formal', 'Black,Gray, Navy', '27,28,29,30,31,32,33,34', 15, 'pcs', 330000, 400000, 24000, 'fit to L', 'ready', 'sticker,375x360-bg,ffffff.png'),
('CL005', 1, 'Celana Panjang Casual', 'Black,Gray, Navy', '27,28,29,30,31,32,33,34', 20, 'pcs', 330000, 460000, 29000, 'fit to L', 'ready', 'sticker,375x360-bg,ffffff.png'),
('CL006', 1, 'Celana Pendek Casual', 'Black,Gray, Navy', '27,28,29,30,31,32,33,34', 43, 'pcs', 230000, 320000, 19000, 'fit to L', 'ready', 'sticker,375x360-bg,ffffff.png'),
('CLN1', 1, 'Cinos', 'Black White Navy Maroon   Brown  Gray  ', 'S M L XL  ', 100, 'pcs', 240000, 300000, 16000, 'Fit to L', 'ready', 'sticker,375x360-bg,ffffff.png'),
('JKT1', 1, 'Parka', 'Black  Navy   Green   Gray  ', ' M L XL   ', 12, 'pcs', 100000, 150000, 13000, 'Fit to L', 'ready', 'sticker,375x360-bg,ffffff.png'),
('JN003', 1, 'Jeans', 'Black, Blue', '27,28,29,30,31,32,33,34', 3, 'pcs', 250000, 300000, 21000, 'fit to L (size 34 plus Rp. 10.000,00;-', 'ready', 'sticker,375x360-bg,ffffff.png'),
('JS001', 1, 'Jas Formal', 'Black  Navy Maroon Blue    Gray  ', ' M L XL   ', 25, 'pcs', 525000, 600000, 30000, 'fit to L', 'ready', 'item.png'),
('JS002', 1, 'Jas Casual', 'Black White Navy Maroon Blue    Gray  ', ' M L XL   ', 10, 'pcs', 450000, 530000, 23000, 'fit to L', 'ready', 'item.png'),
('KM007', 1, 'Kemeja Polos Pendek', 'Black White Navy Maroon Blue Green Brown  Gray  ', ' M L XL   ', 9, 'pcs', 170000, 210000, 18000, 'fit to L', 'ready', 'item.png'),
('KM008', 1, 'Kemeja Polos Panjang', 'Black White Navy Maroon Blue  Brown  Gray  ', 'S M L XL   ', 37, 'pcs', 270000, 310000, 19000, 'fit to L', 'ready', 'sticker,375x360-bg,ffffff.png'),
('KMJ1', 1, 'Hem', 'Navy Maroon Blue Green Yellow', 'S M L XL  ', 80, 'pcs', 240000, 300000, 16000, 'fit to L', 'ready', 'item.png'),
('TSH1', 1, 'Supreme', 'Black White       Gray  ', ' M L XL   ', 10, 'pcs', 300000, 370000, 20000, 'fit to L', 'ready', 'item.png');

-- --------------------------------------------------------

--
-- Table structure for table `reseller`
--

CREATE TABLE `reseller` (
  `id_reseller` varchar(9) NOT NULL,
  `id_admin` varchar(9) NOT NULL,
  `NIK` varchar(25) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `gender` varchar(10) NOT NULL DEFAULT 'Laki-laki',
  `birth_place` varchar(40) NOT NULL,
  `birthday` date NOT NULL,
  `religion` varchar(25) NOT NULL,
  `addres` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(500) NOT NULL,
  `bank` varchar(15) NOT NULL,
  `no_rekening` varchar(25) NOT NULL,
  `selling` int(9) NOT NULL,
  `comission` int(9) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'noadmin',
  `role` varchar(25) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reseller`
--

INSERT INTO `reseller` (`id_reseller`, `id_admin`, `NIK`, `first_name`, `last_name`, `gender`, `birth_place`, `birthday`, `religion`, `addres`, `email`, `no_telp`, `username`, `password`, `bank`, `no_rekening`, `selling`, `comission`, `status`, `role`, `image`) VALUES
('RSL0001', 'ADM002', '0928418264123', 'Muhajirin', '', 'Laki-laki', 'Dompu', '1999-04-14', 'Islam', 'Khanoman, banguntapan, bantul indonesia', 'muji@gmail.com', '083497635073', 'muji01', 'muji01', 'BRI', '123546357653458', 1, 66000, 'active', 'reseller', 'user.png'),
('RSL0002', 'ADM002', '4124153091356', 'Tri Sapta', 'Muhalim H Sinaga', 'Laki-laki', 'Bah Jambi', '1997-07-14', 'Islam', 'Sekitar Tugu Jogja', 'solihin@gmail.com', '086835427253', 'solihin01', 'solihin01', 'PANIN', '24124865556833', 0, 0, 'active', 'reseller', 'user.png'),
('RSL0003', 'ADM001', '1245613985619', 'Syarif H', 'Simanjuntak', 'Laki-laki', 'Medan', '1995-01-01', 'Islam', 'Kalimantan', 'syarifhidayat@gmail.com', '085232537272', 'syarif01', 'syarif01', 'BRI', '2615639867084', 0, 0, 'active', 'reseller', 'user.png'),
('RSL0004', 'ADM001', '43458676773842', 'Muhammad', 'Soim Abdul Aziz', 'Laki-laki', 'Boyolai', '1995-02-16', 'Islam', 'Pleret, Bantul DI Yogyakarta', 'aziz@gmail.com', '086215765381', 'aziz01', 'aziz01', 'BRI', '13718131381803', 2, 69000, 'active', 'reseller', 'user.png');

-- --------------------------------------------------------

--
-- Table structure for table `selling`
--

CREATE TABLE `selling` (
  `id_selling` int(8) NOT NULL,
  `id_admin` varchar(9) NOT NULL,
  `id_item` varchar(10) NOT NULL,
  `id_customer` varchar(10) NOT NULL,
  `color` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` int(9) NOT NULL,
  `retail_price` int(9) NOT NULL,
  `qty` int(6) NOT NULL,
  `discount` int(9) NOT NULL,
  `subtotal` int(9) NOT NULL,
  `pay_status` varchar(20) NOT NULL DEFAULT 'no',
  `commission` int(10) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'no',
  `selling_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selling`
--

INSERT INTO `selling` (`id_selling`, `id_admin`, `id_item`, `id_customer`, `color`, `size`, `price`, `retail_price`, `qty`, `discount`, `subtotal`, `pay_status`, `commission`, `status`, `selling_date`) VALUES
(1, 'ADM001', 'JS001', 'CST0000001', 'Black', 'L', 525000, 600000, 1, 0, 600000, 'validated', 30000, 'delive', '2018-08-09 00:00:00'),
(2, 'ADM001', 'KM007', 'CST0000002', 'Navy', 'L', 170000, 210000, 2, 0, 420000, 'validated', 36000, 'delive', '2018-07-12 00:00:00'),
(3, 'ADM002', 'JS002', 'CST0000003', 'Black', 'L', 450000, 530000, 3, 0, 1590000, 'validated', 69000, 'delive', '2018-06-20 04:07:28'),
(4, 'ADM002', 'JS001', 'CST0000003', 'Navy', 'L', 525000, 600000, 1, 0, 600000, 'no', 30000, 'no', '2018-08-24 10:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `superadmin`
--

CREATE TABLE `superadmin` (
  `id_spradmin` int(4) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `superadmin`
--

INSERT INTO `superadmin` (`id_spradmin`, `name`, `username`, `password`, `role`) VALUES
(1, 'Restu Julian', 'restuju10057', 'cywu5gv4', 'superadmin'),
(2, 'ricky', 'ricky2212', '123123', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nik` char(9) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `n_name` varchar(15) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `birth_place` varchar(25) NOT NULL,
  `birth_day` varchar(10) NOT NULL,
  `religion` varchar(15) NOT NULL,
  `address` varchar(35) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(15) NOT NULL,
  `degree_of_user` varchar(15) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nik`, `f_name`, `n_name`, `gender`, `birth_place`, `birth_day`, `religion`, `address`, `email`, `no_telp`, `username`, `password`, `status`, `degree_of_user`, `image`) VALUES
(1, '111111101', 'Ricky Rodesta Listiawan', 'Rodesta', 'Laki-laki', 'Kalimantan', '01-01-1995', 'ISLAM', 'Bantul', 'ricky2212@gmail.com', '081212121212', 'ricky2212', 'rodesta2212', 'ACTIVE', 'SuperAdmin', ''),
(2, '111111102', 'Ploy Sornarin', 'Ploy', 'Perempuan', 'Bangkok ', '29-01-2001', 'HINDU', 'Bangkok, Thailand', 'ploynarin@xmail.com', '082222222222', 'ploynarinn', 'sornarin', 'ACTIVE', 'Admin', ''),
(3, '111111103', 'Bae Joo Hyun', 'Irene Redvelvet', 'Perempuan', 'Daegu', '29-03-1991', 'KAGAK TAU', 'Seoul, Korea Selatan', 'baechu@xmail.com', '081221212123', 'ireneredvelvet', 'redvelvet', 'ACTIVE', 'Reseller', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountan`
--
ALTER TABLE `accountan`
  ADD PRIMARY KEY (`id_accountan`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `NIK` (`NIK`),
  ADD KEY `id_spradmin` (`id_spradmin`);

--
-- Indexes for table `commission`
--
ALTER TABLE `commission`
  ADD PRIMARY KEY (`id_commission`),
  ADD KEY `id_reseller` (`id_reseller`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`),
  ADD KEY `id_spradmin` (`id_spradmin`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`),
  ADD KEY `id_reseller` (`id_reseller`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id_delivery`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_selling` (`id_selling`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_spradmin` (`id_spradmin`);

--
-- Indexes for table `reseller`
--
ALTER TABLE `reseller`
  ADD PRIMARY KEY (`id_reseller`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `selling`
--
ALTER TABLE `selling`
  ADD PRIMARY KEY (`id_selling`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_item` (`id_item`);

--
-- Indexes for table `superadmin`
--
ALTER TABLE `superadmin`
  ADD PRIMARY KEY (`id_spradmin`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountan`
--
ALTER TABLE `accountan`
  MODIFY `id_accountan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_spradmin`) REFERENCES `superadmin` (`id_spradmin`);

--
-- Constraints for table `commission`
--
ALTER TABLE `commission`
  ADD CONSTRAINT `commission_ibfk_1` FOREIGN KEY (`id_reseller`) REFERENCES `reseller` (`id_reseller`);

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`id_spradmin`) REFERENCES `superadmin` (`id_spradmin`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_reseller`) REFERENCES `reseller` (`id_reseller`);

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`),
  ADD CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`id_selling`) REFERENCES `selling` (`id_selling`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`id_spradmin`) REFERENCES `superadmin` (`id_spradmin`);

--
-- Constraints for table `reseller`
--
ALTER TABLE `reseller`
  ADD CONSTRAINT `reseller_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Constraints for table `selling`
--
ALTER TABLE `selling`
  ADD CONSTRAINT `selling_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`),
  ADD CONSTRAINT `selling_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `selling_ibfk_3` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
