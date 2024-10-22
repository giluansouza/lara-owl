-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_10_17_180141_create_organizations_table',1),(5,'2024_10_17_180143_create_people_table',1),(6,'2024_10_17_180228_create_occurrences_table',1),(7,'2024_10_17_180825_create_occurrence_people_table',1),(8,'2024_10_18_135922_add_image_to_people_table',2),(9,'2024_10_18_115946_create_personal_access_tokens_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occurrence_people`
--

DROP TABLE IF EXISTS `occurrence_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occurrence_people` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `occurrence_id` bigint unsigned NOT NULL,
  `people_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `occurrence_people_occurrence_id_foreign` (`occurrence_id`),
  KEY `occurrence_people_people_id_foreign` (`people_id`),
  CONSTRAINT `occurrence_people_occurrence_id_foreign` FOREIGN KEY (`occurrence_id`) REFERENCES `occurrences` (`id`) ON DELETE CASCADE,
  CONSTRAINT `occurrence_people_people_id_foreign` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occurrence_people`
--

LOCK TABLES `occurrence_people` WRITE;
/*!40000 ALTER TABLE `occurrence_people` DISABLE KEYS */;
INSERT INTO `occurrence_people` VALUES (1,21,51,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(2,22,52,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(3,23,53,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(4,24,54,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(5,25,55,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(6,26,56,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(7,27,57,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(8,28,58,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(9,29,59,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(10,30,60,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(11,31,61,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(12,32,62,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(13,33,63,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(14,34,64,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(15,35,65,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(16,36,66,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(17,37,67,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(18,38,68,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(19,39,69,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(20,40,70,'2024-10-17 18:31:20','2024-10-17 18:31:20');
/*!40000 ALTER TABLE `occurrence_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occurrences`
--

DROP TABLE IF EXISTS `occurrences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occurrences` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `occurred_at` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` bigint unsigned DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `occurrences_organization_id_foreign` (`organization_id`),
  CONSTRAINT `occurrences_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occurrences`
--

LOCK TABLES `occurrences` WRITE;
/*!40000 ALTER TABLE `occurrences` DISABLE KEYS */;
INSERT INTO `occurrences` VALUES (1,'2016-06-17 03:33:52','Soluta et quis sunt distinctio ea saepe. Molestias temporibus eos ratione vitae non est. Illum laudantium sint voluptatem. Exercitationem quis ad aut minima eveniet.',143,-40.9818470,-86.3827770,'2024-10-17 18:23:51','2024-10-17 18:23:51'),(2,'1995-11-20 11:31:08','Velit odio debitis ea consequatur recusandae animi placeat. In dolore accusantium dolor molestiae aperiam maxime. Rerum aut omnis voluptatem occaecati expedita.',144,29.2858420,-6.6648910,'2024-10-17 18:23:51','2024-10-17 18:23:51'),(3,'2005-02-28 18:16:59','Omnis tempora dolores aut voluptas. Fugit numquam eaque iusto magni veritatis odit.',145,-13.1901990,-162.0056340,'2024-10-17 18:23:51','2024-10-17 18:23:51'),(4,'2022-05-14 10:48:10','Quia qui accusantium officia est eaque commodi. Sed hic sunt nihil adipisci dolorem. Ut autem consequatur ut ducimus et qui. Unde veniam velit ex recusandae et voluptatem. Velit libero optio error doloribus officiis labore.',146,64.3251450,-17.5826640,'2024-10-17 18:23:51','2024-10-17 18:23:51'),(5,'1995-01-23 18:42:49','Est ea molestiae voluptate magni. Minima quia a alias culpa voluptatem facere.',147,-84.6500830,120.7802310,'2024-10-17 18:23:51','2024-10-17 18:23:51'),(6,'1970-04-28 23:20:16','Recusandae eius non iste. Vitae sapiente ipsam eaque laboriosam. Qui dolorem aut nostrum ducimus modi sed enim maxime.',148,-10.4212500,175.4113790,'2024-10-17 18:23:51','2024-10-17 18:23:51'),(7,'2000-05-14 19:19:30','Eum alias dolor voluptatibus inventore fugit eligendi ex ipsam. Hic vitae sequi laudantium necessitatibus temporibus suscipit fugit. Doloremque ut voluptatem laudantium repellat. Ut enim aut et recusandae quia.',149,-43.5986290,-17.4546920,'2024-10-17 18:23:51','2024-10-17 18:23:51'),(8,'1981-07-11 03:42:30','Ut aut nam fugiat in dolore aut perspiciatis. Doloribus in nemo a quis dolor. Incidunt incidunt quo similique consequatur. Iure sint possimus est natus vel alias.',150,-30.3808000,109.1398020,'2024-10-17 18:23:51','2024-10-17 18:23:51'),(9,'1997-10-02 10:39:32','Numquam maxime porro aperiam temporibus nemo. Qui reprehenderit nihil mollitia cum ut. Error ab aut quam esse non et vero.',151,81.5268200,-160.0137360,'2024-10-17 18:23:51','2024-10-17 18:23:51'),(10,'1972-03-24 23:11:33','Architecto rerum quisquam est quo reiciendis architecto quidem. Aut atque magnam eaque porro sequi fugit. Voluptatem sed quia accusamus esse dolorum.',152,-62.2786410,69.5139930,'2024-10-17 18:23:51','2024-10-17 18:23:51'),(11,'1988-05-31 17:05:20','Expedita aut nemo magnam vel tempore. Ad unde qui quia. Nesciunt dolorem placeat eum dignissimos sint et et nisi. Soluta doloribus sit sint vero amet.',153,4.8531160,17.7259390,'2024-10-17 18:23:51','2024-10-17 18:23:51'),(12,'2021-03-05 17:51:48','Perferendis dolor voluptatibus soluta. Consequatur occaecati saepe odit totam eum voluptas aut vitae. Corporis at et voluptas rerum illum voluptas et animi.',154,13.4732800,56.6153320,'2024-10-17 18:23:51','2024-10-17 18:23:51'),(13,'2019-03-22 10:32:15','Provident sequi fugiat quia ullam. Tenetur facilis saepe eum error eveniet commodi esse. Voluptate dolor hic ipsam rerum quis deserunt.',155,-88.9369610,-39.0336800,'2024-10-17 18:23:51','2024-10-17 18:23:51'),(14,'1982-05-14 12:27:10','Sed reprehenderit enim excepturi. Nam cupiditate consequatur blanditiis voluptates. Deleniti consequatur in esse modi. Adipisci maxime quia culpa sit assumenda laborum possimus.',156,75.0678170,143.0086880,'2024-10-17 18:23:51','2024-10-17 18:23:51'),(15,'2018-01-12 04:05:33','Suscipit neque quia commodi perspiciatis veritatis. Voluptate tempore deserunt quo molestiae.',157,-63.9639630,-26.9829610,'2024-10-17 18:23:51','2024-10-17 18:23:51'),(16,'1997-10-29 12:04:52','Error qui doloribus tenetur natus delectus. Et quae temporibus et et nam perferendis. Voluptatibus voluptatem dolorem sed molestias soluta.',158,13.1717450,125.3949660,'2024-10-17 18:23:51','2024-10-17 18:23:51'),(17,'2024-04-14 18:26:26','Rem doloribus quibusdam omnis rerum quisquam quia et. Vero eos harum optio officiis odio mollitia. Distinctio maiores exercitationem unde possimus quia dolores expedita. Omnis adipisci delectus ipsa est recusandae aut voluptate.',159,-53.3139510,43.9419420,'2024-10-17 18:23:51','2024-10-17 18:23:51'),(18,'2008-11-11 17:08:35','Asperiores veritatis nihil rerum. Doloribus autem et aut quibusdam. Velit est voluptatibus qui harum. Consequatur vel officia omnis cumque necessitatibus porro occaecati.',160,-4.6133850,-111.7360370,'2024-10-17 18:23:52','2024-10-17 18:23:52'),(19,'1983-03-01 20:40:25','Consequatur quasi quod voluptatem laboriosam voluptas eos consequatur. Omnis distinctio veniam amet rerum minima. Odio pariatur eos officia qui ex quia. Qui quaerat vel deleniti officiis. Ut at quae omnis voluptatem architecto ea et dolor.',161,-2.6206620,-145.1892020,'2024-10-17 18:23:52','2024-10-17 18:23:52'),(20,'1978-09-07 18:00:27','At non molestiae est sequi deserunt. Magni omnis exercitationem qui saepe cumque quo. Reprehenderit quos rerum ex numquam.',162,-60.3984230,109.7637400,'2024-10-17 18:23:52','2024-10-17 18:23:52'),(21,'1984-11-26 06:23:36','Facilis magnam vel sint dolorum sit. Eos error iure nihil fugiat pariatur eum. Aut magnam iure debitis vero deleniti doloribus et. Provident nostrum beatae laudantium dolorum dolorem enim.',163,-41.3488290,-100.3367650,'2024-10-17 18:31:18','2024-10-17 18:31:18'),(22,'1989-05-13 17:52:31','Quaerat natus magni amet quibusdam ipsum ratione reprehenderit. Quis nobis quis officia ullam blanditiis voluptate minus sapiente. Corrupti distinctio cupiditate aut repudiandae dolor. Vero fugit commodi et et nobis quisquam et.',165,-11.5027200,105.0081030,'2024-10-17 18:31:18','2024-10-17 18:31:18'),(23,'1996-01-23 21:12:35','Temporibus voluptatem voluptatem suscipit autem quia consequatur. Accusamus omnis accusantium aspernatur voluptas excepturi quis omnis.',167,71.0103290,173.0423420,'2024-10-17 18:31:18','2024-10-17 18:31:18'),(24,'1971-05-01 02:24:25','Labore tempora eos qui sint qui. Labore repudiandae non voluptatem. Et praesentium distinctio reprehenderit accusamus incidunt. Atque porro autem veniam inventore natus doloremque sunt cumque.',169,-62.6705340,127.1015360,'2024-10-17 18:31:18','2024-10-17 18:31:18'),(25,'1977-06-04 15:15:03','Nisi quis animi praesentium ullam. Sit quam earum eligendi ipsa deserunt assumenda. Eaque debitis quae doloribus ut.',171,-40.3525390,39.2529500,'2024-10-17 18:31:18','2024-10-17 18:31:18'),(26,'2006-05-16 22:22:42','Quibusdam doloribus voluptas ducimus repudiandae voluptates adipisci. Iure aut nulla excepturi quasi illum officia. Sunt et sit amet porro nulla amet dolorem. Expedita doloribus saepe exercitationem explicabo.',173,-3.0365760,-27.4048790,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(27,'2004-05-03 23:04:13','Quia quo praesentium voluptatem eos et dolores aliquam. Suscipit officia sit perspiciatis impedit. Et nesciunt harum in ut nemo voluptatum distinctio. Odit dolores neque a quam cumque magnam et.',175,-43.9116540,-154.8605520,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(28,'1980-07-14 13:47:21','Similique vitae deleniti sed illum nihil alias. Vitae quasi eligendi minus vel minus et.',177,1.7189540,85.6607590,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(29,'2023-10-25 04:40:10','Et suscipit minus cupiditate. Necessitatibus rerum minima iste sint beatae expedita. Voluptates sequi corrupti excepturi corporis sed ab. Quod tempore et dolore.',179,-67.7084620,-38.2901710,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(30,'1975-10-31 05:21:47','Ipsa eaque vel sit vel iste sit consequatur. Aperiam id et ut est veritatis. Optio praesentium qui ipsa.',181,-85.7984340,-17.9805750,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(31,'1997-06-30 13:24:43','Enim quasi corrupti tempore. Ipsam assumenda sed sunt possimus perferendis fugit. Voluptate consectetur nihil sequi odit cumque sed. Explicabo sit minus ab quas deserunt eius ut. Repellat odio omnis expedita est et quam nihil assumenda.',183,-76.0317020,-118.7924220,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(32,'1971-11-10 08:41:09','Dicta vitae qui ex perspiciatis distinctio nisi velit vel. Necessitatibus pariatur quo sed est ut. Ipsam repellat distinctio quaerat.',185,-25.9312890,-107.8875470,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(33,'2012-05-29 06:22:15','Ipsam nostrum quibusdam dicta exercitationem ullam reiciendis. Velit nemo et consequatur perferendis facere et. Ipsum consequatur et omnis qui sint iste.',187,35.1298800,53.3822630,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(34,'2009-03-05 11:03:20','Odio eaque sint unde veniam omnis. Eligendi laudantium dolores sit. Distinctio ut veritatis adipisci cum ipsum adipisci. Nemo eos architecto sit aspernatur aut aut inventore.',189,44.9695350,-134.1009070,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(35,'2013-07-05 19:38:59','Sunt maiores sequi ut qui. Odit dolorem qui nostrum enim labore quod temporibus adipisci. Dolore ea nulla cum at.',191,-48.7951030,-149.5957870,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(36,'2023-04-17 21:20:30','Eaque fugit sed unde voluptatem dolor nisi consequatur. Vel natus libero quia quia occaecati.',193,-25.9562780,162.7262210,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(37,'2012-04-17 21:36:28','Accusamus et non qui ab quasi. Aperiam maxime quia veniam amet nesciunt necessitatibus. A nihil veritatis aut voluptate quo sit voluptatum. Neque quia consequatur qui voluptas veritatis quia.',195,28.1768030,-43.7290760,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(38,'2001-11-09 06:51:30','Quia expedita aliquam aut deleniti aut commodi. Maiores earum eveniet eos. Aut non animi ut porro fugit.',197,-85.6767660,-152.6326760,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(39,'2003-02-10 06:06:51','Quo reiciendis odio possimus dolores ea. Voluptatibus et animi enim voluptates. Distinctio cupiditate quasi asperiores iusto repellendus. Iusto eius vitae impedit et. Perspiciatis neque non nemo.',199,-78.5244280,-121.2955190,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(40,'1991-12-12 19:46:47','Aut et architecto modi quam. Dignissimos omnis voluptatem voluptatem. Enim officiis esse hic quo. Cupiditate occaecati corrupti qui qui nesciunt repudiandae quia odio.',201,-53.6133230,-158.3193700,'2024-10-17 18:31:20','2024-10-17 18:31:20');
/*!40000 ALTER TABLE `occurrences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
INSERT INTO `organizations` VALUES (1,'Gaylord-Will','2024-10-17 18:20:56','2024-10-17 18:20:56'),(2,'Wolf LLC','2024-10-17 18:20:56','2024-10-17 18:20:56'),(3,'Larson Ltd','2024-10-17 18:21:24','2024-10-17 18:21:24'),(4,'Turcotte LLC','2024-10-17 18:21:24','2024-10-17 18:21:24'),(5,'Denesik, McKenzie and Miller','2024-10-17 18:21:24','2024-10-17 18:21:24'),(6,'Botsford Group','2024-10-17 18:21:24','2024-10-17 18:21:24'),(7,'Glover-O\'Reilly','2024-10-17 18:21:24','2024-10-17 18:21:24'),(8,'Purdy PLC','2024-10-17 18:21:24','2024-10-17 18:21:24'),(9,'Bogisich, Lowe and Pacocha','2024-10-17 18:21:24','2024-10-17 18:21:24'),(10,'Gusikowski, Tromp and Volkman','2024-10-17 18:21:24','2024-10-17 18:21:24'),(11,'Blick PLC','2024-10-17 18:21:24','2024-10-17 18:21:24'),(12,'Hilpert Group','2024-10-17 18:21:24','2024-10-17 18:21:24'),(13,'Hauck-Koepp','2024-10-17 18:21:24','2024-10-17 18:21:24'),(14,'Ullrich Ltd','2024-10-17 18:21:25','2024-10-17 18:21:25'),(15,'Strosin, Smitham and Zboncak','2024-10-17 18:21:25','2024-10-17 18:21:25'),(16,'Denesik-Connelly','2024-10-17 18:21:25','2024-10-17 18:21:25'),(17,'Paucek LLC','2024-10-17 18:21:25','2024-10-17 18:21:25'),(18,'West-Jacobson','2024-10-17 18:21:25','2024-10-17 18:21:25'),(19,'Runolfsdottir, Fahey and Kuphal','2024-10-17 18:21:25','2024-10-17 18:21:25'),(20,'Kemmer-Erdman','2024-10-17 18:21:25','2024-10-17 18:21:25'),(21,'Wunsch, Weissnat and Boyle','2024-10-17 18:21:25','2024-10-17 18:21:25'),(22,'Bernhard Ltd','2024-10-17 18:21:25','2024-10-17 18:21:25'),(23,'Wintheiser, Lowe and Stroman','2024-10-17 18:21:25','2024-10-17 18:21:25'),(24,'Blanda LLC','2024-10-17 18:21:25','2024-10-17 18:21:25'),(25,'Wolf-Harvey','2024-10-17 18:21:25','2024-10-17 18:21:25'),(26,'Hermiston, Hettinger and Zieme','2024-10-17 18:21:25','2024-10-17 18:21:25'),(27,'Rutherford, Doyle and Johnston','2024-10-17 18:21:25','2024-10-17 18:21:25'),(28,'Bogan, Effertz and Kiehn','2024-10-17 18:21:25','2024-10-17 18:21:25'),(29,'Bartell Group','2024-10-17 18:21:25','2024-10-17 18:21:25'),(30,'Goodwin Ltd','2024-10-17 18:21:25','2024-10-17 18:21:25'),(31,'West and Sons','2024-10-17 18:21:25','2024-10-17 18:21:25'),(32,'Kutch, McDermott and Pfeffer','2024-10-17 18:21:25','2024-10-17 18:21:25'),(33,'Fahey, Brakus and Will','2024-10-17 18:21:25','2024-10-17 18:21:25'),(34,'Rath-Murray','2024-10-17 18:21:25','2024-10-17 18:21:25'),(35,'Quitzon, Bogan and Rowe','2024-10-17 18:21:25','2024-10-17 18:21:25'),(36,'Hermiston, Feest and Bayer','2024-10-17 18:21:25','2024-10-17 18:21:25'),(37,'D\'Amore and Sons','2024-10-17 18:21:25','2024-10-17 18:21:25'),(38,'Klein, Blanda and Stark','2024-10-17 18:21:25','2024-10-17 18:21:25'),(39,'Jacobi-Becker','2024-10-17 18:21:25','2024-10-17 18:21:25'),(40,'Cruickshank, Von and Simonis','2024-10-17 18:21:25','2024-10-17 18:21:25'),(41,'Rutherford, Watsica and Botsford','2024-10-17 18:21:25','2024-10-17 18:21:25'),(42,'Kerluke LLC','2024-10-17 18:21:25','2024-10-17 18:21:25'),(43,'Barrows, Wuckert and Schmeler','2024-10-17 18:21:25','2024-10-17 18:21:25'),(44,'Rodriguez, Bailey and Macejkovic','2024-10-17 18:21:25','2024-10-17 18:21:25'),(45,'Hayes, Bruen and Cruickshank','2024-10-17 18:21:25','2024-10-17 18:21:25'),(46,'Metz-Lueilwitz','2024-10-17 18:21:25','2024-10-17 18:21:25'),(47,'Orn, Nitzsche and Mohr','2024-10-17 18:21:25','2024-10-17 18:21:25'),(48,'Beier, Hagenes and Greenfelder','2024-10-17 18:21:25','2024-10-17 18:21:25'),(49,'Mante Group','2024-10-17 18:21:25','2024-10-17 18:21:25'),(50,'Beer-Braun','2024-10-17 18:21:25','2024-10-17 18:21:25'),(51,'White Ltd','2024-10-17 18:21:25','2024-10-17 18:21:25'),(52,'Ferry Group','2024-10-17 18:21:25','2024-10-17 18:21:25'),(53,'Parisian-Gutkowski','2024-10-17 18:21:42','2024-10-17 18:21:42'),(54,'Aufderhar-Kautzer','2024-10-17 18:21:42','2024-10-17 18:21:42'),(55,'Mante-O\'Hara','2024-10-17 18:21:42','2024-10-17 18:21:42'),(56,'Weimann Ltd','2024-10-17 18:21:42','2024-10-17 18:21:42'),(57,'Homenick Ltd','2024-10-17 18:21:42','2024-10-17 18:21:42'),(58,'Heidenreich PLC','2024-10-17 18:21:42','2024-10-17 18:21:42'),(59,'Torphy and Sons','2024-10-17 18:21:42','2024-10-17 18:21:42'),(60,'Olson-White','2024-10-17 18:21:42','2024-10-17 18:21:42'),(61,'Dicki-Rice','2024-10-17 18:21:42','2024-10-17 18:21:42'),(62,'Koch, Jerde and Mraz','2024-10-17 18:21:42','2024-10-17 18:21:42'),(63,'Pfannerstill-Konopelski','2024-10-17 18:21:42','2024-10-17 18:21:42'),(64,'Romaguera-Wolf','2024-10-17 18:21:42','2024-10-17 18:21:42'),(65,'Mohr-Johnston','2024-10-17 18:21:42','2024-10-17 18:21:42'),(66,'Mills, Feeney and Haag','2024-10-17 18:21:42','2024-10-17 18:21:42'),(67,'Stracke, Gerlach and Bradtke','2024-10-17 18:21:42','2024-10-17 18:21:42'),(68,'Cole, Bruen and Huels','2024-10-17 18:21:42','2024-10-17 18:21:42'),(69,'Ullrich, Will and Harris','2024-10-17 18:21:42','2024-10-17 18:21:42'),(70,'Reichert, Terry and Kertzmann','2024-10-17 18:21:42','2024-10-17 18:21:42'),(71,'Rowe, Gorczany and Kessler','2024-10-17 18:21:42','2024-10-17 18:21:42'),(72,'Brown Group','2024-10-17 18:21:42','2024-10-17 18:21:42'),(73,'Tillman-Beer','2024-10-17 18:21:42','2024-10-17 18:21:42'),(74,'Stroman, Kuhlman and Simonis','2024-10-17 18:21:42','2024-10-17 18:21:42'),(75,'Wunsch, Gerlach and Roob','2024-10-17 18:21:42','2024-10-17 18:21:42'),(76,'Koelpin-Prohaska','2024-10-17 18:21:42','2024-10-17 18:21:42'),(77,'Schumm Group','2024-10-17 18:21:42','2024-10-17 18:21:42'),(78,'Cole LLC','2024-10-17 18:21:43','2024-10-17 18:21:43'),(79,'Feeney-Moen','2024-10-17 18:21:43','2024-10-17 18:21:43'),(80,'Reichel Ltd','2024-10-17 18:21:43','2024-10-17 18:21:43'),(81,'Mosciski-Mills','2024-10-17 18:21:43','2024-10-17 18:21:43'),(82,'Schaden-Cronin','2024-10-17 18:21:43','2024-10-17 18:21:43'),(83,'Buckridge, Dooley and Marquardt','2024-10-17 18:22:01','2024-10-17 18:22:01'),(84,'Swift Group','2024-10-17 18:22:01','2024-10-17 18:22:01'),(85,'Rutherford PLC','2024-10-17 18:22:01','2024-10-17 18:22:01'),(86,'Hand Inc','2024-10-17 18:22:01','2024-10-17 18:22:01'),(87,'Cronin, Langosh and Ritchie','2024-10-17 18:22:01','2024-10-17 18:22:01'),(88,'Douglas-King','2024-10-17 18:22:01','2024-10-17 18:22:01'),(89,'Mohr-White','2024-10-17 18:22:01','2024-10-17 18:22:01'),(90,'Kuhic-Oberbrunner','2024-10-17 18:22:01','2024-10-17 18:22:01'),(91,'Kozey, Jenkins and O\'Keefe','2024-10-17 18:22:01','2024-10-17 18:22:01'),(92,'Stark, Kshlerin and Wisoky','2024-10-17 18:22:01','2024-10-17 18:22:01'),(93,'Smitham, Smith and Collier','2024-10-17 18:22:01','2024-10-17 18:22:01'),(94,'Langworth, Wolff and Yost','2024-10-17 18:22:01','2024-10-17 18:22:01'),(95,'Wyman Ltd','2024-10-17 18:22:01','2024-10-17 18:22:01'),(96,'Rogahn-Kreiger','2024-10-17 18:22:01','2024-10-17 18:22:01'),(97,'Sporer PLC','2024-10-17 18:22:01','2024-10-17 18:22:01'),(98,'Sawayn, McGlynn and Hills','2024-10-17 18:22:01','2024-10-17 18:22:01'),(99,'Franecki-Buckridge','2024-10-17 18:22:01','2024-10-17 18:22:01'),(100,'Kautzer LLC','2024-10-17 18:22:01','2024-10-17 18:22:01'),(101,'Gusikowski, Robel and Lindgren','2024-10-17 18:22:01','2024-10-17 18:22:01'),(102,'Kiehn, Strosin and Rippin','2024-10-17 18:22:01','2024-10-17 18:22:01'),(103,'Cole Group','2024-10-17 18:22:01','2024-10-17 18:22:01'),(104,'Smith Inc','2024-10-17 18:22:01','2024-10-17 18:22:01'),(105,'Harvey, Hammes and Schimmel','2024-10-17 18:22:01','2024-10-17 18:22:01'),(106,'Beer, Gislason and Roberts','2024-10-17 18:22:01','2024-10-17 18:22:01'),(107,'Kirlin, Ward and Cole','2024-10-17 18:22:01','2024-10-17 18:22:01'),(108,'Bode, Schowalter and Marks','2024-10-17 18:22:01','2024-10-17 18:22:01'),(109,'Balistreri Inc','2024-10-17 18:22:01','2024-10-17 18:22:01'),(110,'Bailey-Effertz','2024-10-17 18:22:01','2024-10-17 18:22:01'),(111,'Gleichner Inc','2024-10-17 18:22:01','2024-10-17 18:22:01'),(112,'Will, Nikolaus and Willms','2024-10-17 18:22:01','2024-10-17 18:22:01'),(113,'Gorczany, Willms and Toy','2024-10-17 18:22:15','2024-10-17 18:22:15'),(114,'Corwin-Gutkowski','2024-10-17 18:22:15','2024-10-17 18:22:15'),(115,'Romaguera, Schmidt and Bahringer','2024-10-17 18:22:15','2024-10-17 18:22:15'),(116,'Grant LLC','2024-10-17 18:22:15','2024-10-17 18:22:15'),(117,'Dickinson LLC','2024-10-17 18:22:15','2024-10-17 18:22:15'),(118,'Beahan, Christiansen and Hand','2024-10-17 18:22:15','2024-10-17 18:22:15'),(119,'Kessler, Johnston and Schinner','2024-10-17 18:22:15','2024-10-17 18:22:15'),(120,'Dare, Gulgowski and Kilback','2024-10-17 18:22:15','2024-10-17 18:22:15'),(121,'Stroman-Wolff','2024-10-17 18:22:15','2024-10-17 18:22:15'),(122,'Schulist-Bins','2024-10-17 18:22:15','2024-10-17 18:22:15'),(123,'Kilback, Brekke and McDermott','2024-10-17 18:22:15','2024-10-17 18:22:15'),(124,'Christiansen, Littel and Ledner','2024-10-17 18:22:15','2024-10-17 18:22:15'),(125,'Pollich LLC','2024-10-17 18:22:15','2024-10-17 18:22:15'),(126,'Dooley, Carroll and Hagenes','2024-10-17 18:22:15','2024-10-17 18:22:15'),(127,'Dibbert-Dicki','2024-10-17 18:22:16','2024-10-17 18:22:16'),(128,'Ernser-Kerluke','2024-10-17 18:22:16','2024-10-17 18:22:16'),(129,'Schumm, Pfeffer and Pagac','2024-10-17 18:22:16','2024-10-17 18:22:16'),(130,'Hartmann, Bernhard and Hermiston','2024-10-17 18:22:16','2024-10-17 18:22:16'),(131,'Senger-Stiedemann','2024-10-17 18:22:16','2024-10-17 18:22:16'),(132,'Wilderman LLC','2024-10-17 18:22:16','2024-10-17 18:22:16'),(133,'Halvorson Group','2024-10-17 18:22:16','2024-10-17 18:22:16'),(134,'O\'Hara LLC','2024-10-17 18:22:16','2024-10-17 18:22:16'),(135,'Rau-Krajcik','2024-10-17 18:22:16','2024-10-17 18:22:16'),(136,'Quigley LLC','2024-10-17 18:22:16','2024-10-17 18:22:16'),(137,'Kub and Sons','2024-10-17 18:22:16','2024-10-17 18:22:16'),(138,'Ondricka, Blanda and Graham','2024-10-17 18:22:16','2024-10-17 18:22:16'),(139,'Wisozk, DuBuque and Osinski','2024-10-17 18:22:16','2024-10-17 18:22:16'),(140,'Towne PLC','2024-10-17 18:22:16','2024-10-17 18:22:16'),(141,'Jones-Reilly','2024-10-17 18:22:16','2024-10-17 18:22:16'),(142,'Ankunding-Harvey','2024-10-17 18:22:16','2024-10-17 18:22:16'),(143,'Prohaska PLC','2024-10-17 18:23:51','2024-10-17 18:23:51'),(144,'Anderson, Marks and Sanford','2024-10-17 18:23:51','2024-10-17 18:23:51'),(145,'Terry, Blick and Williamson','2024-10-17 18:23:51','2024-10-17 18:23:51'),(146,'Effertz Inc','2024-10-17 18:23:51','2024-10-17 18:23:51'),(147,'Considine and Sons','2024-10-17 18:23:51','2024-10-17 18:23:51'),(148,'Fahey, Jakubowski and Barton','2024-10-17 18:23:51','2024-10-17 18:23:51'),(149,'Collier Inc','2024-10-17 18:23:51','2024-10-17 18:23:51'),(150,'Hill, Cole and Moore','2024-10-17 18:23:51','2024-10-17 18:23:51'),(151,'Greenholt PLC','2024-10-17 18:23:51','2024-10-17 18:23:51'),(152,'Friesen, Ryan and Kshlerin','2024-10-17 18:23:51','2024-10-17 18:23:51'),(153,'Kunde-Torphy','2024-10-17 18:23:51','2024-10-17 18:23:51'),(154,'Williamson and Sons','2024-10-17 18:23:51','2024-10-17 18:23:51'),(155,'Schuster LLC','2024-10-17 18:23:51','2024-10-17 18:23:51'),(156,'Ritchie-Effertz','2024-10-17 18:23:51','2024-10-17 18:23:51'),(157,'Klocko PLC','2024-10-17 18:23:51','2024-10-17 18:23:51'),(158,'Kuvalis-Kunze','2024-10-17 18:23:51','2024-10-17 18:23:51'),(159,'Corwin, Rath and Morar','2024-10-17 18:23:51','2024-10-17 18:23:51'),(160,'Anderson PLC','2024-10-17 18:23:51','2024-10-17 18:23:51'),(161,'Sauer-Koelpin','2024-10-17 18:23:51','2024-10-17 18:23:51'),(162,'Witting Ltd','2024-10-17 18:23:51','2024-10-17 18:23:51'),(163,'Kilback-Leffler','2024-10-17 18:31:18','2024-10-17 18:31:18'),(164,'Lang, Macejkovic and Crist','2024-10-17 18:31:18','2024-10-17 18:31:18'),(165,'Hettinger, Pagac and Homenick','2024-10-17 18:31:18','2024-10-17 18:31:18'),(166,'Watsica and Sons','2024-10-17 18:31:18','2024-10-17 18:31:18'),(167,'Bernier-Bechtelar','2024-10-17 18:31:18','2024-10-17 18:31:18'),(168,'Price PLC','2024-10-17 18:31:18','2024-10-17 18:31:18'),(169,'Eichmann-Stroman','2024-10-17 18:31:18','2024-10-17 18:31:18'),(170,'Sawayn, Gusikowski and Towne','2024-10-17 18:31:18','2024-10-17 18:31:18'),(171,'Hintz-Wilkinson','2024-10-17 18:31:18','2024-10-17 18:31:18'),(172,'Kohler, Okuneva and Kemmer','2024-10-17 18:31:18','2024-10-17 18:31:18'),(173,'Collier-Lueilwitz','2024-10-17 18:31:19','2024-10-17 18:31:19'),(174,'Wyman LLC','2024-10-17 18:31:19','2024-10-17 18:31:19'),(175,'Fadel-Reynolds','2024-10-17 18:31:19','2024-10-17 18:31:19'),(176,'Russel-Wyman','2024-10-17 18:31:19','2024-10-17 18:31:19'),(177,'Rutherford and Sons','2024-10-17 18:31:19','2024-10-17 18:31:19'),(178,'Miller, McGlynn and McClure','2024-10-17 18:31:19','2024-10-17 18:31:19'),(179,'Grady, Gutkowski and Morar','2024-10-17 18:31:19','2024-10-17 18:31:19'),(180,'Heidenreich-Schamberger','2024-10-17 18:31:19','2024-10-17 18:31:19'),(181,'Willms PLC','2024-10-17 18:31:19','2024-10-17 18:31:19'),(182,'Hilpert-Bode','2024-10-17 18:31:19','2024-10-17 18:31:19'),(183,'Swift, Nicolas and Rodriguez','2024-10-17 18:31:19','2024-10-17 18:31:19'),(184,'O\'Kon, Murray and Howell','2024-10-17 18:31:19','2024-10-17 18:31:19'),(185,'Pollich LLC','2024-10-17 18:31:19','2024-10-17 18:31:19'),(186,'Hane LLC','2024-10-17 18:31:19','2024-10-17 18:31:19'),(187,'Zemlak-Russel','2024-10-17 18:31:19','2024-10-17 18:31:19'),(188,'Grimes-Prohaska','2024-10-17 18:31:19','2024-10-17 18:31:19'),(189,'Donnelly, Murazik and Price','2024-10-17 18:31:19','2024-10-17 18:31:19'),(190,'Hoppe-Boehm','2024-10-17 18:31:19','2024-10-17 18:31:19'),(191,'Dach-Morar','2024-10-17 18:31:19','2024-10-17 18:31:19'),(192,'Friesen, Wyman and Wolff','2024-10-17 18:31:19','2024-10-17 18:31:19'),(193,'Gutkowski, Windler and Waelchi','2024-10-17 18:31:19','2024-10-17 18:31:19'),(194,'Harris-Feest','2024-10-17 18:31:19','2024-10-17 18:31:19'),(195,'Volkman-O\'Connell','2024-10-17 18:31:19','2024-10-17 18:31:19'),(196,'Moore Ltd','2024-10-17 18:31:19','2024-10-17 18:31:19'),(197,'Tremblay-Nolan','2024-10-17 18:31:20','2024-10-17 18:31:20'),(198,'Ernser LLC','2024-10-17 18:31:20','2024-10-17 18:31:20'),(199,'Bode Inc','2024-10-17 18:31:20','2024-10-17 18:31:20'),(200,'Torphy-Schultz','2024-10-17 18:31:20','2024-10-17 18:31:20'),(201,'Senger, Rohan and Beatty','2024-10-17 18:31:20','2024-10-17 18:31:20'),(202,'Kirlin-Barrows','2024-10-17 18:31:20','2024-10-17 18:31:20');
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `people_cpf_unique` (`cpf`),
  KEY `people_organization_id_foreign` (`organization_id`),
  CONSTRAINT `people_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,'Ramiro Runolfsson MD','201.080.540-94','https://picsum.photos/200/300',3,'2024-10-17 18:21:25','2024-10-18 14:21:38'),(2,'Melisa Doyle','644.045.166-65','https://robohash.org/johndoe',4,'2024-10-17 18:21:25','2024-10-18 14:23:53'),(3,'Marina Stiedemann Jr.','694.911.211-27','https://ui-avatars.com/api/?name=John+Doe&size=150',5,'2024-10-17 18:21:25','2024-10-18 14:24:09'),(4,'Mrs. Briana Armstrong','279.414.075-85','https://robohash.org/armstrong',6,'2024-10-17 18:21:25','2024-10-18 14:25:02'),(5,'Dino Windler IV','514.306.133-06',NULL,7,'2024-10-17 18:21:25','2024-10-17 18:21:25'),(6,'Brennon Stanton','749.063.287-29',NULL,8,'2024-10-17 18:21:25','2024-10-17 18:21:25'),(7,'Vivian Nienow','790.955.709-94',NULL,9,'2024-10-17 18:21:25','2024-10-17 18:21:25'),(8,'Dr. Maegan Borer Sr.','462.065.261-05',NULL,10,'2024-10-17 18:21:25','2024-10-17 18:21:25'),(9,'Prof. Kailyn West','459.557.409-64',NULL,11,'2024-10-17 18:21:25','2024-10-17 18:21:25'),(10,'Reese Koelpin','115.649.050-02',NULL,12,'2024-10-17 18:21:25','2024-10-17 18:21:25'),(11,'Golden Mitchell','978.916.628-09',NULL,13,'2024-10-17 18:21:25','2024-10-17 18:21:25'),(12,'Elena Abshire','101.095.826-56',NULL,14,'2024-10-17 18:21:25','2024-10-17 18:21:25'),(13,'Everardo Zemlak','779.100.571-73',NULL,15,'2024-10-17 18:21:25','2024-10-17 18:21:25'),(14,'Timothy Lowe','194.962.330-10',NULL,16,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(15,'Garnet Zieme MD','282.232.851-00',NULL,17,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(16,'Freddie Jerde','893.602.499-62',NULL,18,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(17,'Lourdes Smitham','832.839.052-39',NULL,19,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(18,'Hulda Krajcik','214.156.563-67',NULL,20,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(19,'Prof. Vanessa Stroman IV','489.722.551-70',NULL,21,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(20,'Dr. Trace Schimmel DDS','170.777.321-61',NULL,22,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(21,'Erica Mayer','730.657.248-67',NULL,23,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(22,'Brendon Kuhic','079.554.078-05',NULL,24,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(23,'Idella Gottlieb','373.477.406-67',NULL,25,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(24,'Prof. Dean Walter','491.418.270-75',NULL,26,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(25,'Prof. Onie Marks PhD','165.052.238-16',NULL,27,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(26,'Abe Zboncak Sr.','068.773.318-23',NULL,28,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(27,'Dr. Barry Kuphal Sr.','606.529.577-95',NULL,29,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(28,'Roma Schulist','464.689.721-95',NULL,30,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(29,'Johanna Will','162.356.488-26',NULL,31,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(30,'Leif Hill','034.683.344-03',NULL,32,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(31,'Jake Rempel','051.210.186-68',NULL,33,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(32,'Darrin Corwin','978.166.147-72',NULL,34,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(33,'Mrs. Ariane Hyatt DVM','480.515.657-20',NULL,35,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(34,'Blaise Becker','710.069.176-89',NULL,36,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(35,'Dr. Tatum Lemke','967.611.558-27',NULL,37,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(36,'Winnifred Weimann','310.990.292-48',NULL,38,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(37,'Maida Bogan','599.580.764-89',NULL,39,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(38,'Clay Krajcik Sr.','153.907.514-21',NULL,40,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(39,'Stacey Schiller','772.683.089-31',NULL,41,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(40,'Owen Blanda II','061.090.315-50',NULL,42,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(41,'Piper Goldner','495.258.811-66',NULL,43,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(42,'Miss Julianne Collier','658.083.185-27',NULL,44,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(43,'Mabelle Shanahan','260.391.008-21',NULL,45,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(44,'Kaitlin Gottlieb Jr.','352.452.287-39',NULL,46,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(45,'Jaydon Adams DDS','980.624.737-08',NULL,47,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(46,'Dr. Eldon Terry','239.077.747-21',NULL,48,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(47,'Dr. Cary Streich','866.326.083-72',NULL,49,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(48,'Gia Doyle','605.030.478-69',NULL,50,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(49,'Ottilie Tromp PhD','510.944.118-33',NULL,51,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(50,'Oscar Conn','454.392.025-74',NULL,52,'2024-10-17 18:21:26','2024-10-17 18:21:26'),(51,'Jose Armstrong','554.146.123-16',NULL,164,'2024-10-17 18:31:18','2024-10-17 18:31:18'),(52,'Gladys Cummings','339.580.154-92',NULL,166,'2024-10-17 18:31:18','2024-10-17 18:31:18'),(53,'Nikki Shields MD','728.762.461-84',NULL,168,'2024-10-17 18:31:18','2024-10-17 18:31:18'),(54,'Lester Dibbert','839.201.761-81',NULL,170,'2024-10-17 18:31:18','2024-10-17 18:31:18'),(55,'Ewald D\'Amore Jr.','991.645.473-88',NULL,172,'2024-10-17 18:31:18','2024-10-17 18:31:18'),(56,'Francis Okuneva','332.787.985-09',NULL,174,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(57,'Dayton D\'Amore II','490.971.083-48',NULL,176,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(58,'Hillard Kessler','920.803.339-01',NULL,178,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(59,'Jalon Spencer','966.481.092-22',NULL,180,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(60,'Ms. Rozella Cruickshank','830.568.245-01',NULL,182,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(61,'Alva Vandervort I','023.005.078-08',NULL,184,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(62,'Odell Welch','374.245.566-63',NULL,186,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(63,'Dr. Brice O\'Connell V','456.526.590-79',NULL,188,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(64,'Liliane Hodkiewicz MD','426.723.690-97',NULL,190,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(65,'Prof. Breanna Olson PhD','712.473.265-67',NULL,192,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(66,'Dr. Jazmyne Klein Jr.','358.557.196-10',NULL,194,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(67,'Mr. Ariel Graham PhD','282.473.835-49',NULL,196,'2024-10-17 18:31:19','2024-10-17 18:31:19'),(68,'Mrs. Amie Hermiston IV','435.720.111-50',NULL,198,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(69,'Mavis Littel Sr.','934.439.317-82',NULL,200,'2024-10-17 18:31:20','2024-10-17 18:31:20'),(70,'Libby Hilpert DVM','708.689.237-13',NULL,202,'2024-10-17 18:31:20','2024-10-17 18:31:20');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',36,'api-token','3ab323c9fcc6faca1db59586b058cf0b02dbbf18fc0a828cfd9d85e79e853ae3','[\"*\"]','2024-10-18 12:19:54',NULL,'2024-10-18 12:18:33','2024-10-18 12:19:54'),(2,'App\\Models\\User',36,'api-token','c594bf1fdc1555c11ec9ffeb5ade676f0edd3dbe26879f8b7cac2f827ea1cc41','[\"*\"]',NULL,NULL,'2024-10-18 12:21:06','2024-10-18 12:21:06'),(3,'App\\Models\\User',36,'api-token','8c9cb3f54f188aa62f461c767c9f25ab6c373cef823c3dae76658aa522673694','[\"*\"]',NULL,NULL,'2024-10-18 12:21:17','2024-10-18 12:21:17'),(4,'App\\Models\\User',36,'api-token','fcd0d3966f4652028e2804971b98ced8f19c1a614d112c35a0cfd06496522026','[\"*\"]',NULL,NULL,'2024-10-18 12:21:29','2024-10-18 12:21:29'),(5,'App\\Models\\User',36,'api-token','5be06ce198d0d5334b46804c2751fa3ccb3a8a027f435add38834fbd183887f3','[\"*\"]',NULL,NULL,'2024-10-18 12:21:34','2024-10-18 12:21:34'),(6,'App\\Models\\User',36,'api-token','bbb40e2baa71d711ae8790efd790015c884a7c51a287caf1c16b8b982f7c1cdb','[\"*\"]',NULL,NULL,'2024-10-18 12:21:41','2024-10-18 12:21:41'),(7,'App\\Models\\User',36,'api-token','dcc9c09b01755557a66f456296ddff6ee3ce1468c181bbebb5ffc25096789f33','[\"*\"]',NULL,NULL,'2024-10-18 12:22:03','2024-10-18 12:22:03'),(8,'App\\Models\\User',36,'api-token','f54b5c9388c0b721db2e84f7a30b48159168331cbf443868fad3d422df12f6f4','[\"*\"]',NULL,NULL,'2024-10-18 12:22:18','2024-10-18 12:22:18'),(9,'App\\Models\\User',36,'api-token','6a94e45a313c17823b40165413891671d9f935933f0c2da4c2f58029460f9c2b','[\"*\"]',NULL,NULL,'2024-10-18 12:22:23','2024-10-18 12:22:23'),(10,'App\\Models\\User',36,'api-token','3910127438aea01ce49587832011c4270f7f65f6a17e3e6e1412b5d9b271fc91','[\"*\"]',NULL,NULL,'2024-10-18 12:22:40','2024-10-18 12:22:40'),(11,'App\\Models\\User',36,'api-token','e34b599a8637d8e6e94b4146ada890ffb505f1090fa0cf3df63fc6cf477fa17f','[\"*\"]',NULL,NULL,'2024-10-18 12:22:53','2024-10-18 12:22:53'),(12,'App\\Models\\User',36,'api-token','8401c51a427a895b2f9b84b83b274533df6d37f19c639f8e7720016a660dba35','[\"*\"]',NULL,NULL,'2024-10-18 12:23:00','2024-10-18 12:23:00'),(13,'App\\Models\\User',36,'nome_do_dispositivo','2d5fd8d36730bf30ace1b18e513dbf450b1ae452fa93045c866bf1c22c4a0388','[\"*\"]',NULL,NULL,'2024-10-20 11:41:32','2024-10-20 11:41:32'),(14,'App\\Models\\User',36,'android 34','0d6c1eeb0cd03c153f0ad3c3cd80c9270ac970159f17a5552c1942732194b54d','[\"*\"]',NULL,NULL,'2024-10-20 12:05:18','2024-10-20 12:05:18'),(15,'App\\Models\\User',36,'android 34','c8b927c59bc0b824eb63b4b290f88a108aea655b713e79abbed110965af17dc6','[\"*\"]',NULL,NULL,'2024-10-20 12:05:26','2024-10-20 12:05:26'),(16,'App\\Models\\User',36,'android 34','16778c1859d24ce089c01da1df81ceeaa309fc0b46a0dafae40112dc4fd294fa','[\"*\"]',NULL,NULL,'2024-10-20 12:05:53','2024-10-20 12:05:53'),(17,'App\\Models\\User',36,'android 34','f3e2f433df50f79ba07fb930c10eb967b8fc9ba029e19e552c150845196b9d94','[\"*\"]',NULL,NULL,'2024-10-20 12:06:46','2024-10-20 12:06:46'),(18,'App\\Models\\User',36,'android 34','caa99a5594a20f0306087cdda2136047b6879239c29df38103196c9f1583e218','[\"*\"]',NULL,NULL,'2024-10-20 14:41:05','2024-10-20 14:41:05'),(19,'App\\Models\\User',36,'android 34','19b3cfca0c34dbb87aae852c93022f88165a6d632ea3ff6d548bc26b22a89b6d','[\"*\"]',NULL,NULL,'2024-10-20 14:47:09','2024-10-20 14:47:09'),(20,'App\\Models\\User',36,'android 34','5e81ccc6c01ceae580ca539fd4afc00cc557e450743ac8e298816201607720c0','[\"*\"]',NULL,NULL,'2024-10-20 14:47:16','2024-10-20 14:47:16'),(21,'App\\Models\\User',36,'android 34','f431719c4f6cffa2a73942cb643528f4726661d59282ec36bca16932bb5368b0','[\"*\"]',NULL,NULL,'2024-10-20 14:47:22','2024-10-20 14:47:22'),(22,'App\\Models\\User',36,'android 34','f359649b2f66dc45c9ec250d08faa3bf704c67f997e9a1b755349b3b874dfc49','[\"*\"]',NULL,NULL,'2024-10-20 14:47:42','2024-10-20 14:47:42'),(23,'App\\Models\\User',36,'android 34','c317380ea7d999a0a06897ff8ac208a7c3ba71f9615287a0a59e7cab6201ad3c','[\"*\"]',NULL,NULL,'2024-10-20 14:55:58','2024-10-20 14:55:58'),(24,'App\\Models\\User',36,'android 34','b5c9536b6856228ce03750f8ef7bc67040768da5ca785859aa9b146e6f07bc00','[\"*\"]',NULL,NULL,'2024-10-20 14:56:02','2024-10-20 14:56:02'),(25,'App\\Models\\User',36,'android 34','f85797147a3add2e791c830395a9ee5420d7a920e7aad140363cf682a68a6a80','[\"*\"]',NULL,NULL,'2024-10-20 14:57:27','2024-10-20 14:57:27'),(26,'App\\Models\\User',36,'android 34','04abf89911f694460dab921de42c73838b90849797edef30916378c83c8d8d9e','[\"*\"]','2024-10-20 14:58:10',NULL,'2024-10-20 14:58:09','2024-10-20 14:58:10'),(27,'App\\Models\\User',36,'android 34','0ba16d752f36a4fd7277a40aed69af344359175c25d683ba313b073f512fe991','[\"*\"]','2024-10-20 15:07:08',NULL,'2024-10-20 15:07:08','2024-10-20 15:07:08'),(28,'App\\Models\\User',36,'android 34','7c74f9b60ecb5e193f6bd39c5338bf9a4e1ebc3edd88943d6cfb490fe9d6fb9e','[\"*\"]','2024-10-20 15:11:45',NULL,'2024-10-20 15:11:45','2024-10-20 15:11:45'),(29,'App\\Models\\User',36,'android 34','f7ba19918193ec13915559c5cbc1624d167a531dd99b17c49d571b3d0f25ea22','[\"*\"]','2024-10-20 16:10:10',NULL,'2024-10-20 15:23:28','2024-10-20 16:10:10'),(30,'App\\Models\\User',36,'android 34','2d680ff04af084e60dba6fb01d7178d5a442a7be85d8e3fc006f8627fe91ac92','[\"*\"]','2024-10-20 16:13:06',NULL,'2024-10-20 16:12:04','2024-10-20 16:13:06'),(31,'App\\Models\\User',36,'android 34','ff39e6a4db72da958467bb18f0fac034f58591c22cef339d00d29a103b4b496d','[\"*\"]','2024-10-20 16:13:23',NULL,'2024-10-20 16:13:22','2024-10-20 16:13:23'),(32,'App\\Models\\User',36,'android 34','a07141892203ae441be3d0f071b321ea82a34f7fa6177735678e953a67018cdf','[\"*\"]','2024-10-20 16:14:04',NULL,'2024-10-20 16:13:54','2024-10-20 16:14:04'),(33,'App\\Models\\User',36,'android 34','304d0cbd3e441856392a8001c8b79ed3dceaaa09ede0c08e5cfe52297d95fffb','[\"*\"]','2024-10-20 16:14:28',NULL,'2024-10-20 16:14:28','2024-10-20 16:14:28'),(34,'App\\Models\\User',36,'android 34','d6e6e97482270f427615d883224b25d85b37e1330b5138a566bae7a80bf93254','[\"*\"]','2024-10-20 16:14:46',NULL,'2024-10-20 16:14:45','2024-10-20 16:14:46'),(35,'App\\Models\\User',36,'android 34','524125255b91dcd4eaba208f1fcf52a5477fcc307e70a6e2577a34ea9ec60234','[\"*\"]','2024-10-20 16:15:48',NULL,'2024-10-20 16:15:47','2024-10-20 16:15:48'),(36,'App\\Models\\User',36,'android 34','d6241f9b3fff742d02ea42bf403c01eb4e4463c7b125eb7aeb602e250dda2d46','[\"*\"]','2024-10-20 16:15:52',NULL,'2024-10-20 16:15:51','2024-10-20 16:15:52'),(37,'App\\Models\\User',36,'android 34','10d4ecadb29f8cbce20d561c2b7a6cb840775aced6a64ffbf8e81071bdb4dae3','[\"*\"]','2024-10-20 16:16:10',NULL,'2024-10-20 16:16:10','2024-10-20 16:16:10'),(38,'App\\Models\\User',36,'android 34','db4e8e0438f0c6c5aa33a911425bc662d2dcbc8072b95de4a580616cdfbccd5d','[\"*\"]','2024-10-20 16:16:45',NULL,'2024-10-20 16:16:44','2024-10-20 16:16:45'),(39,'App\\Models\\User',36,'android 34','b30f4f549c3937352af804e6a2b86842f4de2ee3ceb695e7cf15944eeb309e41','[\"*\"]','2024-10-20 16:23:14',NULL,'2024-10-20 16:16:51','2024-10-20 16:23:14'),(40,'App\\Models\\User',36,'android 34','07a12090b6471286d6550e74c9ab652566efc7cfbebc6822cdcdb56eb64b7e39','[\"*\"]','2024-10-20 16:24:27',NULL,'2024-10-20 16:24:26','2024-10-20 16:24:27'),(41,'App\\Models\\User',36,'android 34','bc8ba90495348b2e1ce1b6feef3a0212fc768261f9d63724e2cb4f4c0f92de4c','[\"*\"]','2024-10-20 16:24:30',NULL,'2024-10-20 16:24:30','2024-10-20 16:24:30'),(42,'App\\Models\\User',36,'android 34','c1958ba6622d5d56a231accee6d87ffdc9bbf5379ce3c1956e526986de78b244','[\"*\"]','2024-10-20 16:28:12',NULL,'2024-10-20 16:25:14','2024-10-20 16:28:12'),(43,'App\\Models\\User',36,'android 34','b2152c262762fd31c1db72332c91cad163e1a1a1dabeecbf0d0c3f93f5b60dcb','[\"*\"]','2024-10-20 16:34:23',NULL,'2024-10-20 16:33:57','2024-10-20 16:34:23'),(44,'App\\Models\\User',36,'android 34','1a78929ff3ede4d36c54fb86bd015ac4dbc50d942082c4e865b7f0c939e8d8ea','[\"*\"]','2024-10-20 16:49:02',NULL,'2024-10-20 16:49:02','2024-10-20 16:49:02'),(45,'App\\Models\\User',36,'android 34','fc52b3ea1ddf695fe3e544821becb72e3efe7ee4a707849d3a4d4245f1ea52bb','[\"*\"]','2024-10-20 16:52:25',NULL,'2024-10-20 16:52:25','2024-10-20 16:52:25'),(46,'App\\Models\\User',36,'android 34','2dcc8f79ef1617c488e6fc38b42f50e8a64c62f7664283e7927d319f9eedb023','[\"*\"]','2024-10-20 16:53:05',NULL,'2024-10-20 16:53:05','2024-10-20 16:53:05'),(47,'App\\Models\\User',36,'android 34','fefc7f2ca62d5b13ed59004e8257f3a7dddd15e4d922ee8ff95c5ca436f83419','[\"*\"]','2024-10-20 17:00:36',NULL,'2024-10-20 16:56:13','2024-10-20 17:00:36'),(48,'App\\Models\\User',36,'android 34','89ad92cbfd30ffe373c8d5419ad132581912a082f466601738e2b2ec4437356d','[\"*\"]','2024-10-20 17:00:55',NULL,'2024-10-20 17:00:44','2024-10-20 17:00:55'),(49,'App\\Models\\User',36,'android 34','e57873d1a5b64005077107f1bbf23c56cd42efc440a37b6390fe3547bea0452d','[\"*\"]','2024-10-20 17:04:10',NULL,'2024-10-20 17:01:05','2024-10-20 17:04:10'),(50,'App\\Models\\User',36,'android 34','dd514b1bb7763a31b45c6f94822ea8c09a5b6aaf07f36f963305b5c18c1b02cf','[\"*\"]','2024-10-20 17:07:47',NULL,'2024-10-20 17:04:21','2024-10-20 17:07:47'),(51,'App\\Models\\User',36,'android 34','4b893b5536bd235089f2ff46a0b145cf5b215616226d192080ef6968412cd922','[\"*\"]','2024-10-20 17:10:05',NULL,'2024-10-20 17:07:57','2024-10-20 17:10:05'),(52,'App\\Models\\User',36,'android 34','9176e5200925bcfa414d696ca54ad9310710b70dad7b45fbd4f28135e1b6f59a','[\"*\"]','2024-10-20 17:14:43',NULL,'2024-10-20 17:10:15','2024-10-20 17:14:43'),(53,'App\\Models\\User',36,'android 34','c6ed25fce0a29aa1b054cffe7bb9f299f5423229e4af8c39ed05118ae3ae4f79','[\"*\"]','2024-10-20 17:19:59',NULL,'2024-10-20 17:15:02','2024-10-20 17:19:59'),(54,'App\\Models\\User',36,'android 34','bee0e8ce255af47e2faddafef1ccc900af1b613f371768be79d3365d1d8efec3','[\"*\"]','2024-10-20 17:21:15',NULL,'2024-10-20 17:20:10','2024-10-20 17:21:15'),(55,'App\\Models\\User',36,'android 34','5df03f2d758428cc1a1d4f01ce0e4e589ae389cec2640980689465e0d9b27d34','[\"*\"]','2024-10-20 17:23:08',NULL,'2024-10-20 17:21:29','2024-10-20 17:23:08'),(56,'App\\Models\\User',36,'android 34','4e06a14def32963eaec488dc96e386680ae2400956c71ae7e2db3ee5ace36248','[\"*\"]','2024-10-20 17:31:27',NULL,'2024-10-20 17:23:44','2024-10-20 17:31:27'),(57,'App\\Models\\User',36,'android 34','da5f5de24383ab38e4ae92f63a5b1555fea3f0c2181bbb47a05a223be93245b3','[\"*\"]','2024-10-20 18:40:48',NULL,'2024-10-20 17:31:36','2024-10-20 18:40:48'),(58,'App\\Models\\User',36,'android 34','c77a08c71d70fedc4c1eed586efd3058b7723fd092199cf89b1ab9e326946e75','[\"*\"]','2024-10-20 18:44:05',NULL,'2024-10-20 18:40:57','2024-10-20 18:44:05'),(59,'App\\Models\\User',36,'android 34','6c5a34b1d4f02031d68a071a5a9972437927884d53f0a3c88f0fbdc611878cd2','[\"*\"]','2024-10-21 08:06:12',NULL,'2024-10-20 18:44:35','2024-10-21 08:06:12'),(60,'App\\Models\\User',36,'android 34','e2476252051869fa45174a2fbdacf46a00a19f20e2e8e2c877dcbf7c5d4f0667','[\"*\"]','2024-10-21 08:12:16',NULL,'2024-10-21 08:06:22','2024-10-21 08:12:16'),(61,'App\\Models\\User',36,'android 34','0beb9ae6cd79fc0dde0eb0ca1cadba8b7d40db2a85a03bfd3b385f3a18730dd4','[\"*\"]','2024-10-21 08:14:41',NULL,'2024-10-21 08:12:46','2024-10-21 08:14:41'),(62,'App\\Models\\User',36,'android 34','fb5dabc56e64b42e946b299ca266e5ee659ba4d2b50d283ffcc8f0d5104258bf','[\"*\"]','2024-10-21 08:17:46',NULL,'2024-10-21 08:14:55','2024-10-21 08:17:46'),(63,'App\\Models\\User',36,'android 34','09a7013b9065ffa3ae0be1e404509d2e7db17b50820c1cd189281cc8d8f00f00','[\"*\"]','2024-10-21 08:19:41',NULL,'2024-10-21 08:18:21','2024-10-21 08:19:41'),(64,'App\\Models\\User',36,'android 34','26392550de64233c7ed224f228685950b42a7e677ac65e30dfabbb66dab247df','[\"*\"]','2024-10-21 08:30:13',NULL,'2024-10-21 08:19:54','2024-10-21 08:30:13'),(65,'App\\Models\\User',36,'android 34','24181f62a5b95dfca81bc569e0f718d32fec528fee3200a289186d8197244541','[\"*\"]','2024-10-21 09:17:15',NULL,'2024-10-21 08:30:22','2024-10-21 09:17:15'),(66,'App\\Models\\User',36,'android 34','3b094e7bf879693c0d54bbd3fc00afd632bc46c59d6e2dfad2bf352398ad2e79','[\"*\"]','2024-10-21 10:56:03',NULL,'2024-10-21 09:18:04','2024-10-21 10:56:03'),(67,'App\\Models\\User',36,'android 34','fcac86df8d02d8bcdfeec34449988ca8a58b9f702fdf6d9dd7a9b7d2be502c98','[\"*\"]','2024-10-21 11:02:18',NULL,'2024-10-21 10:56:22','2024-10-21 11:02:18'),(68,'App\\Models\\User',36,'android 34','73d13539c3eda6edb2f060648de4cf69d270d9e03f037310475a885f6d5057ee','[\"*\"]','2024-10-21 11:08:04',NULL,'2024-10-21 11:02:40','2024-10-21 11:08:04'),(69,'App\\Models\\User',36,'android 34','411837e2917cd7ff858208c89ed9c84afc8f7a3f07aca62222ffc6693acc4aa1','[\"*\"]','2024-10-21 11:10:17',NULL,'2024-10-21 11:08:19','2024-10-21 11:10:17'),(70,'App\\Models\\User',36,'android 34','232991d7f202ed1ae96ff34ad344cf85ebee049df0e9d555d07ea184874fcf01','[\"*\"]','2024-10-21 11:11:35',NULL,'2024-10-21 11:10:26','2024-10-21 11:11:35'),(71,'App\\Models\\User',36,'android 34','15ee5e3c3189a570d6a2c8620678d7d4abfe2079d45b1bda94153c312519bf4f','[\"*\"]','2024-10-21 11:22:15',NULL,'2024-10-21 11:11:48','2024-10-21 11:22:15'),(72,'App\\Models\\User',36,'android 34','b25c08301ae1a015a964a04a57b59f75ae700229d665990667258b8fb017678f','[\"*\"]','2024-10-21 11:26:59',NULL,'2024-10-21 11:22:34','2024-10-21 11:26:59'),(73,'App\\Models\\User',36,'android 34','73a4687e764d32f3da2d7f7ea0e915350b02e976085fd694e30c2b6720946e3e','[\"*\"]','2024-10-21 11:27:37',NULL,'2024-10-21 11:27:12','2024-10-21 11:27:37'),(74,'App\\Models\\User',36,'android 34','758ee9a6085ce8bb9dfbf1e869a6b70482bc922075045231111ba3fd0ecb2ddf','[\"*\"]','2024-10-21 11:30:27',NULL,'2024-10-21 11:27:48','2024-10-21 11:30:27'),(75,'App\\Models\\User',36,'android 34','2aa559f298c2d6a2326ea43b2d10b292a4798ee863bf7e1015de4853ba7b709a','[\"*\"]','2024-10-21 11:31:46',NULL,'2024-10-21 11:30:41','2024-10-21 11:31:46'),(76,'App\\Models\\User',36,'android 34','046484d2b41279fbb82ca8a474d413697093eeb56e01800552ebe121406d7f5e','[\"*\"]','2024-10-21 11:32:19',NULL,'2024-10-21 11:31:59','2024-10-21 11:32:19'),(77,'App\\Models\\User',36,'android 34','287e0d45518213877104f4bdd4471009b5bbab74d2cbd9b51681bc53f8a5683f','[\"*\"]','2024-10-21 19:13:58',NULL,'2024-10-21 11:32:28','2024-10-21 19:13:58');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('671OlE1nhS7WOCgdDpk93PDhVriwQ9g9jGzSHSCR',36,'172.27.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRFJpUjJrWTg2YncwS2Q2THBjNHZiakh5dmNwUHRzMmZtSXJZNXJ5UCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3QvYXBwL3Blb3BsZSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM2O30=',1729603539),('PBvWLmgVr34B5kcvE75J9ctz0IybedWeeFVXdAjI',36,'172.27.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZVNYeFFsMFJSRXFleXRUVUJCNFJSUTlodHp0cmZBSEdUeTZMR0lFbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwOi8vbG9jYWxob3N0L2FkbWluL3VzZXJzL3Rva2VuIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MzY7fQ==',1729264980),('ZJzirUPFKEcLdMnP9YAbZtUCsUnGGDVlYJNIhozr',36,'172.27.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoia3IycHFpbzhKbll6VXF4dm9SUzhERElrWkNXY1R6YTltdnNNdlNKMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vdXNlcnMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozNjt9',1729430514),('ZTxBrhakeboqEvidncxkAOM2cFVgHAllZSORoeyL',36,'172.27.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiN3hKdjNVVXFXMjFzbGdXZTVWMm9yaUJiMDVNMnVWaFd1U1ZKTUpBbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovL2xvY2FsaG9zdC9hcHAvcGVvcGxlIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9sb2NhbGhvc3QvYXBwL29yZyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM2O30=',1729191153);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Reyna Kovacek Sr.','adach@example.net','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','KkxKbXZzTh',NULL,'2024-10-17 18:20:37','2024-10-17 18:20:37'),(2,'Alva Corwin','ofelia64@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','36c9NtVjFy',NULL,'2024-10-17 18:20:37','2024-10-17 18:20:37'),(3,'Mrs. Name Lockman III','issac.fisher@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','oTKyaV78qX',NULL,'2024-10-17 18:20:37','2024-10-17 18:20:37'),(4,'Tillman Towne','lauryn21@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','3VkKEfXhmM',NULL,'2024-10-17 18:20:37','2024-10-17 18:20:37'),(5,'Glen Bartoletti','mertz.maiya@example.net','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','Xb9AZXyGIv',NULL,'2024-10-17 18:20:37','2024-10-17 18:20:37'),(6,'Laney Barrows','tbode@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','7mLgm2VLcY',NULL,'2024-10-17 18:20:37','2024-10-17 18:20:37'),(7,'Darwin Sanford','ezra41@example.net','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','uQwdaXODO0',NULL,'2024-10-17 18:20:37','2024-10-17 18:20:37'),(8,'Mr. Buford Bernier II','tharber@example.org','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','Bej5omXuX2',NULL,'2024-10-17 18:20:37','2024-10-17 18:20:37'),(9,'Margarett Murazik','mcglynn.brenda@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','0QodA0ROx6',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(10,'Ibrahim Gutkowski MD','williamson.lamont@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','vvQxxl05jY',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(11,'Prof. Isadore Nolan III','edna81@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','Zr3fGelc3C',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(12,'Meredith Gaylord','kris.alexander@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','3NcT75XrzG',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(13,'Prof. Trisha Bahringer II','timothy91@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','uDsZOebho9',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(14,'Prof. Susan King II','ybrekke@example.net','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','mb4k3vFJ48',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(15,'Abbey Hirthe','rudy.halvorson@example.net','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','xyI5pvK5Xp',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(16,'Drew Bradtke','jordi.thompson@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','viY2sLxF9R',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(17,'Jordyn Mante','mlegros@example.net','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','QiSGBGMJPe',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(18,'Prof. Milton Hoeger','umuller@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','N9cuCNASPo',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(19,'Dr. Dustin Price','bernard42@example.net','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','N1VhRkqaeL',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(20,'Lauretta Dickinson','jazlyn.leannon@example.net','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','ilKO0fZPdh',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(21,'Mr. Damion Gaylord','zula.gerhold@example.net','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','QhpWvPKymX',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(22,'Mr. Jedidiah Kuhn Sr.','feil.lily@example.org','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','Vgpexe5TcY',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(23,'Sherwood Miller','owillms@example.org','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','0KT8q3YjsW',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(24,'Earline Dicki','ivory82@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','offVbD4Vwm',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(25,'Clemmie McKenzie','ritchie.marshall@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','SPgz0vqxVX',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(26,'Oscar Tremblay','mosinski@example.org','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','YmzZSr54zA',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(27,'Freddy Abbott','schiller.dave@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','8eVFtgEdGr',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(28,'Eladio Collins','cruickshank.kody@example.net','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','8K3FM1nsIg',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(29,'Eleazar Fisher','bosco.alfred@example.net','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','9HL2Z9HH4Z',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(30,'Prof. Justine Macejkovic','enos.olson@example.org','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','wvPG93yPF7',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(31,'Lauretta McKenzie','yschroeder@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','K8RcT0g6yN',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(32,'Ms. Pinkie Boyer','norwood96@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','pLRE6weOvY',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(33,'Heber Franecki MD','toby.huels@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','Lw2VNNxORi',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(34,'Roosevelt Koss','rogahn.perry@example.org','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','rd4meuo03j',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(35,'Miss Cecile Lesch','gulgowski.marcelina@example.com','2024-10-17 18:20:37','$2y$12$83/n6RDSVzwFXJwJE8p4Ju/AQn/YZhMuNdI6h28zdTLEyi7WqLGRy','M4rAlmiVxN',NULL,'2024-10-17 18:20:38','2024-10-17 18:20:38'),(36,'Giluan Souza','giluan65@hotmail.com',NULL,'$2y$12$zqi2UulJBiFSQtppz9ffge6I1dWlE8zWrUSUhESdTjWVmgIiRIORO',NULL,NULL,'2024-10-17 18:39:47','2024-10-17 18:39:47');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-22 13:29:15
