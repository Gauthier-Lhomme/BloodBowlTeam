-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: blood_bowl
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `news_bb`
--

DROP TABLE IF EXISTS `news_bb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_bb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title_article` varchar(60) NOT NULL,
  `content_article` varchar(2000) NOT NULL,
  `image_new` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_bb`
--

LOCK TABLES `news_bb` WRITE;
/*!40000 ALTER TABLE `news_bb` DISABLE KEYS */;
INSERT INTO `news_bb` VALUES (1,'Pitchside Report!','With the latest edition of Blood Bowl upon us, it’s time to introduce a new monthly series. Enter Pitchside Report. This series will shine a spotlight on Blood Bowl each and every month, starting in December. You can look forward to insights on the beautiful game, previews of upcoming models, free extras, and much more. This series will shine a spotlight on Blood Bowl each and every month, starting in December. You can look forward to insights on the beautiful game, previews of upcoming models, free extras, and much more. Legendary announcers Jim and Bob will set each article up and then hand off the reporting to Alyssa Avalos – who you might recognise from the recent Learn to Play videos. Sports fans have a lot to look forward to. \nAnd to whet your appetite for what you have to look forward to in December’s article – a handy little teaser… ','https://i.ibb.co/jTst9Ph/1.jpg'),(2,'New Season Sighted!','Ah, the great years. The years of sporting glory: 1986, 1988, 1994, 2001, and 2016… What do all these have in common?\nWhat’s that? Yes, you at the back with the massive foam finger and the Bloodweiser stein…\nThat’s right! They’re all years in which a new edition of the world’s favourite game of Fantasy Football was released… and now we can announce that 2020 is set to join those mighty dates etched into the annals of glory.\nThis holiday season, prepare for sports mayhem on an unparalleled scale, as the all-new edition of Blood Bowl hits a stadium near you!\nFor those who don’t know, Blood Bowl is an ultra-violent, super-fun (and sometimes very competitive) tabletop game of Fantasy Football.* It’s awesome, and you’re gonna love it. Blood Bowl is a great Warhammer game to just pick up and play.**\nFor those who do know, you’ll be excited to hear that the guys in the Warhammer Studio have poured their hearts and souls into this new edition – and the motto of “bigger, better, and 100% Blood Bowl” pretty much sums up the approach that’s been taken.\nHours of playtesting and feedback from many of the best players in the world have gone into crafting the very best edition of Blood Bowl to date – putting into practice more than 30 years of game development. At its heart, it’s the same Blood Bowl you all know and love, but polished to perfection to improve the gaming experience for everyone. ','https://i.ibb.co/3zYQHjF/2.jpg'),(3,'Jim and Bob’s Guide to Blood Bowl Leagues','Jim: Welcome, sports fans! I’m Jim Johnson, and my colleague here is Bob Bifford, and we’re here to talk to you eager coaches about how to run your very own Blood Bowl league.','https://i.ibb.co/HY0YGB3/3.jpg'),(4,'Blood Bowl Team Focus: Necromantic Horrors','It’s time to empty the cemeteries, get the mad scientists on standby, and prepare the dog treats – the Necromantic Horror teams are coming to Blood Bowl. Made up of a variety of monsters and undead creatures straight from classic tales of terror, this is a Blood Bowl team that relies on a combination of all its highly specialised players to ensure victory. Today, we’re looking at what each of those players brings to the team.To kick things off, we have a video featuring some top tips for Necromantic Horror teams straight from the game’s designers. Now that you’ve had an overview of the team, let’s take a closer look. Regeneration is one of your biggest assets for Necromantic Horror teams – almost all of your players have it and it’ll keep them in the fight when other players would fold.The mainstay of your team, Zombie Linemen are best described as cheap and cheerful. At 40,000 GP each, you can fill out your roster with them and pack the Line of Scrimmage – which is where you’re likely to want them, as their MA of 4 means they’re best sticking in one place. They’re average in every way and can’t pass the ball – but that’s fine, as they can take a hit, thanks to a respectable AV and Regeneration, and so can hold up opponents and let your specialised players do their thing. ','https://i.ibb.co/YtwgyZd/4.jpg');
/*!40000 ALTER TABLE `news_bb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `id` int NOT NULL AUTO_INCREMENT,
  `prices_id` int NOT NULL,
  `stats_id` int NOT NULL,
  `roles_id` int NOT NULL,
  `skills_id` int NOT NULL,
  `races_id` int NOT NULL,
  PRIMARY KEY (`id`,`prices_id`,`stats_id`,`roles_id`,`skills_id`,`races_id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_players_prices_idx` (`prices_id`),
  KEY `fk_players_stats1_idx` (`stats_id`),
  KEY `fk_players_roles1_idx` (`roles_id`),
  KEY `fk_players_skills1_idx` (`skills_id`),
  KEY `fk_players_races1_idx` (`races_id`),
  CONSTRAINT `fk_players_prices` FOREIGN KEY (`prices_id`) REFERENCES `prices` (`id`),
  CONSTRAINT `fk_players_races1` FOREIGN KEY (`races_id`) REFERENCES `races` (`id`),
  CONSTRAINT `fk_players_roles1` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `fk_players_skills1` FOREIGN KEY (`skills_id`) REFERENCES `skills` (`id`),
  CONSTRAINT `fk_players_stats1` FOREIGN KEY (`stats_id`) REFERENCES `stats` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,1,1,1,1,1),(2,1,2,1,1,2),(3,2,3,2,2,3);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players_has_skills`
--

DROP TABLE IF EXISTS `players_has_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players_has_skills` (
  `players_id` int NOT NULL,
  `skills_id` int NOT NULL,
  PRIMARY KEY (`players_id`,`skills_id`),
  KEY `fk_players_has_skills_skills1_idx` (`skills_id`),
  KEY `fk_players_has_skills_players1_idx` (`players_id`),
  CONSTRAINT `fk_players_has_skills_players1` FOREIGN KEY (`players_id`) REFERENCES `players` (`id`),
  CONSTRAINT `fk_players_has_skills_skills1` FOREIGN KEY (`skills_id`) REFERENCES `skills` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players_has_skills`
--

LOCK TABLES `players_has_skills` WRITE;
/*!40000 ALTER TABLE `players_has_skills` DISABLE KEYS */;
INSERT INTO `players_has_skills` VALUES (1,1),(2,1),(3,2),(3,3),(3,4);
/*!40000 ALTER TABLE `players_has_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (1,50000),(2,70000);
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `races`
--

DROP TABLE IF EXISTS `races`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `races` (
  `id` int NOT NULL AUTO_INCREMENT,
  `race_name` varchar(45) NOT NULL,
  `race_description` varchar(500) DEFAULT NULL,
  `race_strengths` varchar(500) DEFAULT NULL,
  `race_weaknesses` varchar(500) DEFAULT NULL,
  `image_race` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `races`
--

LOCK TABLES `races` WRITE;
/*!40000 ALTER TABLE `races` DISABLE KEYS */;
INSERT INTO `races` VALUES (1,'human','Although Human teams do not have the individual strengths or outstanding abilities available to other races, they do not suffer from any outstanding weakness either. This makes Human teams extremely flexible, equally at home running the ball, passing it, or ignoring it and pounding the opposition into the turf instead!','Humans are versatile and specialized, with numerous positions available to confront any type of situation: Linemen, Catchers, Throwers, etc. This offers a wide range of strategies to the coach and the added benefit of switching tactics during a game to take the opponent by surprise and take advantage of their weaknesses. ','Humans are not penalized by any inherent weaknesses as other races are. That being said, they don\'t excel in any particular domain either. Their passes are decent but don\'t compare with the High Elves. Their Catchers are fast but will have a hard time keeping up with a Skaven Gutter Runner. Their toughest players, Blitzers, will hardly compete against a Chaos Warrior or a Black Orc. ','https://i.ibb.co/tHQmL2y/human.jpg'),(2,'orc','Orcs have been playing Blood Bowl since the game was invented, and Orc teams such as the Gouged Eye and Severed Heads are amongst the best in the league. Orc teams are tough and hard-hitting, grinding down the opposition’s line to create gaps for their excellent Orc Blitzers to exploit.','Orcs teams are very well protected, with a high average armour value. The reasonably priced cost of their players and the strength of their Blitzers and Black Orcs allow for really offensive tactics. A little bit less versatile than Humans, Orcs still offer a certain variety in their game that is not given to other equally strong races. ','Orc teams are more tough than they are fast, so Orcs are slightly less mobile due to a limited Move Allowance. Therefore, their position on the field is very important because it is more difficult for them to catch faster players. ','https://i.ibb.co/PC7BGJg/orc.jpg'),(3,'dwarf','Dwarf seem to be ideal Blood Bowl players, being compact, tough, well-armoured and having a stubborn knack of refusing to die! Most successful Dwarf teams work to the principle that if they can take out all the other team\'s potential scorers, and wear down the rest, then there won\'t be anybody left to stop them scoring the winning touchdowns!','Dwarfs are strong and resistant and prefer to run through an opponent instead of around them. Their main strength comes from their extraordinary ability to block which allows them to face and even defeat adversaries that are more powerful. If by chance a Dwarf should fall during a game, you can bet that he will soon be back on his feet, ready to fight again! ','As you may expect, the great weakness of Dwarfs is their poor speed. Some Dwarfs reach the honorary rank of \"Runner\", although they are barely as fast as the slowest players from other teams. To overcome this huge flaw, a good coach needs to pay particular attention to his players positions before each kick off. ','https://i.ibb.co/61VBRC5/dwarf.jpg');
/*!40000 ALTER TABLE `races` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'trois-quart'),(2,'bloqueur');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `skill` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'aucune'),(2,'blocage'),(3,'crâne épais'),(4,'tacle');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `m` int DEFAULT NULL,
  `f` int DEFAULT NULL,
  `ag` int DEFAULT NULL,
  `va` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
INSERT INTO `stats` VALUES (1,6,3,3,8),(2,5,3,3,9),(3,4,3,2,9);
/*!40000 ALTER TABLE `stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-04 16:48:26
