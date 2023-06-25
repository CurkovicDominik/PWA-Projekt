-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2023 at 02:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bazabig`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `prezime` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `korisnicko_ime` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `lozinka` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `razina` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `korisnicko_ime`, `lozinka`, `razina`) VALUES
(15, 'Curkovic', 'Dominik', 'admin', '$2y$10$/q25PstwUXSZ9wDU4oMR0.B13xQruBPua8.nYYk9LH9rxoeC.WxW2', 1),
(16, 'Dominink', 'Curkovic', 'user', '$2y$10$8epEahrX..BQz5Zo7ksiUuz38YBFmUMcNGPWz2WVytrt6MrNSvlXy', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vijesti`
--

CREATE TABLE `vijesti` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `naslov` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `sazetak` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `tekst` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `slika` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `kategorija` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `arhiva` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vijesti`
--

INSERT INTO `vijesti` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`) VALUES
(34, '24.06.2023.', 'Novi prvaci', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismod', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismod magna maximus, vitae semper sapien varius. Mauris eleifend tristique elit, a venenatis eros feugiat ut.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismod magna maximus, vitae semper sapien varius. Mauris eleifend tristique elit, a venenatis eros feugiat ut.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismod magna maximus, vitae semper sapien varius. Mauris eleifend tristique elit, a venenatis eros feugiat ut.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismod magna maximus, vitae semper sapien varius. Mauris eleifend tristique elit, a venenatis eros feugiat ut.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismod magna maximus, vitae semper sapien varius. Mauris eleifend tristique elit, a venenatis eros feugiat ut.', 'cb263555-9d88-407e-97c4-90b280299d6f.jpg', 'sport', 0),
(35, '24.06.2023.', 'ŠPanjolska u problemu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismo', 'koronakarta-1.jpg', 'politika', 0),
(36, '24.06.2023.', 'Obnova MSU', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismo', 'Museum_Zagreb_03-barrisol.jpg', 'kultura', 0),
(37, '24.06.2023.', 'Anđelo Kvesić zlatni', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismo', '355682490-255845567142456-553060574817737181-n_UoLI15Y.webp', 'sport', 0),
(38, '24.06.2023.', 'Novi ministar graditeljstva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismo', '2022_1_17_ministar-Bacic.jpg', 'politika', 0),
(39, '24.06.2023.', 'LADO na EXPO Dubai', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui e', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismo', 'LADO_Expo_Otvaranje1.jpg', 'kultura', 0),
(41, '24.06.2023.', 'Kazneni sud donio odluku', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismo', '426649.jpeg', 'politika', 1),
(42, '24.06.2023.', 'Vatreni opet drugi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismo', 'vvvLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismo', '808947.jpeg', 'sport', 0),
(43, '24.06.2023.', 'Sportom protiv droge', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismoLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer euismod dui euismo', 'SPORTOMPROTIVDROGE.jpg', 'sport', 0),
(45, '24.06.2023.', 'Xi Jinping rekao svoje', 'Xi Jinping je donio tešku odluku zbog koje će cijela Europa disati na škrge!', 'Xi Jinping je predsjeniku Macronu izrazio ultimatum. aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.', 'download.jpg', 'politika', 0),
(46, '24.06.2023.', 'Francuski rukomet u problemu', 'aliquam erat nec metus convallis efficitur. Aenean leo turpis, condim', 'aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.', 'images (1).jpg', 'sport', 0),
(47, '24.06.2023.', 'Izložba Picassa u Zagrebu', 'aliquam erat nec metus cs cursus non, luctrbi consequat tincidunt mi, quis posuere ex maximus eget.', 'aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.', 'download (1).jpg', 'kultura', 0),
(48, '24.06.2023.', 'Ćakovec ima novi sjaj', 'aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum qu', 'aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.aliquam erat nec metus convallis efficitur. Aenean leo turpis, condimentum quis cursus non, luctus quis sem. Morbi consequat tincidunt mi, quis posuere ex maximus eget.', 'images (2).jpg', 'kultura', 0),
(49, '24.06.2023.', 'Nives Celzijus opet šokira', 'Aliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euis', 'Aliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euis', 'o_21325080_1024.webp', 'showbiz', 0),
(50, '24.06.2023.', 'Frka izdominirao na X-Faktoru', 'Aliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euis', 'Aliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euis', 'feeee611e52495e2e2ce.jpeg', 'showbiz', 0),
(51, '24.06.2023.', 'Zsa Zsa za Franceinfo', 'Aliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euis', 'Aliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euis', 'f_22748603_1280.jpg', 'showbiz', 0),
(52, '24.06.2023.', 'Nova operacija Elle Dvornik', 'Aliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euis', 'Aliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euisAliquam accumsan turpis non ante rhoncus eleifend. Maecenas arcu sem, bibendum eu velit mattis, euis', 'download (4).jpg', 'showbiz', 0),
(55, '25.06.2023.', 'Stara odluka Francuske', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut elit purus. Fusce sed blandit ligula, non fringilla diam. Mauris ac dictum nisl. Ut finibus erat vitae malesuada venenatis. In egestas facilisis dui, at sodales tellus pharetra at. Aliquam sit amet aliquam lectus, ut dapibus justo. Phasellus venenatis eros in elit pellentesque placerat. Nullam condimentum sed diam eu Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut elit purus. Fusce sed blandit ligula, non fringilla diam. Mauris ac dictum nisl. Ut finibus erat vitae malesuada venenatis. In egestas facilisis dui, at sodales tellus pharetra at. Aliquam sit amet aliquam lectus, ut dapibus justo. Phasellus venenatis eros in elit pellentesque placerat. Nullam condimentum sed diam eu Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut elit purus. Fusce sed blandit ligula, non fringilla diam. Mauris ac dictum nisl. Ut finibus erat vitae malesuada venenatis. In egestas facilisis dui, at sodales tellus pharetra at. Aliquam sit amet aliquam lectus, ut dapibus justo. Phasellus venenatis eros in elit pellentesque placerat. Nullam condimentum sed diam eu ', 'France-1980x1406.jpg', 'politika', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnicko_ime` (`korisnicko_ime`);

--
-- Indexes for table `vijesti`
--
ALTER TABLE `vijesti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `vijesti`
--
ALTER TABLE `vijesti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
