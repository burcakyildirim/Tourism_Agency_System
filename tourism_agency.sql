-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 09 Kas 2023, 22:41:58
-- Sunucu sürümü: 8.0.31
-- PHP Sürümü: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `tourism_agency`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hotel`
--

CREATE TABLE `hotel` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `property` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `hotel`
--

INSERT INTO `hotel` (`id`, `name`, `star`, `property`, `address`, `phone`, `email`) VALUES
(1, 'İskelem', '* * * * *', 'Yüzme Havuzu\nSPA\nFitness Center', 'Akyaka, Atatürk Cd. No: 68 / 70, 48640 Ula/Muğla', '0212 xxx xx xx', 'iskelem@gmail.com'),
(2, 'Kodluyoruz Life', '* * * *', 'SPA\n7/24 Oda Servisi', 'Şahkulu, Şişhane Metro Durağı, Meşrutiyet Cd. No:125, 34421', '0324 xxx xx xx', 'info@kodluyoruz.org'),
(3, 'Pırat Hotel', '* * *', 'Ücretsiz Otopark\nÜcretsiz WiFi', 'Kalkan Mahallesi İskele Sokak Marina, No:3, 07580 Kaş/Antalya', '0312 xxx xx xx', 'pirathotel@gmail.com'),
(4, 'Bolu Termal Resort', '* * * * *', 'Fitness Center\nHotel Concierge', 'fatih mh, İzzet Baysal Cd., 14100 Karacasu/merkez/Bolu', '0374 xxx xx xx', 'bolu@gmail.com'),
(5, 'DoubleTree By Kemer', '* *', 'Hotel Concierge', 'Yeni, Atatürk Blv. No:28/1, 07980 Kemer/Antalya', '0312 xxx xx xx', 'kemer@gmail.com'),
(6, 'aaa', '*', 'SPA\nFitness Center', 'xxx', '0212 xxx xx xx', 'dcs@');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reservation_info`
--

CREATE TABLE `reservation_info` (
  `id` int NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `client_phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `client_email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `client_note` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `room_id` int NOT NULL,
  `check_in` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `check_out` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `adult_numb` int NOT NULL,
  `child_numb` int NOT NULL,
  `total_price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `reservation_info`
--

INSERT INTO `reservation_info` (`id`, `client_name`, `client_phone`, `client_email`, `client_note`, `room_id`, `check_in`, `check_out`, `adult_numb`, `child_numb`, `total_price`) VALUES
(1, 'Burçak Yıldırım', '0531 xxx xx xx', 'beckyldrm@gmail.com', '-', 4, '01/05/2024', '05/05/2024', 2, 1, 5200),
(2, 'Berfin', '0534 xxx xx xx', 'brfn@gmail.com', '-', 3, '07/02/2024', '14/02/2024', 1, 0, 8400),
(3, 'Alpay', '0554 xxx xx xx', 'alpygmail.com', '-', 2, '08/08/2024', '11/08/2024', 2, 2, 9000),
(4, 'Selin Özdemir', '0543 xxx xx xx', 'selen@gmail.com', '-', 1, '03/06/2024', '10/06/2024', 2, 1, 12950),
(6, 'aaa', 'aa', 'aa', 'aaa', 5, '01/08/2024', '02/08/2024', 1, 0, 600);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room`
--

CREATE TABLE `room` (
  `id` int NOT NULL,
  `room_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `stock` int NOT NULL,
  `season_id` int NOT NULL,
  `adult_price` int NOT NULL,
  `child_price` int NOT NULL,
  `hotel_type_id` int NOT NULL,
  `hotel_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `room`
--

INSERT INTO `room` (`id`, `room_type`, `stock`, `season_id`, `adult_price`, `child_price`, `hotel_type_id`, `hotel_id`) VALUES
(1, 'Double', 10, 1, 750, 350, 2, 1),
(2, 'Single', 9, 4, 1000, 500, 13, 2),
(3, 'Suit', 4, 6, 1200, 850, 15, 3),
(4, 'Single', 1, 7, 500, 300, 17, 4),
(5, 'Single', 11, 11, 600, 300, 21, 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room_properties`
--

CREATE TABLE `room_properties` (
  `id` int NOT NULL,
  `property` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `room_id` int NOT NULL,
  `bed` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `area` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `room_properties`
--

INSERT INTO `room_properties` (`id`, `property`, `room_id`, `bed`, `area`) VALUES
(1, 'Televizyon \r\nMinibar \r\nKasa', 1, '6', 15),
(2, 'Kasa\r\nProjeksiyon\r\n', 3, '2', 25),
(3, 'Oyun Konsolu\r\nMinibar', 5, '3', 17),
(4, 'Televizyon\r\nKasa', 2, '4', 13),
(5, 'Projeksiyon\r\nOyun Konsolu', 4, '6', 20),
(6, 'Televizyon ', 6, '6', 12),
(7, '\nMinibar \nOyun Konsolu', 7, '4', 13),
(8, '\nKasa\nProjeksiyon', 8, '10', 13),
(9, '\nOyun Konsolu', 9, '3', 16),
(10, 'Televizyon \nKasa', 1, '5', 13),
(11, '\nMinibar \nOyun Konsolu\nProjeksiyon', 2, '3', 13),
(12, 'Televizyon \nMinibar \nOyun Konsolu\nProjeksiyon', 3, '5', 15),
(13, 'Televizyon ', 4, '1', 10),
(14, 'Televizyon ', 5, '2', 13);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `season`
--

CREATE TABLE `season` (
  `id` int NOT NULL,
  `season_start` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `season_end` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `hotel_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `season`
--

INSERT INTO `season` (`id`, `season_start`, `season_end`, `hotel_id`) VALUES
(1, '01/06/2024', '01/08/2024', 1),
(2, '01/09/2024', '01/12/2024', 1),
(3, '01/01/2021', '31/05/2021', 2),
(4, '01/06/2021', ' 01/12/2021', 2),
(5, '01/05/2024', '01/08/2024', 3),
(6, '01/02/2024', '01/04/2024', 3),
(7, '01/01/2024', '01/06/2024', 4),
(8, '01/09/2024', '01/12/2024', 4),
(9, '12/06/2024', '12/07/2024', 5),
(10, '21/07/2024', '21/08/2024', 5),
(11, '01/06/2024', '01/09/2024', 6),
(12, '01/10/2024', '01/11/2024', 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `type_hotel`
--

CREATE TABLE `type_hotel` (
  `id` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `hotel_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `type_hotel`
--

INSERT INTO `type_hotel` (`id`, `type`, `hotel_id`) VALUES
(1, 'Oda Kahvaltı', 2),
(2, 'Yarım Pansiyon', 1),
(3, 'Ultra Herşey Dahil', 4),
(4, 'Tam Pansiyon', 5),
(5, 'Herşey Dahil', 3),
(6, 'Oda Kahvaltı', 6),
(7, 'Sadece Yatak', 6),
(8, 'Herşey Dahil', 7),
(9, 'Oda Kahvaltı', 7),
(10, 'Herşey Dahil', 1),
(11, 'Tam Pansiyon', 1),
(12, 'Sadece Yatak', 2),
(13, 'Alkol Hariç Full credit', 2),
(14, 'Herşey Dahil', 3),
(15, 'Alkol Hariç Full credit', 3),
(16, 'Tam Pansiyon', 4),
(17, 'Yarım Pansiyon', 4),
(18, 'Ultra Herşey Dahil', 5),
(19, 'Herşey Dahil', 5),
(20, 'Oda Kahvaltı', 5),
(21, 'Oda Kahvaltı', 6),
(22, 'Sadece Yatak', 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `uname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `name`, `uname`, `pass`, `type`) VALUES
(1, 'Eray Sen', 'esen', '123', 'admin'),
(2, 'Sinem Turk', 'stur', '1234', 'operator'),
(3, 'Halit Ünsal', 'hunsal', '12345', 'admin'),
(4, 'Selin Ateş', 'sates', '123', 'operator'),
(5, 'Hasan Yılmaz', 'hyilmaz', '1234', 'admin');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reservation_info`
--
ALTER TABLE `reservation_info`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `room_properties`
--
ALTER TABLE `room_properties`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `type_hotel`
--
ALTER TABLE `type_hotel`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `reservation_info`
--
ALTER TABLE `reservation_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `room`
--
ALTER TABLE `room`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `room_properties`
--
ALTER TABLE `room_properties`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `season`
--
ALTER TABLE `season`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `type_hotel`
--
ALTER TABLE `type_hotel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
