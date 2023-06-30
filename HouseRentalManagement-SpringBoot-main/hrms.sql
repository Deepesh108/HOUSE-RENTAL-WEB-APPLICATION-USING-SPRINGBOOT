

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint DEFAULT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES (1,'houserental@gmail.com','deepesh','1234','vamsi','00000-000000');
UNLOCK TABLES;


DROP TABLE IF EXISTS `advertisingform`;

CREATE TABLE `advertisingform` (
  `advertising_id` bigint NOT NULL,
  `additionalinformation` varchar(255) DEFAULT NULL,
  `bathrooms` int DEFAULT NULL,
  `bedrooms` int DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `images_uri` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `sqft` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `adminid` bigint DEFAULT NULL,
  PRIMARY KEY (`advertising_id`),
  KEY `FKc2sngsrya9eh2k0nr3m1nfis` (`adminid`),
  CONSTRAINT `FKc2sngsrya9eh2k0nr3m1nfis` FOREIGN KEY (`adminid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `advertisingform` WRITE;
INSERT INTO `advertisingform` VALUES (11,'This apartment builds itself around the core of great design and effective utilization of space. With properly planned rooms and apartment architecture, the space is built to allow comfort and peace sink in. You won’t be disappointed if you choose ',2,4,'discounted-02-beds-flat-in-vinhome-bason-3-800x0-c-center.jpg','http://localhost:9092/downloadFile/discounted-02-beds-flat-in-vinhome-bason-3-800x0-c-center.jpg','Amaravathi',65000,850,'Family(>=3 Members)','Apartment',2);
UNLOCK TABLES;

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


LOCK TABLES `hibernate_sequence` WRITE;
INSERT INTO `hibernate_sequence` VALUES (76);
UNLOCK TABLES;
