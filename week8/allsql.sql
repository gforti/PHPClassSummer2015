
-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2015 at 02:50 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phpclasssummer2015`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `address_group_id` int(10) unsigned NOT NULL,
  `fullname` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `address_groups`
--

CREATE TABLE IF NOT EXISTS `address_groups` (
  `address_group_id` int(10) unsigned NOT NULL,
  `address_group` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `address_groups`
--

INSERT INTO `address_groups` (`address_group_id`, `address_group`) VALUES
(3, 'Coworkers'),
(2, 'Family'),
(1, 'Friends');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(10) unsigned NOT NULL,
  `category` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category`) VALUES
(4, 'cars'),
(1, 'clocks'),
(3, 'shoes');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `city_id` int(10) unsigned NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city`, `state_id`) VALUES
(1, 'Allston', 1),
(2, 'Hyannis', 1),
(3, 'Boston', 1),
(4, 'Mansfield', 1),
(5, 'Ipswich', 1),
(6, 'Albany', 2),
(7, 'Bronx', 2),
(8, 'Queens', 2),
(9, 'Florida', 2),
(10, 'Marcellus', 2),
(11, 'Providence', 3),
(12, 'Warwick', 3),
(13, 'Greenwhich', 3),
(14, 'East Providence', 3),
(15, 'Pawtucket', 3),
(16, 'sm5fdp0b3u', 4),
(17, 'upfllcb15i', 4),
(18, 'dczwqvklpj', 4),
(19, 'wgatg9ehu4', 4),
(20, 'udtoe5tu0p', 4),
(21, 'xy9m07hh1j', 4),
(22, '5gqqoi8qj9', 5),
(23, '6hh1dk9gvs', 5),
(24, 'r73u0ruiqx', 5),
(25, '25mjfc91yq', 5),
(26, 'nyaqxtvpcm', 5);

-- --------------------------------------------------------

--
-- Table structure for table `corps`
--

CREATE TABLE IF NOT EXISTS `corps` (
  `id` mediumint(8) unsigned NOT NULL,
  `corp` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `incorp_dt` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zipcode` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `corps`
--

INSERT INTO `corps` (`id`, `corp`, `incorp_dt`, `email`, `zipcode`, `owner`, `phone`) VALUES
(1, 'Proin Sed Turpis Industries', '2014-09-29 07:05:22', 'aliquet@actellus.com', '50194', 'Ariana Cooley', '(637) 951-7060'),
(2, 'Vitae Diam LLP', '2015-08-07 14:02:41', 'vitae.semper.egestas@semutcursus.org', '81853', 'Andrew Rush', '(181) 128-4321'),
(3, 'Auctor Non Feugiat Industries', '2015-07-14 22:01:20', 'Duis.volutpat@nasceturridiculusmus.edu', '51590', 'Davis Rasmussen', '(204) 959-9288'),
(4, 'Ullamcorper Nisl Ltd', '2014-11-27 13:23:21', 'et@tinciduntpede.ca', '23696', 'Barrett Terrell', '(550) 415-1750'),
(5, 'Neque Venenatis Institute', '2016-02-23 23:03:02', 'metus@facilisisfacilisis.org', '76721', 'Sybill Short', '(914) 230-1801'),
(6, 'Eu Ultrices Sit Inc.', '2014-09-18 03:54:32', 'ipsum.Phasellus@pedeSuspendisse.edu', '42658', 'Sonia Hoover', '(451) 615-3651'),
(7, 'Donec Dignissim Consulting', '2015-11-12 19:15:40', 'enim@liberoDonec.co.uk', '30384', 'Levi Lucas', '(823) 252-6181'),
(8, 'Vestibulum Consulting', '2015-06-18 22:29:13', 'Lorem.ipsum@asollicitudin.net', '56535', 'Rigel Cotton', '(174) 198-3036'),
(9, 'Per Inceptos Hymenaeos Consulting', '2014-12-31 18:07:46', 'hendrerit.neque@etnuncQuisque.ca', '99171', 'Zahir Hodges', '(685) 883-9392'),
(10, 'Risus Company', '2014-08-18 09:51:28', 'mauris.elit@malesuadafames.net', '89005', 'Quyn Flowers', '(391) 964-0795'),
(11, 'Tortor Dictum Eu Consulting', '2016-01-31 06:04:39', 'neque.non.quam@idenimCurabitur.org', '37220', 'Ima Snow', '(654) 159-5318'),
(12, 'Aliquam Eros Turpis Consulting', '2015-10-17 22:40:27', 'rhoncus@egestaslacinia.ca', '72484', 'Macon Randolph', '(519) 735-5717'),
(13, 'A Limited', '2015-03-28 23:05:21', 'pede.ultrices.a@vulputatelacusCras.co.uk', '38399', 'Tasha Clayton', '(448) 113-1097'),
(14, 'Rhoncus Proin Nisl Incorporated', '2016-06-14 18:08:27', 'purus@quamvelsapien.ca', '32465', 'Fitzgerald Mcdaniel', '(698) 195-6845'),
(15, 'Magnis Dis Parturient Associates', '2016-07-25 15:08:56', 'libero@aneque.com', '25911', 'Anastasia Fields', '(200) 633-6471'),
(16, 'Tincidunt Company', '2016-05-28 06:03:47', 'tincidunt@nec.com', '37345', 'Jacob Cole', '(468) 227-0300'),
(17, 'Eu Ultrices Sit Institute', '2014-12-15 02:48:23', 'molestie@velit.org', '24866', 'Finn Phillips', '(346) 604-9607'),
(18, 'Nunc Consulting', '2015-07-27 07:21:36', 'Donec.porttitor@posuereenim.com', '91466', 'Alice Calderon', '(373) 130-3056'),
(19, 'Sem Pellentesque Ut Inc.', '2014-12-12 20:47:08', 'purus.ac.tellus@Nulla.ca', '70033', 'Kirestin Herring', '(896) 944-1756'),
(20, 'Fusce Limited', '2014-11-18 06:30:43', 'et.magnis.dis@Donec.org', '16892', 'Vielka Manning', '(299) 729-8594'),
(21, 'Sem Egestas Blandit LLC', '2015-07-26 12:50:55', 'dolor@vulputateduinec.edu', '75783', 'Quyn Whitfield', '(583) 999-5184'),
(22, 'Metus Aenean LLP', '2015-03-22 06:34:45', 'auctor@elitpede.co.uk', '56685', 'Barry Bryan', '(833) 979-0609'),
(23, 'Mi Pede Nonummy Institute', '2015-01-25 02:18:25', 'natoque.penatibus.et@Curabiturdictum.org', '96833', 'Nora Poole', '(493) 455-3431'),
(24, 'Egestas Ligula Nullam Associates', '2014-09-30 09:35:14', 'arcu@egestas.co.uk', '32504', 'Rhonda Key', '(554) 590-8054'),
(25, 'Laoreet Libero Industries', '2016-06-24 16:15:32', 'Praesent.eu@habitantmorbi.ca', '74067', 'Zeus Gay', '(137) 192-2133'),
(26, 'Egestas Corp.', '2015-05-21 14:37:39', 'Cras@Nunclectuspede.org', '67541', 'Roary Alvarez', '(179) 893-9016'),
(27, 'Arcu Eu Corp.', '2014-10-01 22:34:58', 'tincidunt@idmollisnec.com', '41583', 'Ainsley Cervantes', '(468) 130-2667'),
(28, 'Tellus Limited', '2016-07-04 06:57:25', 'semper.dui@nisi.com', '50230', 'Cleo Price', '(171) 681-5708'),
(29, 'Erat Eget LLC', '2015-02-04 04:13:22', 'Sed.et.libero@penatibusetmagnis.edu', '30147', 'Chloe Noel', '(215) 643-2868'),
(30, 'Praesent Eu PC', '2015-10-04 18:29:01', 'turpis.egestas@Donec.com', '46540', 'Ulla Burgess', '(126) 522-5355'),
(31, 'Pede Associates', '2015-09-12 04:41:46', 'ac@pretiumneque.ca', '38957', 'Raven Randall', '(466) 545-1167'),
(32, 'Velit LLC', '2015-09-21 23:03:56', 'Sed.auctor.odio@nec.ca', '83526', 'Mufutau Hunter', '(305) 868-3851'),
(33, 'In Associates', '2015-02-21 07:08:22', 'orci.Ut@lectus.ca', '93600', 'Cheryl Maldonado', '(938) 667-6760'),
(34, 'Est Incorporated', '2015-12-22 10:59:56', 'parturient.montes.nascetur@Praesent.org', '69186', 'Hector Mcgee', '(627) 184-9762'),
(35, 'Phasellus Elit Pede Ltd', '2015-10-25 01:18:46', 'ut@lacus.com', '95460', 'Dorothy Richardson', '(255) 588-1425'),
(36, 'Amet Industries', '2016-01-20 02:22:44', 'Aenean.euismod.mauris@ipsumprimis.ca', '42876', 'Madeson Kerr', '(707) 159-9470'),
(37, 'Sagittis Nullam Limited', '2015-06-03 13:19:32', 'lacinia@ullamcorpervelitin.net', '71023', 'Christine Lester', '(120) 612-9697'),
(38, 'Venenatis Vel Corporation', '2016-04-23 12:31:14', 'velit@nisiCum.org', '56146', 'Whilemina Turner', '(748) 745-3684'),
(39, 'Ut PC', '2015-06-06 03:03:24', 'lobortis.quam@ipsumcursusvestibulum.co.uk', '34381', 'Maya Pittman', '(934) 286-0203'),
(40, 'Sollicitudin Orci Sem Corp.', '2015-07-17 21:12:32', 'parturient.montes@Integermollis.com', '26951', 'Robert Jefferson', '(180) 873-6852'),
(41, 'Curabitur Company', '2016-02-01 11:17:41', 'felis.Donec.tempor@pedenec.co.uk', '46557', 'Risa Fitzgerald', '(268) 522-6673'),
(42, 'Diam Limited', '2016-07-16 08:50:57', 'in.felis.Nulla@natoquepenatibus.net', '77028', 'Oprah Key', '(905) 394-5799'),
(43, 'Porttitor LLP', '2014-09-26 03:50:18', 'id@nectempus.org', '85718', 'Debra Bishop', '(469) 649-0433'),
(44, 'Convallis In Foundation', '2015-06-07 00:28:48', 'tristique.ac.eleifend@a.org', '49950', 'Madeline Terrell', '(923) 489-3444'),
(45, 'Ac Risus PC', '2014-09-24 06:39:09', 'imperdiet@egetodioAliquam.edu', '73472', 'Winter Pugh', '(732) 295-7568'),
(46, 'Dis Parturient Montes Incorporated', '2015-07-07 11:33:58', 'auctor.velit.Aliquam@Vivamus.edu', '34632', 'Kalia Michael', '(374) 360-1040'),
(47, 'Lobortis Quam Consulting', '2015-11-19 10:11:09', 'Aliquam@duiFusce.net', '83460', 'Noel Wilder', '(605) 490-8886'),
(48, 'Congue Turpis In Foundation', '2016-06-15 18:13:09', 'In@magnisdisparturient.net', '74970', 'Sacha Harrison', '(914) 761-7252'),
(49, 'Parturient Montes Consulting', '2016-02-07 01:03:10', 'leo@lacusEtiam.com', '38599', 'Megan Clements', '(551) 781-7348'),
(50, 'Nisi PC', '2016-03-15 12:21:22', 'amet.metus@etultricesposuere.ca', '94061', 'Imogene Hernandez', '(141) 592-5495'),
(51, 'Morbi Vehicula Incorporated', '2014-11-13 13:21:53', 'tempus@ametorciUt.com', '84215', 'Jonah Grimes', '(461) 274-9610'),
(52, 'Aliquet Consulting', '2016-01-29 03:28:25', 'ligula.Aenean.euismod@eunequepellentesque.edu', '98563', 'Iola Brennan', '(699) 862-4288'),
(53, 'Fames Ac Turpis Ltd', '2014-12-03 15:59:27', 'ornare.lectus@venenatis.net', '75158', 'Charity Dyer', '(374) 864-3774'),
(54, 'Hendrerit A LLC', '2015-06-19 18:59:39', 'lobortis@tempor.net', '38442', 'Melodie Bryan', '(510) 146-1652'),
(55, 'Proin Corp.', '2016-05-18 05:05:46', 'convallis.dolor.Quisque@turpisIn.org', '50628', 'Branden Nolan', '(273) 715-4979'),
(56, 'Augue PC', '2015-06-12 18:55:33', 'non.arcu.Vivamus@quisdiam.co.uk', '74142', 'Tad Kirk', '(745) 490-4575'),
(57, 'Eu Neque Pellentesque Foundation', '2014-09-17 12:32:33', 'Vivamus.nibh.dolor@Nuncullamcorpervelit.net', '92867', 'Susan Boyer', '(112) 121-1593'),
(58, 'Luctus Inc.', '2016-02-23 12:39:21', 'sed.est.Nunc@ligulaNullam.org', '15147', 'Gage Frazier', '(126) 140-8255'),
(59, 'Eu Erat Semper LLC', '2015-11-02 10:01:52', 'mauris.Integer@Praesenteu.net', '22235', 'Carolyn Travis', '(303) 937-3100'),
(60, 'Quisque Varius Company', '2016-01-29 16:50:55', 'orci.Ut.sagittis@dui.com', '77675', 'Kendall Witt', '(975) 220-4279'),
(61, 'Pharetra LLP', '2016-02-07 17:29:32', 'ac@pretiumaliquetmetus.ca', '31254', 'Bethany Black', '(329) 322-0160'),
(62, 'Donec Tempus Lorem LLP', '2015-08-16 19:06:44', 'tristique@interdumligula.net', '62396', 'Lila Foreman', '(529) 777-4726'),
(63, 'Nisl Inc.', '2016-03-23 09:00:19', 'Suspendisse.eleifend.Cras@adipiscingligulaAenean.com', '19241', 'Gannon Klein', '(316) 563-4587'),
(64, 'Velit Incorporated', '2015-02-22 14:40:49', 'tincidunt.vehicula@egestas.edu', '23611', 'Dominique Gray', '(860) 840-3830'),
(65, 'Proin Ltd', '2016-04-30 01:05:29', 'lobortis@placeratCrasdictum.com', '20643', 'Britanney Suarez', '(639) 821-9474'),
(66, 'Non Lacinia Foundation', '2015-03-16 23:53:45', 'sit.amet.ultricies@tempor.edu', '43883', 'Sophia Marsh', '(717) 413-8189'),
(67, 'Enim Diam Corporation', '2014-10-08 02:07:18', 'Proin@etnetus.edu', '79896', 'Hayley Diaz', '(286) 694-3837'),
(68, 'Ac Feugiat Non Industries', '2014-12-13 16:46:13', 'Maecenas.iaculis.aliquet@quisaccumsan.ca', '60928', 'Isabella Bernard', '(148) 771-8890'),
(69, 'In Limited', '2016-01-29 03:09:16', 'ante@odiovelest.ca', '53316', 'Sasha Huff', '(914) 789-3095'),
(70, 'Et PC', '2015-02-26 10:25:26', 'ultricies.ornare@sit.ca', '17502', 'Hadassah Ochoa', '(919) 898-2413'),
(71, 'Montes PC', '2016-02-28 18:01:57', 'vestibulum.neque.sed@Fusce.com', '98306', 'Blake Romero', '(535) 497-9894'),
(72, 'Placerat Eget Incorporated', '2015-09-05 21:39:43', 'ac.orci@Duisat.net', '69677', 'Lacey Sexton', '(789) 632-6112'),
(73, 'Duis A Company', '2015-06-25 09:43:56', 'Phasellus@metus.edu', '82446', 'Kirk Hopkins', '(479) 718-4355'),
(74, 'Ac Turpis Egestas Foundation', '2015-05-21 02:13:00', 'iaculis.nec@tinciduntvehicula.net', '63971', 'Jescie Barry', '(318) 269-8113'),
(75, 'Sit Corp.', '2016-02-16 03:43:37', 'ornare@acarcu.edu', '25983', 'Abra Heath', '(898) 619-5333'),
(76, 'Aliquet Nec Foundation', '2015-10-08 07:52:13', 'luctus@magnatellus.net', '45589', 'Quon Kent', '(508) 679-3903'),
(77, 'Vitae Corporation', '2014-09-03 03:19:32', 'a.purus.Duis@convallis.org', '35212', 'Vincent Mays', '(174) 600-7944'),
(78, 'Blandit At Limited', '2016-07-09 14:15:28', 'dolor.Nulla.semper@ametrisus.co.uk', '29292', 'Byron Valentine', '(473) 370-1174'),
(79, 'Mi Foundation', '2014-09-19 14:54:37', 'Nam.ligula@parturientmontesnascetur.edu', '95002', 'Sheila Robles', '(773) 131-9834'),
(80, 'Ultricies Dignissim Lacus Industries', '2016-07-09 19:01:32', 'Integer.mollis@Duis.co.uk', '57217', 'Yasir Hardin', '(510) 335-2052'),
(81, 'Rutrum Magna Institute', '2014-09-07 14:19:53', 'lorem.semper.auctor@arcu.net', '79579', 'Zephr Lamb', '(354) 940-6236'),
(82, 'Orci PC', '2015-06-25 09:01:52', 'metus@elitpede.org', '26067', 'Joel Strickland', '(724) 758-0317'),
(83, 'A Nunc In Corporation', '2015-01-06 17:59:36', 'penatibus.et.magnis@netusetmalesuada.com', '35816', 'Ingrid Goodwin', '(321) 971-5653'),
(84, 'Nam Interdum Incorporated', '2015-05-08 17:07:48', 'leo@Nunc.edu', '88778', 'Wylie Stanton', '(563) 518-6200'),
(85, 'Eu Tempor Erat Incorporated', '2015-05-13 13:44:51', 'nisl@leoMorbineque.edu', '19739', 'Macy Haley', '(166) 311-5741'),
(86, 'Magnis Industries', '2016-01-18 04:01:41', 'ultricies.ornare.elit@nislQuisque.net', '65686', 'Claire Espinoza', '(990) 419-6874'),
(87, 'Maecenas Libero Est Ltd', '2016-03-03 03:08:28', 'sit.amet.risus@nonquamPellentesque.co.uk', '51008', 'Serena Olsen', '(186) 853-6142'),
(88, 'Class Aptent LLC', '2015-08-01 12:11:13', 'penatibus@adipiscinglobortisrisus.co.uk', '59616', 'Geraldine Padilla', '(795) 188-4586'),
(89, 'Mauris Incorporated', '2015-02-03 13:55:33', 'tristique.senectus@duisemper.com', '66551', 'Rina Munoz', '(259) 234-3714'),
(90, 'Diam Associates', '2015-10-03 01:26:07', 'Sed.congue@viverra.com', '18491', 'Regina Acevedo', '(425) 730-5688'),
(91, 'Nunc Id Ltd', '2015-04-15 22:23:35', 'dolor.dolor.tempus@atiaculis.net', '40683', 'Quyn Weeks', '(988) 900-5160'),
(92, 'Placerat Foundation', '2015-10-06 12:56:33', 'Quisque.porttitor.eros@necmollis.com', '69704', 'Lionel Dean', '(916) 843-3857'),
(93, 'Et Risus Quisque Company', '2015-12-31 08:13:46', 'adipiscing@egetvenenatis.ca', '69358', 'Aphrodite Horn', '(211) 946-5836'),
(94, 'Ut Nec PC', '2016-07-30 14:37:27', 'dictum@elitNullafacilisi.com', '12078', 'Madonna Casey', '(966) 455-9954'),
(95, 'Consequat Enim LLP', '2014-10-24 07:22:31', 'at.arcu@odiosagittis.edu', '97848', 'Medge Miles', '(280) 542-2949'),
(96, 'Parturient Montes Nascetur LLC', '2014-09-02 04:42:25', 'neque@Suspendissedui.com', '87534', 'Florence Atkinson', '(124) 178-0695'),
(97, 'Vehicula Risus Nulla PC', '2015-08-28 15:30:24', 'non.dapibus.rutrum@ultrices.com', '67496', 'Bruce Nichols', '(115) 319-3519'),
(98, 'Malesuada Corp.', '2015-05-06 13:14:47', 'congue.a.aliquet@famesac.org', '67201', 'Gray Roberson', '(385) 695-2879'),
(99, 'Odio Vel Est LLP', '2015-02-26 21:52:25', 'tristique.pharetra@lacusQuisqueimperdiet.net', '93470', 'Jolie Barton', '(742) 818-6378'),
(100, 'Eu Tempor Inc.', '2015-02-12 00:38:12', 'nascetur.ridiculus@luctus.org', '82479', 'Kyle Mejia', '(241) 578-5052');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `product` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `product`, `price`, `image`) VALUES
(1, 4, 'Mustang', '1.00', NULL),
(6, 4, 'cool', '0.00', NULL),
(8, 3, 'jelly', '100.00', '3b15be84aff20b322a93c0b9aaa62e25ad33b4b4.jpg'),
(9, 1, 'lighthouse', '500.00', '1b4605b0e20ceccf91aa278d10e81fad64e24e27.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sitelinks`
--

CREATE TABLE IF NOT EXISTS `sitelinks` (
  `site_id` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `sitelinks`
--

INSERT INTO `sitelinks` (`site_id`, `link`) VALUES
(1, 'http://www.iana.org/domains/example'),
(2, 'https://github.com/gforti'),
(2, 'http://www.linkedin.com/pub/gabriel-forti/58/523/a00/'),
(2, 'http://www.gforti.com '),
(2, 'https://docs.google.com/document/d/1Ie_9obN7jZyy0gB6kHRwU1B_5pz-CuSP27jKUqFhOjo/edit'),
(2, 'http://www.chadbrownhealth.org/'),
(2, 'http://www.optum.com/'),
(2, 'http://www.neit.edu/'),
(2, 'http://www.andera.com');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE IF NOT EXISTS `sites` (
  `site_id` int(11) NOT NULL,
  `site` varchar(255) COLLATE utf8_bin NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`site_id`, `site`, `date`) VALUES
(1, 'http://www.example.com', '2015-08-19 20:43:33'),
(2, 'http://www.gforti.com', '2015-08-19 20:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `state_id` int(10) unsigned NOT NULL,
  `state_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state_abbr` varchar(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `state_name`, `state_abbr`) VALUES
(1, 'Massachusetts', 'MA'),
(2, 'New York', 'NY'),
(3, 'Rhode Island', 'RI'),
(4, 'Place State', 'PL'),
(5, 'Test', 'TT');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL,
  `dataone` varchar(100) COLLATE utf8_bin NOT NULL,
  `datatwo` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `dataone`, `datatwo`) VALUES
(1, 'test1', 'test2'),
(2, 'hello1', 'hello2'),
(3, 'three3', 'four4');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) unsigned NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `created`) VALUES
(1, 'test@test.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', '2015-08-26 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`), ADD KEY `user_id` (`user_id`), ADD KEY `address_group_id` (`address_group_id`);

--
-- Indexes for table `address_groups`
--
ALTER TABLE `address_groups`
  ADD PRIMARY KEY (`address_group_id`), ADD UNIQUE KEY `address_group` (`address_group`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`), ADD UNIQUE KEY `category` (`category`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`), ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `corps`
--
ALTER TABLE `corps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`), ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `sitelinks`
--
ALTER TABLE `sitelinks`
  ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `address_groups`
--
ALTER TABLE `address_groups`
  MODIFY `address_group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `corps`
--
ALTER TABLE `corps`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `state_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
ADD CONSTRAINT `address_ibfk_2` FOREIGN KEY (`address_group_id`) REFERENCES `address_groups` (`address_group_id`);

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `sitelinks`
--
ALTER TABLE `sitelinks`
ADD CONSTRAINT `sitelinks_ibfk_1` FOREIGN KEY (`site_id`) REFERENCES `sites` (`site_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
