-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 17 jun 2025 om 13:37
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `module8.1_festivalapp`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `artists`
--

CREATE TABLE `artists` (
  `id` int(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `country` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `artists`
--

INSERT INTO `artists` (`id`, `name`, `description`, `country`) VALUES
(1, 'The Weeknd', 'The Weeknd took over pop music & culture on his own terms filtering R&B, Pop,& hip-hop through an ambitious widescreen lens. The multi-platinum 3X GRAMMY Award winner has emerged as one of the most successful & significant artists of the modern era. 2012’s 3X platinum  collated 3 breakout mixtapes—House of Balloons, Thursday & Echoes of Silence—into his 1st chart-topping collection followed by his debut LP  in 2013. Two years later, “Earned It (Fifty Shades of Grey)” won “Best R&B Performance” & received an Academy Award nod for “Best Original Song” & 4X Platinum  won a GRAMMY for “Best Urban Contemporary Album.” In 2018,  won the same award, making him the 1st artist ever to win twice. His 6-track project My Dear Melancholy marked his 3rd consecutive #1 bow on the Billboard Top 200, & “Pray For Me” with Kendrick Lamar &  was featured in the trailer for the Academy Award winning Marvel film Black Panther. In 2020 the 80’s-nostalgic track  became a worldwide sensation, igniting viral dance challenges across social media, peaking at #1 in 30+ countries & headlining Mercedes Benz EQC campaign.  held the #1 spot on Billboard 200 for 4 consecutive weeks, marking his 4th #1 album & becoming the first to ever rank #1 on the Billboard 200, Hot 100, and Artist 100 simultaneously.  is the #1 R&B streaming album of all time (followed by  at #2).', 'CA'),
(2, 'Travis Scott', 'Houston-born rapper and producer Travis Scott\'s psychedelic trap style makes him one of the more distinctive talents to have risen to the height of mainstream commercial popularity. His heavily processed, half-sung/half-rapped style set him apart early on, and he grew from affiliations with \'s GOOD Music and \'s  in the early 2010s to chart-dominating popularity before the close of the decade. After his first studio album, 2015\'s Rodeo, debuted in the number three position, Scott followed with a pair of number one full-lengths, Birds in the Trap Sing McKnight (2016) and Astroworld (2018), all the while assisting on platinum singles headlined by the likes of  (\"Bitch Better Have My Money\"),  (\"Love Galore\"), and  (\"Portland\"), and working extensively with  as . Whether leading or supporting, Scott\'s presence was unmistakable, and he quickly accumulated Grammys, endorsement deals, and appearances in more than 80 charting songs. By the 2020s, Scott was one of the most successful living artists on the planet. This level of fame played into both extreme success and profound tragedy, with Scott being at the center of controversy surrounding the deaths and injuries of hundreds of fans at his 2021 Astroworld festival before debuting his genre-crossing, Grammy-nominated fourth album, 2023\'s UTOPIA. He was then featured on a variety of tracks with , , , and others.', 'US'),
(3, 'Future', 'Chart-topping and influential rapper Future is known for a uniquely fluid and melodic yet mumbling vocal style. He busted out of the South at the dawn of the 2010s with a flurry of mixtapes, high-charting albums, certified platinum singles, and contributions to several other hits as a featured artist, then continued to hover at the top of his game, both commercially and creatively, in the years that followed. After he scored his first hit via a guest spot on \'s \"Racks\" (2011), Future quickly became a key factor in Atlanta\'s grip on the Billboard charts, often with production support from fellow ATL natives and dwellers such as , , , and . By the end of 2017, Future had amassed 32 Top Ten R&B/hip-hop hits as a headliner and featured artist. Meanwhile, 11 full-length projects -- including an all-platinum run of DS2 (2015), Evol (2016), and Future (2017) -- debuted within the Top Five of the Billboard 200. Future capped off the 2010s by adding to his Top 20 tally with the Grammy-winning \"King\'s Dead,\" co-producing a remake of Super Fly, and hitting the top of the Billboard 200 again with The Wizrd (2019). He has since returned to the throne with several projects, including High Off Life (2020), WE DON\'T TRUST YOU/WE STILL DON\'T TRUST YOU (with , 2024), and Mixtape Pluto (2024).', 'US'),
(4, 'playboi Carti', 'In just a few short years, rapper Playboi Carti has amassed over 19B streams worldwide. Carti has been unstoppable since the release of his 2017 single “Magnolia,” as its meteoric rise garnered cosigns from Beyoncé and features on series like Atlanta. His self-titled album has accumulated nearly 7.8B streams to date after debuting at #12 on the Billboard 200 chart where it spent 63 weeks. The following year, Carti dropped his album Die Lit, debuting at #3 on the Billboard 200, with collaborations like Lil Uzi Vert on “Shoota,” “Poke It Out” with Nicki Minaj & “Love Hurts” with Travis Scott. The album has nearly 9.5B global streams to date and spent a total of 111 weeks on the Billboard 200. In April of 2020, Playboi Carti returned with track “@MEH,” and on Christmas day, he landed his first #1 album on Billboard’s 200 Chart with Whole Lotta Red which has amassed a staggering 9.4B global streams to date. Playboi Carti kicked off 2024 strong with new music & collaborations including \"CARNIVAL” with Kanye West, Ty Dolla $ign, and Rich the Kid, reaching #1 on the Billboard Hot 100 chart. Carti’s collaboration with Travis Scott on their song “FE!N” peaked at #5 on Billboard’s Hot 100. Playboi Carti has also recently featured on “I LUV IT” with Camila Cabello, “TYPE SHIT” with Future, Metro Boomin, and Travis Scott, and “Popular” with The Weeknd and Madonna. His most recent collaboration “Timeless” with The Weeknd debuted at #3 on Billboard Hot 100.', 'US');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `artists_media`
--

CREATE TABLE `artists_media` (
  `id` int(5) NOT NULL,
  `artist_id` int(4) NOT NULL,
  `media` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `artists_media`
--
ALTER TABLE `artists_media`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `artists_media`
--
ALTER TABLE `artists_media`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
