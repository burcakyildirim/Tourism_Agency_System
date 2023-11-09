[Video Link](https://www.loom.com/share/31ccd8006e6b4ddbbfb2c6fb683d97e0)

#Login Ekranı   
![Login Ekranı](C:\Users\brcky\IdeaProjects\Patika\Tourism\ekran1.png)

#User Table Creation
```
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `uname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
```

#Sample Data Insertion for User Table
```
INSERT INTO `user` (`id`, `name`, `uname`, `pass`, `type`) VALUES 
('1', 'Eray Sen', 'esen', '123', 'admin');
('2', 'Sinem Turk', 'stur', '1234', 'operator');
('3', 'Halit Ünsal', 'hunsal', '12345', 'admin');
('4', 'Selin Ateş', 'sates', '123', 'operator');
('5', 'Hasan Yılmaz', 'hyilmaz', '1234', 'admin');
```

#Hotel Table Creation
```
CREATE TABLE `hotel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `property` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
```
#Sample Data Insertion for Hotel Table
```
INSERT INTO `hotel` (`id`, `name`, `star`, `property`, `address`, `phone`, `email`) VALUES 
('1', 'İskelem', '*****', 'Yüzme Havuzu\r\nFitness Center', 'Akyaka Mah. Atatürk Cd. No:68-70 Akyaka-Ula/Muğla', '0212 xxx xxx', 'iskelem@gmail');
('2', 'Kodluyoruz Life', '****', 'SPA\r\n7/24 Oda Servisi', 'Şahkulu, Şişhane Metro Durağı, Meşrutiyet Cd. No:125, 34421', '0212 xxx xx xx', 'info@kodluyoruz.org');
('3', 'Pırat Hotel', '*****', 'Ücretsiz Otopark\r\nÜcretsiz WiFi', 'Kalkan Mahallesi İskele Sokak Marina, No:3, 07580 Kaş/Antalya', '(0242) xxx xx xx', 'pirathotel@gmail');
('4', 'Bolu Termal Resort & Spa', '**', '7/24 Oda Servisi', 'Fatih mh, İzzet Baysal Cd., 14100 Karacasu/merkez/Bolu', '0374 xxx xx xx', 'iletisim@bolutermalotel.com');
('5', 'Doubletree By Hilton Antalya Kemer', '*', 'Hotel Concierge', 'Yeni, Atatürk Blv. No:28/1, 07980 Kemer/Antalya', ' (0242) xxx xx xx', 'doubletree@gmail.com');
```

#Otel Ekranı   
![Otel Ekranı](C:\Users\brcky\IdeaProjects\Patika\Tourism\ekran2.png)

#Otel Kayıt Ekranı   
![Otel Kayıt Ekranı](C:\Users\brcky\IdeaProjects\Patika\Tourism\otel.png)

#Room Table Creation
```
CREATE TABLE `room` (
`id` int NOT NULL AUTO_INCREMENT,
`room_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
`stock` int NOT NULL,
`season_id` int NOT NULL,
`adult_price` int NOT NULL,
`child_price` int NOT NULL,
`hotel_type_id` int NOT NULL,
`hotel_id` int NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
```
#Sample Data Insertion for Room Table
```
INSERT INTO `room` (`id`, `room_type`, `stock`, `season_id`, `adult_price`, `child_price`, `hotel_type_id`, `hotel_id`) VALUES
('1', 'Double', '10', '1', '750', '350', '2', '1');
('2', 'Single, '9', '4', '1000', '500', '1', '2');
('3', 'Suit', '4', '6', '1200', '850', '3', '3');
('4', 'Single', '1', '7', '500', '300', '4', '4');
('5', 'Single', '11', '11', '600', '300', '5', '5');
```

#Oda Ekranı   
![Oda Ekranı](C:\Users\brcky\IdeaProjects\Patika\Tourism\oda4.png)

#Oda Ekleme Ekranı   
![Oda Ekleme Ekranı](C:\Users\brcky\IdeaProjects\Patika\Tourism\ekleme.png)
#Hotel Type Table Creation
```
CREATE TABLE `type_hotel` (
`id` int NOT NULL AUTO_INCREMENT,
`type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
`hotel_id` int NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
```
#Sample Data Insertion for Hotel Type Table
```
INSERT INTO `type_hotel` (`id`, `type`, `hotel_id`) VALUES 
('1', 'Oda Kahvaltı', '2');
('2', 'Yarım Pansiyon', '1');
('3', 'Ultra Herşey Dahil', '4');
('4', 'Tam Pansiyon', '5');
('5', 'Herşey Dahil', '3');
```

#Season Table Creation
```
CREATE TABLE `season` (
  `id` int NOT NULL AUTO_INCREMENT,
  `season_start` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `season_end` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `hotel_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
```

#Sample Data Insertion for Season Table
```
INSERT INTO `season` (`id`, `season_start`, `season_end`, `hotel_id`) VALUES 
('1', '01/06/2024', '01/08/2024', '1');
('2', '01/09/2024', '01/12/2024', '1');
('3', '01/01/2024', '31/05/2024', '2');
('4', '01/06/2024', ' 01/12/2024', '2');
('5', '01/05/2024', '01/08/2024', '3');
('6', '01/02/2024', '01/04/2024', '3');
```

#Room Properties Table Creation
```
CREATE TABLE `room_properties` (
`id` int NOT NULL AUTO_INCREMENT,
`property` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
`room_id` int NOT NULL,
`bed` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
`area` int NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
```
#Sample Data Insertion for Room Properties Table
```
INSERT INTO `room_properties` (`id`, `property`, `room_id`, `bed`, `area`) VALUES 
('1', 'Televizyon \r\nMinibar \r\nKasa', '1', '5', '15');
('2', 'Kasa \r\n Projeksiyon \r\n', '2', '3', '25');
('3', 'Oyun Konsolu \r\n Minibar', '3', '5', '17');
('4', 'Televizyon \r\n Kasa', '4', '1', '13');
('5', 'Projeksiyon\ r\n Oyun Konsolu', '5', '2', '20');
```

#Reservation Info Table Creation
```
CREATE TABLE `reservation_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `client_phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `client_email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `client_note` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `room_id` int NOT NULL,
  `check_in` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `check_out` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `adult_numb` int NOT NULL,
  `child_numb` int NOT NULL,
  `total_price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
```

#Sample Data Insertion for Reservation Info Table
```
INSERT INTO `reservation_info` (`id`, `client_name`, `client_phone`, `client_email`, `client_note`, `room_id`, `check_in`, `check_out`, `adult_numb`, `child_numb`, `total_price`) VALUES
('1', 'Burçak Yıldırım', '0531 xxx xx xx', 'brckyldrm@gmail.com', '-', '4', '01/05/2024','05/05/2024', '2','1','5200');
('2', 'Alpay Demirhan', '0536 xxx xx xx', 'alpy@gmail.com', '-', '3', '07/02/2024','14/02/2024', '1','0','8400');
('3', 'Sergen Özen', '0541 xxx xx xx', 'sergn@gmail.com', '-', '2', '08/08/2024','11/08/2024', '2','2','5000');
('4', 'Berfin Yıldırım', '0534 xxx xx xx', 'brfn@gmail.com', '-', '1', '03/06/2024','10/06/2024', '2','1','5000');
('5', 'Selen Özdemir', '0532 xxx xx xx', 'slnozdmr@gmail.com', '-', '5', '01/08/2024','02/08/2024', '1','0','1400');
```
#Rezervasyon Ekranı   
![Rezervasyon Ekranı](C:\Users\brcky\IdeaProjects\Patika\Tourism\rezervayon.png)

#Rezervasyon Listeme Ekranı   
![Rezervasyon Listeleme Ekranı](C:\Users\brcky\IdeaProjects\Patika\Tourism\list.png)








