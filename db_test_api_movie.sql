-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Sep 2023 pada 07.24
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_test_api_movie`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(255) DEFAULT NULL,
  `movie_year` int(4) DEFAULT NULL,
  `movie_runtime` int(4) DEFAULT NULL,
  `imdb_ratings` float DEFAULT NULL,
  `metascore` int(3) DEFAULT NULL,
  `number_votes` int(11) DEFAULT NULL,
  `us_gross_millions` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `movie`
--

INSERT INTO `movie` (`movie_id`, `movie_name`, `movie_year`, `movie_runtime`, `imdb_ratings`, `metascore`, `number_votes`, `us_gross_millions`) VALUES
(2, 'Spider-Man: Across the Spider-Verse', 2023, 140, 8.7, 86, 255964, 0),
(3, 'Interstellar', 2014, 169, 8.7, 74, 1985582, 188.02),
(4, 'The Dark Knight', 2008, 152, 9, 84, 2777639, 534.86),
(5, 'The Shawshank Redemption', 1994, 142, 9.3, 82, 2796762, 28.34),
(6, 'The Godfather', 1972, 175, 9.2, 100, 1948417, 134.97),
(7, 'Inception', 2010, 148, 8.8, 74, 2465982, 292.58),
(8, 'The Dark Knight Rises', 2012, 164, 8.4, 78, 1774584, 448.14),
(9, 'Pulp Fiction', 1994, 154, 8.9, 95, 2145308, 107.93),
(10, 'Gladiator', 2000, 155, 8.5, 67, 1561315, 187.71),
(11, 'Joker', 2019, 122, 8.4, 59, 1398933, 335.45),
(12, 'Inglourious Basterds', 2009, 153, 8.3, 69, 1523024, 120.54),
(13, 'Indiana Jones and the Raiders of the Lost Ark', 1981, 115, 8.4, 85, 1012332, 248.16),
(14, 'The Lord of the Rings: The Fellowship of the Ring', 2001, 178, 8.8, 92, 1943270, 315.54),
(15, 'Fight Club', 1999, 139, 8.8, 67, 2230634, 37.03),
(16, 'Forrest Gump', 1994, 142, 8.8, 82, 2176180, 330.25),
(17, 'Se7en', 1995, 127, 8.6, 65, 1731590, 100.13),
(18, 'Schindler\'s List', 1993, 195, 9, 95, 1406143, 96.9),
(19, 'American Beauty', 1999, 122, 8.3, 84, 1185307, 130.1),
(20, 'The Prestige', 2006, 130, 8.5, 66, 1395098, 53.09),
(21, 'Alien', 1979, 117, 8.5, 89, 918282, 78.9),
(22, 'Oldboy', 2003, 120, 8.4, 78, 609860, 0.71),
(23, 'The Silence of the Lambs', 1991, 118, 8.6, 86, 1492182, 130.74),
(24, 'Spider-Man: Into the Spider-Verse', 2018, 117, 8.4, 87, 628430, 190.24),
(25, 'Parasite', 2019, 132, 8.5, 96, 886197, 53.37),
(26, 'The Departed', 2006, 151, 8.5, 85, 1378638, 132.38),
(27, 'Goodfellas', 1990, 145, 8.7, 92, 1213555, 46.84),
(28, 'Amadeus', 1984, 160, 8.4, 87, 416405, 51.97),
(29, 'The Matrix', 1999, 136, 8.7, 73, 1988726, 171.48),
(30, 'Avengers: Endgame', 2019, 181, 8.4, 78, 1212886, 858.37),
(31, 'Requiem for a Dream', 2000, 102, 8.3, 71, 874143, 3.64),
(32, 'Back to the Future', 1985, 116, 8.5, 87, 1262129, 210.61),
(33, 'Saving Private Ryan', 1998, 169, 8.6, 91, 1448551, 216.54),
(34, 'Django Unchained', 2012, 165, 8.5, 81, 1633100, 162.81),
(35, 'Whiplash', 2014, 106, 8.5, 89, 930550, 13.09),
(36, 'Aliens', 1986, 137, 8.4, 84, 742548, 85.16),
(37, '2001: A Space Odyssey', 1968, 149, 8.3, 84, 697468, 56.95),
(38, 'Memento', 2000, 113, 8.4, 83, 1286026, 25.54),
(39, 'Good Will Hunting', 1997, 126, 8.3, 70, 1021945, 138.43),
(40, 'The Shining', 1980, 146, 8.4, 66, 1068317, 44.02),
(41, 'LÃƒÂ©on: The Professional', 1994, 110, 8.5, 64, 1208077, 19.5),
(42, 'Apocalypse Now', 1979, 147, 8.4, 94, 691377, 83.47),
(43, 'American History X', 1998, 119, 8.5, 62, 1157571, 6.72),
(44, 'The Green Mile', 1999, 189, 8.6, 61, 1359392, 136.8),
(45, 'The Lord of the Rings: The Return of the King', 2003, 201, 9, 94, 1915104, 377.85),
(46, 'The Godfather Part II', 1974, 202, 9, 90, 1323381, 57.3),
(47, '12 Angry Men', 1957, 96, 9, 97, 831125, 4.36),
(48, 'Star Wars: Episode IV - A New Hope', 1977, 121, 8.6, 90, 1412540, 322.74),
(49, 'Braveheart', 1995, 178, 8.3, 68, 1067679, 75.6),
(50, 'The Hunt', 2012, 115, 8.3, 77, 349138, 0.69),
(51, 'Terminator 2: Judgment Day', 1991, 137, 8.6, 75, 1140808, 204.84),
(52, 'The Lion King', 1994, 88, 8.5, 88, 1104531, 422.78),
(53, 'Eternal Sunshine of the Spotless Mind', 2004, 108, 8.3, 89, 1045606, 34.4),
(54, 'One Flew Over the Cuckoo\'s Nest', 1975, 133, 8.7, 84, 1042763, 112),
(55, 'Spirited Away', 2001, 125, 8.6, 96, 808685, 10.06),
(56, 'The Usual Suspects', 1995, 106, 8.5, 77, 1117987, 23.34),
(57, 'The Pianist', 2002, 150, 8.5, 85, 876565, 32.57),
(58, 'Avengers: Infinity War', 2018, 149, 8.4, 68, 1153914, 678.82),
(59, 'Reservoir Dogs', 1992, 99, 8.3, 81, 1058523, 2.83),
(60, 'The Good, the Bad and the Ugly', 1966, 178, 8.8, 90, 788755, 6.1),
(61, 'City of God', 2002, 130, 8.6, 79, 780973, 7.56),
(62, 'Psycho', 1960, 109, 8.5, 97, 697925, 32),
(63, 'The Lord of the Rings: The Two Towers', 2002, 179, 8.8, 87, 1728133, 342.55),
(64, 'Toy Story', 1995, 81, 8.3, 96, 1036334, 191.8),
(65, 'Come and See', 1985, 142, 8.4, 0, 89721, 0),
(66, 'Once Upon a Time in America', 1984, 229, 8.3, 75, 366367, 5.32),
(67, 'Casablanca', 1942, 102, 8.5, 100, 591401, 1.02),
(68, 'Life Is Beautiful', 1997, 116, 8.6, 59, 721862, 57.6),
(69, 'Coco', 2017, 105, 8.4, 81, 553341, 209.73),
(70, 'The Intouchables', 2011, 112, 8.5, 57, 897038, 13.18),
(71, 'Your Name.', 2016, 106, 8.4, 81, 298363, 5.02),
(72, 'Star Wars: Episode VI - Return of the Jedi', 1983, 131, 8.3, 58, 1092502, 309.13),
(73, 'Star Wars: Episode V - The Empire Strikes Back', 1980, 124, 8.7, 82, 1340790, 290.48),
(74, 'Grave of the Fireflies', 1988, 89, 8.5, 94, 295160, 0),
(75, 'Once Upon a Time in the West', 1968, 165, 8.5, 82, 341391, 5.32),
(76, 'WALLÃ‚Â·E', 2008, 98, 8.4, 95, 1162929, 223.81),
(77, 'The Lives of Others', 2006, 137, 8.4, 89, 401063, 11.29),
(78, '3 Idiots', 2009, 170, 8.4, 67, 417790, 6.53),
(79, 'Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', 1964, 95, 8.4, 97, 506362, 0.28),
(80, 'Rear Window', 1954, 112, 8.5, 100, 508563, 36.76),
(81, 'Toy Story 3', 2010, 103, 8.3, 92, 868853, 415),
(82, 'Princess Mononoke', 1997, 134, 8.3, 76, 415183, 2.38),
(83, 'Lawrence of Arabia', 1962, 218, 8.3, 100, 305430, 44.82),
(84, 'Capernaum', 2018, 126, 8.4, 75, 98858, 1.66),
(85, 'Citizen Kane', 1941, 119, 8.3, 100, 455876, 1.59),
(86, 'It\'s a Wonderful Life', 1946, 130, 8.6, 89, 478618, 0),
(87, 'Seven Samurai', 1954, 207, 8.6, 98, 357692, 0.27),
(88, 'Cinema Paradiso', 1988, 155, 8.5, 80, 273490, 11.99),
(89, 'Singin\' in the Rain', 1952, 103, 8.3, 99, 252973, 8.82),
(90, 'Das Boot', 1981, 149, 8.4, 86, 258614, 11.49),
(91, 'Sunset Blvd.', 1950, 110, 8.4, 94, 230210, 0),
(92, 'M', 1931, 99, 8.3, 0, 164059, 0.03),
(93, 'Harakiri', 1962, 133, 8.6, 85, 63575, 0),
(94, 'Witness for the Prosecution', 1957, 116, 8.4, 76, 132266, 8.18),
(95, 'Paths of Glory', 1957, 88, 8.4, 90, 205833, 0),
(96, 'Ikiru', 1952, 143, 8.3, 92, 83846, 0.06),
(97, 'The Great Dictator', 1940, 125, 8.4, 0, 231748, 0.29),
(98, 'Modern Times', 1936, 87, 8.5, 96, 252236, 0.16),
(99, 'High and Low', 1963, 143, 8.4, 90, 49588, 0),
(100, 'City Lights', 1931, 87, 8.5, 99, 191198, 0.02),
(101, 'Story Of My Life', 2023, 120, 8.7, 87, 100000, 8080.8);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `movie`
--
ALTER TABLE `movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
