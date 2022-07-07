-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2022 at 11:58 PM
-- Server version: 5.7.37-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `openvideo`
--

-- --------------------------------------------------------

--
-- Table structure for table `video_data`
--

CREATE TABLE `video_data` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `filecode` varchar(100) DEFAULT NULL,
  `download_url` varchar(100) DEFAULT NULL,
  `protected_embed` varchar(100) DEFAULT NULL,
  `protected_dl` varchar(100) DEFAULT NULL,
  `single_img` varchar(100) DEFAULT NULL,
  `splash_img` varchar(100) DEFAULT NULL,
  `uploaded` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video_data`
--

INSERT INTO `video_data` (`id`, `title`, `filecode`, `download_url`, `protected_embed`, `protected_dl`, `single_img`, `splash_img`, `uploaded`) VALUES
(2, 'ali', '5flfrfeoq9sc', 'https://dood.ws/d/5flfrfeoq9sc', 'https://dood.ws/e/6bwo6y9nduo8u68xge5i7zok7j7w00jy', 'https://dood.ws/d/snnixi1ax20i3tduilfjts2i5tpg0aiw', 'https://img.doodcdn.com/snaps/onpz0tqo9gxhebqr.jpg', 'https://img.doodcdn.com/splash/onpz0tqo9gxhebqr.jpg', '2022-05-25 06:13:31'),
(3, 'ahmed', 'r51vyyx52bqo', 'https://dood.ws/d/r51vyyx52bqo', 'https://dood.ws/e/ksf8j1ppv3xjhr0egzv497ac1pu8c4qr', 'https://dood.ws/d/vth2t14onjewoudyaetopdtp32wczecm', 'https://img.doodcdn.com/snaps/9e33pdcz5vvxraqo.jpg', 'https://img.doodcdn.com/splash/9e33pdcz5vvxraqo.jpg', '2022-05-25 06:22:50'),
(4, 'ahmed-raza', 'fc23ys9mhran', 'https://dood.ws/d/fc23ys9mhran', 'https://dood.ws/e/4rojdj491337krxje7i5gnc7w62q25xe', 'https://dood.ws/d/879zqiteqsakprkinu07m3dvr55urs7z', 'https://img.doodcdn.com/snaps/7ltdfxfnd9zlhw2o.jpg', 'https://img.doodcdn.com/splash/7ltdfxfnd9zlhw2o.jpg', '2022-05-25 06:27:35'),
(5, 'ahmed raza', 'qqyox95zeyng', 'https://dood.ws/d/qqyox95zeyng', 'https://dood.ws/e/3n4ix9ddqwve3yz4msajfx30b7aezjp4', 'https://dood.ws/d/osv0daf3vzzsiujjrqhpqg3hb2v15x33', 'https://img.doodcdn.com/snaps/dh8h36hxl2qx179y.jpg', 'https://img.doodcdn.com/splash/dh8h36hxl2qx179y.jpg', '2022-05-25 06:28:37'),
(6, 'tesdt', 'grd7szlzrrby', 'https://dood.ws/d/grd7szlzrrby', 'https://dood.ws/e/2mvuvgkn43psayfmh1mr5bs2wwhsvob2', 'https://dood.ws/d/spwdbxz72gi53ycdywagoheworqbgb0w', 'https://img.doodcdn.com/snaps/0kzcskxlbw71ls1s.jpg', 'https://img.doodcdn.com/splash/0kzcskxlbw71ls1s.jpg', '2022-05-26 02:56:45'),
(7, 'Hshshbe', 'b0ap95ynetsg', 'https://dood.ws/d/b0ap95ynetsg', 'https://dood.ws/e/z0tczm8stjbhuec6pwzrjtfq989aapgy', 'https://dood.ws/d/wanom22hua7oqxcj9pye9j4v7pkjc367', 'https://img.doodcdn.com/snaps/is5n432qijnux52d.jpg', 'https://img.doodcdn.com/splash/is5n432qijnux52d.jpg', '2022-05-26 03:01:59'),
(8, 'Bob the builder', 'gnli1vubodp9', 'https://dood.ws/d/gnli1vubodp9', 'https://dood.ws/e/qkfgresq1kum1inmnon2y5qxnyv9jaiu', 'https://dood.ws/d/evd6pb9xmhrebtjhzlccinjfarml49m2', 'https://img.doodcdn.com/snaps/9lpzalxm21bt01dn.jpg', 'https://img.doodcdn.com/splash/9lpzalxm21bt01dn.jpg', '2022-05-26 03:02:46'),
(9, 'ahmed', 'jpgq6wqhv642', 'https://dood.ws/d/jpgq6wqhv642', 'https://dood.ws/e/mb0tmogm959cuakoyangzu3hpiq6kish', 'https://dood.ws/d/wtx96x22lmz6uou5k0qm2do9hsj3xgit', 'https://img.doodcdn.com/snaps/xrki3l4z1tnqcz3j.jpg', 'https://img.doodcdn.com/splash/xrki3l4z1tnqcz3j.jpg', '2022-05-26 07:06:44'),
(10, 'ahmed', 'pqlnp2oqnmp1', 'https://dood.ws/d/pqlnp2oqnmp1', 'https://dood.ws/e/j2cfyhd4qwzjag838710y3sjvdurym1f', 'https://dood.ws/d/0ircq74tzsy08hqol6j3x7dtv878ka4z', 'https://img.doodcdn.com/snaps/6tx87oesek82tflf.jpg', 'https://img.doodcdn.com/splash/6tx87oesek82tflf.jpg', '2022-05-26 07:21:03'),
(11, '1111testoyy', 'wxslcf0jgd98', 'https://dood.ws/d/wxslcf0jgd98', 'https://dood.ws/e/t2x9s2pr4u0vq58858ib41jm83pqlond', 'https://dood.ws/d/g1y8b2nr4tmvrat5gv9be31otdvysysi', 'https://img.doodcdn.com/snaps/6t8ilg8lbptg0k8u.jpg', 'https://img.doodcdn.com/splash/6t8ilg8lbptg0k8u.jpg', '2022-05-26 08:20:55'),
(12, 'ahmedq', 'kr6dcclojm0m', 'https://dood.ws/d/kr6dcclojm0m', 'https://dood.ws/e/jr9tq34o03t0mfoudsvt3csbduqx3qpf', 'https://dood.ws/d/e83t8190pjmlprna7tp36u423piowwrt', 'https://img.doodcdn.com/snaps/t87isbh9udlbejxd.jpg', 'https://img.doodcdn.com/splash/t87isbh9udlbejxd.jpg', '2022-05-26 08:21:02'),
(13, 'ali', 'mkjct3se6kz0', 'https://dood.ws/d/mkjct3se6kz0', 'https://dood.ws/e/hmzr9su4tcc0t5ksxyvmb7sfc8r5btb0', 'https://dood.ws/d/58zhew74k4ifrbimd575i8vyjaj4adbp', 'https://img.doodcdn.com/snaps/kwevkffutuklj3ko.jpg', 'https://img.doodcdn.com/splash/kwevkffutuklj3ko.jpg', '2022-05-26 08:38:14'),
(14, '21151test', 'p19xf2zw3mbh', 'https://dood.ws/d/p19xf2zw3mbh', 'https://dood.ws/e/4skvid7fo8zy0vomyvb5di048c87lfoq', 'https://dood.ws/d/fyug5j7h3zss7di0owdthlrxudtpogoj', 'https://img.doodcdn.com/snaps/0oamt5upg830r8b7.jpg', 'https://img.doodcdn.com/splash/0oamt5upg830r8b7.jpg', '2022-05-26 08:43:12'),
(15, 'ali', 'o77q9eg44i00', 'https://dood.ws/d/o77q9eg44i00', 'https://dood.ws/e/0u5ypo1n1qoj6jq9wi2gpe9nit9w1uas', 'https://dood.ws/d/q489bbns2e54wpgkwj91ribkyx7f8p7t', 'https://img.doodcdn.com/snaps/umarr51c84xwa180.jpg', 'https://img.doodcdn.com/splash/umarr51c84xwa180.jpg', '2022-05-26 08:50:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `video_data`
--
ALTER TABLE `video_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `video_data`
--
ALTER TABLE `video_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
