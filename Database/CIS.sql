-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Agu 2022 pada 06.16
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `NIDN` int(11) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Id_Program_Studi` varchar(64) NOT NULL,
  `Email_Dosen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`NIDN`, `Nama`, `Id_Program_Studi`, `Email_Dosen`) VALUES
(95703654, 'Alvera Weber', 'D4TRPL', 'verona.reinger@example.net'),
(214735001, 'Dr. Oran Harber', 'D4TRPL', 'daniel.ladarius@example.com'),
(382697221, 'Percival Grady', 'D4TRPL', 'frogahn@example.net'),
(445537616, 'Annie Gutkowski', 'D4TRPL', 'fadel.glen@example.com'),
(473259637, 'Ignacio Roob', 'D4TRPL', 'wreinger@example.net'),
(699033355, 'Else Hudson', 'D4TRPL', 'drippin@example.org'),
(1174799918, 'Brice Mertz', 'D4TRPL', 'jennifer.rowe@example.com'),
(1180411113, 'Harley Roob', 'D4TRPL', 'alize04@example.com'),
(1561945555, 'Lula Waelchi IV', 'D4TRPL', 'veum.selena@example.net'),
(1673912582, 'Isabella Harris', 'D4TRPL', 'fred.ziemann@example.net'),
(1691553022, 'Prof. Althea Gleichner DDS', 'D4TRPL', 'akoch@example.com'),
(1756817994, 'Dan Casper PhD', 'D4TRPL', 'domenic.gulgowski@example.org'),
(1829690797, 'Miss Dandre Fritsch III', 'D4TRPL', 'brennan94@example.org'),
(1832865141, 'Kallie O\'Connell', 'D4TRPL', 'nader.margot@example.com'),
(1862553203, 'Melyna Macejkovic DDS', 'D4TRPL', 'dayna25@example.net'),
(1976935676, 'Elbert Orn DDS', 'D4TRPL', 'swaniawski.dudley@example.org'),
(1988508017, 'Paula Schoen', 'D4TRPL', 'yost.jaydon@example.com'),
(2003491518, 'Ms. Crystel Wolf', 'D4TRPL', 'courtney14@example.net'),
(2045794589, 'Dr. Deven Ritchie', 'D4TRPL', 'obernier@example.org'),
(2112925488, 'Aurelio Kihn I', 'D4TRPL', 'angelica37@example.com'),
(2147483647, 'Newell Gaylord', 'D4TRPL', 'boyle.maria@example.net');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `Id_Jadwal` int(11) NOT NULL,
  `Sesi` int(11) NOT NULL,
  `Waktu_Mulai` datetime NOT NULL,
  `Waktu_Berakhir` datetime NOT NULL,
  `Id_Mata_Kuliah` int(11) NOT NULL,
  `Week` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`Id_Jadwal`, `Sesi`, `Waktu_Mulai`, `Waktu_Berakhir`, `Id_Mata_Kuliah`, `Week`) VALUES
(1, 1, '2021-08-25 09:00:00', '2021-08-25 11:00:00', 8, 1),
(2, 2, '2021-08-26 10:00:00', '2021-08-26 12:00:00', 8, 1),
(3, 1, '2021-09-01 09:00:00', '2021-09-01 11:00:00', 8, 2),
(4, 2, '2021-09-02 10:00:00', '2021-09-02 12:00:00', 8, 2),
(5, 1, '2021-09-08 09:00:00', '2021-09-08 11:00:00', 8, 3),
(6, 2, '2021-09-09 10:00:00', '2021-09-09 12:00:00', 8, 3),
(7, 1, '2021-09-15 09:00:00', '2021-09-15 11:00:00', 8, 4),
(8, 2, '2021-09-16 10:00:00', '2021-09-16 12:00:00', 8, 4),
(9, 1, '2021-09-22 09:00:00', '2021-09-22 11:00:00', 8, 5),
(10, 2, '2021-09-23 10:00:00', '2021-09-23 12:00:00', 8, 5),
(11, 1, '2021-09-29 09:00:00', '2021-09-29 11:00:00', 8, 6),
(12, 2, '2021-09-30 10:00:00', '2021-09-30 12:00:00', 8, 6),
(13, 1, '2021-10-06 09:00:00', '2021-10-06 11:00:00', 8, 7),
(14, 2, '2021-10-07 10:00:00', '2021-10-07 12:00:00', 8, 7),
(15, 1, '2021-10-13 09:00:00', '2021-10-13 11:00:00', 8, 8),
(16, 2, '2021-10-14 10:00:00', '2021-10-14 12:00:00', 8, 8),
(17, 1, '2021-10-20 09:00:00', '2021-10-20 11:00:00', 8, 9),
(18, 2, '2021-10-21 10:00:00', '2021-10-21 12:00:00', 8, 9),
(19, 1, '2021-10-27 09:00:00', '2021-10-27 11:00:00', 8, 10),
(20, 2, '2021-10-28 10:00:00', '2021-10-28 12:00:00', 8, 10),
(21, 1, '2021-11-03 09:00:00', '2021-11-03 11:00:00', 8, 11),
(22, 2, '2021-11-04 10:00:00', '2021-11-04 12:00:00', 8, 11),
(23, 1, '2021-11-10 09:00:00', '2021-11-10 11:00:00', 8, 12),
(24, 2, '2021-11-11 10:00:00', '2021-11-11 12:00:00', 8, 12),
(25, 1, '2021-11-17 09:00:00', '2021-11-17 11:00:00', 8, 13),
(26, 2, '2021-11-18 10:00:00', '2021-11-18 12:00:00', 8, 13),
(27, 1, '2021-11-24 09:00:00', '2021-11-24 11:00:00', 8, 14),
(28, 2, '2021-11-25 10:00:00', '2021-11-25 12:00:00', 8, 14),
(29, 1, '2021-12-01 09:00:00', '2021-12-01 11:00:00', 8, 15),
(30, 2, '2021-12-02 10:00:00', '2021-12-02 12:00:00', 8, 15),
(31, 1, '2021-12-08 09:00:00', '2021-12-08 11:00:00', 8, 16),
(32, 2, '2021-12-09 10:00:00', '2021-12-09 12:00:00', 8, 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kehadiran`
--

CREATE TABLE `kehadiran` (
  `Id_Kehadiran` int(11) NOT NULL,
  `Status_Kehadiran` varchar(64) NOT NULL,
  `Id_Jadwal` int(11) NOT NULL,
  `NIM` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kehadiran`
--

INSERT INTO `kehadiran` (`Id_Kehadiran`, `Status_Kehadiran`, `Id_Jadwal`, `NIM`) VALUES
(181, 'hadir', 1, '11421005'),
(182, 'tidak hadir', 2, '11421005'),
(183, 'hadir', 3, '11421005'),
(184, 'hadir', 4, '11421005'),
(185, 'tidak hadir', 5, '11421005'),
(186, 'hadir', 6, '11421005'),
(187, 'hadir', 7, '11421005'),
(188, 'hadir', 8, '11421005'),
(189, 'hadir', 9, '11421005'),
(190, 'hadir', 10, '11421005'),
(191, 'hadir', 11, '11421005'),
(192, 'hadir', 12, '11421005'),
(193, 'hadir', 13, '11421005'),
(194, 'hadir', 14, '11421005'),
(195, 'hadir', 15, '11421005'),
(196, 'hadir', 16, '11421005'),
(197, 'hadir', 17, '11421005'),
(198, 'hadir', 18, '11421005'),
(199, 'hadir', 19, '11421005'),
(200, 'hadir', 20, '11421005'),
(201, 'hadir', 21, '11421005'),
(202, 'hadir', 22, '11421005'),
(203, 'hadir', 23, '11421005'),
(204, 'hadir', 24, '11421005'),
(205, 'hadir', 25, '11421005'),
(206, 'hadir', 26, '11421005'),
(207, 'hadir', 27, '11421005'),
(208, 'tidak hadir', 28, '11421005'),
(209, 'hadir', 29, '11421005'),
(210, 'hadir', 30, '11421005'),
(211, 'hadir', 31, '11421005'),
(212, 'hadir', 32, '11421005'),
(213, 'hadir', 1, '11421007'),
(214, 'hadir', 2, '11421007'),
(215, 'hadir', 3, '11421007'),
(216, 'hadir', 4, '11421007'),
(217, 'hadir', 5, '11421007'),
(218, 'hadir', 6, '11421007'),
(219, 'hadir', 7, '11421007'),
(220, 'hadir', 8, '11421007'),
(221, 'hadir', 9, '11421007'),
(222, 'tidak hadir', 10, '11421007'),
(223, 'hadir', 11, '11421007'),
(224, 'hadir', 12, '11421007'),
(225, 'hadir', 13, '11421007'),
(226, 'hadir', 14, '11421007'),
(227, 'hadir', 15, '11421007'),
(228, 'hadir', 16, '11421007'),
(229, 'hadir', 17, '11421007'),
(230, 'hadir', 18, '11421007'),
(231, 'hadir', 19, '11421007'),
(232, 'hadir', 20, '11421007'),
(233, 'hadir', 21, '11421007'),
(234, 'hadir', 22, '11421007'),
(235, 'hadir', 23, '11421007'),
(236, 'hadir', 24, '11421007'),
(237, 'hadir', 25, '11421007'),
(238, 'hadir', 26, '11421007'),
(239, 'hadir', 27, '11421007'),
(240, 'hadir', 28, '11421007'),
(241, 'hadir', 29, '11421007'),
(242, 'hadir', 30, '11421007'),
(243, 'hadir', 31, '11421007'),
(244, 'tidak hadir', 32, '11421007'),
(245, 'hadir', 1, '11421008'),
(246, 'hadir', 2, '11421008'),
(247, 'hadir', 3, '11421008'),
(248, 'hadir', 4, '11421008'),
(249, 'tidak hadir', 5, '11421008'),
(250, 'hadir', 6, '11421008'),
(251, 'hadir', 7, '11421008'),
(252, 'hadir', 8, '11421008'),
(253, 'hadir', 9, '11421008'),
(254, 'hadir', 10, '11421008'),
(255, 'hadir', 11, '11421008'),
(256, 'hadir', 12, '11421008'),
(257, 'hadir', 13, '11421008'),
(258, 'hadir', 14, '11421008'),
(259, 'hadir', 15, '11421008'),
(260, 'hadir', 16, '11421008'),
(261, 'hadir', 17, '11421008'),
(262, 'hadir', 18, '11421008'),
(263, 'hadir', 19, '11421008'),
(264, 'hadir', 20, '11421008'),
(265, 'hadir', 21, '11421008'),
(266, 'hadir', 22, '11421008'),
(267, 'hadir', 23, '11421008'),
(268, 'hadir', 24, '11421008'),
(269, 'hadir', 25, '11421008'),
(270, 'hadir', 26, '11421008'),
(271, 'hadir', 27, '11421008'),
(272, 'tidak hadir', 28, '11421008'),
(273, 'hadir', 29, '11421008'),
(274, 'hadir', 30, '11421008'),
(275, 'hadir', 31, '11421008'),
(276, 'hadir', 32, '11421008'),
(277, 'hadir', 1, '11421009'),
(278, 'hadir', 2, '11421009'),
(279, 'hadir', 3, '11421009'),
(280, 'hadir', 4, '11421009'),
(281, 'hadir', 5, '11421009'),
(282, 'hadir', 6, '11421009'),
(283, 'hadir', 7, '11421009'),
(284, 'hadir', 8, '11421009'),
(285, 'hadir', 9, '11421009'),
(286, 'hadir', 10, '11421009'),
(287, 'hadir', 11, '11421009'),
(288, 'hadir', 12, '11421009'),
(289, 'hadir', 13, '11421009'),
(290, 'hadir', 14, '11421009'),
(291, 'hadir', 15, '11421009'),
(292, 'hadir', 16, '11421009'),
(293, 'hadir', 17, '11421009'),
(294, 'hadir', 18, '11421009'),
(295, 'hadir', 19, '11421009'),
(296, 'hadir', 20, '11421009'),
(297, 'hadir', 21, '11421009'),
(298, 'hadir', 22, '11421009'),
(299, 'hadir', 23, '11421009'),
(300, 'hadir', 24, '11421009'),
(301, 'hadir', 25, '11421009'),
(302, 'hadir', 26, '11421009'),
(303, 'hadir', 27, '11421009'),
(304, 'hadir', 28, '11421009'),
(305, 'hadir', 29, '11421009'),
(306, 'hadir', 30, '11421009'),
(307, 'hadir', 31, '11421009'),
(308, 'hadir', 32, '11421009'),
(309, 'hadir', 1, '11421011'),
(310, 'hadir', 2, '11421011'),
(311, 'hadir', 3, '11421011'),
(312, 'hadir', 4, '11421011'),
(313, 'hadir', 5, '11421011'),
(314, 'hadir', 6, '11421011'),
(315, 'hadir', 7, '11421011'),
(316, 'hadir', 8, '11421011'),
(317, 'hadir', 9, '11421011'),
(318, 'hadir', 10, '11421011'),
(319, 'tidak hadir', 11, '11421011'),
(320, 'hadir', 12, '11421011'),
(321, 'hadir', 13, '11421011'),
(322, 'hadir', 14, '11421011'),
(323, 'hadir', 15, '11421011'),
(324, 'hadir', 16, '11421011'),
(325, 'hadir', 17, '11421011'),
(326, 'tidak hadir', 18, '11421011'),
(327, 'hadir', 19, '11421011'),
(328, 'hadir', 20, '11421011'),
(329, 'hadir', 21, '11421011'),
(330, 'hadir', 22, '11421011'),
(331, 'hadir', 23, '11421011'),
(332, 'hadir', 24, '11421011'),
(333, 'hadir', 25, '11421011'),
(334, 'hadir', 26, '11421011'),
(335, 'hadir', 27, '11421011'),
(336, 'hadir', 28, '11421011'),
(337, 'tidak hadir', 29, '11421011'),
(338, 'hadir', 30, '11421011'),
(339, 'hadir', 31, '11421011'),
(340, 'hadir', 32, '11421011'),
(341, 'hadir', 1, '11421016'),
(342, 'hadir', 2, '11421016'),
(343, 'hadir', 3, '11421016'),
(344, 'hadir', 4, '11421016'),
(345, 'hadir', 5, '11421016'),
(346, 'hadir', 6, '11421016'),
(347, 'hadir', 7, '11421016'),
(348, 'hadir', 8, '11421016'),
(349, 'hadir', 9, '11421016'),
(350, 'hadir', 10, '11421016'),
(351, 'hadir', 11, '11421016'),
(352, 'hadir', 12, '11421016'),
(353, 'hadir', 13, '11421016'),
(354, 'hadir', 14, '11421016'),
(355, 'hadir', 15, '11421016'),
(356, 'hadir', 16, '11421016'),
(357, 'hadir', 17, '11421016'),
(358, 'hadir', 18, '11421016'),
(359, 'hadir', 19, '11421016'),
(360, 'hadir', 20, '11421016'),
(361, 'hadir', 21, '11421016'),
(362, 'hadir', 22, '11421016'),
(363, 'hadir', 23, '11421016'),
(364, 'hadir', 24, '11421016'),
(365, 'hadir', 25, '11421016'),
(366, 'hadir', 26, '11421016'),
(367, 'hadir', 27, '11421016'),
(368, 'tidak hadir', 28, '11421016'),
(369, 'hadir', 29, '11421016'),
(370, 'hadir', 30, '11421016'),
(371, 'hadir', 31, '11421016'),
(372, 'hadir', 32, '11421016'),
(373, 'tidak hadir', 1, '11421017'),
(374, 'tidak hadir', 2, '11421017'),
(375, 'hadir', 3, '11421017'),
(376, 'hadir', 4, '11421017'),
(377, 'tidak hadir', 5, '11421017'),
(378, 'hadir', 6, '11421017'),
(379, 'hadir', 7, '11421017'),
(380, 'hadir', 8, '11421017'),
(381, 'hadir', 9, '11421017'),
(382, 'hadir', 10, '11421017'),
(383, 'hadir', 11, '11421017'),
(384, 'hadir', 12, '11421017'),
(385, 'hadir', 13, '11421017'),
(386, 'hadir', 14, '11421017'),
(387, 'hadir', 15, '11421017'),
(388, 'hadir', 16, '11421017'),
(389, 'hadir', 17, '11421017'),
(390, 'hadir', 18, '11421017'),
(391, 'hadir', 19, '11421017'),
(392, 'tidak hadir', 20, '11421017'),
(393, 'hadir', 21, '11421017'),
(394, 'hadir', 22, '11421017'),
(395, 'hadir', 23, '11421017'),
(396, 'hadir', 24, '11421017'),
(397, 'hadir', 25, '11421017'),
(398, 'hadir', 26, '11421017'),
(399, 'hadir', 27, '11421017'),
(400, 'tidak hadir', 28, '11421017'),
(401, 'hadir', 29, '11421017'),
(402, 'hadir', 30, '11421017'),
(403, 'hadir', 31, '11421017'),
(404, 'tidak hadir', 32, '11421017'),
(405, 'hadir', 1, '11421018'),
(406, 'hadir', 2, '11421018'),
(407, 'hadir', 3, '11421018'),
(408, 'hadir', 4, '11421018'),
(409, 'hadir', 5, '11421018'),
(410, 'hadir', 6, '11421018'),
(411, 'hadir', 7, '11421018'),
(412, 'hadir', 8, '11421018'),
(413, 'hadir', 9, '11421018'),
(414, 'hadir', 10, '11421018'),
(415, 'hadir', 11, '11421018'),
(416, 'hadir', 12, '11421018'),
(417, 'hadir', 13, '11421018'),
(418, 'hadir', 14, '11421018'),
(419, 'hadir', 15, '11421018'),
(420, 'hadir', 16, '11421018'),
(421, 'hadir', 17, '11421018'),
(422, 'hadir', 18, '11421018'),
(423, 'hadir', 19, '11421018'),
(424, 'hadir', 20, '11421018'),
(425, 'hadir', 21, '11421018'),
(426, 'hadir', 22, '11421018'),
(427, 'hadir', 23, '11421018'),
(428, 'hadir', 24, '11421018'),
(429, 'hadir', 25, '11421018'),
(430, 'hadir', 26, '11421018'),
(431, 'hadir', 27, '11421018'),
(432, 'tidak hadir', 28, '11421018'),
(433, 'hadir', 29, '11421018'),
(434, 'hadir', 30, '11421018'),
(435, 'hadir', 31, '11421018'),
(436, 'hadir', 32, '11421018'),
(437, 'hadir', 1, '11421019'),
(438, 'hadir', 2, '11421019'),
(439, 'hadir', 3, '11421019'),
(440, 'hadir', 4, '11421019'),
(441, 'hadir', 5, '11421019'),
(442, 'hadir', 6, '11421019'),
(443, 'hadir', 7, '11421019'),
(444, 'hadir', 8, '11421019'),
(445, 'hadir', 9, '11421019'),
(446, 'hadir', 10, '11421019'),
(447, 'hadir', 11, '11421019'),
(448, 'hadir', 12, '11421019'),
(449, 'hadir', 13, '11421019'),
(450, 'hadir', 14, '11421019'),
(451, 'hadir', 15, '11421019'),
(452, 'hadir', 16, '11421019'),
(453, 'hadir', 17, '11421019'),
(454, 'hadir', 18, '11421019'),
(455, 'hadir', 19, '11421019'),
(456, 'hadir', 20, '11421019'),
(457, 'hadir', 21, '11421019'),
(458, 'hadir', 22, '11421019'),
(459, 'hadir', 23, '11421019'),
(460, 'hadir', 24, '11421019'),
(461, 'hadir', 25, '11421019'),
(462, 'hadir', 26, '11421019'),
(463, 'hadir', 27, '11421019'),
(464, 'hadir', 28, '11421019'),
(465, 'hadir', 29, '11421019'),
(466, 'hadir', 30, '11421019'),
(467, 'hadir', 31, '11421019'),
(468, 'hadir', 32, '11421019'),
(469, 'hadir', 1, '11421020'),
(470, 'hadir', 2, '11421020'),
(471, 'tidak hadir', 3, '11421020'),
(472, 'hadir', 4, '11421020'),
(473, 'tidak hadir', 5, '11421020'),
(474, 'hadir', 6, '11421020'),
(475, 'tidak hadir', 7, '11421020'),
(476, 'hadir', 8, '11421020'),
(477, 'hadir', 9, '11421020'),
(478, 'hadir', 10, '11421020'),
(479, 'hadir', 11, '11421020'),
(480, 'hadir', 12, '11421020'),
(481, 'hadir', 13, '11421020'),
(482, 'hadir', 14, '11421020'),
(483, 'hadir', 15, '11421020'),
(484, 'tidak hadir', 16, '11421020'),
(485, 'hadir', 17, '11421020'),
(486, 'hadir', 18, '11421020'),
(487, 'hadir', 19, '11421020'),
(488, 'hadir', 20, '11421020'),
(489, 'hadir', 21, '11421020'),
(490, 'tidak hadir', 22, '11421020'),
(491, 'hadir', 23, '11421020'),
(492, 'hadir', 24, '11421020'),
(493, 'hadir', 25, '11421020'),
(494, 'hadir', 26, '11421020'),
(495, 'hadir', 27, '11421020'),
(496, 'tidak hadir', 28, '11421020'),
(497, 'hadir', 29, '11421020'),
(498, 'hadir', 30, '11421020'),
(499, 'hadir', 31, '11421020'),
(500, 'tidak hadir', 32, '11421020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `Id_Kelas` int(11) NOT NULL,
  `Kode_Kelas` varchar(64) NOT NULL,
  `NIDN_Dosen_Wali` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`Id_Kelas`, `Kode_Kelas`, `NIDN_Dosen_Wali`) VALUES
(2, '41TRPL', 95703654);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lecturer`
--

CREATE TABLE `lecturer` (
  `NIDN` int(11) NOT NULL,
  `Id_Mata_Kuliah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lecturer`
--

INSERT INTO `lecturer` (`NIDN`, `Id_Mata_Kuliah`) VALUES
(95703654, 1),
(214735001, 2),
(382697221, 3),
(445537616, 4),
(473259637, 5),
(699033355, 6),
(1174799918, 7),
(1180411113, 8),
(1561945555, 1),
(1673912582, 2),
(1691553022, 3),
(1756817994, 4),
(1829690797, 5),
(1832865141, 6),
(1862553203, 7),
(1976935676, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` varchar(64) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Id_Kelas` int(11) NOT NULL,
  `Angkatan` year(4) NOT NULL,
  `Id_Program_Studi` varchar(64) NOT NULL,
  `Email_Mahasiswa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama`, `Id_Kelas`, `Angkatan`, `Id_Program_Studi`, `Email_Mahasiswa`) VALUES
('11421005', 'Sandra', 2, 2021, 'D4TRPL', 'polly.windler@mante.net'),
('11421007', 'Oliver', 2, 2021, 'D4TRPL', 'johnston.xzavier@hotmail.com'),
('11421008', 'Scarlett', 2, 2021, 'D4TRPL', 'fjakubowski@rowetowne.info'),
('11421009', 'Tiffany', 2, 2021, 'D4TRPL', 'bell70@conroy.biz'),
('11421011', 'Mozell', 2, 2021, 'D4TRPL', 'hessel.cheyanne@wiegand.com'),
('11421016', 'Luella', 2, 2021, 'D4TRPL', 'reece48@yahoo.com'),
('11421017', 'Shayna', 2, 2021, 'D4TRPL', 'eileen29@gmail.com'),
('11421018', 'Opal', 2, 2021, 'D4TRPL', 'green.ola@yahoo.com'),
('11421019', 'Madaline', 2, 2021, 'D4TRPL', 'ycollins@gmail.com'),
('11421020', 'Wilma', 2, 2021, 'D4TRPL', 'hilpert.deonte@torpkassulke.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `Id_Mata_Kuliah` int(11) NOT NULL,
  `Nama_Mata_Kuliah` varchar(255) NOT NULL,
  `Tahun_Ajaran` varchar(64) NOT NULL,
  `NIDN_Dosen_Coordinator` int(11) NOT NULL,
  `Id_Program_Studi` varchar(64) NOT NULL,
  `SKS` int(11) NOT NULL,
  `Kode_Mata_Kuliah` varchar(64) NOT NULL,
  `Semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`Id_Mata_Kuliah`, `Nama_Mata_Kuliah`, `Tahun_Ajaran`, `NIDN_Dosen_Coordinator`, `Id_Program_Studi`, `SKS`, `Kode_Mata_Kuliah`, `Semester`) VALUES
(1, 'Pembentukan Karakter Del', '2021/2022', 95703654, 'D4TRPL', 2, 'KU41101', 1),
(2, 'Bahasa Inggris I', '2021/2022', 445537616, 'D4TRPL', 2, 'KU41102', 1),
(3, 'Inovasi Digital', '2021/2022', 2112925488, 'D4TRPL', 2, 'TI41101', 1),
(4, 'Dasar Pemrograman', '2021/2022', 1174799918, 'D4TRPL', 3, '1041101', 1),
(5, 'Matematika Diskrit', '2021/2022', 1756817994, 'D4TRPL', 3, '1041102', 1),
(6, 'Arsitektur dan Organisasi Komputer', '2021/2022', 2045794589, 'D4TRPL', 2, '1041103', 1),
(7, 'Pengembangan Situs Web I', '2021/2022', 699033355, 'D4TRPL', 3, '1141104', 1),
(8, 'Pengenalan Rekayasa Perangkat Lunak', '2021/2022', 1976935676, 'D4TRPL', 3, '1141105', 1),
(9, 'Pembentukan Karakter Del', '2020/2021', 382697221, 'D4TRPL', 2, 'KU41101', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `Id_Nilai` int(11) NOT NULL,
  `Nilai` varchar(32) NOT NULL,
  `Id_Mata_Kuliah` int(11) NOT NULL,
  `NIM` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `program_studi`
--

CREATE TABLE `program_studi` (
  `Id_Program_Studi` varchar(64) NOT NULL,
  `Nama_Program_Studi` varchar(255) NOT NULL,
  `Nama_Kaprodi` varchar(255) NOT NULL,
  `Email_Kaprodi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `program_studi`
--

INSERT INTO `program_studi` (`Id_Program_Studi`, `Nama_Program_Studi`, `Nama_Kaprodi`, `Email_Kaprodi`) VALUES
('D3TI', 'D3 Teknologi Informasi', 'Kaprodi D3 Teknologi Informasi', 'pardedesion26@gmail.com'),
('D3TK', 'D3 Teknologi Komputer', 'Kaprodi D3 Teknologi Komputer', 'sautsihotang08@gmail.com'),
('D4TRPL', 'D4 Teknologi Rekayasa Perangkat Lunak', 'Verawaty Situmorang, S.Kom., M.T.I', 'norbert.kalit66@gmail.com'),
('S1BP', 'S1 Teknik Bioproses', 'Kaprodi S1 Teknik Bioproses', 'pardedesion26@gmail.com'),
('S1IF', 'S1 Informatika', 'Kaprodi S1 Informatika', 'sautsihotang08@gmail.com'),
('S1MR', 'S1 Manajemen Rekayasa', 'Kaprodi S1 Manajemen Rekayasa', 'norbert.kalit66@gmail.com'),
('S1SI', 'S1 Sistem Informasi', 'Kaprodi S1 Sistem Informasi', 'pardedesion26@gmail.com'),
('S1TE', 'S1 Teknik Elektro', 'Kaprodi S1 Teknik Elektro', 'sautsihotang08@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`NIDN`),
  ADD KEY `Id_Program_Studi` (`Id_Program_Studi`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`Id_Jadwal`),
  ADD KEY `Id_Mata_Kuliah` (`Id_Mata_Kuliah`);

--
-- Indeks untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`Id_Kehadiran`),
  ADD KEY `Id_Jadwal` (`Id_Jadwal`),
  ADD KEY `NIM` (`NIM`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`Id_Kelas`),
  ADD KEY `NIDN_Dosen_Wali` (`NIDN_Dosen_Wali`);

--
-- Indeks untuk tabel `lecturer`
--
ALTER TABLE `lecturer`
  ADD KEY `NIDN` (`NIDN`),
  ADD KEY `Id_Mata_Kuliah` (`Id_Mata_Kuliah`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`),
  ADD KEY `Id_Program_Studi` (`Id_Program_Studi`),
  ADD KEY `Id_Kelas` (`Id_Kelas`);

--
-- Indeks untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`Id_Mata_Kuliah`),
  ADD KEY `NIDN_Dosen_Coordinator` (`NIDN_Dosen_Coordinator`),
  ADD KEY `Id_Program_Studi` (`Id_Program_Studi`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`Id_Nilai`),
  ADD KEY `NIM` (`NIM`),
  ADD KEY `Id_Mata_Kuliah` (`Id_Mata_Kuliah`);

--
-- Indeks untuk tabel `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`Id_Program_Studi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `Id_Jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `Id_Kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `Id_Kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `Id_Mata_Kuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `Id_Nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=811;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`Id_Program_Studi`) REFERENCES `program_studi` (`Id_Program_Studi`);

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`Id_Mata_Kuliah`) REFERENCES `mata_kuliah` (`Id_Mata_Kuliah`);

--
-- Ketidakleluasaan untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD CONSTRAINT `kehadiran_ibfk_1` FOREIGN KEY (`Id_Jadwal`) REFERENCES `jadwal` (`Id_Jadwal`),
  ADD CONSTRAINT `kehadiran_ibfk_2` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`);

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`NIDN_Dosen_Wali`) REFERENCES `dosen` (`NIDN`);

--
-- Ketidakleluasaan untuk tabel `lecturer`
--
ALTER TABLE `lecturer`
  ADD CONSTRAINT `lecturer_ibfk_1` FOREIGN KEY (`NIDN`) REFERENCES `dosen` (`NIDN`),
  ADD CONSTRAINT `lecturer_ibfk_2` FOREIGN KEY (`Id_Mata_Kuliah`) REFERENCES `mata_kuliah` (`Id_Mata_Kuliah`);

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`Id_Program_Studi`) REFERENCES `program_studi` (`Id_Program_Studi`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`Id_Kelas`) REFERENCES `kelas` (`Id_Kelas`);

--
-- Ketidakleluasaan untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD CONSTRAINT `mata_kuliah_ibfk_1` FOREIGN KEY (`NIDN_Dosen_Coordinator`) REFERENCES `dosen` (`NIDN`),
  ADD CONSTRAINT `mata_kuliah_ibfk_2` FOREIGN KEY (`Id_Program_Studi`) REFERENCES `program_studi` (`Id_Program_Studi`);

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`),
  ADD CONSTRAINT `nilai_ibfk_3` FOREIGN KEY (`Id_Mata_Kuliah`) REFERENCES `mata_kuliah` (`Id_Mata_Kuliah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
