-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2021 at 04:03 PM
-- Server version: 5.7.31
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `make` varchar(50) NOT NULL,
  `style` varchar(100) NOT NULL,
  `model` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `slug` varchar(20) NOT NULL,
  `msrp` varchar(20) NOT NULL,
  `c_and_d` varchar(100) NOT NULL,
  `maker_site` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `make`, `style`, `model`, `image`, `slug`, `msrp`, `c_and_d`, `maker_site`) VALUES
(1, 'Ford', 'Compact SUV', 'Bronco Sport', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2021-ford-bronco-sport-1p5l-1144-edit-1617333020.jpg?crop=1xw:1xh;center,top&resize=980:*', 'bronco-sport', '$28,700 - $34,400', 'https://www.caranddriver.com/ford/bronco-sport', 'https://www.ford.com/suvs/bronco-sport/'),
(2, 'Toyota', 'Compact SUV', 'RAV4', 'https://www.toyota.com/imgix/responsive/images/gallery/photos-videos/2021/rav4/RAV_MY20_0006_V001.png?w=2880&q=90&fm=jpg&fit=max&cs=strip&bg=fff&auto=compress', 'rav4', '$27,500 - $37,300', 'https://www.caranddriver.com/toyota/rav4', 'https://www.toyota.com/rav4/'),
(3, 'Volkswagen', 'Compact SUV', 'Tiguan', 'https://www.motortrend.com/uploads/sites/5/2020/10/2021-volkswagen-tiguan-02.jpg?fit=around%7C875:492.1875', 'tiguan', '$27,200 - $37,800', 'https://www.caranddriver.com/volkswagen/tiguan', 'https://www.vw.com/en/models/tiguan.html'),
(4, 'Mazda', 'Compact SUV', 'CX-5', 'https://www.mazdausa.com/siteassets/vehicles/2021/cx-5/vlp/5050/design/2021-mazda-cx-5-mazda-kodo-design.jpg?w=960', 'cx-5', '$28,000 - $39,000', 'https://www.caranddriver.com/mazda/cx-5', 'https://www.mazdausa.com/vehicles/2021-cx-5');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `src` varchar(255) NOT NULL,
  `car` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `src`, `car`) VALUES
(1, 'https://www.ford.com/is/image/content/dam/vdm_ford/live/en_us/ford/nameplate/broncosport/2021/collections/dm/21_FRD_BRO_50794_BigBend_RapidRed_CX430.tif?croppathe=1_3x2&wid=1440', 'bronco-sport'),
(2, 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2021-ford-bronco-sport-1p5l-1144-edit-1617333020.jpg?crop=1xw:1xh;center,top&resize=980:*', 'bronco-sport'),
(3, 'https://cdn.dlron.us/static/dealer-14787/New_2021_Ford_Bronco_Sport_Exterior__1_.png', 'bronco-sport'),
(4, 'https://www.toyota.com/imgix/responsive/images/gallery/photos-videos/2021/rav4/RAV_MY20_0006_V001.png?w=2880&q=90&fm=jpg&fit=max&cs=strip&bg=fff&auto=compress', 'rav4'),
(5, 'https://www.toyota.com/imgix/responsive/images/gallery/photos-videos/2021/rav4/RHV_MY19_0001_V002.png?w=2880&q=90&fm=jpg&fit=max&cs=strip&bg=fff&auto=compress', 'rav4'),
(6, 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2021-toyota-rav4-trd-off-road-109-1626364944.jpg?crop=1xw:1xh;center,top&resize=980:*', 'rav4'),
(7, 'https://www.motortrend.com/uploads/sites/5/2020/10/2021-volkswagen-tiguan-02.jpg?fit=around%7C875:492.1875', 'tiguan'),
(8, 'https://blogmedia.dealerfire.com/wp-content/uploads/sites/590/2020/05/TGVW-Tiguan-0507_o.jpg', 'tiguan'),
(10, 'https://www.mazdausa.com/siteassets/vehicles/2021/cx-5/vlp/5050/design/2021-mazda-cx-5-mazda-kodo-design.jpg?w=960', 'cx-5'),
(11, 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2022-mazda-cx-5-front-three-quarters-white-2-1631288273.jpg?crop=0.696xw:0.714xh;0,0.122xh&resize=2048:*', 'cx-5'),
(12, 'https://www.mazdausa.com/siteassets/vehicles/2021/cx-5/environmental-360s/sport/soul-red/e360-my21-cx5-sport-soulredcrystal-023.jpg', 'cx-5');

-- --------------------------------------------------------

--
-- Table structure for table `makes`
--

CREATE TABLE `makes` (
  `id` int(11) NOT NULL,
  `make_name` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `slug` varchar(20) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makes`
--

INSERT INTO `makes` (`id`, `make_name`, `country`, `slug`, `logo`) VALUES
(1, 'Ford', 'USA', 'ford', 'https://companiesmarketcap.com/img/company-logos/256/F.png'),
(2, 'Toyota', 'Japan', 'toyota', 'https://www.codinter.com/en/wp-content/uploads/sites/2/2018/01/logo-toyota-256x256.png'),
(3, 'Volkswagen', 'Germany', 'vw', 'https://images.gamebanana.com/img/ico/sprays/vw.png'),
(4, 'Mazda', 'Japan', 'mazda', 'https://www.mazdausa.com/siteassets/images/home/4218-update/18mazda_logo_global_nav3.png?w=180');

-- --------------------------------------------------------

--
-- Table structure for table `styles`
--

CREATE TABLE `styles` (
  `id` int(11) NOT NULL,
  `style_name` varchar(100) NOT NULL,
  `slug` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `styles`
--

INSERT INTO `styles` (`id`, `style_name`, `slug`) VALUES
(1, 'Compact SUV', 'compact-suv');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `make` (`make`),
  ADD KEY `style` (`style`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car` (`car`);

--
-- Indexes for table `makes`
--
ALTER TABLE `makes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`make_name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `styles`
--
ALTER TABLE `styles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `name` (`style_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `makes`
--
ALTER TABLE `makes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `styles`
--
ALTER TABLE `styles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`make`) REFERENCES `makes` (`make_name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cars_ibfk_2` FOREIGN KEY (`style`) REFERENCES `styles` (`style_name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`car`) REFERENCES `cars` (`slug`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
