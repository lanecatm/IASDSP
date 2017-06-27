-- MySQL dump 10.13  Distrib 5.7.13, for osx10.11 (x86_64)
--
-- Host: localhost    Database: isdsp_dev
-- ------------------------------------------------------
-- Server version	5.7.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `arff_types`
--

DROP TABLE IF EXISTS `arff_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arff_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arff_types`
--

LOCK TABLES `arff_types` WRITE;
/*!40000 ALTER TABLE `arff_types` DISABLE KEYS */;
INSERT INTO `arff_types` VALUES (1,'numeric',NULL,'2017-05-15 09:58:59','2017-05-15 09:58:59'),(2,'string',NULL,'2017-05-15 09:59:13','2017-05-15 09:59:13'),(3,'date',NULL,'2017-05-15 09:59:26','2017-05-15 09:59:26'),(4,'nominal specification',NULL,'2017-05-15 09:59:42','2017-05-15 09:59:42');
/*!40000 ALTER TABLE `arff_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caseinformation`
--

DROP TABLE IF EXISTS `caseinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caseinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessID` varchar(50) NOT NULL DEFAULT '',
  `WorkflowID` int(11) NOT NULL DEFAULT '0',
  `CaseName` varchar(50) DEFAULT NULL,
  `KeyWords` varchar(100) DEFAULT NULL,
  `InitiatorID` int(11) DEFAULT NULL,
  `InitiatorDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caseinformation`
--

LOCK TABLES `caseinformation` WRITE;
/*!40000 ALTER TABLE `caseinformation` DISABLE KEYS */;
INSERT INTO `caseinformation` VALUES (11,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',3,NULL,' ',1,'2017-04-07 00:00:00'),(12,'be17b7e5-c31b-4fed-8d42-411ed0e83372',3,NULL,' ',1,'2017-04-08 00:00:00'),(13,'6364d775-2540-44d1-be59-676f0c8dc910',3,NULL,' ',1,'2017-04-08 00:00:00'),(14,'886d507d-b90a-4ace-a253-2687294040c9',3,NULL,' ',1,'2017-04-09 00:00:00'),(15,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',3,NULL,' ',1,'2017-04-09 00:00:00'),(16,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',3,NULL,' ',1,'2017-04-09 00:00:00'),(17,'8994091c-3399-4771-9db8-2ab0457e6b21',3,NULL,' ',1,'2017-04-09 00:00:00'),(18,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',3,NULL,' ',1,'2017-04-09 00:00:00'),(19,'01686096-0080-4b0b-8b8c-2c770ecc0efb',3,NULL,' ',1,'2017-04-09 00:00:00'),(20,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',3,NULL,' ',1,'2017-04-09 00:00:00'),(21,'b6a5537f-5d66-42b3-ac99-b994758624f2',3,NULL,' ',1,'2017-04-09 00:00:00'),(22,'455ea270-dcb8-4a50-be11-a29ff2179c6a',3,NULL,' ',1,'2017-04-10 00:00:00'),(23,'d79a93fa-e950-425f-b248-76be3620321d',3,NULL,' ',1,'2017-04-10 00:00:00'),(24,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',3,NULL,' ',1,'2017-04-10 00:00:00'),(25,'31317770-82a7-4569-a43b-ed451dc59a78',3,NULL,' ',1,'2017-04-10 00:00:00'),(26,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',4,NULL,' ',1,'2017-04-10 00:00:00'),(27,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',4,NULL,' ',1,'2017-04-10 00:00:00'),(28,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',4,NULL,' ',1,'2017-04-10 00:00:00'),(29,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',4,NULL,' ',1,'2017-04-10 00:00:00'),(30,'96437382-2854-4644-9dff-b22c82418c19',4,NULL,' ',1,'2017-04-10 00:00:00'),(31,'225831db-dc7d-44e6-9aab-2ea190c52178',19,NULL,' ',1,'2017-04-10 00:00:00'),(32,'b0317b97-a008-4020-afe3-717d0ebeff1c',19,NULL,' ',1,'2017-04-10 00:00:00'),(33,'a4af6209-e279-46d0-a929-248f392681aa',19,NULL,' ',1,'2017-04-10 00:00:00'),(34,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',19,NULL,' ',1,'2017-04-10 00:00:00'),(35,'75711432-d389-4300-bcff-e2654d2f2b70',20,NULL,' ',1,'2017-04-11 00:00:00'),(36,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',20,NULL,' ',1,'2017-04-11 00:00:00'),(37,'29d06f8f-f970-4eba-8c01-88d124cd516b',19,NULL,' ',1,'2017-04-11 00:00:00'),(38,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',19,NULL,' ',1,'2017-04-11 00:00:00'),(39,'e0b6eca7-07be-46a5-8289-b1e6320de459',19,NULL,' ',1,'2017-04-11 00:00:00'),(40,'69752a39-3c37-4a31-9e41-7003ac23dfe7',19,NULL,' ',1,'2017-04-11 00:00:00'),(41,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',19,NULL,' ',1,'2017-04-11 00:00:00'),(42,'79cf2f51-1138-4c27-8327-1797803d3232',20,NULL,' ',1,'2017-04-11 00:00:00'),(43,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',20,NULL,' ',1,'2017-04-11 00:00:00');
/*!40000 ALTER TABLE `caseinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_informations`
--

DROP TABLE IF EXISTS `department_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department_informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `parent_department_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `layer` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `vice_manager_id` int(11) DEFAULT NULL,
  `duty` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_department_informations_on_manager_id` (`manager_id`),
  KEY `index_department_informations_on_parent_department_id` (`parent_department_id`),
  KEY `index_department_informations_on_vice_manager_id` (`vice_manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_informations`
--

LOCK TABLES `department_informations` WRITE;
/*!40000 ALTER TABLE `department_informations` DISABLE KEYS */;
INSERT INTO `department_informations` VALUES (1,'All',NULL,NULL,NULL,NULL,NULL,NULL,'2017-04-08 06:12:56','2017-04-08 06:12:56'),(2,'Department 1',NULL,NULL,NULL,NULL,NULL,NULL,'2017-04-08 06:12:56','2017-04-08 06:12:56'),(3,'Department 2',NULL,NULL,NULL,NULL,NULL,NULL,'2017-04-08 06:12:56','2017-04-08 06:12:56');
/*!40000 ALTER TABLE `department_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_files`
--

DROP TABLE IF EXISTS `download_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `path` text,
  `process_information_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_download_files_on_process_information_id` (`process_information_id`),
  CONSTRAINT `fk_rails_d171ef7ce8` FOREIGN KEY (`process_information_id`) REFERENCES `process_informations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_files`
--

LOCK TABLES `download_files` WRITE;
/*!40000 ALTER TABLE `download_files` DISABLE KEYS */;
INSERT INTO `download_files` VALUES (13,NULL,'/Users/xfhuang/code/Website/analysis_website/WorkflowEngine/data/Output/225831db-dc7d-44e6-9aab-2ea190c52178.result',29,'2017-04-10 13:10:43','2017-04-10 13:10:43'),(14,NULL,'/Users/xfhuang/code/Website/analysis_website/WorkflowEngine/data/Output/b0317b97-a008-4020-afe3-717d0ebeff1c.result',29,'2017-04-10 13:15:15','2017-04-10 13:15:15'),(17,NULL,'/Users/xfhuang/code/Website/analysis_website/WorkflowEngine/data/Output/75711432-d389-4300-bcff-e2654d2f2b70.result',33,'2017-04-11 02:18:34','2017-04-11 02:18:34'),(18,NULL,'/Users/xfhuang/code/Website/analysis_website/WorkflowEngine/data/Output/efc983c3-b6a2-4ada-8232-0de25cf7c0dd.result',35,'2017-04-11 02:22:09','2017-04-11 02:22:09'),(24,NULL,'/Users/xfhuang/code/Website/analysis_website/WorkflowEngine/data/Output/79cf2f51-1138-4c27-8327-1797803d3232.result',42,'2017-04-11 06:20:21','2017-04-11 06:20:21'),(25,NULL,'/Users/xfhuang/code/Website/analysis_website/WorkflowEngine/data/Output/5b06a87a-a2a2-419c-ae36-8b1a6592b499.result',43,'2017-04-11 06:22:16','2017-04-11 06:22:16');
/*!40000 ALTER TABLE `download_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edge_attributes`
--

DROP TABLE IF EXISTS `edge_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edge_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edge_attributes`
--

LOCK TABLES `edge_attributes` WRITE;
/*!40000 ALTER TABLE `edge_attributes` DISABLE KEYS */;
INSERT INTO `edge_attributes` VALUES (1,'Initialized','2017-05-25 20:50:56','2017-05-25 20:50:56'),(2,'Started','2017-05-25 20:51:11','2017-05-25 20:51:11'),(3,'EndOf','2017-05-25 20:51:24','2017-05-25 20:51:24'),(4,'Overtime','2017-05-25 20:51:36','2017-05-25 20:51:36'),(5,'Aborted','2017-05-25 20:51:47','2017-05-25 20:51:47'),(6,'Error','2017-05-25 20:52:01','2017-05-25 20:52:01');
/*!40000 ALTER TABLE `edge_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeland_nodes`
--

DROP TABLE IF EXISTS `homeland_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homeland_nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `topics_count` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `wiki_page_id` int(11) DEFAULT '18',
  PRIMARY KEY (`id`),
  KEY `index_homeland_nodes_on_sort` (`sort`),
  KEY `index_homeland_nodes_on_wiki_page_id` (`wiki_page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeland_nodes`
--

LOCK TABLES `homeland_nodes` WRITE;
/*!40000 ALTER TABLE `homeland_nodes` DISABLE KEYS */;
INSERT INTO `homeland_nodes` VALUES (14,'CPU Prediction','CPU Prediction','#0E76BD',0,3,'2017-05-25 11:07:03','2017-05-25 11:07:03',33),(16,'Memory Prediction','Memory Prediction','#0E76BD',0,0,'2017-06-05 05:00:00','2017-06-05 05:00:00',35),(17,'Stock predict','Stock predict','#0E76BD',0,1,'2017-06-05 12:23:08','2017-06-05 12:23:08',36),(18,'User classification','User classification','#0E76BD',0,0,'2017-06-05 12:23:36','2017-06-05 12:23:36',37),(19,'stock predi','stock predi','#0E76BD',0,0,'2017-06-15 07:20:03','2017-06-15 07:20:03',38);
/*!40000 ALTER TABLE `homeland_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeland_replies`
--

DROP TABLE IF EXISTS `homeland_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homeland_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `reply_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_homeland_replies_on_user_id` (`user_id`),
  KEY `index_homeland_replies_on_topic_id` (`topic_id`),
  KEY `index_homeland_replies_on_reply_to_id` (`reply_to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeland_replies`
--

LOCK TABLES `homeland_replies` WRITE;
/*!40000 ALTER TABLE `homeland_replies` DISABLE KEYS */;
INSERT INTO `homeland_replies` VALUES (1,2,2,'dcasdcaw','<p>dcasdcaw</p>\n',NULL,'2017-05-15 11:32:51','2017-05-15 11:32:51',NULL),(2,2,3,'wedaweewdwae','<p>wedaweewdwae</p>\n',NULL,'2017-05-16 11:43:46','2017-05-16 11:44:00',NULL),(3,2,3,'rrr','<p>rrr</p>\n',NULL,'2017-05-21 19:00:52','2017-05-21 19:00:52',NULL),(4,2,3,'rrr\r\nrfrefre','<p>rrr\nrfrefre</p>\n',NULL,'2017-05-21 19:01:20','2017-05-21 19:01:20',NULL),(5,2,3,'d\r\n','<p>d</p>\n',NULL,'2017-05-21 19:09:58','2017-05-21 19:09:58',NULL),(6,2,3,'e','<p>e</p>\n',NULL,'2017-05-21 19:10:18','2017-05-21 19:10:18',NULL),(7,2,5,'eadawed','<p>eadawed</p>\n',NULL,'2017-05-22 02:40:58','2017-05-22 02:40:58',NULL),(8,2,5,'edweqd','<p>edweqd</p>\n',NULL,'2017-05-22 02:41:00','2017-05-22 02:41:00',NULL),(9,2,6,'ewrwe','<p>ewrwe</p>\n',NULL,'2017-05-22 02:50:25','2017-05-22 02:50:25',NULL),(10,2,6,'erwer','<p>erwer</p>\n',NULL,'2017-05-22 02:50:27','2017-05-22 02:50:27',NULL),(11,2,7,'I think so too.','<p>I think so too.</p>\n',NULL,'2017-05-25 13:28:38','2017-05-25 13:28:38',NULL),(12,2,8,'Who can help me?','<p>Who can help me?</p>\n',NULL,'2017-05-25 13:47:14','2017-05-25 13:47:14',NULL),(13,3,8,'aaa','<p>aaa</p>\n',NULL,'2017-05-25 13:58:59','2017-05-25 13:58:59',NULL),(14,3,8,'eeee','<p>eeee</p>\n',NULL,'2017-05-25 13:59:44','2017-05-25 13:59:44',NULL),(15,3,8,'??????','<p>??????</p>\n',NULL,'2017-05-25 13:59:57','2017-05-25 13:59:57',NULL),(16,2,8,'reply ????????','<p>reply ????????</p>\n',NULL,'2017-05-25 14:05:07','2017-05-25 14:05:07',NULL),(17,5,8,'Name???','<p>Name???</p>\n',NULL,'2017-05-25 14:09:27','2017-05-25 14:09:27',NULL),(18,5,7,'Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala','<p>Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala Say lalala</p>\n',NULL,'2017-05-26 04:39:04','2017-05-26 04:39:04',NULL),(19,5,9,'I try it!','<p>I try it!</p>\n',NULL,'2017-05-26 12:28:12','2017-05-26 12:28:12',NULL),(20,5,10,'NONo','<p>NONo</p>\n',NULL,'2017-05-30 05:48:52','2017-05-30 05:48:52',NULL),(21,2,12,'I hope for your model!','<p>I hope for your model!</p>\n',NULL,'2017-06-05 02:37:20','2017-06-05 02:37:20',NULL),(22,2,12,'sssss','<p>sssss</p>\n',NULL,'2017-06-05 03:04:56','2017-06-05 03:04:56',NULL),(23,2,12,'ssss','<p>ssss</p>\n',NULL,'2017-06-05 03:05:00','2017-06-05 03:05:00',NULL),(24,2,11,'hahahah\r\n','<p>hahahah</p>\n',NULL,'2017-06-14 05:44:10','2017-06-14 05:44:10',NULL),(25,2,11,'hahahaha','<p>hahahaha</p>\n',NULL,'2017-06-14 05:44:14','2017-06-14 05:44:14',NULL);
/*!40000 ALTER TABLE `homeland_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeland_topics`
--

DROP TABLE IF EXISTS `homeland_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homeland_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text,
  `body_html` text,
  `last_reply_id` int(11) DEFAULT NULL,
  `last_reply_user_id` int(11) DEFAULT NULL,
  `last_active_mark` int(11) NOT NULL DEFAULT '0',
  `replied_at` datetime DEFAULT NULL,
  `replies_count` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_homeland_topics_on_deleted_at` (`deleted_at`),
  KEY `index_homeland_topics_on_node_id_and_deleted_at` (`node_id`,`deleted_at`),
  KEY `index_homeland_topics_on_user_id` (`user_id`),
  KEY `index_homeland_topics_on_last_active_mark_and_deleted_at` (`last_active_mark`,`deleted_at`),
  KEY `index_homeland_topics_on_node_id_and_last_active_mark` (`node_id`,`last_active_mark`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeland_topics`
--

LOCK TABLES `homeland_topics` WRITE;
/*!40000 ALTER TABLE `homeland_topics` DISABLE KEYS */;
INSERT INTO `homeland_topics` VALUES (1,1,2,'dcsadcadc','adcsdcvsdfvcsd','<p>adcsdcvsdfvcsd</p>\n',NULL,NULL,1494847229,NULL,0,NULL,'2017-05-15 11:20:29','2017-05-15 11:20:29'),(2,1,2,'dcasa','sdcawds','<p>sdcawds</p>\n',NULL,2,1494847971,'2017-05-15 11:32:51',1,NULL,'2017-05-15 11:32:25','2017-05-15 11:32:51'),(3,1,2,'edawd','qwdqwd','<p>qwdqwd</p>\n',NULL,2,1495393817,'2017-05-21 19:10:18',5,NULL,'2017-05-15 11:33:46','2017-05-21 19:10:18'),(4,2,2,'fd','g\'f\'d\'v','<p>g&#39;f&#39;d&#39;v</p>\n',NULL,NULL,1495383956,NULL,0,NULL,'2017-05-21 16:25:56','2017-05-21 16:25:56'),(5,5,2,'test','edawedawe','<p>edawedawe</p>\n',NULL,2,1495420860,'2017-05-22 02:41:00',2,NULL,'2017-05-22 02:40:47','2017-05-22 02:41:00'),(6,6,2,'Which model is better','Which model is better','<p>Which model is better</p>\n',NULL,2,1495421427,'2017-05-22 02:50:27',2,NULL,'2017-05-22 02:50:19','2017-05-22 02:50:27'),(7,13,2,'First ','First','<p>First</p>\n',NULL,5,1495773544,'2017-05-26 04:39:04',2,NULL,'2017-05-25 10:54:56','2017-05-26 04:39:04'),(8,13,2,'Why the answer is wrong?','I have try the model xxx, but something wrong. For example, xxx','<p>I have try the model xxx, but something wrong. For example, xxx</p>\n',NULL,5,1495721367,'2017-05-25 14:09:27',6,NULL,'2017-05-25 13:22:21','2017-05-25 14:09:27'),(9,15,5,'Has anyone used this model?','I try to use this model. Has anyone used this model before? ?','<p>I try to use this model. Has anyone used this model before? ?</p>\n',NULL,5,1495801692,'2017-05-26 12:28:12',1,NULL,'2017-05-26 10:56:37','2017-05-30 05:27:22'),(10,15,5,'haha','HAHAHAHA','<p>HAHAHAHA</p>\n',NULL,5,1496123332,'2017-05-30 05:48:52',1,NULL,'2017-05-30 05:48:05','2017-05-30 05:48:52'),(11,14,5,'Why the answer is wrong?','I have tried the model, and I found the answer is wrong.\r\nIs there anyone can help me?','<p>I have tried the model, and I found the answer is wrong.\nIs there anyone can help me?</p>\n',NULL,2,1497419053,'2017-06-14 05:44:14',2,NULL,'2017-06-05 02:34:42','2017-06-14 05:44:14'),(12,14,5,'I think classifying before prediction may work better','I think classifying before prediction may work better. I will create a now model.','<p>I think classifying before prediction may work better. I will create a now model.</p>\n',NULL,2,1496631899,'2017-06-05 03:05:00',3,NULL,'2017-06-05 02:36:37','2017-06-05 03:05:00'),(13,14,2,'xxx','xxxxxxx','<p>xxxxxxx</p>\n',NULL,NULL,1496631887,NULL,0,NULL,'2017-06-05 03:04:48','2017-06-05 03:04:48'),(14,17,2,'gftgh','kjnkj','<p>kjnkj</p>\n',NULL,NULL,1497322003,NULL,0,NULL,'2017-06-13 02:46:43','2017-06-13 02:46:43');
/*!40000 ALTER TABLE `homeland_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `javaclassmethod`
--

DROP TABLE IF EXISTS `javaclassmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `javaclassmethod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ApplicationID` int(11) NOT NULL DEFAULT '0',
  `ClassName` varchar(50) DEFAULT NULL,
  `ClassURL` mediumtext,
  `MethodName` varchar(100) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `InputSchemaID` int(11) DEFAULT NULL,
  `OutputSchemaID` int(11) DEFAULT NULL,
  `InputXMLID` int(11) DEFAULT NULL,
  `OutputXMLID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `javaclassmethod`
--

LOCK TABLES `javaclassmethod` WRITE;
/*!40000 ALTER TABLE `javaclassmethod` DISABLE KEYS */;
/*!40000 ALTER TABLE `javaclassmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_categories`
--

DROP TABLE IF EXISTS `node_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `node_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_node_categories_on_node_type_id` (`node_type_id`),
  CONSTRAINT `fk_rails_f279e828ca` FOREIGN KEY (`node_type_id`) REFERENCES `node_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_categories`
--

LOCK TABLES `node_categories` WRITE;
/*!40000 ALTER TABLE `node_categories` DISABLE KEYS */;
INSERT INTO `node_categories` VALUES (1,'Algorithm',1,'2017-05-23 13:32:49','2017-05-23 13:32:49'),(2,'test',NULL,'2017-06-22 21:33:43','2017-06-22 21:33:43'),(3,'test',NULL,'2017-06-26 02:23:52','2017-06-26 02:23:52'),(4,'test',NULL,'2017-06-26 03:48:05','2017-06-26 03:48:05'),(5,'test',NULL,'2017-06-26 03:57:11','2017-06-26 03:57:11'),(6,'test',NULL,'2017-06-26 03:58:16','2017-06-26 03:58:16'),(7,'test',NULL,'2017-06-26 04:12:51','2017-06-26 04:12:51'),(8,'test',NULL,'2017-06-26 04:24:13','2017-06-26 04:24:13'),(9,'test',NULL,'2017-06-26 09:50:35','2017-06-26 09:50:35'),(10,'test',NULL,'2017-06-26 09:58:02','2017-06-26 09:58:02'),(11,'test',NULL,'2017-06-26 09:59:20','2017-06-26 09:59:20'),(12,'test',NULL,'2017-06-26 10:02:17','2017-06-26 10:02:17'),(13,'test',NULL,'2017-06-26 10:09:15','2017-06-26 10:09:15'),(14,'test',NULL,'2017-06-26 10:20:21','2017-06-26 10:20:21'),(15,'test',NULL,'2017-06-26 10:28:52','2017-06-26 10:28:52'),(16,'test',NULL,'2017-06-26 10:31:12','2017-06-26 10:31:12'),(17,'test',NULL,'2017-06-26 17:39:18','2017-06-26 17:39:18');
/*!40000 ALTER TABLE `node_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_functions`
--

DROP TABLE IF EXISTS `node_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_functions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `description` text,
  `node_type_id` int(11) DEFAULT NULL,
  `node_category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_node_functions_on_node_type_id` (`node_type_id`),
  KEY `index_node_functions_on_node_category_id` (`node_category_id`),
  CONSTRAINT `fk_rails_357b263f7f` FOREIGN KEY (`node_category_id`) REFERENCES `node_categories` (`id`),
  CONSTRAINT `fk_rails_ed8435d69a` FOREIGN KEY (`node_type_id`) REFERENCES `node_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_functions`
--

LOCK TABLES `node_functions` WRITE;
/*!40000 ALTER TABLE `node_functions` DISABLE KEYS */;
INSERT INTO `node_functions` VALUES (1,'None','',NULL,1,'2017-06-05 07:32:01','2017-06-05 07:32:01'),(20,'KMean','KMean algorithm',NULL,1,'2017-05-30 05:17:18','2017-05-30 05:17:18'),(21,'Linear regression','Class for using linear regression for prediction',NULL,1,'2017-06-05 07:08:57','2017-06-05 07:08:57'),(22,'SMOreg','SMOreg implements the support vector machine for regression.',NULL,1,'2017-06-05 07:14:30','2017-06-05 07:14:30');
/*!40000 ALTER TABLE `node_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_informations`
--

DROP TABLE IF EXISTS `node_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `node_function_id` int(11) DEFAULT NULL,
  `workflow_information_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_node_informations_on_node_function_id` (`node_function_id`),
  KEY `index_node_informations_on_workflow_information_id` (`workflow_information_id`),
  CONSTRAINT `fk_rails_021012f462` FOREIGN KEY (`node_function_id`) REFERENCES `node_functions` (`id`),
  CONSTRAINT `fk_rails_8f279c31a2` FOREIGN KEY (`workflow_information_id`) REFERENCES `workflow_informations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_informations`
--

LOCK TABLES `node_informations` WRITE;
/*!40000 ALTER TABLE `node_informations` DISABLE KEYS */;
INSERT INTO `node_informations` VALUES (59,'StartEvent_1',1,73,'2017-06-05 09:52:03','2017-06-05 09:52:03'),(60,'Task_1yj3e4b',21,73,'2017-06-05 09:52:21','2017-06-05 09:52:21'),(61,'Task_1yj3e4b',21,74,'2017-06-05 10:46:56','2017-06-05 10:46:56'),(62,'Task_0ttnn82',22,75,'2017-06-05 10:56:57','2017-06-05 10:56:57'),(64,'Task_0ttnn82',22,76,'2017-06-05 11:01:19','2017-06-05 11:01:19');
/*!40000 ALTER TABLE `node_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_option_choices`
--

DROP TABLE IF EXISTS `node_option_choices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_option_choices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_option_id` int(11) DEFAULT NULL,
  `name` text,
  `value` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_node_option_choices_on_node_option_id` (`node_option_id`),
  CONSTRAINT `fk_rails_f7b54f2b77` FOREIGN KEY (`node_option_id`) REFERENCES `node_options` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_option_choices`
--

LOCK TABLES `node_option_choices` WRITE;
/*!40000 ALTER TABLE `node_option_choices` DISABLE KEYS */;
INSERT INTO `node_option_choices` VALUES (69,62,'True','1','2017-05-30 05:17:18','2017-05-30 05:17:18'),(70,62,'False','2','2017-05-30 05:17:18','2017-05-30 05:17:18'),(71,63,'None','1','2017-06-05 07:08:57','2017-06-05 07:08:57'),(72,63,'M5 method','2','2017-06-05 07:08:57','2017-06-05 07:08:57'),(73,65,'False','0','2017-06-05 07:08:57','2017-06-05 07:08:57'),(74,65,'True','1','2017-06-05 07:08:57','2017-06-05 07:08:57'),(75,66,'True','1','2017-06-05 07:08:57','2017-06-05 07:08:57'),(76,66,'False','0','2017-06-05 07:08:57','2017-06-05 07:08:57'),(77,67,'False','0','2017-06-05 07:08:57','2017-06-05 07:08:57'),(78,67,'True','1','2017-06-05 07:08:57','2017-06-05 07:08:57'),(79,69,'False','0','2017-06-05 07:08:57','2017-06-05 07:08:57'),(80,69,'True','1','2017-06-05 07:08:57','2017-06-05 07:08:57'),(81,73,'False','0','2017-06-05 07:14:30','2017-06-05 07:14:30'),(82,73,'True','1','2017-06-05 07:14:30','2017-06-05 07:14:30'),(83,74,'Normalize training data','1','2017-06-05 07:14:30','2017-06-05 07:14:30'),(84,76,'RegSMOImproved','1','2017-06-05 07:14:30','2017-06-05 07:14:30');
/*!40000 ALTER TABLE `node_option_choices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_option_types`
--

DROP TABLE IF EXISTS `node_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_option_types`
--

LOCK TABLES `node_option_types` WRITE;
/*!40000 ALTER TABLE `node_option_types` DISABLE KEYS */;
INSERT INTO `node_option_types` VALUES (1,'Numeric','2017-05-23 18:05:12','2017-05-23 18:05:12'),(2,'Nominal specification','2017-05-23 18:05:27','2017-05-23 18:05:27'),(3,'String','2017-05-23 18:05:40','2017-05-23 18:05:40'),(4,'Date','2017-05-23 18:05:47','2017-05-23 18:05:47');
/*!40000 ALTER TABLE `node_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_option_values`
--

DROP TABLE IF EXISTS `node_option_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_option_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_option_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `node_information_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_node_option_values_on_node_option_id` (`node_option_id`),
  KEY `index_node_option_values_on_node_information_id` (`node_information_id`),
  CONSTRAINT `fk_rails_592cceff52` FOREIGN KEY (`node_option_id`) REFERENCES `node_options` (`id`),
  CONSTRAINT `fk_rails_9d768affae` FOREIGN KEY (`node_information_id`) REFERENCES `node_informations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=531 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_option_values`
--

LOCK TABLES `node_option_values` WRITE;
/*!40000 ALTER TABLE `node_option_values` DISABLE KEYS */;
INSERT INTO `node_option_values` VALUES (435,61,'1',59,'2017-06-05 09:52:03','2017-06-05 09:52:03'),(436,62,'69',59,'2017-06-05 09:52:03','2017-06-05 09:52:03'),(437,63,'71',59,'2017-06-05 09:52:03','2017-06-05 09:52:03'),(438,64,'100',59,'2017-06-05 09:52:03','2017-06-05 09:52:03'),(439,65,'73',59,'2017-06-05 09:52:03','2017-06-05 09:52:03'),(440,66,'75',59,'2017-06-05 09:52:03','2017-06-05 09:52:03'),(441,67,'77',59,'2017-06-05 09:52:03','2017-06-05 09:52:03'),(442,68,'4',59,'2017-06-05 09:52:03','2017-06-05 09:52:03'),(443,69,'79',59,'2017-06-05 09:52:03','2017-06-05 09:52:03'),(444,70,'1.0E-8',59,'2017-06-05 09:52:03','2017-06-05 09:52:03'),(445,71,'100',59,'2017-06-05 09:52:03','2017-06-05 09:52:03'),(446,72,'1.0',59,'2017-06-05 09:52:03','2017-06-05 09:52:03'),(447,73,'81',59,'2017-06-05 09:52:03','2017-06-05 09:52:03'),(448,74,'83',59,'2017-06-05 09:52:03','2017-06-05 09:52:03'),(449,75,'2',59,'2017-06-05 09:52:03','2017-06-05 09:52:03'),(450,76,'84',59,'2017-06-05 09:52:03','2017-06-05 09:52:03'),(451,61,'1',60,'2017-06-05 09:52:21','2017-06-05 09:52:21'),(452,62,'69',60,'2017-06-05 09:52:21','2017-06-05 09:52:21'),(453,63,'71',60,'2017-06-05 09:52:21','2017-06-05 09:52:21'),(454,64,'100',60,'2017-06-05 09:52:21','2017-06-05 09:52:21'),(455,65,'73',60,'2017-06-05 09:52:21','2017-06-05 09:52:21'),(456,66,'75',60,'2017-06-05 09:52:21','2017-06-05 09:52:21'),(457,67,'77',60,'2017-06-05 09:52:21','2017-06-05 09:52:21'),(458,68,'4',60,'2017-06-05 09:52:21','2017-06-05 09:52:21'),(459,69,'79',60,'2017-06-05 09:52:21','2017-06-05 09:52:21'),(460,70,'1.0E-8',60,'2017-06-05 09:52:21','2017-06-05 09:52:21'),(461,71,'100',60,'2017-06-05 09:52:21','2017-06-05 09:52:21'),(462,72,'1.0',60,'2017-06-05 09:52:21','2017-06-05 09:52:21'),(463,73,'81',60,'2017-06-05 09:52:21','2017-06-05 09:52:21'),(464,74,'83',60,'2017-06-05 09:52:21','2017-06-05 09:52:21'),(465,75,'2',60,'2017-06-05 09:52:21','2017-06-05 09:52:21'),(466,76,'84',60,'2017-06-05 09:52:21','2017-06-05 09:52:21'),(467,61,'1',61,'2017-06-05 10:46:56','2017-06-05 10:46:56'),(468,62,'69',61,'2017-06-05 10:46:56','2017-06-05 10:46:56'),(469,63,'72',61,'2017-06-05 10:46:56','2017-06-05 10:46:56'),(470,64,'100',61,'2017-06-05 10:46:56','2017-06-05 10:46:56'),(471,65,'73',61,'2017-06-05 10:46:56','2017-06-05 10:46:56'),(472,66,'75',61,'2017-06-05 10:46:56','2017-06-05 10:46:56'),(473,67,'77',61,'2017-06-05 10:46:56','2017-06-05 10:46:56'),(474,68,'4',61,'2017-06-05 10:46:56','2017-06-05 10:46:56'),(475,69,'79',61,'2017-06-05 10:46:56','2017-06-05 10:46:56'),(476,70,'1.0E-8',61,'2017-06-05 10:46:56','2017-06-05 10:46:56'),(477,71,'100',61,'2017-06-05 10:46:56','2017-06-05 10:46:56'),(478,72,'1.0',61,'2017-06-05 10:46:56','2017-06-05 10:46:56'),(479,73,'81',61,'2017-06-05 10:46:56','2017-06-05 10:46:56'),(480,74,'83',61,'2017-06-05 10:46:56','2017-06-05 10:46:56'),(481,75,'2',61,'2017-06-05 10:46:56','2017-06-05 10:46:56'),(482,76,'84',61,'2017-06-05 10:46:56','2017-06-05 10:46:56'),(483,61,'1',62,'2017-06-05 10:56:57','2017-06-05 10:56:57'),(484,62,'69',62,'2017-06-05 10:56:57','2017-06-05 10:56:57'),(485,63,'71',62,'2017-06-05 10:56:57','2017-06-05 10:56:57'),(486,64,'100',62,'2017-06-05 10:56:57','2017-06-05 10:56:57'),(487,65,'73',62,'2017-06-05 10:56:57','2017-06-05 10:56:57'),(488,66,'75',62,'2017-06-05 10:56:57','2017-06-05 10:56:57'),(489,67,'77',62,'2017-06-05 10:56:57','2017-06-05 10:56:57'),(490,68,'4',62,'2017-06-05 10:56:57','2017-06-05 10:56:57'),(491,69,'79',62,'2017-06-05 10:56:57','2017-06-05 10:56:57'),(492,70,'1.0E-8',62,'2017-06-05 10:56:57','2017-06-05 10:56:57'),(493,71,'100',62,'2017-06-05 10:56:57','2017-06-05 10:56:57'),(494,72,'1.0',62,'2017-06-05 10:56:57','2017-06-05 10:56:57'),(495,73,'82',62,'2017-06-05 10:56:57','2017-06-05 10:56:57'),(496,74,'83',62,'2017-06-05 10:56:57','2017-06-05 10:56:57'),(497,75,'2',62,'2017-06-05 10:56:57','2017-06-05 10:56:57'),(498,76,'84',62,'2017-06-05 10:56:57','2017-06-05 10:56:57'),(515,61,'1',64,'2017-06-05 11:01:19','2017-06-05 11:01:19'),(516,62,'69',64,'2017-06-05 11:01:19','2017-06-05 11:01:19'),(517,63,'71',64,'2017-06-05 11:01:19','2017-06-05 11:01:19'),(518,64,'100',64,'2017-06-05 11:01:19','2017-06-05 11:01:19'),(519,65,'73',64,'2017-06-05 11:01:19','2017-06-05 11:01:19'),(520,66,'75',64,'2017-06-05 11:01:19','2017-06-05 11:01:19'),(521,67,'77',64,'2017-06-05 11:01:19','2017-06-05 11:01:19'),(522,68,'4',64,'2017-06-05 11:01:19','2017-06-05 11:01:19'),(523,69,'79',64,'2017-06-05 11:01:19','2017-06-05 11:01:19'),(524,70,'1.0E-8',64,'2017-06-05 11:01:19','2017-06-05 11:01:19'),(525,71,'100',64,'2017-06-05 11:01:19','2017-06-05 11:01:19'),(526,72,'1.0',64,'2017-06-05 11:01:19','2017-06-05 11:01:19'),(527,73,'81',64,'2017-06-05 11:01:19','2017-06-05 11:01:19'),(528,74,'83',64,'2017-06-05 11:01:19','2017-06-05 11:01:19'),(529,75,'2',64,'2017-06-05 11:01:19','2017-06-05 11:01:19'),(530,76,'84',64,'2017-06-05 11:01:19','2017-06-05 11:01:19');
/*!40000 ALTER TABLE `node_option_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_options`
--

DROP TABLE IF EXISTS `node_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_function_id` int(11) DEFAULT NULL,
  `node_index` int(11) DEFAULT NULL,
  `name` text,
  `label` text,
  `description` text,
  `default_value` text,
  `node_option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_node_options_on_node_function_id` (`node_function_id`),
  KEY `index_node_options_on_node_option_type_id` (`node_option_type_id`),
  CONSTRAINT `fk_rails_0e83fd544b` FOREIGN KEY (`node_function_id`) REFERENCES `node_functions` (`id`),
  CONSTRAINT `fk_rails_958940d9dc` FOREIGN KEY (`node_option_type_id`) REFERENCES `node_option_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_options`
--

LOCK TABLES `node_options` WRITE;
/*!40000 ALTER TABLE `node_options` DISABLE KEYS */;
INSERT INTO `node_options` VALUES (61,20,NULL,'N','N','','1',1,'2017-05-30 05:17:18','2017-05-30 05:17:18'),(62,20,NULL,'Test','Test','','',2,'2017-05-30 05:17:18','2017-05-30 05:17:18'),(63,21,NULL,'attributeSelectionMethod','Attribute Selection Method','','',2,'2017-06-05 07:08:57','2017-06-05 07:08:57'),(64,21,NULL,'batchSize','Batch size','','100',1,'2017-06-05 07:08:57','2017-06-05 07:08:57'),(65,21,NULL,'doNotCheckCapabilities','Do Not Check Capabilities','','',2,'2017-06-05 07:08:57','2017-06-05 07:08:57'),(66,21,NULL,'eliminateColinearAttributes','Eliminate Colinear Attributes','','',2,'2017-06-05 07:08:57','2017-06-05 07:08:57'),(67,21,NULL,'minimal','Minimal','','',2,'2017-06-05 07:08:57','2017-06-05 07:08:57'),(68,21,NULL,'numDecimalPlaces','Number Decimal Places','','4',1,'2017-06-05 07:08:57','2017-06-05 07:08:57'),(69,21,NULL,'outputAdditionalStats','Output Additional Stats','','',2,'2017-06-05 07:08:57','2017-06-05 07:08:57'),(70,21,NULL,'ridge','Ridge','','1.0E-8',1,'2017-06-05 07:08:57','2017-06-05 07:08:57'),(71,22,NULL,'batchSize','Batch Size','','100',1,'2017-06-05 07:14:30','2017-06-05 07:14:30'),(72,22,NULL,'c','C','','1.0',1,'2017-06-05 07:14:30','2017-06-05 07:14:30'),(73,22,NULL,'notCheckCapabilities','Not Check Capabilities','','',2,'2017-06-05 07:14:30','2017-06-05 07:14:30'),(74,22,NULL,'filterType','Filter Type','','',2,'2017-06-05 07:14:30','2017-06-05 07:14:30'),(75,22,NULL,'numDecimalPlaces','Number Decimal Places','','2',1,'2017-06-05 07:14:30','2017-06-05 07:14:30'),(76,22,NULL,'regOptimizer','RegOptimizer','','Reg',2,'2017-06-05 07:14:30','2017-06-05 07:14:30');
/*!40000 ALTER TABLE `node_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_types`
--

DROP TABLE IF EXISTS `node_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_types`
--

LOCK TABLES `node_types` WRITE;
/*!40000 ALTER TABLE `node_types` DISABLE KEYS */;
INSERT INTO `node_types` VALUES (1,'Task','2017-05-23 15:29:41','2017-05-23 15:29:41');
/*!40000 ALTER TABLE `node_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packageinformation`
--

DROP TABLE IF EXISTS `packageinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packageinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PackageID` int(11) NOT NULL DEFAULT '0',
  `PackageName` varchar(50) DEFAULT NULL,
  `Description` mediumtext,
  `DurationUnit` varchar(1) DEFAULT NULL,
  `CostUnit` float DEFAULT NULL,
  `AuthorID` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `GoalOWLURI` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packageinformation`
--

LOCK TABLES `packageinformation` WRITE;
/*!40000 ALTER TABLE `packageinformation` DISABLE KEYS */;
INSERT INTO `packageinformation` VALUES (1,2,'IP','IP','s',12,0,'2013-07-22 14:16:01','');
/*!40000 ALTER TABLE `packageinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_informations`
--

DROP TABLE IF EXISTS `person_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `technical_post` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_informations`
--

LOCK TABLES `person_informations` WRITE;
/*!40000 ALTER TABLE `person_informations` DISABLE KEYS */;
INSERT INTO `person_informations` VALUES (1,'Admin','Admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-04-08 06:12:56','2017-04-08 06:12:56');
/*!40000 ALTER TABLE `person_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process_files`
--

DROP TABLE IF EXISTS `process_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `path` text,
  `process_information_id` int(11) DEFAULT NULL,
  `node` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_process_files_on_process_information_id` (`process_information_id`),
  CONSTRAINT `fk_rails_1e69cb56bb` FOREIGN KEY (`process_information_id`) REFERENCES `process_informations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process_files`
--

LOCK TABLES `process_files` WRITE;
/*!40000 ALTER TABLE `process_files` DISABLE KEYS */;
INSERT INTO `process_files` VALUES (1,'media_5','/Users/xfhuang/code/Website/analysis_website/public/upload/media_5',NULL,NULL,'2017-05-12 14:30:34','2017-05-12 14:30:34'),(2,'media_2','/Users/xfhuang/code/Website/analysis_website/public/upload/media_2',NULL,NULL,'2017-05-12 14:36:45','2017-05-12 14:36:45'),(3,'media_5','/Users/xfhuang/code/Website/analysis_website/public/upload/media_5',NULL,NULL,'2017-05-13 06:52:13','2017-05-13 06:52:13'),(4,'media_5','/Users/xfhuang/code/Website/analysis_website/public/upload/media_5',NULL,NULL,'2017-05-13 06:53:49','2017-05-13 06:53:49'),(5,'media_5','/Users/xfhuang/code/Website/analysis_website/public/upload/media_5',NULL,NULL,'2017-05-13 06:53:53','2017-05-13 06:53:53'),(6,'media_5','/Users/xfhuang/code/Website/analysis_website/public/upload/media_5',NULL,NULL,'2017-05-13 06:54:53','2017-05-13 06:54:53'),(7,'media_5','/Users/xfhuang/code/Website/analysis_website/public/upload/media_5',NULL,NULL,'2017-05-13 06:57:36','2017-05-13 06:57:36'),(8,'media_6','/Users/xfhuang/code/Website/analysis_website/public/upload/media_6',NULL,NULL,'2017-05-13 06:57:43','2017-05-13 06:57:43'),(9,'media_8','/Users/xfhuang/code/Website/analysis_website/public/upload/media_8',NULL,NULL,'2017-05-13 07:02:08','2017-05-13 07:02:08'),(10,'media_11','/Users/xfhuang/code/Website/analysis_website/public/upload/media_11',NULL,NULL,'2017-05-13 07:08:15','2017-05-13 07:08:15'),(11,'media_5','/Users/xfhuang/code/Website/analysis_website/public/upload/media_5',NULL,NULL,'2017-05-13 07:10:34','2017-05-13 07:10:34'),(12,'media_3','/Users/xfhuang/code/Website/analysis_website/public/upload/media_3',NULL,NULL,'2017-05-13 07:15:58','2017-05-13 07:15:58'),(13,'media_9','/Users/xfhuang/code/Website/analysis_website/public/upload/media_9',NULL,NULL,'2017-05-13 07:22:21','2017-05-13 07:22:21'),(14,'media_10','/Users/xfhuang/code/Website/analysis_website/public/upload/media_10',NULL,NULL,'2017-05-13 07:23:49','2017-05-13 07:23:49'),(15,'media_10','/Users/xfhuang/code/Website/analysis_website/public/upload/media_10',NULL,NULL,'2017-05-13 07:33:29','2017-05-13 07:33:29'),(16,'media_8','/Users/xfhuang/code/Website/analysis_website/public/upload/media_8',NULL,NULL,'2017-05-13 07:36:27','2017-05-13 07:36:27'),(17,'media_10','/Users/xfhuang/code/Website/analysis_website/public/upload/media_10',NULL,NULL,'2017-05-13 07:37:04','2017-05-13 07:37:04'),(18,'media_6','/Users/xfhuang/code/Website/analysis_website/public/upload/media_6',NULL,NULL,'2017-05-13 07:49:19','2017-05-13 07:49:19'),(19,'media_8','/Users/xfhuang/code/Website/analysis_website/public/upload/media_8',NULL,NULL,'2017-05-13 07:51:40','2017-05-13 07:51:40'),(20,'media_8','/Users/xfhuang/code/Website/analysis_website/public/upload/media_8',NULL,NULL,'2017-05-13 08:24:42','2017-05-13 08:24:42'),(21,'media_8','/Users/xfhuang/code/Website/analysis_website/public/upload/media_8',NULL,NULL,'2017-05-13 08:26:20','2017-05-13 08:26:20'),(22,'media_10','/Users/xfhuang/code/Website/analysis_website/public/upload/media_10',NULL,NULL,'2017-05-13 08:27:22','2017-05-13 08:27:22'),(23,'media_8','/Users/xfhuang/code/Website/analysis_website/public/upload/media_8',NULL,NULL,'2017-05-13 08:29:08','2017-05-13 08:29:08'),(24,'media_8','/Users/xfhuang/code/Website/analysis_website/public/upload/media_8',NULL,NULL,'2017-05-13 08:29:28','2017-05-13 08:29:28'),(25,'media_8','/Users/xfhuang/code/Website/analysis_website/public/upload/media_8',NULL,NULL,'2017-05-13 08:52:21','2017-05-13 08:52:21'),(26,'media_11','/Users/xfhuang/code/Website/analysis_website/public/upload/media_11',NULL,NULL,'2017-05-13 08:52:40','2017-05-13 08:52:40'),(27,'media_12','/Users/xfhuang/code/Website/analysis_website/public/upload/media_12',NULL,NULL,'2017-05-13 09:15:11','2017-05-13 09:15:11'),(28,'media_8','/Users/xfhuang/code/Website/analysis_website/public/upload/media_8',NULL,NULL,'2017-05-13 09:16:07','2017-05-13 09:16:07'),(29,'media_16','/Users/xfhuang/code/Website/analysis_website/public/upload/media_16',NULL,NULL,'2017-05-13 09:16:22','2017-05-13 09:16:22'),(30,'media_103','/Users/xfhuang/code/Website/analysis_website/public/upload/media_103',NULL,NULL,'2017-05-13 09:16:47','2017-05-13 09:16:47'),(31,'media_9','/Users/xfhuang/code/Website/analysis_website/public/upload/media_9',NULL,NULL,'2017-05-13 09:20:07','2017-05-13 09:20:07'),(32,'media_10','/Users/xfhuang/code/Website/analysis_website/public/upload/media_10',NULL,NULL,'2017-05-13 11:21:44','2017-05-13 11:21:44'),(33,'media_9','/Users/xfhuang/code/Website/analysis_website/public/upload/media_9',NULL,NULL,'2017-05-13 11:32:40','2017-05-13 11:32:40'),(34,'media_11','/Users/xfhuang/code/Website/analysis_website/public/upload/media_11',NULL,NULL,'2017-05-13 11:35:23','2017-05-13 11:35:23'),(35,'media_10','/Users/xfhuang/code/Website/analysis_website/public/upload/media_10',NULL,NULL,'2017-05-13 11:46:15','2017-05-13 11:46:15'),(36,'media_16','/Users/xfhuang/code/Website/analysis_website/public/upload/media_16',NULL,NULL,'2017-05-13 11:46:25','2017-05-13 11:46:25'),(37,'media_16','/Users/xfhuang/code/Website/analysis_website/public/upload/media_16',NULL,NULL,'2017-05-13 11:46:54','2017-05-13 11:46:54'),(38,'download.txt','/Users/xfhuang/code/Website/analysis_website/public/upload/download.txt',NULL,NULL,'2017-05-14 06:06:54','2017-05-14 06:06:54'),(39,'download.txt','/Users/xfhuang/code/Website/analysis_website/public/upload/download.txt',NULL,NULL,'2017-05-14 06:07:58','2017-05-14 06:07:58'),(40,'download.txt','/Users/xfhuang/code/Website/analysis_website/public/upload/download.txt',NULL,NULL,'2017-05-14 06:13:08','2017-05-14 06:13:08'),(41,'download.txt','/Users/xfhuang/code/Website/analysis_website/public/upload/download.txt',NULL,NULL,'2017-05-14 07:28:59','2017-05-14 07:28:59'),(42,'download.txt','/Users/xfhuang/code/Website/analysis_website/public/upload/download.txt',NULL,NULL,'2017-05-15 02:03:40','2017-05-15 02:03:40'),(43,'download.txt','/Users/xfhuang/code/Website/analysis_website/public/upload/download.txt',NULL,NULL,'2017-05-15 02:06:16','2017-05-15 02:06:16'),(44,'download.txt','/Users/xfhuang/code/Website/analysis_website/public/upload/download.txt',NULL,NULL,'2017-05-15 02:37:18','2017-05-15 02:37:18');
/*!40000 ALTER TABLE `process_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process_informations`
--

DROP TABLE IF EXISTS `process_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process_informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_information_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `creater_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_shared` tinyint(1) DEFAULT NULL,
  `parent_case_id` int(11) DEFAULT NULL,
  `persistent` tinyint(1) DEFAULT NULL,
  `state` text COLLATE utf8_unicode_ci,
  `case_type` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `process_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_process_informations_on_creater_id` (`creater_id`),
  KEY `index_process_informations_on_parent_case_id` (`parent_case_id`),
  KEY `index_process_informations_on_process_id` (`process_id`),
  KEY `index_process_informations_on_process_type_and_process_id` (`process_type`),
  KEY `index_process_informations_on_user_id` (`user_id`),
  KEY `index_process_informations_on_workflow_information_id` (`workflow_information_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process_informations`
--

LOCK TABLES `process_informations` WRITE;
/*!40000 ALTER TABLE `process_informations` DISABLE KEYS */;
INSERT INTO `process_informations` VALUES (29,20,'Sample case','Sample case, use CPU performance data set.',NULL,NULL,1,NULL,NULL,NULL,NULL,'2017-04-10 13:10:09','2017-04-10 13:12:35',NULL,NULL),(30,20,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-04-10 13:24:15','2017-04-10 13:24:15',NULL,NULL),(33,20,'soybean cluster','cluster soybean data set',NULL,NULL,1,NULL,NULL,NULL,NULL,'2017-04-11 02:16:44','2017-04-11 02:20:38',NULL,NULL),(34,20,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-04-11 02:20:55','2017-04-11 02:20:55',NULL,NULL),(35,20,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-04-11 02:21:11','2017-04-11 02:21:11',NULL,NULL),(36,20,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-04-11 02:24:14','2017-04-11 02:24:14',NULL,NULL),(42,20,'CPU cluster','CPU cluster',NULL,NULL,1,NULL,NULL,NULL,NULL,'2017-04-11 06:19:49','2017-04-11 06:21:31',NULL,NULL),(43,20,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-04-11 06:21:46','2017-04-11 06:21:46',NULL,NULL),(51,20,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-06-05 08:33:09','2017-06-05 08:33:09',NULL,NULL),(52,20,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-06-05 08:33:12','2017-06-05 08:33:12',NULL,NULL),(53,73,'Time Series Prediciton For CPU Prediction','Time Series Prediciton For CPU Prediction',NULL,NULL,1,NULL,NULL,NULL,NULL,'2017-06-05 10:52:31','2017-06-05 10:53:10',NULL,NULL),(54,73,'CPU Prediction in 2015 xxx CPU data set','Time Series Prediciton For CPU Prediction in 2015 xxx CPU data set.',NULL,NULL,1,NULL,NULL,NULL,NULL,'2017-06-05 10:53:33','2017-06-05 10:54:57',NULL,NULL),(55,82,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-06-15 07:25:09','2017-06-15 07:25:09',NULL,NULL),(56,82,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-06-15 07:26:16','2017-06-15 07:26:16',NULL,NULL);
/*!40000 ALTER TABLE `process_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process_results`
--

DROP TABLE IF EXISTS `process_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text,
  `process_information_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_process_results_on_process_information_id` (`process_information_id`),
  CONSTRAINT `fk_rails_c1eb9e6513` FOREIGN KEY (`process_information_id`) REFERENCES `process_informations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process_results`
--

LOCK TABLES `process_results` WRITE;
/*!40000 ALTER TABLE `process_results` DISABLE KEYS */;
INSERT INTO `process_results` VALUES (13,'\nkMeans\n======\n\nNumber of iterations: 10\nWithin cluster sum of squared errors: 16.2226477893351\n\nInitial starting points (random):\n\nCluster 0: 600,768,2000,0,1,1,16\nCluster 1: 59,4000,12000,32,6,12,113\nCluster 2: 124,1000,8000,0,1,8,42\n\nMissing values globally replaced with mean/mode\n\nFinal cluster centroids:\n                         Cluster#\nAttribute    Full Data          0          1          2\n               (209.0)     (20.0)     (31.0)    (158.0)\n=======================================================\nMYCT           203.823        906    40.4194        147\nMMIN         2867.9809      664.8  9050.5161  1933.8354\nMMAX        11796.1531     4000.6 31407.0968  8935.2152\nCACH           25.2057          1         95    14.5759\nCHMIN           4.6986       0.95    15.1935     3.1139\nCHMAX          18.2679       2.05    47.8065    14.5253\nPRP            105.622      17.75   392.4839     60.462\n\n\n',29,'2017-04-10 13:10:43','2017-04-10 13:10:43'),(14,'\nkMeans\n======\n\nNumber of iterations: 10\nWithin cluster sum of squared errors: 16.2226477893351\n\nInitial starting points (random):\n\nCluster 0: 600,768,2000,0,1,1,16\nCluster 1: 59,4000,12000,32,6,12,113\nCluster 2: 124,1000,8000,0,1,8,42\n\nMissing values globally replaced with mean/mode\n\nFinal cluster centroids:\n                         Cluster#\nAttribute    Full Data          0          1          2\n               (209.0)     (20.0)     (31.0)    (158.0)\n=======================================================\nMYCT           203.823        906    40.4194        147\nMMIN         2867.9809      664.8  9050.5161  1933.8354\nMMAX        11796.1531     4000.6 31407.0968  8935.2152\nCACH           25.2057          1         95    14.5759\nCHMIN           4.6986       0.95    15.1935     3.1139\nCHMAX          18.2679       2.05    47.8065    14.5253\nPRP            105.622      17.75   392.4839     60.462\n\n\n',29,'2017-04-10 13:15:15','2017-04-10 13:15:15'),(17,'\nkMeans\n======\n\nNumber of iterations: 10\nWithin cluster sum of squared errors: 16.2226477893351\n\nInitial starting points (random):\n\nCluster 0: 600,768,2000,0,1,1,16\nCluster 1: 59,4000,12000,32,6,12,113\nCluster 2: 124,1000,8000,0,1,8,42\n\nMissing values globally replaced with mean/mode\n\nFinal cluster centroids:\n                         Cluster#\nAttribute    Full Data          0          1          2\n               (209.0)     (20.0)     (31.0)    (158.0)\n=======================================================\nMYCT           203.823        906    40.4194        147\nMMIN         2867.9809      664.8  9050.5161  1933.8354\nMMAX        11796.1531     4000.6 31407.0968  8935.2152\nCACH           25.2057          1         95    14.5759\nCHMIN           4.6986       0.95    15.1935     3.1139\nCHMAX          18.2679       2.05    47.8065    14.5253\nPRP            105.622      17.75   392.4839     60.462\n\n\n',33,'2017-04-11 02:18:34','2017-04-11 02:18:34'),(18,'\nkMeans\n======\n\nNumber of iterations: 10\nWithin cluster sum of squared errors: 16.2226477893351\n\nInitial starting points (random):\n\nCluster 0: 600,768,2000,0,1,1,16\nCluster 1: 59,4000,12000,32,6,12,113\nCluster 2: 124,1000,8000,0,1,8,42\n\nMissing values globally replaced with mean/mode\n\nFinal cluster centroids:\n                         Cluster#\nAttribute    Full Data          0          1          2\n               (209.0)     (20.0)     (31.0)    (158.0)\n=======================================================\nMYCT           203.823        906    40.4194        147\nMMIN         2867.9809      664.8  9050.5161  1933.8354\nMMAX        11796.1531     4000.6 31407.0968  8935.2152\nCACH           25.2057          1         95    14.5759\nCHMIN           4.6986       0.95    15.1935     3.1139\nCHMAX          18.2679       2.05    47.8065    14.5253\nPRP            105.622      17.75   392.4839     60.462\n\n\n',35,'2017-04-11 02:22:09','2017-04-11 02:22:09'),(24,'\nkMeans\n======\n\nNumber of iterations: 10\nWithin cluster sum of squared errors: 16.2226477893351\n\nInitial starting points (random):\n\nCluster 0: 600,768,2000,0,1,1,16\nCluster 1: 59,4000,12000,32,6,12,113\nCluster 2: 124,1000,8000,0,1,8,42\n\nMissing values globally replaced with mean/mode\n\nFinal cluster centroids:\n                         Cluster#\nAttribute    Full Data          0          1          2\n               (209.0)     (20.0)     (31.0)    (158.0)\n=======================================================\nMYCT           203.823        906    40.4194        147\nMMIN         2867.9809      664.8  9050.5161  1933.8354\nMMAX        11796.1531     4000.6 31407.0968  8935.2152\nCACH           25.2057          1         95    14.5759\nCHMIN           4.6986       0.95    15.1935     3.1139\nCHMAX          18.2679       2.05    47.8065    14.5253\nPRP            105.622      17.75   392.4839     60.462\n\n\n',42,'2017-04-11 06:20:22','2017-04-11 06:20:22'),(25,'\nkMeans\n======\n\nNumber of iterations: 10\nWithin cluster sum of squared errors: 5765.0\n\nInitial starting points (random):\n\nCluster 0: september,normal,gt-norm,norm,yes,same-lst-two-yrs,whole-field,severe,fungicide,80-89,norm,abnorm,no-yellow-halos,w-s-marg,gt-1/8,absent,absent,absent,abnorm,yes,absent,tan,present,firm-and-dry,absent,none,absent,norm,absent,norm,absent,absent,norm,absent,norm,brown-spot\nCluster 1: june,lt-normal,gt-norm,norm,yes,same-lst-sev-yrs,whole-field,pot-severe,none,lt-80,norm,abnorm,no-yellow-halos,w-s-marg,gt-1/8,present,absent,absent,norm,yes,absent,dna,absent,absent,absent,none,absent,norm,absent,norm,absent,absent,norm,absent,norm,brown-spot\nCluster 2: october,normal,gt-norm,lt-norm,yes,same-lst-two-yrs,upper-areas,minor,fungicide,80-89,norm,abnorm,no-yellow-halos,w-s-marg,lt-1/8,absent,absent,absent,abnorm,yes,absent,tan,absent,absent,absent,none,absent,diseased,colored,abnorm,absent,present,norm,absent,norm,purple-seed-stain\n\nMissing values globally replaced with mean/mode\n\nFinal cluster centroids:\n                                                              Cluster#\nAttribute                                Full Data                   0                   1                   2\n                                           (683.0)             (264.0)             (335.0)              (84.0)\n==============================================================================================================\ndate                                     september           september                july           september\nplant-stand                                 normal           lt-normal              normal              normal\nprecip                                     gt-norm             gt-norm             gt-norm             gt-norm\ntemp                                          norm                norm                norm             gt-norm\nhail                                           yes                 yes                 yes                 yes\ncrop-hist                         same-lst-two-yrs    same-lst-two-yrs    same-lst-sev-yrs    same-lst-two-yrs\narea-damaged                             low-areas           low-areas         whole-field         whole-field\nseverity                                pot-severe          pot-severe          pot-severe               minor\nseed-tmt                                      none                none                none                none\ngermination                                  80-89               80-89               80-89              90-100\nplant-growth                                  norm              abnorm                norm                norm\nleaves                                      abnorm              abnorm              abnorm              abnorm\nleafspots-halo                     no-yellow-halos              absent     no-yellow-halos     no-yellow-halos\nleafspots-marg                            w-s-marg                 dna            w-s-marg            w-s-marg\nleafspot-size                               gt-1/8                 dna              gt-1/8              gt-1/8\nleaf-shread                                 absent              absent              absent              absent\nleaf-malf                                   absent              absent              absent              absent\nleaf-mild                                   absent              absent              absent              absent\nstem                                        abnorm              abnorm                norm              abnorm\nlodging                                        yes                 yes                 yes                 yes\nstem-cankers                                absent              absent              absent       above-sec-nde\ncanker-lesion                                  dna        dk-brown-blk                 dna        dk-brown-blk\nfruiting-bodies                             absent              absent              absent              absent\nexternal-decay                              absent              absent              absent        firm-and-dry\nmycelium                                    absent              absent              absent              absent\nint-discolor                                  none                none                none                none\nsclerotia                                   absent              absent              absent              absent\nfruit-pods                                    norm                norm                norm            diseased\nfruit-spots                                 absent              absent              absent             colored\nseed                                          norm                norm                norm                norm\nmold-growth                                 absent              absent              absent              absent\nseed-discolor                               absent              absent              absent              absent\nseed-size                                     norm                norm                norm                norm\nshriveling                                  absent              absent              absent              absent\nroots                                         norm                norm                norm                norm\nclass                                   brown-spot    phytophthora-rot alternarialeaf-spot  frog-eye-leaf-spot\n\n\n',43,'2017-04-11 06:22:16','2017-04-11 06:22:16');
/*!40000 ALTER TABLE `process_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processactivityinformation`
--

DROP TABLE IF EXISTS `processactivityinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processactivityinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessID` varchar(50) NOT NULL DEFAULT '',
  `ActivityID` int(11) NOT NULL DEFAULT '0',
  `ActivityName` varchar(50) DEFAULT NULL,
  `ActivityType` smallint(6) DEFAULT NULL,
  `ActivityImplementation` smallint(6) DEFAULT NULL,
  `Layer` smallint(6) DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `ChoiceManager` tinyint(1) DEFAULT NULL,
  `StartTime` float DEFAULT NULL,
  `Duration` float DEFAULT NULL,
  `IconID` int(11) DEFAULT NULL,
  `ActivityURL` tinytext,
  `MultiPersonMode` int(11) DEFAULT NULL,
  `SubmitPersonNumber` int(11) DEFAULT NULL,
  `RepeatedTime` smallint(6) DEFAULT NULL,
  `TWCID` int(11) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `isCallback` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processactivityinformation`
--

LOCK TABLES `processactivityinformation` WRITE;
/*!40000 ALTER TABLE `processactivityinformation` DISABLE KEYS */;
INSERT INTO `processactivityinformation` VALUES (28,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(29,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(30,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(31,'be17b7e5-c31b-4fed-8d42-411ed0e83372',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(32,'be17b7e5-c31b-4fed-8d42-411ed0e83372',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(33,'be17b7e5-c31b-4fed-8d42-411ed0e83372',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(34,'6364d775-2540-44d1-be59-676f0c8dc910',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(35,'6364d775-2540-44d1-be59-676f0c8dc910',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(36,'6364d775-2540-44d1-be59-676f0c8dc910',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(37,'886d507d-b90a-4ace-a253-2687294040c9',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(38,'886d507d-b90a-4ace-a253-2687294040c9',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(39,'886d507d-b90a-4ace-a253-2687294040c9',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(40,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(41,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(42,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(43,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(44,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(45,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(46,'8994091c-3399-4771-9db8-2ab0457e6b21',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(47,'8994091c-3399-4771-9db8-2ab0457e6b21',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(48,'8994091c-3399-4771-9db8-2ab0457e6b21',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(49,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(50,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(51,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(52,'01686096-0080-4b0b-8b8c-2c770ecc0efb',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(53,'01686096-0080-4b0b-8b8c-2c770ecc0efb',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(54,'01686096-0080-4b0b-8b8c-2c770ecc0efb',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(55,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(56,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(57,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(58,'b6a5537f-5d66-42b3-ac99-b994758624f2',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(59,'b6a5537f-5d66-42b3-ac99-b994758624f2',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(60,'b6a5537f-5d66-42b3-ac99-b994758624f2',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(61,'455ea270-dcb8-4a50-be11-a29ff2179c6a',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(62,'455ea270-dcb8-4a50-be11-a29ff2179c6a',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(63,'455ea270-dcb8-4a50-be11-a29ff2179c6a',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(64,'d79a93fa-e950-425f-b248-76be3620321d',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(65,'d79a93fa-e950-425f-b248-76be3620321d',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(66,'d79a93fa-e950-425f-b248-76be3620321d',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(67,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(68,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(69,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(70,'31317770-82a7-4569-a43b-ed451dc59a78',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(71,'31317770-82a7-4569-a43b-ed451dc59a78',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(72,'31317770-82a7-4569-a43b-ed451dc59a78',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(73,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(74,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(75,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(76,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(77,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(78,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(79,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(80,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(81,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(82,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(83,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(84,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(85,'96437382-2854-4644-9dff-b22c82418c19',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(86,'96437382-2854-4644-9dff-b22c82418c19',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(87,'96437382-2854-4644-9dff-b22c82418c19',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(88,'225831db-dc7d-44e6-9aab-2ea190c52178',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(89,'225831db-dc7d-44e6-9aab-2ea190c52178',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(90,'225831db-dc7d-44e6-9aab-2ea190c52178',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(91,'b0317b97-a008-4020-afe3-717d0ebeff1c',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(92,'b0317b97-a008-4020-afe3-717d0ebeff1c',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(93,'b0317b97-a008-4020-afe3-717d0ebeff1c',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(94,'a4af6209-e279-46d0-a929-248f392681aa',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(95,'a4af6209-e279-46d0-a929-248f392681aa',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(96,'a4af6209-e279-46d0-a929-248f392681aa',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(97,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(98,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(99,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(100,'75711432-d389-4300-bcff-e2654d2f2b70',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(101,'75711432-d389-4300-bcff-e2654d2f2b70',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(102,'75711432-d389-4300-bcff-e2654d2f2b70',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(103,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(104,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(105,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(106,'29d06f8f-f970-4eba-8c01-88d124cd516b',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(107,'29d06f8f-f970-4eba-8c01-88d124cd516b',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(108,'29d06f8f-f970-4eba-8c01-88d124cd516b',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(109,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(110,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(111,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(112,'e0b6eca7-07be-46a5-8289-b1e6320de459',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(113,'e0b6eca7-07be-46a5-8289-b1e6320de459',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(114,'e0b6eca7-07be-46a5-8289-b1e6320de459',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(115,'69752a39-3c37-4a31-9e41-7003ac23dfe7',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(116,'69752a39-3c37-4a31-9e41-7003ac23dfe7',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(117,'69752a39-3c37-4a31-9e41-7003ac23dfe7',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(118,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(119,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(120,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(121,'79cf2f51-1138-4c27-8327-1797803d3232',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(122,'79cf2f51-1138-4c27-8327-1797803d3232',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(123,'79cf2f51-1138-4c27-8327-1797803d3232',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0),(124,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',1,'start',1,0,1,-1,'开始活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(125,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',2,'end',2,0,1,-1,'结束活动',0,0,0,0,'None',0,0,0,0,'Completed',0),(126,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',3,'getAddress',3,2,1,-1,'activity',0,0,0,0,'none',0,0,0,1,'Completed',0);
/*!40000 ALTER TABLE `processactivityinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processactivityinputmapping`
--

DROP TABLE IF EXISTS `processactivityinputmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processactivityinputmapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessID` varchar(50) NOT NULL,
  `ActivityID` int(11) NOT NULL,
  `DataflowID` int(11) NOT NULL,
  `InputSchema` mediumtext,
  `InputXML` mediumtext,
  `XSLT` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processactivityinputmapping`
--

LOCK TABLES `processactivityinputmapping` WRITE;
/*!40000 ALTER TABLE `processactivityinputmapping` DISABLE KEYS */;
INSERT INTO `processactivityinputmapping` VALUES (10,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(11,'be17b7e5-c31b-4fed-8d42-411ed0e83372',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(12,'6364d775-2540-44d1-be59-676f0c8dc910',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(13,'886d507d-b90a-4ace-a253-2687294040c9',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(14,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(15,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(16,'8994091c-3399-4771-9db8-2ab0457e6b21',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(17,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(18,'01686096-0080-4b0b-8b8c-2c770ecc0efb',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(19,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(20,'b6a5537f-5d66-42b3-ac99-b994758624f2',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(21,'455ea270-dcb8-4a50-be11-a29ff2179c6a',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(22,'d79a93fa-e950-425f-b248-76be3620321d',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(23,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(24,'31317770-82a7-4569-a43b-ed451dc59a78',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(25,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(26,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(27,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(28,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(29,'96437382-2854-4644-9dff-b22c82418c19',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(30,'225831db-dc7d-44e6-9aab-2ea190c52178',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(31,'b0317b97-a008-4020-afe3-717d0ebeff1c',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(32,'a4af6209-e279-46d0-a929-248f392681aa',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(33,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(34,'75711432-d389-4300-bcff-e2654d2f2b70',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(35,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(36,'29d06f8f-f970-4eba-8c01-88d124cd516b',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(37,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(38,'e0b6eca7-07be-46a5-8289-b1e6320de459',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(39,'69752a39-3c37-4a31-9e41-7003ac23dfe7',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(40,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(41,'79cf2f51-1138-4c27-8327-1797803d3232',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(42,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n');
/*!40000 ALTER TABLE `processactivityinputmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processactivityinvokingapplication`
--

DROP TABLE IF EXISTS `processactivityinvokingapplication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processactivityinvokingapplication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessID` varchar(50) NOT NULL DEFAULT '',
  `ActivityID` int(11) NOT NULL DEFAULT '0',
  `ApplicationID` int(11) NOT NULL DEFAULT '0',
  `InvocationType` smallint(6) DEFAULT NULL,
  `InputXMLID` int(11) DEFAULT NULL,
  `OutputXMLID` int(11) DEFAULT NULL,
  `ActualStartDate` datetime DEFAULT NULL,
  `ActualEndDate` datetime DEFAULT NULL,
  `Result` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processactivityinvokingapplication`
--

LOCK TABLES `processactivityinvokingapplication` WRITE;
/*!40000 ALTER TABLE `processactivityinvokingapplication` DISABLE KEYS */;
/*!40000 ALTER TABLE `processactivityinvokingapplication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processapplication`
--

DROP TABLE IF EXISTS `processapplication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processapplication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessID` varchar(50) NOT NULL DEFAULT '',
  `ApplicationID` smallint(6) NOT NULL DEFAULT '0',
  `Description` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processapplication`
--

LOCK TABLES `processapplication` WRITE;
/*!40000 ALTER TABLE `processapplication` DISABLE KEYS */;
INSERT INTO `processapplication` VALUES (11,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',12,'IpAddressSearchWebService:getCountryCityByIp'),(12,'be17b7e5-c31b-4fed-8d42-411ed0e83372',12,'IpAddressSearchWebService:getCountryCityByIp'),(13,'6364d775-2540-44d1-be59-676f0c8dc910',12,'IpAddressSearchWebService:getCountryCityByIp'),(14,'886d507d-b90a-4ace-a253-2687294040c9',12,'IpAddressSearchWebService:getCountryCityByIp'),(15,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',12,'IpAddressSearchWebService:getCountryCityByIp'),(16,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',12,'IpAddressSearchWebService:getCountryCityByIp'),(17,'8994091c-3399-4771-9db8-2ab0457e6b21',12,'IpAddressSearchWebService:getCountryCityByIp'),(18,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',12,'IpAddressSearchWebService:getCountryCityByIp'),(19,'01686096-0080-4b0b-8b8c-2c770ecc0efb',12,'IpAddressSearchWebService:getCountryCityByIp'),(20,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',12,'IpAddressSearchWebService:getCountryCityByIp'),(21,'b6a5537f-5d66-42b3-ac99-b994758624f2',12,'IpAddressSearchWebService:getCountryCityByIp'),(22,'455ea270-dcb8-4a50-be11-a29ff2179c6a',12,'IpAddressSearchWebService:getCountryCityByIp'),(23,'d79a93fa-e950-425f-b248-76be3620321d',12,'IpAddressSearchWebService:getCountryCityByIp'),(24,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',12,'IpAddressSearchWebService:getCountryCityByIp'),(25,'31317770-82a7-4569-a43b-ed451dc59a78',12,'IpAddressSearchWebService:getCountryCityByIp'),(26,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',12,'IpAddressSearchWebService:getCountryCityByIp'),(27,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',12,'IpAddressSearchWebService:getCountryCityByIp'),(28,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',12,'IpAddressSearchWebService:getCountryCityByIp'),(29,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',12,'IpAddressSearchWebService:getCountryCityByIp'),(30,'96437382-2854-4644-9dff-b22c82418c19',12,'IpAddressSearchWebService:getCountryCityByIp'),(31,'225831db-dc7d-44e6-9aab-2ea190c52178',12,'IpAddressSearchWebService:getCountryCityByIp'),(32,'b0317b97-a008-4020-afe3-717d0ebeff1c',12,'IpAddressSearchWebService:getCountryCityByIp'),(33,'a4af6209-e279-46d0-a929-248f392681aa',12,'IpAddressSearchWebService:getCountryCityByIp'),(34,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',12,'IpAddressSearchWebService:getCountryCityByIp'),(35,'75711432-d389-4300-bcff-e2654d2f2b70',12,'IpAddressSearchWebService:getCountryCityByIp'),(36,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',12,'IpAddressSearchWebService:getCountryCityByIp'),(37,'29d06f8f-f970-4eba-8c01-88d124cd516b',12,'IpAddressSearchWebService:getCountryCityByIp'),(38,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',12,'IpAddressSearchWebService:getCountryCityByIp'),(39,'e0b6eca7-07be-46a5-8289-b1e6320de459',12,'IpAddressSearchWebService:getCountryCityByIp'),(40,'69752a39-3c37-4a31-9e41-7003ac23dfe7',12,'IpAddressSearchWebService:getCountryCityByIp'),(41,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',12,'IpAddressSearchWebService:getCountryCityByIp'),(42,'79cf2f51-1138-4c27-8327-1797803d3232',12,'IpAddressSearchWebService:getCountryCityByIp'),(43,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',12,'IpAddressSearchWebService:getCountryCityByIp');
/*!40000 ALTER TABLE `processapplication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processcondition`
--

DROP TABLE IF EXISTS `processcondition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processcondition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessID` varchar(50) NOT NULL DEFAULT '',
  `ConditionID` int(11) NOT NULL DEFAULT '0',
  `ConditionRepresentation` varchar(200) DEFAULT NULL,
  `ConditionName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processcondition`
--

LOCK TABLES `processcondition` WRITE;
/*!40000 ALTER TABLE `processcondition` DISABLE KEYS */;
/*!40000 ALTER TABLE `processcondition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processcontrolflowcondition`
--

DROP TABLE IF EXISTS `processcontrolflowcondition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processcontrolflowcondition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessID` varchar(50) NOT NULL DEFAULT '0',
  `ControlFlowID` smallint(6) NOT NULL DEFAULT '0',
  `ConditionID` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processcontrolflowcondition`
--

LOCK TABLES `processcontrolflowcondition` WRITE;
/*!40000 ALTER TABLE `processcontrolflowcondition` DISABLE KEYS */;
INSERT INTO `processcontrolflowcondition` VALUES (1,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',2,0),(2,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',3,0),(3,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',4,0),(4,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',5,0),(5,'be17b7e5-c31b-4fed-8d42-411ed0e83372',2,0),(6,'be17b7e5-c31b-4fed-8d42-411ed0e83372',3,0),(7,'be17b7e5-c31b-4fed-8d42-411ed0e83372',4,0),(8,'be17b7e5-c31b-4fed-8d42-411ed0e83372',5,0),(9,'6364d775-2540-44d1-be59-676f0c8dc910',2,0),(10,'6364d775-2540-44d1-be59-676f0c8dc910',3,0),(11,'6364d775-2540-44d1-be59-676f0c8dc910',4,0),(12,'6364d775-2540-44d1-be59-676f0c8dc910',5,0),(13,'886d507d-b90a-4ace-a253-2687294040c9',2,0),(14,'886d507d-b90a-4ace-a253-2687294040c9',3,0),(15,'886d507d-b90a-4ace-a253-2687294040c9',4,0),(16,'886d507d-b90a-4ace-a253-2687294040c9',5,0),(17,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',2,0),(18,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',3,0),(19,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',4,0),(20,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',5,0),(21,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',2,0),(22,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',3,0),(23,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',4,0),(24,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',5,0),(25,'8994091c-3399-4771-9db8-2ab0457e6b21',2,0),(26,'8994091c-3399-4771-9db8-2ab0457e6b21',3,0),(27,'8994091c-3399-4771-9db8-2ab0457e6b21',4,0),(28,'8994091c-3399-4771-9db8-2ab0457e6b21',5,0),(29,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',2,0),(30,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',3,0),(31,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',4,0),(32,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',5,0),(33,'01686096-0080-4b0b-8b8c-2c770ecc0efb',2,0),(34,'01686096-0080-4b0b-8b8c-2c770ecc0efb',3,0),(35,'01686096-0080-4b0b-8b8c-2c770ecc0efb',4,0),(36,'01686096-0080-4b0b-8b8c-2c770ecc0efb',5,0),(37,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',2,0),(38,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',3,0),(39,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',4,0),(40,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',5,0),(41,'b6a5537f-5d66-42b3-ac99-b994758624f2',2,0),(42,'b6a5537f-5d66-42b3-ac99-b994758624f2',3,0),(43,'b6a5537f-5d66-42b3-ac99-b994758624f2',4,0),(44,'b6a5537f-5d66-42b3-ac99-b994758624f2',5,0),(45,'455ea270-dcb8-4a50-be11-a29ff2179c6a',2,0),(46,'455ea270-dcb8-4a50-be11-a29ff2179c6a',3,0),(47,'455ea270-dcb8-4a50-be11-a29ff2179c6a',4,0),(48,'455ea270-dcb8-4a50-be11-a29ff2179c6a',5,0),(49,'d79a93fa-e950-425f-b248-76be3620321d',2,0),(50,'d79a93fa-e950-425f-b248-76be3620321d',3,0),(51,'d79a93fa-e950-425f-b248-76be3620321d',4,0),(52,'d79a93fa-e950-425f-b248-76be3620321d',5,0),(53,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',2,0),(54,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',3,0),(55,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',4,0),(56,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',5,0),(57,'31317770-82a7-4569-a43b-ed451dc59a78',2,0),(58,'31317770-82a7-4569-a43b-ed451dc59a78',3,0),(59,'31317770-82a7-4569-a43b-ed451dc59a78',4,0),(60,'31317770-82a7-4569-a43b-ed451dc59a78',5,0),(61,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',2,0),(62,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',3,0),(63,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',4,0),(64,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',5,0),(65,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',2,0),(66,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',3,0),(67,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',4,0),(68,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',5,0),(69,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',2,0),(70,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',3,0),(71,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',4,0),(72,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',5,0),(73,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',2,0),(74,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',3,0),(75,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',4,0),(76,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',5,0),(77,'96437382-2854-4644-9dff-b22c82418c19',2,0),(78,'96437382-2854-4644-9dff-b22c82418c19',3,0),(79,'96437382-2854-4644-9dff-b22c82418c19',4,0),(80,'96437382-2854-4644-9dff-b22c82418c19',5,0),(81,'225831db-dc7d-44e6-9aab-2ea190c52178',2,0),(82,'225831db-dc7d-44e6-9aab-2ea190c52178',3,0),(83,'225831db-dc7d-44e6-9aab-2ea190c52178',4,0),(84,'225831db-dc7d-44e6-9aab-2ea190c52178',5,0),(85,'b0317b97-a008-4020-afe3-717d0ebeff1c',2,0),(86,'b0317b97-a008-4020-afe3-717d0ebeff1c',3,0),(87,'b0317b97-a008-4020-afe3-717d0ebeff1c',4,0),(88,'b0317b97-a008-4020-afe3-717d0ebeff1c',5,0),(89,'a4af6209-e279-46d0-a929-248f392681aa',2,0),(90,'a4af6209-e279-46d0-a929-248f392681aa',3,0),(91,'a4af6209-e279-46d0-a929-248f392681aa',4,0),(92,'a4af6209-e279-46d0-a929-248f392681aa',5,0),(93,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',2,0),(94,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',3,0),(95,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',4,0),(96,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',5,0),(97,'75711432-d389-4300-bcff-e2654d2f2b70',2,0),(98,'75711432-d389-4300-bcff-e2654d2f2b70',3,0),(99,'75711432-d389-4300-bcff-e2654d2f2b70',4,0),(100,'75711432-d389-4300-bcff-e2654d2f2b70',5,0),(101,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',2,0),(102,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',3,0),(103,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',4,0),(104,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',5,0),(105,'29d06f8f-f970-4eba-8c01-88d124cd516b',2,0),(106,'29d06f8f-f970-4eba-8c01-88d124cd516b',3,0),(107,'29d06f8f-f970-4eba-8c01-88d124cd516b',4,0),(108,'29d06f8f-f970-4eba-8c01-88d124cd516b',5,0),(109,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',2,0),(110,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',3,0),(111,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',4,0),(112,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',5,0),(113,'e0b6eca7-07be-46a5-8289-b1e6320de459',2,0),(114,'e0b6eca7-07be-46a5-8289-b1e6320de459',3,0),(115,'e0b6eca7-07be-46a5-8289-b1e6320de459',4,0),(116,'e0b6eca7-07be-46a5-8289-b1e6320de459',5,0),(117,'69752a39-3c37-4a31-9e41-7003ac23dfe7',2,0),(118,'69752a39-3c37-4a31-9e41-7003ac23dfe7',3,0),(119,'69752a39-3c37-4a31-9e41-7003ac23dfe7',4,0),(120,'69752a39-3c37-4a31-9e41-7003ac23dfe7',5,0),(121,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',2,0),(122,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',3,0),(123,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',4,0),(124,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',5,0),(125,'79cf2f51-1138-4c27-8327-1797803d3232',2,0),(126,'79cf2f51-1138-4c27-8327-1797803d3232',3,0),(127,'79cf2f51-1138-4c27-8327-1797803d3232',4,0),(128,'79cf2f51-1138-4c27-8327-1797803d3232',5,0),(129,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',2,0),(130,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',3,0),(131,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',4,0),(132,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',5,0);
/*!40000 ALTER TABLE `processcontrolflowcondition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processevent`
--

DROP TABLE IF EXISTS `processevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processevent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessID` varchar(50) NOT NULL DEFAULT '',
  `EventID` int(11) NOT NULL DEFAULT '0',
  `EventRepresentation` longtext,
  `ExpressionforParse` longtext,
  `EventType` smallint(6) DEFAULT NULL,
  `LogicType` smallint(6) DEFAULT NULL,
  `ActivityID` int(11) DEFAULT NULL,
  `RepeatedTime` smallint(6) DEFAULT NULL,
  `ActiveTime` datetime DEFAULT NULL,
  `EventName` varchar(20) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=757 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processevent`
--

LOCK TABLES `processevent` WRITE;
/*!40000 ALTER TABLE `processevent` DISABLE KEYS */;
INSERT INTO `processevent` VALUES (163,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-07 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(164,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-07 00:00:00','Started(1)','活动(1)已经运行'),(165,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-07 00:00:00','EndOf(1)','活动(1)结束'),(166,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-07 00:00:00','Overtime(1)','活动(1)已经超时'),(167,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-07 00:00:00','Aborted(1)','活动(1)已经被放弃'),(168,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-07 00:00:00','Error(1)','活动(1)处于错误状态'),(169,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-07 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(170,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-07 00:00:00','Started(2)','活动(2)已经运行'),(171,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-07 00:00:00','EndOf(2)','活动(2)结束'),(172,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-07 00:00:00','Overtime(2)','活动(2)已经超时'),(173,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-07 00:00:00','Aborted(2)','活动(2)已经被放弃'),(174,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-07 00:00:00','Error(2)','活动(2)处于错误状态'),(175,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-07 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(176,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-07 00:00:00','Started(3)','活动(3)已经运行'),(177,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-07 00:00:00','EndOf(3)','活动(3)结束'),(178,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-07 00:00:00','Overtime(3)','活动(3)已经超时'),(179,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-07 00:00:00','Aborted(3)','活动(3)已经被放弃'),(180,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-07 00:00:00','Error(3)','活动(3)处于错误状态'),(181,'be17b7e5-c31b-4fed-8d42-411ed0e83372',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-08 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(182,'be17b7e5-c31b-4fed-8d42-411ed0e83372',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-08 00:00:00','Started(1)','活动(1)已经运行'),(183,'be17b7e5-c31b-4fed-8d42-411ed0e83372',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-08 00:00:00','EndOf(1)','活动(1)结束'),(184,'be17b7e5-c31b-4fed-8d42-411ed0e83372',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-08 00:00:00','Overtime(1)','活动(1)已经超时'),(185,'be17b7e5-c31b-4fed-8d42-411ed0e83372',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-08 00:00:00','Aborted(1)','活动(1)已经被放弃'),(186,'be17b7e5-c31b-4fed-8d42-411ed0e83372',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-08 00:00:00','Error(1)','活动(1)处于错误状态'),(187,'be17b7e5-c31b-4fed-8d42-411ed0e83372',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-08 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(188,'be17b7e5-c31b-4fed-8d42-411ed0e83372',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-08 00:00:00','Started(2)','活动(2)已经运行'),(189,'be17b7e5-c31b-4fed-8d42-411ed0e83372',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-08 00:00:00','EndOf(2)','活动(2)结束'),(190,'be17b7e5-c31b-4fed-8d42-411ed0e83372',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-08 00:00:00','Overtime(2)','活动(2)已经超时'),(191,'be17b7e5-c31b-4fed-8d42-411ed0e83372',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-08 00:00:00','Aborted(2)','活动(2)已经被放弃'),(192,'be17b7e5-c31b-4fed-8d42-411ed0e83372',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-08 00:00:00','Error(2)','活动(2)处于错误状态'),(193,'be17b7e5-c31b-4fed-8d42-411ed0e83372',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-08 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(194,'be17b7e5-c31b-4fed-8d42-411ed0e83372',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-08 00:00:00','Started(3)','活动(3)已经运行'),(195,'be17b7e5-c31b-4fed-8d42-411ed0e83372',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-08 00:00:00','EndOf(3)','活动(3)结束'),(196,'be17b7e5-c31b-4fed-8d42-411ed0e83372',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-08 00:00:00','Overtime(3)','活动(3)已经超时'),(197,'be17b7e5-c31b-4fed-8d42-411ed0e83372',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-08 00:00:00','Aborted(3)','活动(3)已经被放弃'),(198,'be17b7e5-c31b-4fed-8d42-411ed0e83372',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-08 00:00:00','Error(3)','活动(3)处于错误状态'),(199,'6364d775-2540-44d1-be59-676f0c8dc910',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-08 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(200,'6364d775-2540-44d1-be59-676f0c8dc910',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-08 00:00:00','Started(1)','活动(1)已经运行'),(201,'6364d775-2540-44d1-be59-676f0c8dc910',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-08 00:00:00','EndOf(1)','活动(1)结束'),(202,'6364d775-2540-44d1-be59-676f0c8dc910',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-08 00:00:00','Overtime(1)','活动(1)已经超时'),(203,'6364d775-2540-44d1-be59-676f0c8dc910',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-08 00:00:00','Aborted(1)','活动(1)已经被放弃'),(204,'6364d775-2540-44d1-be59-676f0c8dc910',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-08 00:00:00','Error(1)','活动(1)处于错误状态'),(205,'6364d775-2540-44d1-be59-676f0c8dc910',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-08 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(206,'6364d775-2540-44d1-be59-676f0c8dc910',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-08 00:00:00','Started(2)','活动(2)已经运行'),(207,'6364d775-2540-44d1-be59-676f0c8dc910',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-08 00:00:00','EndOf(2)','活动(2)结束'),(208,'6364d775-2540-44d1-be59-676f0c8dc910',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-08 00:00:00','Overtime(2)','活动(2)已经超时'),(209,'6364d775-2540-44d1-be59-676f0c8dc910',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-08 00:00:00','Aborted(2)','活动(2)已经被放弃'),(210,'6364d775-2540-44d1-be59-676f0c8dc910',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-08 00:00:00','Error(2)','活动(2)处于错误状态'),(211,'6364d775-2540-44d1-be59-676f0c8dc910',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-08 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(212,'6364d775-2540-44d1-be59-676f0c8dc910',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-08 00:00:00','Started(3)','活动(3)已经运行'),(213,'6364d775-2540-44d1-be59-676f0c8dc910',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-08 00:00:00','EndOf(3)','活动(3)结束'),(214,'6364d775-2540-44d1-be59-676f0c8dc910',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-08 00:00:00','Overtime(3)','活动(3)已经超时'),(215,'6364d775-2540-44d1-be59-676f0c8dc910',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-08 00:00:00','Aborted(3)','活动(3)已经被放弃'),(216,'6364d775-2540-44d1-be59-676f0c8dc910',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-08 00:00:00','Error(3)','活动(3)处于错误状态'),(217,'886d507d-b90a-4ace-a253-2687294040c9',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-09 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(218,'886d507d-b90a-4ace-a253-2687294040c9',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-09 00:00:00','Started(1)','活动(1)已经运行'),(219,'886d507d-b90a-4ace-a253-2687294040c9',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-09 00:00:00','EndOf(1)','活动(1)结束'),(220,'886d507d-b90a-4ace-a253-2687294040c9',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-09 00:00:00','Overtime(1)','活动(1)已经超时'),(221,'886d507d-b90a-4ace-a253-2687294040c9',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-09 00:00:00','Aborted(1)','活动(1)已经被放弃'),(222,'886d507d-b90a-4ace-a253-2687294040c9',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-09 00:00:00','Error(1)','活动(1)处于错误状态'),(223,'886d507d-b90a-4ace-a253-2687294040c9',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-09 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(224,'886d507d-b90a-4ace-a253-2687294040c9',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-09 00:00:00','Started(2)','活动(2)已经运行'),(225,'886d507d-b90a-4ace-a253-2687294040c9',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-09 00:00:00','EndOf(2)','活动(2)结束'),(226,'886d507d-b90a-4ace-a253-2687294040c9',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-09 00:00:00','Overtime(2)','活动(2)已经超时'),(227,'886d507d-b90a-4ace-a253-2687294040c9',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-09 00:00:00','Aborted(2)','活动(2)已经被放弃'),(228,'886d507d-b90a-4ace-a253-2687294040c9',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-09 00:00:00','Error(2)','活动(2)处于错误状态'),(229,'886d507d-b90a-4ace-a253-2687294040c9',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-09 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(230,'886d507d-b90a-4ace-a253-2687294040c9',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-09 00:00:00','Started(3)','活动(3)已经运行'),(231,'886d507d-b90a-4ace-a253-2687294040c9',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-09 00:00:00','EndOf(3)','活动(3)结束'),(232,'886d507d-b90a-4ace-a253-2687294040c9',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-09 00:00:00','Overtime(3)','活动(3)已经超时'),(233,'886d507d-b90a-4ace-a253-2687294040c9',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-09 00:00:00','Aborted(3)','活动(3)已经被放弃'),(234,'886d507d-b90a-4ace-a253-2687294040c9',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-09 00:00:00','Error(3)','活动(3)处于错误状态'),(235,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-09 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(236,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-09 00:00:00','Started(1)','活动(1)已经运行'),(237,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-09 00:00:00','EndOf(1)','活动(1)结束'),(238,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-09 00:00:00','Overtime(1)','活动(1)已经超时'),(239,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-09 00:00:00','Aborted(1)','活动(1)已经被放弃'),(240,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-09 00:00:00','Error(1)','活动(1)处于错误状态'),(241,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-09 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(242,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-09 00:00:00','Started(2)','活动(2)已经运行'),(243,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-09 00:00:00','EndOf(2)','活动(2)结束'),(244,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-09 00:00:00','Overtime(2)','活动(2)已经超时'),(245,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-09 00:00:00','Aborted(2)','活动(2)已经被放弃'),(246,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-09 00:00:00','Error(2)','活动(2)处于错误状态'),(247,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-09 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(248,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-09 00:00:00','Started(3)','活动(3)已经运行'),(249,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-09 00:00:00','EndOf(3)','活动(3)结束'),(250,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-09 00:00:00','Overtime(3)','活动(3)已经超时'),(251,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-09 00:00:00','Aborted(3)','活动(3)已经被放弃'),(252,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-09 00:00:00','Error(3)','活动(3)处于错误状态'),(253,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-09 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(254,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-09 00:00:00','Started(1)','活动(1)已经运行'),(255,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-09 00:00:00','EndOf(1)','活动(1)结束'),(256,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-09 00:00:00','Overtime(1)','活动(1)已经超时'),(257,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-09 00:00:00','Aborted(1)','活动(1)已经被放弃'),(258,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-09 00:00:00','Error(1)','活动(1)处于错误状态'),(259,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-09 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(260,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-09 00:00:00','Started(2)','活动(2)已经运行'),(261,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-09 00:00:00','EndOf(2)','活动(2)结束'),(262,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-09 00:00:00','Overtime(2)','活动(2)已经超时'),(263,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-09 00:00:00','Aborted(2)','活动(2)已经被放弃'),(264,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-09 00:00:00','Error(2)','活动(2)处于错误状态'),(265,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-09 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(266,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-09 00:00:00','Started(3)','活动(3)已经运行'),(267,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-09 00:00:00','EndOf(3)','活动(3)结束'),(268,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-09 00:00:00','Overtime(3)','活动(3)已经超时'),(269,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-09 00:00:00','Aborted(3)','活动(3)已经被放弃'),(270,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-09 00:00:00','Error(3)','活动(3)处于错误状态'),(271,'8994091c-3399-4771-9db8-2ab0457e6b21',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-09 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(272,'8994091c-3399-4771-9db8-2ab0457e6b21',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-09 00:00:00','Started(1)','活动(1)已经运行'),(273,'8994091c-3399-4771-9db8-2ab0457e6b21',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-09 00:00:00','EndOf(1)','活动(1)结束'),(274,'8994091c-3399-4771-9db8-2ab0457e6b21',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-09 00:00:00','Overtime(1)','活动(1)已经超时'),(275,'8994091c-3399-4771-9db8-2ab0457e6b21',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-09 00:00:00','Aborted(1)','活动(1)已经被放弃'),(276,'8994091c-3399-4771-9db8-2ab0457e6b21',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-09 00:00:00','Error(1)','活动(1)处于错误状态'),(277,'8994091c-3399-4771-9db8-2ab0457e6b21',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-09 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(278,'8994091c-3399-4771-9db8-2ab0457e6b21',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-09 00:00:00','Started(2)','活动(2)已经运行'),(279,'8994091c-3399-4771-9db8-2ab0457e6b21',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-09 00:00:00','EndOf(2)','活动(2)结束'),(280,'8994091c-3399-4771-9db8-2ab0457e6b21',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-09 00:00:00','Overtime(2)','活动(2)已经超时'),(281,'8994091c-3399-4771-9db8-2ab0457e6b21',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-09 00:00:00','Aborted(2)','活动(2)已经被放弃'),(282,'8994091c-3399-4771-9db8-2ab0457e6b21',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-09 00:00:00','Error(2)','活动(2)处于错误状态'),(283,'8994091c-3399-4771-9db8-2ab0457e6b21',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-09 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(284,'8994091c-3399-4771-9db8-2ab0457e6b21',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-09 00:00:00','Started(3)','活动(3)已经运行'),(285,'8994091c-3399-4771-9db8-2ab0457e6b21',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-09 00:00:00','EndOf(3)','活动(3)结束'),(286,'8994091c-3399-4771-9db8-2ab0457e6b21',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-09 00:00:00','Overtime(3)','活动(3)已经超时'),(287,'8994091c-3399-4771-9db8-2ab0457e6b21',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-09 00:00:00','Aborted(3)','活动(3)已经被放弃'),(288,'8994091c-3399-4771-9db8-2ab0457e6b21',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-09 00:00:00','Error(3)','活动(3)处于错误状态'),(289,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-09 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(290,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-09 00:00:00','Started(1)','活动(1)已经运行'),(291,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-09 00:00:00','EndOf(1)','活动(1)结束'),(292,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-09 00:00:00','Overtime(1)','活动(1)已经超时'),(293,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-09 00:00:00','Aborted(1)','活动(1)已经被放弃'),(294,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-09 00:00:00','Error(1)','活动(1)处于错误状态'),(295,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-09 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(296,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-09 00:00:00','Started(2)','活动(2)已经运行'),(297,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-09 00:00:00','EndOf(2)','活动(2)结束'),(298,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-09 00:00:00','Overtime(2)','活动(2)已经超时'),(299,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-09 00:00:00','Aborted(2)','活动(2)已经被放弃'),(300,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-09 00:00:00','Error(2)','活动(2)处于错误状态'),(301,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-09 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(302,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-09 00:00:00','Started(3)','活动(3)已经运行'),(303,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-09 00:00:00','EndOf(3)','活动(3)结束'),(304,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-09 00:00:00','Overtime(3)','活动(3)已经超时'),(305,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-09 00:00:00','Aborted(3)','活动(3)已经被放弃'),(306,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-09 00:00:00','Error(3)','活动(3)处于错误状态'),(307,'01686096-0080-4b0b-8b8c-2c770ecc0efb',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-09 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(308,'01686096-0080-4b0b-8b8c-2c770ecc0efb',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-09 00:00:00','Started(1)','活动(1)已经运行'),(309,'01686096-0080-4b0b-8b8c-2c770ecc0efb',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-09 00:00:00','EndOf(1)','活动(1)结束'),(310,'01686096-0080-4b0b-8b8c-2c770ecc0efb',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-09 00:00:00','Overtime(1)','活动(1)已经超时'),(311,'01686096-0080-4b0b-8b8c-2c770ecc0efb',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-09 00:00:00','Aborted(1)','活动(1)已经被放弃'),(312,'01686096-0080-4b0b-8b8c-2c770ecc0efb',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-09 00:00:00','Error(1)','活动(1)处于错误状态'),(313,'01686096-0080-4b0b-8b8c-2c770ecc0efb',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-09 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(314,'01686096-0080-4b0b-8b8c-2c770ecc0efb',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-09 00:00:00','Started(2)','活动(2)已经运行'),(315,'01686096-0080-4b0b-8b8c-2c770ecc0efb',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-09 00:00:00','EndOf(2)','活动(2)结束'),(316,'01686096-0080-4b0b-8b8c-2c770ecc0efb',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-09 00:00:00','Overtime(2)','活动(2)已经超时'),(317,'01686096-0080-4b0b-8b8c-2c770ecc0efb',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-09 00:00:00','Aborted(2)','活动(2)已经被放弃'),(318,'01686096-0080-4b0b-8b8c-2c770ecc0efb',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-09 00:00:00','Error(2)','活动(2)处于错误状态'),(319,'01686096-0080-4b0b-8b8c-2c770ecc0efb',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-09 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(320,'01686096-0080-4b0b-8b8c-2c770ecc0efb',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-09 00:00:00','Started(3)','活动(3)已经运行'),(321,'01686096-0080-4b0b-8b8c-2c770ecc0efb',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-09 00:00:00','EndOf(3)','活动(3)结束'),(322,'01686096-0080-4b0b-8b8c-2c770ecc0efb',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-09 00:00:00','Overtime(3)','活动(3)已经超时'),(323,'01686096-0080-4b0b-8b8c-2c770ecc0efb',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-09 00:00:00','Aborted(3)','活动(3)已经被放弃'),(324,'01686096-0080-4b0b-8b8c-2c770ecc0efb',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-09 00:00:00','Error(3)','活动(3)处于错误状态'),(325,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-09 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(326,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-09 00:00:00','Started(1)','活动(1)已经运行'),(327,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-09 00:00:00','EndOf(1)','活动(1)结束'),(328,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-09 00:00:00','Overtime(1)','活动(1)已经超时'),(329,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-09 00:00:00','Aborted(1)','活动(1)已经被放弃'),(330,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-09 00:00:00','Error(1)','活动(1)处于错误状态'),(331,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-09 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(332,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-09 00:00:00','Started(2)','活动(2)已经运行'),(333,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-09 00:00:00','EndOf(2)','活动(2)结束'),(334,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-09 00:00:00','Overtime(2)','活动(2)已经超时'),(335,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-09 00:00:00','Aborted(2)','活动(2)已经被放弃'),(336,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-09 00:00:00','Error(2)','活动(2)处于错误状态'),(337,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-09 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(338,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-09 00:00:00','Started(3)','活动(3)已经运行'),(339,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-09 00:00:00','EndOf(3)','活动(3)结束'),(340,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-09 00:00:00','Overtime(3)','活动(3)已经超时'),(341,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-09 00:00:00','Aborted(3)','活动(3)已经被放弃'),(342,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-09 00:00:00','Error(3)','活动(3)处于错误状态'),(343,'b6a5537f-5d66-42b3-ac99-b994758624f2',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-09 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(344,'b6a5537f-5d66-42b3-ac99-b994758624f2',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-09 00:00:00','Started(1)','活动(1)已经运行'),(345,'b6a5537f-5d66-42b3-ac99-b994758624f2',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-09 00:00:00','EndOf(1)','活动(1)结束'),(346,'b6a5537f-5d66-42b3-ac99-b994758624f2',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-09 00:00:00','Overtime(1)','活动(1)已经超时'),(347,'b6a5537f-5d66-42b3-ac99-b994758624f2',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-09 00:00:00','Aborted(1)','活动(1)已经被放弃'),(348,'b6a5537f-5d66-42b3-ac99-b994758624f2',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-09 00:00:00','Error(1)','活动(1)处于错误状态'),(349,'b6a5537f-5d66-42b3-ac99-b994758624f2',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-09 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(350,'b6a5537f-5d66-42b3-ac99-b994758624f2',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-09 00:00:00','Started(2)','活动(2)已经运行'),(351,'b6a5537f-5d66-42b3-ac99-b994758624f2',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-09 00:00:00','EndOf(2)','活动(2)结束'),(352,'b6a5537f-5d66-42b3-ac99-b994758624f2',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-09 00:00:00','Overtime(2)','活动(2)已经超时'),(353,'b6a5537f-5d66-42b3-ac99-b994758624f2',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-09 00:00:00','Aborted(2)','活动(2)已经被放弃'),(354,'b6a5537f-5d66-42b3-ac99-b994758624f2',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-09 00:00:00','Error(2)','活动(2)处于错误状态'),(355,'b6a5537f-5d66-42b3-ac99-b994758624f2',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-09 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(356,'b6a5537f-5d66-42b3-ac99-b994758624f2',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-09 00:00:00','Started(3)','活动(3)已经运行'),(357,'b6a5537f-5d66-42b3-ac99-b994758624f2',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-09 00:00:00','EndOf(3)','活动(3)结束'),(358,'b6a5537f-5d66-42b3-ac99-b994758624f2',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-09 00:00:00','Overtime(3)','活动(3)已经超时'),(359,'b6a5537f-5d66-42b3-ac99-b994758624f2',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-09 00:00:00','Aborted(3)','活动(3)已经被放弃'),(360,'b6a5537f-5d66-42b3-ac99-b994758624f2',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-09 00:00:00','Error(3)','活动(3)处于错误状态'),(361,'455ea270-dcb8-4a50-be11-a29ff2179c6a',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-10 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(362,'455ea270-dcb8-4a50-be11-a29ff2179c6a',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-10 00:00:00','Started(1)','活动(1)已经运行'),(363,'455ea270-dcb8-4a50-be11-a29ff2179c6a',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-10 00:00:00','EndOf(1)','活动(1)结束'),(364,'455ea270-dcb8-4a50-be11-a29ff2179c6a',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-10 00:00:00','Overtime(1)','活动(1)已经超时'),(365,'455ea270-dcb8-4a50-be11-a29ff2179c6a',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-10 00:00:00','Aborted(1)','活动(1)已经被放弃'),(366,'455ea270-dcb8-4a50-be11-a29ff2179c6a',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-10 00:00:00','Error(1)','活动(1)处于错误状态'),(367,'455ea270-dcb8-4a50-be11-a29ff2179c6a',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-10 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(368,'455ea270-dcb8-4a50-be11-a29ff2179c6a',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-10 00:00:00','Started(2)','活动(2)已经运行'),(369,'455ea270-dcb8-4a50-be11-a29ff2179c6a',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-10 00:00:00','EndOf(2)','活动(2)结束'),(370,'455ea270-dcb8-4a50-be11-a29ff2179c6a',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-10 00:00:00','Overtime(2)','活动(2)已经超时'),(371,'455ea270-dcb8-4a50-be11-a29ff2179c6a',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-10 00:00:00','Aborted(2)','活动(2)已经被放弃'),(372,'455ea270-dcb8-4a50-be11-a29ff2179c6a',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-10 00:00:00','Error(2)','活动(2)处于错误状态'),(373,'455ea270-dcb8-4a50-be11-a29ff2179c6a',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-10 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(374,'455ea270-dcb8-4a50-be11-a29ff2179c6a',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-10 00:00:00','Started(3)','活动(3)已经运行'),(375,'455ea270-dcb8-4a50-be11-a29ff2179c6a',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-10 00:00:00','EndOf(3)','活动(3)结束'),(376,'455ea270-dcb8-4a50-be11-a29ff2179c6a',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-10 00:00:00','Overtime(3)','活动(3)已经超时'),(377,'455ea270-dcb8-4a50-be11-a29ff2179c6a',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-10 00:00:00','Aborted(3)','活动(3)已经被放弃'),(378,'455ea270-dcb8-4a50-be11-a29ff2179c6a',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-10 00:00:00','Error(3)','活动(3)处于错误状态'),(379,'d79a93fa-e950-425f-b248-76be3620321d',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-10 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(380,'d79a93fa-e950-425f-b248-76be3620321d',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-10 00:00:00','Started(1)','活动(1)已经运行'),(381,'d79a93fa-e950-425f-b248-76be3620321d',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-10 00:00:00','EndOf(1)','活动(1)结束'),(382,'d79a93fa-e950-425f-b248-76be3620321d',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-10 00:00:00','Overtime(1)','活动(1)已经超时'),(383,'d79a93fa-e950-425f-b248-76be3620321d',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-10 00:00:00','Aborted(1)','活动(1)已经被放弃'),(384,'d79a93fa-e950-425f-b248-76be3620321d',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-10 00:00:00','Error(1)','活动(1)处于错误状态'),(385,'d79a93fa-e950-425f-b248-76be3620321d',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-10 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(386,'d79a93fa-e950-425f-b248-76be3620321d',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-10 00:00:00','Started(2)','活动(2)已经运行'),(387,'d79a93fa-e950-425f-b248-76be3620321d',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-10 00:00:00','EndOf(2)','活动(2)结束'),(388,'d79a93fa-e950-425f-b248-76be3620321d',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-10 00:00:00','Overtime(2)','活动(2)已经超时'),(389,'d79a93fa-e950-425f-b248-76be3620321d',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-10 00:00:00','Aborted(2)','活动(2)已经被放弃'),(390,'d79a93fa-e950-425f-b248-76be3620321d',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-10 00:00:00','Error(2)','活动(2)处于错误状态'),(391,'d79a93fa-e950-425f-b248-76be3620321d',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-10 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(392,'d79a93fa-e950-425f-b248-76be3620321d',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-10 00:00:00','Started(3)','活动(3)已经运行'),(393,'d79a93fa-e950-425f-b248-76be3620321d',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-10 00:00:00','EndOf(3)','活动(3)结束'),(394,'d79a93fa-e950-425f-b248-76be3620321d',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-10 00:00:00','Overtime(3)','活动(3)已经超时'),(395,'d79a93fa-e950-425f-b248-76be3620321d',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-10 00:00:00','Aborted(3)','活动(3)已经被放弃'),(396,'d79a93fa-e950-425f-b248-76be3620321d',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-10 00:00:00','Error(3)','活动(3)处于错误状态'),(397,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-10 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(398,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-10 00:00:00','Started(1)','活动(1)已经运行'),(399,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-10 00:00:00','EndOf(1)','活动(1)结束'),(400,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-10 00:00:00','Overtime(1)','活动(1)已经超时'),(401,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-10 00:00:00','Aborted(1)','活动(1)已经被放弃'),(402,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-10 00:00:00','Error(1)','活动(1)处于错误状态'),(403,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-10 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(404,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-10 00:00:00','Started(2)','活动(2)已经运行'),(405,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-10 00:00:00','EndOf(2)','活动(2)结束'),(406,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-10 00:00:00','Overtime(2)','活动(2)已经超时'),(407,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-10 00:00:00','Aborted(2)','活动(2)已经被放弃'),(408,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-10 00:00:00','Error(2)','活动(2)处于错误状态'),(409,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-10 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(410,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-10 00:00:00','Started(3)','活动(3)已经运行'),(411,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-10 00:00:00','EndOf(3)','活动(3)结束'),(412,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-10 00:00:00','Overtime(3)','活动(3)已经超时'),(413,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-10 00:00:00','Aborted(3)','活动(3)已经被放弃'),(414,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-10 00:00:00','Error(3)','活动(3)处于错误状态'),(415,'31317770-82a7-4569-a43b-ed451dc59a78',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-10 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(416,'31317770-82a7-4569-a43b-ed451dc59a78',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-10 00:00:00','Started(1)','活动(1)已经运行'),(417,'31317770-82a7-4569-a43b-ed451dc59a78',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-10 00:00:00','EndOf(1)','活动(1)结束'),(418,'31317770-82a7-4569-a43b-ed451dc59a78',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-10 00:00:00','Overtime(1)','活动(1)已经超时'),(419,'31317770-82a7-4569-a43b-ed451dc59a78',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-10 00:00:00','Aborted(1)','活动(1)已经被放弃'),(420,'31317770-82a7-4569-a43b-ed451dc59a78',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-10 00:00:00','Error(1)','活动(1)处于错误状态'),(421,'31317770-82a7-4569-a43b-ed451dc59a78',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-10 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(422,'31317770-82a7-4569-a43b-ed451dc59a78',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-10 00:00:00','Started(2)','活动(2)已经运行'),(423,'31317770-82a7-4569-a43b-ed451dc59a78',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-10 00:00:00','EndOf(2)','活动(2)结束'),(424,'31317770-82a7-4569-a43b-ed451dc59a78',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-10 00:00:00','Overtime(2)','活动(2)已经超时'),(425,'31317770-82a7-4569-a43b-ed451dc59a78',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-10 00:00:00','Aborted(2)','活动(2)已经被放弃'),(426,'31317770-82a7-4569-a43b-ed451dc59a78',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-10 00:00:00','Error(2)','活动(2)处于错误状态'),(427,'31317770-82a7-4569-a43b-ed451dc59a78',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-10 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(428,'31317770-82a7-4569-a43b-ed451dc59a78',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-10 00:00:00','Started(3)','活动(3)已经运行'),(429,'31317770-82a7-4569-a43b-ed451dc59a78',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-10 00:00:00','EndOf(3)','活动(3)结束'),(430,'31317770-82a7-4569-a43b-ed451dc59a78',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-10 00:00:00','Overtime(3)','活动(3)已经超时'),(431,'31317770-82a7-4569-a43b-ed451dc59a78',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-10 00:00:00','Aborted(3)','活动(3)已经被放弃'),(432,'31317770-82a7-4569-a43b-ed451dc59a78',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-10 00:00:00','Error(3)','活动(3)处于错误状态'),(433,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-10 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(434,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-10 00:00:00','Started(1)','活动(1)已经运行'),(435,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-10 00:00:00','EndOf(1)','活动(1)结束'),(436,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-10 00:00:00','Overtime(1)','活动(1)已经超时'),(437,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-10 00:00:00','Aborted(1)','活动(1)已经被放弃'),(438,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-10 00:00:00','Error(1)','活动(1)处于错误状态'),(439,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-10 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(440,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-10 00:00:00','Started(2)','活动(2)已经运行'),(441,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-10 00:00:00','EndOf(2)','活动(2)结束'),(442,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-10 00:00:00','Overtime(2)','活动(2)已经超时'),(443,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-10 00:00:00','Aborted(2)','活动(2)已经被放弃'),(444,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-10 00:00:00','Error(2)','活动(2)处于错误状态'),(445,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-10 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(446,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-10 00:00:00','Started(3)','活动(3)已经运行'),(447,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-10 00:00:00','EndOf(3)','活动(3)结束'),(448,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-10 00:00:00','Overtime(3)','活动(3)已经超时'),(449,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-10 00:00:00','Aborted(3)','活动(3)已经被放弃'),(450,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-10 00:00:00','Error(3)','活动(3)处于错误状态'),(451,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-10 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(452,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-10 00:00:00','Started(1)','活动(1)已经运行'),(453,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-10 00:00:00','EndOf(1)','活动(1)结束'),(454,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-10 00:00:00','Overtime(1)','活动(1)已经超时'),(455,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-10 00:00:00','Aborted(1)','活动(1)已经被放弃'),(456,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-10 00:00:00','Error(1)','活动(1)处于错误状态'),(457,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-10 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(458,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-10 00:00:00','Started(2)','活动(2)已经运行'),(459,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-10 00:00:00','EndOf(2)','活动(2)结束'),(460,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-10 00:00:00','Overtime(2)','活动(2)已经超时'),(461,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-10 00:00:00','Aborted(2)','活动(2)已经被放弃'),(462,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-10 00:00:00','Error(2)','活动(2)处于错误状态'),(463,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-10 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(464,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-10 00:00:00','Started(3)','活动(3)已经运行'),(465,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-10 00:00:00','EndOf(3)','活动(3)结束'),(466,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-10 00:00:00','Overtime(3)','活动(3)已经超时'),(467,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-10 00:00:00','Aborted(3)','活动(3)已经被放弃'),(468,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-10 00:00:00','Error(3)','活动(3)处于错误状态'),(469,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-10 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(470,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-10 00:00:00','Started(1)','活动(1)已经运行'),(471,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-10 00:00:00','EndOf(1)','活动(1)结束'),(472,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-10 00:00:00','Overtime(1)','活动(1)已经超时'),(473,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-10 00:00:00','Aborted(1)','活动(1)已经被放弃'),(474,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-10 00:00:00','Error(1)','活动(1)处于错误状态'),(475,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-10 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(476,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-10 00:00:00','Started(2)','活动(2)已经运行'),(477,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-10 00:00:00','EndOf(2)','活动(2)结束'),(478,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-10 00:00:00','Overtime(2)','活动(2)已经超时'),(479,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-10 00:00:00','Aborted(2)','活动(2)已经被放弃'),(480,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-10 00:00:00','Error(2)','活动(2)处于错误状态'),(481,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-10 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(482,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-10 00:00:00','Started(3)','活动(3)已经运行'),(483,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-10 00:00:00','EndOf(3)','活动(3)结束'),(484,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-10 00:00:00','Overtime(3)','活动(3)已经超时'),(485,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-10 00:00:00','Aborted(3)','活动(3)已经被放弃'),(486,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-10 00:00:00','Error(3)','活动(3)处于错误状态'),(487,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-10 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(488,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-10 00:00:00','Started(1)','活动(1)已经运行'),(489,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-10 00:00:00','EndOf(1)','活动(1)结束'),(490,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-10 00:00:00','Overtime(1)','活动(1)已经超时'),(491,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-10 00:00:00','Aborted(1)','活动(1)已经被放弃'),(492,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-10 00:00:00','Error(1)','活动(1)处于错误状态'),(493,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-10 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(494,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-10 00:00:00','Started(2)','活动(2)已经运行'),(495,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-10 00:00:00','EndOf(2)','活动(2)结束'),(496,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-10 00:00:00','Overtime(2)','活动(2)已经超时'),(497,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-10 00:00:00','Aborted(2)','活动(2)已经被放弃'),(498,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-10 00:00:00','Error(2)','活动(2)处于错误状态'),(499,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-10 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(500,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-10 00:00:00','Started(3)','活动(3)已经运行'),(501,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-10 00:00:00','EndOf(3)','活动(3)结束'),(502,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-10 00:00:00','Overtime(3)','活动(3)已经超时'),(503,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-10 00:00:00','Aborted(3)','活动(3)已经被放弃'),(504,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-10 00:00:00','Error(3)','活动(3)处于错误状态'),(505,'96437382-2854-4644-9dff-b22c82418c19',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-10 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(506,'96437382-2854-4644-9dff-b22c82418c19',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-10 00:00:00','Started(1)','活动(1)已经运行'),(507,'96437382-2854-4644-9dff-b22c82418c19',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-10 00:00:00','EndOf(1)','活动(1)结束'),(508,'96437382-2854-4644-9dff-b22c82418c19',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-10 00:00:00','Overtime(1)','活动(1)已经超时'),(509,'96437382-2854-4644-9dff-b22c82418c19',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-10 00:00:00','Aborted(1)','活动(1)已经被放弃'),(510,'96437382-2854-4644-9dff-b22c82418c19',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-10 00:00:00','Error(1)','活动(1)处于错误状态'),(511,'96437382-2854-4644-9dff-b22c82418c19',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-10 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(512,'96437382-2854-4644-9dff-b22c82418c19',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-10 00:00:00','Started(2)','活动(2)已经运行'),(513,'96437382-2854-4644-9dff-b22c82418c19',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-10 00:00:00','EndOf(2)','活动(2)结束'),(514,'96437382-2854-4644-9dff-b22c82418c19',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-10 00:00:00','Overtime(2)','活动(2)已经超时'),(515,'96437382-2854-4644-9dff-b22c82418c19',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-10 00:00:00','Aborted(2)','活动(2)已经被放弃'),(516,'96437382-2854-4644-9dff-b22c82418c19',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-10 00:00:00','Error(2)','活动(2)处于错误状态'),(517,'96437382-2854-4644-9dff-b22c82418c19',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-10 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(518,'96437382-2854-4644-9dff-b22c82418c19',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-10 00:00:00','Started(3)','活动(3)已经运行'),(519,'96437382-2854-4644-9dff-b22c82418c19',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-10 00:00:00','EndOf(3)','活动(3)结束'),(520,'96437382-2854-4644-9dff-b22c82418c19',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-10 00:00:00','Overtime(3)','活动(3)已经超时'),(521,'96437382-2854-4644-9dff-b22c82418c19',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-10 00:00:00','Aborted(3)','活动(3)已经被放弃'),(522,'96437382-2854-4644-9dff-b22c82418c19',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-10 00:00:00','Error(3)','活动(3)处于错误状态'),(523,'225831db-dc7d-44e6-9aab-2ea190c52178',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-10 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(524,'225831db-dc7d-44e6-9aab-2ea190c52178',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-10 00:00:00','Started(1)','活动(1)已经运行'),(525,'225831db-dc7d-44e6-9aab-2ea190c52178',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-10 00:00:00','EndOf(1)','活动(1)结束'),(526,'225831db-dc7d-44e6-9aab-2ea190c52178',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-10 00:00:00','Overtime(1)','活动(1)已经超时'),(527,'225831db-dc7d-44e6-9aab-2ea190c52178',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-10 00:00:00','Aborted(1)','活动(1)已经被放弃'),(528,'225831db-dc7d-44e6-9aab-2ea190c52178',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-10 00:00:00','Error(1)','活动(1)处于错误状态'),(529,'225831db-dc7d-44e6-9aab-2ea190c52178',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-10 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(530,'225831db-dc7d-44e6-9aab-2ea190c52178',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-10 00:00:00','Started(2)','活动(2)已经运行'),(531,'225831db-dc7d-44e6-9aab-2ea190c52178',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-10 00:00:00','EndOf(2)','活动(2)结束'),(532,'225831db-dc7d-44e6-9aab-2ea190c52178',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-10 00:00:00','Overtime(2)','活动(2)已经超时'),(533,'225831db-dc7d-44e6-9aab-2ea190c52178',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-10 00:00:00','Aborted(2)','活动(2)已经被放弃'),(534,'225831db-dc7d-44e6-9aab-2ea190c52178',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-10 00:00:00','Error(2)','活动(2)处于错误状态'),(535,'225831db-dc7d-44e6-9aab-2ea190c52178',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-10 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(536,'225831db-dc7d-44e6-9aab-2ea190c52178',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-10 00:00:00','Started(3)','活动(3)已经运行'),(537,'225831db-dc7d-44e6-9aab-2ea190c52178',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-10 00:00:00','EndOf(3)','活动(3)结束'),(538,'225831db-dc7d-44e6-9aab-2ea190c52178',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-10 00:00:00','Overtime(3)','活动(3)已经超时'),(539,'225831db-dc7d-44e6-9aab-2ea190c52178',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-10 00:00:00','Aborted(3)','活动(3)已经被放弃'),(540,'225831db-dc7d-44e6-9aab-2ea190c52178',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-10 00:00:00','Error(3)','活动(3)处于错误状态'),(541,'b0317b97-a008-4020-afe3-717d0ebeff1c',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-10 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(542,'b0317b97-a008-4020-afe3-717d0ebeff1c',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-10 00:00:00','Started(1)','活动(1)已经运行'),(543,'b0317b97-a008-4020-afe3-717d0ebeff1c',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-10 00:00:00','EndOf(1)','活动(1)结束'),(544,'b0317b97-a008-4020-afe3-717d0ebeff1c',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-10 00:00:00','Overtime(1)','活动(1)已经超时'),(545,'b0317b97-a008-4020-afe3-717d0ebeff1c',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-10 00:00:00','Aborted(1)','活动(1)已经被放弃'),(546,'b0317b97-a008-4020-afe3-717d0ebeff1c',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-10 00:00:00','Error(1)','活动(1)处于错误状态'),(547,'b0317b97-a008-4020-afe3-717d0ebeff1c',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-10 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(548,'b0317b97-a008-4020-afe3-717d0ebeff1c',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-10 00:00:00','Started(2)','活动(2)已经运行'),(549,'b0317b97-a008-4020-afe3-717d0ebeff1c',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-10 00:00:00','EndOf(2)','活动(2)结束'),(550,'b0317b97-a008-4020-afe3-717d0ebeff1c',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-10 00:00:00','Overtime(2)','活动(2)已经超时'),(551,'b0317b97-a008-4020-afe3-717d0ebeff1c',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-10 00:00:00','Aborted(2)','活动(2)已经被放弃'),(552,'b0317b97-a008-4020-afe3-717d0ebeff1c',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-10 00:00:00','Error(2)','活动(2)处于错误状态'),(553,'b0317b97-a008-4020-afe3-717d0ebeff1c',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-10 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(554,'b0317b97-a008-4020-afe3-717d0ebeff1c',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-10 00:00:00','Started(3)','活动(3)已经运行'),(555,'b0317b97-a008-4020-afe3-717d0ebeff1c',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-10 00:00:00','EndOf(3)','活动(3)结束'),(556,'b0317b97-a008-4020-afe3-717d0ebeff1c',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-10 00:00:00','Overtime(3)','活动(3)已经超时'),(557,'b0317b97-a008-4020-afe3-717d0ebeff1c',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-10 00:00:00','Aborted(3)','活动(3)已经被放弃'),(558,'b0317b97-a008-4020-afe3-717d0ebeff1c',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-10 00:00:00','Error(3)','活动(3)处于错误状态'),(559,'a4af6209-e279-46d0-a929-248f392681aa',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-10 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(560,'a4af6209-e279-46d0-a929-248f392681aa',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-10 00:00:00','Started(1)','活动(1)已经运行'),(561,'a4af6209-e279-46d0-a929-248f392681aa',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-10 00:00:00','EndOf(1)','活动(1)结束'),(562,'a4af6209-e279-46d0-a929-248f392681aa',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-10 00:00:00','Overtime(1)','活动(1)已经超时'),(563,'a4af6209-e279-46d0-a929-248f392681aa',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-10 00:00:00','Aborted(1)','活动(1)已经被放弃'),(564,'a4af6209-e279-46d0-a929-248f392681aa',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-10 00:00:00','Error(1)','活动(1)处于错误状态'),(565,'a4af6209-e279-46d0-a929-248f392681aa',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-10 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(566,'a4af6209-e279-46d0-a929-248f392681aa',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-10 00:00:00','Started(2)','活动(2)已经运行'),(567,'a4af6209-e279-46d0-a929-248f392681aa',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-10 00:00:00','EndOf(2)','活动(2)结束'),(568,'a4af6209-e279-46d0-a929-248f392681aa',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-10 00:00:00','Overtime(2)','活动(2)已经超时'),(569,'a4af6209-e279-46d0-a929-248f392681aa',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-10 00:00:00','Aborted(2)','活动(2)已经被放弃'),(570,'a4af6209-e279-46d0-a929-248f392681aa',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-10 00:00:00','Error(2)','活动(2)处于错误状态'),(571,'a4af6209-e279-46d0-a929-248f392681aa',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-10 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(572,'a4af6209-e279-46d0-a929-248f392681aa',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-10 00:00:00','Started(3)','活动(3)已经运行'),(573,'a4af6209-e279-46d0-a929-248f392681aa',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-10 00:00:00','EndOf(3)','活动(3)结束'),(574,'a4af6209-e279-46d0-a929-248f392681aa',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-10 00:00:00','Overtime(3)','活动(3)已经超时'),(575,'a4af6209-e279-46d0-a929-248f392681aa',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-10 00:00:00','Aborted(3)','活动(3)已经被放弃'),(576,'a4af6209-e279-46d0-a929-248f392681aa',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-10 00:00:00','Error(3)','活动(3)处于错误状态'),(577,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-10 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(578,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-10 00:00:00','Started(1)','活动(1)已经运行'),(579,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-10 00:00:00','EndOf(1)','活动(1)结束'),(580,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-10 00:00:00','Overtime(1)','活动(1)已经超时'),(581,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-10 00:00:00','Aborted(1)','活动(1)已经被放弃'),(582,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-10 00:00:00','Error(1)','活动(1)处于错误状态'),(583,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-10 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(584,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-10 00:00:00','Started(2)','活动(2)已经运行'),(585,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-10 00:00:00','EndOf(2)','活动(2)结束'),(586,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-10 00:00:00','Overtime(2)','活动(2)已经超时'),(587,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-10 00:00:00','Aborted(2)','活动(2)已经被放弃'),(588,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-10 00:00:00','Error(2)','活动(2)处于错误状态'),(589,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-10 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(590,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-10 00:00:00','Started(3)','活动(3)已经运行'),(591,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-10 00:00:00','EndOf(3)','活动(3)结束'),(592,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-10 00:00:00','Overtime(3)','活动(3)已经超时'),(593,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-10 00:00:00','Aborted(3)','活动(3)已经被放弃'),(594,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-10 00:00:00','Error(3)','活动(3)处于错误状态'),(595,'75711432-d389-4300-bcff-e2654d2f2b70',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-11 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(596,'75711432-d389-4300-bcff-e2654d2f2b70',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-11 00:00:00','Started(1)','活动(1)已经运行'),(597,'75711432-d389-4300-bcff-e2654d2f2b70',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-11 00:00:00','EndOf(1)','活动(1)结束'),(598,'75711432-d389-4300-bcff-e2654d2f2b70',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-11 00:00:00','Overtime(1)','活动(1)已经超时'),(599,'75711432-d389-4300-bcff-e2654d2f2b70',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-11 00:00:00','Aborted(1)','活动(1)已经被放弃'),(600,'75711432-d389-4300-bcff-e2654d2f2b70',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-11 00:00:00','Error(1)','活动(1)处于错误状态'),(601,'75711432-d389-4300-bcff-e2654d2f2b70',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-11 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(602,'75711432-d389-4300-bcff-e2654d2f2b70',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-11 00:00:00','Started(2)','活动(2)已经运行'),(603,'75711432-d389-4300-bcff-e2654d2f2b70',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-11 00:00:00','EndOf(2)','活动(2)结束'),(604,'75711432-d389-4300-bcff-e2654d2f2b70',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-11 00:00:00','Overtime(2)','活动(2)已经超时'),(605,'75711432-d389-4300-bcff-e2654d2f2b70',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-11 00:00:00','Aborted(2)','活动(2)已经被放弃'),(606,'75711432-d389-4300-bcff-e2654d2f2b70',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-11 00:00:00','Error(2)','活动(2)处于错误状态'),(607,'75711432-d389-4300-bcff-e2654d2f2b70',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-11 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(608,'75711432-d389-4300-bcff-e2654d2f2b70',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-11 00:00:00','Started(3)','活动(3)已经运行'),(609,'75711432-d389-4300-bcff-e2654d2f2b70',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-11 00:00:00','EndOf(3)','活动(3)结束'),(610,'75711432-d389-4300-bcff-e2654d2f2b70',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-11 00:00:00','Overtime(3)','活动(3)已经超时'),(611,'75711432-d389-4300-bcff-e2654d2f2b70',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-11 00:00:00','Aborted(3)','活动(3)已经被放弃'),(612,'75711432-d389-4300-bcff-e2654d2f2b70',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-11 00:00:00','Error(3)','活动(3)处于错误状态'),(613,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-11 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(614,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-11 00:00:00','Started(1)','活动(1)已经运行'),(615,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-11 00:00:00','EndOf(1)','活动(1)结束'),(616,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-11 00:00:00','Overtime(1)','活动(1)已经超时'),(617,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-11 00:00:00','Aborted(1)','活动(1)已经被放弃'),(618,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-11 00:00:00','Error(1)','活动(1)处于错误状态'),(619,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-11 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(620,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-11 00:00:00','Started(2)','活动(2)已经运行'),(621,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-11 00:00:00','EndOf(2)','活动(2)结束'),(622,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-11 00:00:00','Overtime(2)','活动(2)已经超时'),(623,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-11 00:00:00','Aborted(2)','活动(2)已经被放弃'),(624,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-11 00:00:00','Error(2)','活动(2)处于错误状态'),(625,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-11 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(626,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-11 00:00:00','Started(3)','活动(3)已经运行'),(627,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-11 00:00:00','EndOf(3)','活动(3)结束'),(628,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-11 00:00:00','Overtime(3)','活动(3)已经超时'),(629,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-11 00:00:00','Aborted(3)','活动(3)已经被放弃'),(630,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-11 00:00:00','Error(3)','活动(3)处于错误状态'),(631,'29d06f8f-f970-4eba-8c01-88d124cd516b',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-11 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(632,'29d06f8f-f970-4eba-8c01-88d124cd516b',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-11 00:00:00','Started(1)','活动(1)已经运行'),(633,'29d06f8f-f970-4eba-8c01-88d124cd516b',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-11 00:00:00','EndOf(1)','活动(1)结束'),(634,'29d06f8f-f970-4eba-8c01-88d124cd516b',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-11 00:00:00','Overtime(1)','活动(1)已经超时'),(635,'29d06f8f-f970-4eba-8c01-88d124cd516b',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-11 00:00:00','Aborted(1)','活动(1)已经被放弃'),(636,'29d06f8f-f970-4eba-8c01-88d124cd516b',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-11 00:00:00','Error(1)','活动(1)处于错误状态'),(637,'29d06f8f-f970-4eba-8c01-88d124cd516b',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-11 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(638,'29d06f8f-f970-4eba-8c01-88d124cd516b',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-11 00:00:00','Started(2)','活动(2)已经运行'),(639,'29d06f8f-f970-4eba-8c01-88d124cd516b',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-11 00:00:00','EndOf(2)','活动(2)结束'),(640,'29d06f8f-f970-4eba-8c01-88d124cd516b',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-11 00:00:00','Overtime(2)','活动(2)已经超时'),(641,'29d06f8f-f970-4eba-8c01-88d124cd516b',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-11 00:00:00','Aborted(2)','活动(2)已经被放弃'),(642,'29d06f8f-f970-4eba-8c01-88d124cd516b',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-11 00:00:00','Error(2)','活动(2)处于错误状态'),(643,'29d06f8f-f970-4eba-8c01-88d124cd516b',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-11 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(644,'29d06f8f-f970-4eba-8c01-88d124cd516b',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-11 00:00:00','Started(3)','活动(3)已经运行'),(645,'29d06f8f-f970-4eba-8c01-88d124cd516b',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-11 00:00:00','EndOf(3)','活动(3)结束'),(646,'29d06f8f-f970-4eba-8c01-88d124cd516b',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-11 00:00:00','Overtime(3)','活动(3)已经超时'),(647,'29d06f8f-f970-4eba-8c01-88d124cd516b',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-11 00:00:00','Aborted(3)','活动(3)已经被放弃'),(648,'29d06f8f-f970-4eba-8c01-88d124cd516b',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-11 00:00:00','Error(3)','活动(3)处于错误状态'),(649,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-11 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(650,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-11 00:00:00','Started(1)','活动(1)已经运行'),(651,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-11 00:00:00','EndOf(1)','活动(1)结束'),(652,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-11 00:00:00','Overtime(1)','活动(1)已经超时'),(653,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-11 00:00:00','Aborted(1)','活动(1)已经被放弃'),(654,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-11 00:00:00','Error(1)','活动(1)处于错误状态'),(655,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-11 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(656,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-11 00:00:00','Started(2)','活动(2)已经运行'),(657,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-11 00:00:00','EndOf(2)','活动(2)结束'),(658,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-11 00:00:00','Overtime(2)','活动(2)已经超时'),(659,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-11 00:00:00','Aborted(2)','活动(2)已经被放弃'),(660,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-11 00:00:00','Error(2)','活动(2)处于错误状态'),(661,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-11 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(662,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-11 00:00:00','Started(3)','活动(3)已经运行'),(663,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-11 00:00:00','EndOf(3)','活动(3)结束'),(664,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-11 00:00:00','Overtime(3)','活动(3)已经超时'),(665,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-11 00:00:00','Aborted(3)','活动(3)已经被放弃'),(666,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-11 00:00:00','Error(3)','活动(3)处于错误状态'),(667,'e0b6eca7-07be-46a5-8289-b1e6320de459',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-11 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(668,'e0b6eca7-07be-46a5-8289-b1e6320de459',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-11 00:00:00','Started(1)','活动(1)已经运行'),(669,'e0b6eca7-07be-46a5-8289-b1e6320de459',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-11 00:00:00','EndOf(1)','活动(1)结束'),(670,'e0b6eca7-07be-46a5-8289-b1e6320de459',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-11 00:00:00','Overtime(1)','活动(1)已经超时'),(671,'e0b6eca7-07be-46a5-8289-b1e6320de459',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-11 00:00:00','Aborted(1)','活动(1)已经被放弃'),(672,'e0b6eca7-07be-46a5-8289-b1e6320de459',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-11 00:00:00','Error(1)','活动(1)处于错误状态'),(673,'e0b6eca7-07be-46a5-8289-b1e6320de459',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-11 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(674,'e0b6eca7-07be-46a5-8289-b1e6320de459',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-11 00:00:00','Started(2)','活动(2)已经运行'),(675,'e0b6eca7-07be-46a5-8289-b1e6320de459',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-11 00:00:00','EndOf(2)','活动(2)结束'),(676,'e0b6eca7-07be-46a5-8289-b1e6320de459',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-11 00:00:00','Overtime(2)','活动(2)已经超时'),(677,'e0b6eca7-07be-46a5-8289-b1e6320de459',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-11 00:00:00','Aborted(2)','活动(2)已经被放弃'),(678,'e0b6eca7-07be-46a5-8289-b1e6320de459',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-11 00:00:00','Error(2)','活动(2)处于错误状态'),(679,'e0b6eca7-07be-46a5-8289-b1e6320de459',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-11 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(680,'e0b6eca7-07be-46a5-8289-b1e6320de459',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-11 00:00:00','Started(3)','活动(3)已经运行'),(681,'e0b6eca7-07be-46a5-8289-b1e6320de459',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-11 00:00:00','EndOf(3)','活动(3)结束'),(682,'e0b6eca7-07be-46a5-8289-b1e6320de459',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-11 00:00:00','Overtime(3)','活动(3)已经超时'),(683,'e0b6eca7-07be-46a5-8289-b1e6320de459',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-11 00:00:00','Aborted(3)','活动(3)已经被放弃'),(684,'e0b6eca7-07be-46a5-8289-b1e6320de459',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-11 00:00:00','Error(3)','活动(3)处于错误状态'),(685,'69752a39-3c37-4a31-9e41-7003ac23dfe7',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-11 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(686,'69752a39-3c37-4a31-9e41-7003ac23dfe7',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-11 00:00:00','Started(1)','活动(1)已经运行'),(687,'69752a39-3c37-4a31-9e41-7003ac23dfe7',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-11 00:00:00','EndOf(1)','活动(1)结束'),(688,'69752a39-3c37-4a31-9e41-7003ac23dfe7',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-11 00:00:00','Overtime(1)','活动(1)已经超时'),(689,'69752a39-3c37-4a31-9e41-7003ac23dfe7',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-11 00:00:00','Aborted(1)','活动(1)已经被放弃'),(690,'69752a39-3c37-4a31-9e41-7003ac23dfe7',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-11 00:00:00','Error(1)','活动(1)处于错误状态'),(691,'69752a39-3c37-4a31-9e41-7003ac23dfe7',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-11 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(692,'69752a39-3c37-4a31-9e41-7003ac23dfe7',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-11 00:00:00','Started(2)','活动(2)已经运行'),(693,'69752a39-3c37-4a31-9e41-7003ac23dfe7',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-11 00:00:00','EndOf(2)','活动(2)结束'),(694,'69752a39-3c37-4a31-9e41-7003ac23dfe7',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-11 00:00:00','Overtime(2)','活动(2)已经超时'),(695,'69752a39-3c37-4a31-9e41-7003ac23dfe7',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-11 00:00:00','Aborted(2)','活动(2)已经被放弃'),(696,'69752a39-3c37-4a31-9e41-7003ac23dfe7',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-11 00:00:00','Error(2)','活动(2)处于错误状态'),(697,'69752a39-3c37-4a31-9e41-7003ac23dfe7',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-11 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(698,'69752a39-3c37-4a31-9e41-7003ac23dfe7',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-11 00:00:00','Started(3)','活动(3)已经运行'),(699,'69752a39-3c37-4a31-9e41-7003ac23dfe7',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-11 00:00:00','EndOf(3)','活动(3)结束'),(700,'69752a39-3c37-4a31-9e41-7003ac23dfe7',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-11 00:00:00','Overtime(3)','活动(3)已经超时'),(701,'69752a39-3c37-4a31-9e41-7003ac23dfe7',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-11 00:00:00','Aborted(3)','活动(3)已经被放弃'),(702,'69752a39-3c37-4a31-9e41-7003ac23dfe7',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-11 00:00:00','Error(3)','活动(3)处于错误状态'),(703,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-11 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(704,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-11 00:00:00','Started(1)','活动(1)已经运行'),(705,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-11 00:00:00','EndOf(1)','活动(1)结束'),(706,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-11 00:00:00','Overtime(1)','活动(1)已经超时'),(707,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-11 00:00:00','Aborted(1)','活动(1)已经被放弃'),(708,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-11 00:00:00','Error(1)','活动(1)处于错误状态'),(709,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-11 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(710,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-11 00:00:00','Started(2)','活动(2)已经运行'),(711,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-11 00:00:00','EndOf(2)','活动(2)结束'),(712,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-11 00:00:00','Overtime(2)','活动(2)已经超时'),(713,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-11 00:00:00','Aborted(2)','活动(2)已经被放弃'),(714,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-11 00:00:00','Error(2)','活动(2)处于错误状态'),(715,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-11 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(716,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-11 00:00:00','Started(3)','活动(3)已经运行'),(717,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-11 00:00:00','EndOf(3)','活动(3)结束'),(718,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-11 00:00:00','Overtime(3)','活动(3)已经超时'),(719,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-11 00:00:00','Aborted(3)','活动(3)已经被放弃'),(720,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-11 00:00:00','Error(3)','活动(3)处于错误状态'),(721,'79cf2f51-1138-4c27-8327-1797803d3232',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-11 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(722,'79cf2f51-1138-4c27-8327-1797803d3232',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-11 00:00:00','Started(1)','活动(1)已经运行'),(723,'79cf2f51-1138-4c27-8327-1797803d3232',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-11 00:00:00','EndOf(1)','活动(1)结束'),(724,'79cf2f51-1138-4c27-8327-1797803d3232',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-11 00:00:00','Overtime(1)','活动(1)已经超时'),(725,'79cf2f51-1138-4c27-8327-1797803d3232',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-11 00:00:00','Aborted(1)','活动(1)已经被放弃'),(726,'79cf2f51-1138-4c27-8327-1797803d3232',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-11 00:00:00','Error(1)','活动(1)处于错误状态'),(727,'79cf2f51-1138-4c27-8327-1797803d3232',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-11 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(728,'79cf2f51-1138-4c27-8327-1797803d3232',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-11 00:00:00','Started(2)','活动(2)已经运行'),(729,'79cf2f51-1138-4c27-8327-1797803d3232',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-11 00:00:00','EndOf(2)','活动(2)结束'),(730,'79cf2f51-1138-4c27-8327-1797803d3232',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-11 00:00:00','Overtime(2)','活动(2)已经超时'),(731,'79cf2f51-1138-4c27-8327-1797803d3232',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-11 00:00:00','Aborted(2)','活动(2)已经被放弃'),(732,'79cf2f51-1138-4c27-8327-1797803d3232',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-11 00:00:00','Error(2)','活动(2)处于错误状态'),(733,'79cf2f51-1138-4c27-8327-1797803d3232',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-11 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(734,'79cf2f51-1138-4c27-8327-1797803d3232',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-11 00:00:00','Started(3)','活动(3)已经运行'),(735,'79cf2f51-1138-4c27-8327-1797803d3232',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-11 00:00:00','EndOf(3)','活动(3)结束'),(736,'79cf2f51-1138-4c27-8327-1797803d3232',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-11 00:00:00','Overtime(3)','活动(3)已经超时'),(737,'79cf2f51-1138-4c27-8327-1797803d3232',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-11 00:00:00','Aborted(3)','活动(3)已经被放弃'),(738,'79cf2f51-1138-4c27-8327-1797803d3232',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-11 00:00:00','Error(3)','活动(3)处于错误状态'),(739,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',1,'Initialized(1)','Initialized(1)',1,0,1,0,'2017-04-11 00:00:00','Initialized(1)','活动(1)成功进行初始化'),(740,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',2,'Started(1)','Started(1)',1,0,1,0,'2017-04-11 00:00:00','Started(1)','活动(1)已经运行'),(741,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',3,'EndOf(1)','EndOf(1)',1,0,1,1,'2017-04-11 00:00:00','EndOf(1)','活动(1)结束'),(742,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',4,'Overtime(1)','Overtime(1)',1,0,1,0,'2017-04-11 00:00:00','Overtime(1)','活动(1)已经超时'),(743,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',5,'Aborted(1)','Aborted(1)',1,0,1,0,'2017-04-11 00:00:00','Aborted(1)','活动(1)已经被放弃'),(744,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',6,'Error(1)','Error(1)',1,0,1,0,'2017-04-11 00:00:00','Error(1)','活动(1)处于错误状态'),(745,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',7,'Initialized(2)','Initialized(2)',1,0,2,1,'2017-04-11 00:00:00','Initialized(2)','活动(2)成功进行初始化'),(746,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',8,'Started(2)','Started(2)',1,0,2,0,'2017-04-11 00:00:00','Started(2)','活动(2)已经运行'),(747,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',9,'EndOf(2)','EndOf(2)',1,0,2,1,'2017-04-11 00:00:00','EndOf(2)','活动(2)结束'),(748,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',10,'Overtime(2)','Overtime(2)',1,0,2,0,'2017-04-11 00:00:00','Overtime(2)','活动(2)已经超时'),(749,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',11,'Aborted(2)','Aborted(2)',1,0,2,0,'2017-04-11 00:00:00','Aborted(2)','活动(2)已经被放弃'),(750,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',12,'Error(2)','Error(2)',1,0,2,0,'2017-04-11 00:00:00','Error(2)','活动(2)处于错误状态'),(751,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',13,'Initialized(3)','Initialized(3)',1,0,3,1,'2017-04-11 00:00:00','Initialized(3)','活动(3)成功进行初始化'),(752,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',14,'Started(3)','Started(3)',1,0,3,1,'2017-04-11 00:00:00','Started(3)','活动(3)已经运行'),(753,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',15,'EndOf(3)','EndOf(3)',1,0,3,1,'2017-04-11 00:00:00','EndOf(3)','活动(3)结束'),(754,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',16,'Overtime(3)','Overtime(3)',1,0,3,0,'2017-04-11 00:00:00','Overtime(3)','活动(3)已经超时'),(755,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',17,'Aborted(3)','Aborted(3)',1,0,3,0,'2017-04-11 00:00:00','Aborted(3)','活动(3)已经被放弃'),(756,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',18,'Error(3)','Error(3)',1,0,3,0,'2017-04-11 00:00:00','Error(3)','活动(3)处于错误状态');
/*!40000 ALTER TABLE `processevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processflow`
--

DROP TABLE IF EXISTS `processflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ModelType` smallint(6) NOT NULL DEFAULT '0',
  `ProcessID` varchar(50) NOT NULL DEFAULT '0',
  `FlowID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) DEFAULT NULL,
  `Type` smallint(6) NOT NULL DEFAULT '0',
  `FromObjectType` smallint(6) NOT NULL DEFAULT '0',
  `ObjectId1` int(11) NOT NULL DEFAULT '0',
  `ToObjectType` smallint(6) NOT NULL DEFAULT '0',
  `ObjectID2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processflow`
--

LOCK TABLES `processflow` WRITE;
/*!40000 ALTER TABLE `processflow` DISABLE KEYS */;
INSERT INTO `processflow` VALUES (8,1,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',7,-1,2,1,3,1,2),(9,1,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',6,-1,2,1,1,1,3),(10,1,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',1,-1,2,1,0,1,3),(11,1,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',5,-1,1,2,2,1,2),(12,1,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',4,-1,1,1,3,2,2),(13,1,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',3,-1,1,2,1,1,3),(14,1,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',2,-1,1,1,1,2,1),(15,1,'be17b7e5-c31b-4fed-8d42-411ed0e83372',7,-1,2,1,3,1,2),(16,1,'be17b7e5-c31b-4fed-8d42-411ed0e83372',6,-1,2,1,1,1,3),(17,1,'be17b7e5-c31b-4fed-8d42-411ed0e83372',1,-1,2,1,0,1,3),(18,1,'be17b7e5-c31b-4fed-8d42-411ed0e83372',5,-1,1,2,2,1,2),(19,1,'be17b7e5-c31b-4fed-8d42-411ed0e83372',4,-1,1,1,3,2,2),(20,1,'be17b7e5-c31b-4fed-8d42-411ed0e83372',3,-1,1,2,1,1,3),(21,1,'be17b7e5-c31b-4fed-8d42-411ed0e83372',2,-1,1,1,1,2,1),(22,1,'6364d775-2540-44d1-be59-676f0c8dc910',7,-1,2,1,3,1,2),(23,1,'6364d775-2540-44d1-be59-676f0c8dc910',6,-1,2,1,1,1,3),(24,1,'6364d775-2540-44d1-be59-676f0c8dc910',1,-1,2,1,0,1,3),(25,1,'6364d775-2540-44d1-be59-676f0c8dc910',5,-1,1,2,2,1,2),(26,1,'6364d775-2540-44d1-be59-676f0c8dc910',4,-1,1,1,3,2,2),(27,1,'6364d775-2540-44d1-be59-676f0c8dc910',3,-1,1,2,1,1,3),(28,1,'6364d775-2540-44d1-be59-676f0c8dc910',2,-1,1,1,1,2,1),(29,1,'886d507d-b90a-4ace-a253-2687294040c9',7,-1,2,1,3,1,2),(30,1,'886d507d-b90a-4ace-a253-2687294040c9',6,-1,2,1,1,1,3),(31,1,'886d507d-b90a-4ace-a253-2687294040c9',1,-1,2,1,0,1,3),(32,1,'886d507d-b90a-4ace-a253-2687294040c9',5,-1,1,2,2,1,2),(33,1,'886d507d-b90a-4ace-a253-2687294040c9',4,-1,1,1,3,2,2),(34,1,'886d507d-b90a-4ace-a253-2687294040c9',3,-1,1,2,1,1,3),(35,1,'886d507d-b90a-4ace-a253-2687294040c9',2,-1,1,1,1,2,1),(36,1,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',7,-1,2,1,3,1,2),(37,1,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',6,-1,2,1,1,1,3),(38,1,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',1,-1,2,1,0,1,3),(39,1,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',5,-1,1,2,2,1,2),(40,1,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',4,-1,1,1,3,2,2),(41,1,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',3,-1,1,2,1,1,3),(42,1,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',2,-1,1,1,1,2,1),(43,1,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',7,-1,2,1,3,1,2),(44,1,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',6,-1,2,1,1,1,3),(45,1,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',1,-1,2,1,0,1,3),(46,1,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',5,-1,1,2,2,1,2),(47,1,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',4,-1,1,1,3,2,2),(48,1,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',3,-1,1,2,1,1,3),(49,1,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',2,-1,1,1,1,2,1),(50,1,'8994091c-3399-4771-9db8-2ab0457e6b21',7,-1,2,1,3,1,2),(51,1,'8994091c-3399-4771-9db8-2ab0457e6b21',6,-1,2,1,1,1,3),(52,1,'8994091c-3399-4771-9db8-2ab0457e6b21',1,-1,2,1,0,1,3),(53,1,'8994091c-3399-4771-9db8-2ab0457e6b21',5,-1,1,2,2,1,2),(54,1,'8994091c-3399-4771-9db8-2ab0457e6b21',4,-1,1,1,3,2,2),(55,1,'8994091c-3399-4771-9db8-2ab0457e6b21',3,-1,1,2,1,1,3),(56,1,'8994091c-3399-4771-9db8-2ab0457e6b21',2,-1,1,1,1,2,1),(57,1,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',7,-1,2,1,3,1,2),(58,1,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',6,-1,2,1,1,1,3),(59,1,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',1,-1,2,1,0,1,3),(60,1,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',5,-1,1,2,2,1,2),(61,1,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',4,-1,1,1,3,2,2),(62,1,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',3,-1,1,2,1,1,3),(63,1,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',2,-1,1,1,1,2,1),(64,1,'01686096-0080-4b0b-8b8c-2c770ecc0efb',7,-1,2,1,3,1,2),(65,1,'01686096-0080-4b0b-8b8c-2c770ecc0efb',6,-1,2,1,1,1,3),(66,1,'01686096-0080-4b0b-8b8c-2c770ecc0efb',1,-1,2,1,0,1,3),(67,1,'01686096-0080-4b0b-8b8c-2c770ecc0efb',5,-1,1,2,2,1,2),(68,1,'01686096-0080-4b0b-8b8c-2c770ecc0efb',4,-1,1,1,3,2,2),(69,1,'01686096-0080-4b0b-8b8c-2c770ecc0efb',3,-1,1,2,1,1,3),(70,1,'01686096-0080-4b0b-8b8c-2c770ecc0efb',2,-1,1,1,1,2,1),(71,1,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',7,-1,2,1,3,1,2),(72,1,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',6,-1,2,1,1,1,3),(73,1,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',1,-1,2,1,0,1,3),(74,1,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',5,-1,1,2,2,1,2),(75,1,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',4,-1,1,1,3,2,2),(76,1,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',3,-1,1,2,1,1,3),(77,1,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',2,-1,1,1,1,2,1),(78,1,'b6a5537f-5d66-42b3-ac99-b994758624f2',7,-1,2,1,3,1,2),(79,1,'b6a5537f-5d66-42b3-ac99-b994758624f2',6,-1,2,1,1,1,3),(80,1,'b6a5537f-5d66-42b3-ac99-b994758624f2',1,-1,2,1,0,1,3),(81,1,'b6a5537f-5d66-42b3-ac99-b994758624f2',5,-1,1,2,2,1,2),(82,1,'b6a5537f-5d66-42b3-ac99-b994758624f2',4,-1,1,1,3,2,2),(83,1,'b6a5537f-5d66-42b3-ac99-b994758624f2',3,-1,1,2,1,1,3),(84,1,'b6a5537f-5d66-42b3-ac99-b994758624f2',2,-1,1,1,1,2,1),(85,1,'455ea270-dcb8-4a50-be11-a29ff2179c6a',7,-1,2,1,3,1,2),(86,1,'455ea270-dcb8-4a50-be11-a29ff2179c6a',6,-1,2,1,1,1,3),(87,1,'455ea270-dcb8-4a50-be11-a29ff2179c6a',1,-1,2,1,0,1,3),(88,1,'455ea270-dcb8-4a50-be11-a29ff2179c6a',5,-1,1,2,2,1,2),(89,1,'455ea270-dcb8-4a50-be11-a29ff2179c6a',4,-1,1,1,3,2,2),(90,1,'455ea270-dcb8-4a50-be11-a29ff2179c6a',3,-1,1,2,1,1,3),(91,1,'455ea270-dcb8-4a50-be11-a29ff2179c6a',2,-1,1,1,1,2,1),(92,1,'d79a93fa-e950-425f-b248-76be3620321d',7,-1,2,1,3,1,2),(93,1,'d79a93fa-e950-425f-b248-76be3620321d',6,-1,2,1,1,1,3),(94,1,'d79a93fa-e950-425f-b248-76be3620321d',1,-1,2,1,0,1,3),(95,1,'d79a93fa-e950-425f-b248-76be3620321d',5,-1,1,2,2,1,2),(96,1,'d79a93fa-e950-425f-b248-76be3620321d',4,-1,1,1,3,2,2),(97,1,'d79a93fa-e950-425f-b248-76be3620321d',3,-1,1,2,1,1,3),(98,1,'d79a93fa-e950-425f-b248-76be3620321d',2,-1,1,1,1,2,1),(99,1,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',7,-1,2,1,3,1,2),(100,1,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',6,-1,2,1,1,1,3),(101,1,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',1,-1,2,1,0,1,3),(102,1,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',5,-1,1,2,2,1,2),(103,1,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',4,-1,1,1,3,2,2),(104,1,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',3,-1,1,2,1,1,3),(105,1,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',2,-1,1,1,1,2,1),(106,1,'31317770-82a7-4569-a43b-ed451dc59a78',7,-1,2,1,3,1,2),(107,1,'31317770-82a7-4569-a43b-ed451dc59a78',6,-1,2,1,1,1,3),(108,1,'31317770-82a7-4569-a43b-ed451dc59a78',1,-1,2,1,0,1,3),(109,1,'31317770-82a7-4569-a43b-ed451dc59a78',5,-1,1,2,2,1,2),(110,1,'31317770-82a7-4569-a43b-ed451dc59a78',4,-1,1,1,3,2,2),(111,1,'31317770-82a7-4569-a43b-ed451dc59a78',3,-1,1,2,1,1,3),(112,1,'31317770-82a7-4569-a43b-ed451dc59a78',2,-1,1,1,1,2,1),(113,1,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',7,-1,2,1,3,1,2),(114,1,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',6,-1,2,1,1,1,3),(115,1,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',1,-1,2,1,0,1,3),(116,1,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',5,-1,1,2,2,1,2),(117,1,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',4,-1,1,1,3,2,2),(118,1,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',3,-1,1,2,1,1,3),(119,1,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',2,-1,1,1,1,2,1),(120,1,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',7,-1,2,1,3,1,2),(121,1,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',6,-1,2,1,1,1,3),(122,1,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',1,-1,2,1,0,1,3),(123,1,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',5,-1,1,2,2,1,2),(124,1,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',4,-1,1,1,3,2,2),(125,1,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',3,-1,1,2,1,1,3),(126,1,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',2,-1,1,1,1,2,1),(127,1,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',7,-1,2,1,3,1,2),(128,1,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',6,-1,2,1,1,1,3),(129,1,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',1,-1,2,1,0,1,3),(130,1,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',5,-1,1,2,2,1,2),(131,1,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',4,-1,1,1,3,2,2),(132,1,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',3,-1,1,2,1,1,3),(133,1,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',2,-1,1,1,1,2,1),(134,1,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',7,-1,2,1,3,1,2),(135,1,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',6,-1,2,1,1,1,3),(136,1,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',1,-1,2,1,0,1,3),(137,1,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',5,-1,1,2,2,1,2),(138,1,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',4,-1,1,1,3,2,2),(139,1,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',3,-1,1,2,1,1,3),(140,1,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',2,-1,1,1,1,2,1),(141,1,'96437382-2854-4644-9dff-b22c82418c19',7,-1,2,1,3,1,2),(142,1,'96437382-2854-4644-9dff-b22c82418c19',6,-1,2,1,1,1,3),(143,1,'96437382-2854-4644-9dff-b22c82418c19',1,-1,2,1,0,1,3),(144,1,'96437382-2854-4644-9dff-b22c82418c19',5,-1,1,2,2,1,2),(145,1,'96437382-2854-4644-9dff-b22c82418c19',4,-1,1,1,3,2,2),(146,1,'96437382-2854-4644-9dff-b22c82418c19',3,-1,1,2,1,1,3),(147,1,'96437382-2854-4644-9dff-b22c82418c19',2,-1,1,1,1,2,1),(148,1,'225831db-dc7d-44e6-9aab-2ea190c52178',7,-1,2,1,3,1,2),(149,1,'225831db-dc7d-44e6-9aab-2ea190c52178',6,-1,2,1,1,1,3),(150,1,'225831db-dc7d-44e6-9aab-2ea190c52178',1,-1,2,1,0,1,3),(151,1,'225831db-dc7d-44e6-9aab-2ea190c52178',5,-1,1,2,2,1,2),(152,1,'225831db-dc7d-44e6-9aab-2ea190c52178',4,-1,1,1,3,2,2),(153,1,'225831db-dc7d-44e6-9aab-2ea190c52178',3,-1,1,2,1,1,3),(154,1,'225831db-dc7d-44e6-9aab-2ea190c52178',2,-1,1,1,1,2,1),(155,1,'b0317b97-a008-4020-afe3-717d0ebeff1c',7,-1,2,1,3,1,2),(156,1,'b0317b97-a008-4020-afe3-717d0ebeff1c',6,-1,2,1,1,1,3),(157,1,'b0317b97-a008-4020-afe3-717d0ebeff1c',1,-1,2,1,0,1,3),(158,1,'b0317b97-a008-4020-afe3-717d0ebeff1c',5,-1,1,2,2,1,2),(159,1,'b0317b97-a008-4020-afe3-717d0ebeff1c',4,-1,1,1,3,2,2),(160,1,'b0317b97-a008-4020-afe3-717d0ebeff1c',3,-1,1,2,1,1,3),(161,1,'b0317b97-a008-4020-afe3-717d0ebeff1c',2,-1,1,1,1,2,1),(162,1,'a4af6209-e279-46d0-a929-248f392681aa',7,-1,2,1,3,1,2),(163,1,'a4af6209-e279-46d0-a929-248f392681aa',6,-1,2,1,1,1,3),(164,1,'a4af6209-e279-46d0-a929-248f392681aa',1,-1,2,1,0,1,3),(165,1,'a4af6209-e279-46d0-a929-248f392681aa',5,-1,1,2,2,1,2),(166,1,'a4af6209-e279-46d0-a929-248f392681aa',4,-1,1,1,3,2,2),(167,1,'a4af6209-e279-46d0-a929-248f392681aa',3,-1,1,2,1,1,3),(168,1,'a4af6209-e279-46d0-a929-248f392681aa',2,-1,1,1,1,2,1),(169,1,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',7,-1,2,1,3,1,2),(170,1,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',6,-1,2,1,1,1,3),(171,1,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',1,-1,2,1,0,1,3),(172,1,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',5,-1,1,2,2,1,2),(173,1,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',4,-1,1,1,3,2,2),(174,1,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',3,-1,1,2,1,1,3),(175,1,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',2,-1,1,1,1,2,1),(176,1,'75711432-d389-4300-bcff-e2654d2f2b70',7,-1,2,1,3,1,2),(177,1,'75711432-d389-4300-bcff-e2654d2f2b70',6,-1,2,1,1,1,3),(178,1,'75711432-d389-4300-bcff-e2654d2f2b70',1,-1,2,1,0,1,3),(179,1,'75711432-d389-4300-bcff-e2654d2f2b70',5,-1,1,2,2,1,2),(180,1,'75711432-d389-4300-bcff-e2654d2f2b70',4,-1,1,1,3,2,2),(181,1,'75711432-d389-4300-bcff-e2654d2f2b70',3,-1,1,2,1,1,3),(182,1,'75711432-d389-4300-bcff-e2654d2f2b70',2,-1,1,1,1,2,1),(183,1,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',7,-1,2,1,3,1,2),(184,1,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',6,-1,2,1,1,1,3),(185,1,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',1,-1,2,1,0,1,3),(186,1,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',5,-1,1,2,2,1,2),(187,1,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',4,-1,1,1,3,2,2),(188,1,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',3,-1,1,2,1,1,3),(189,1,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',2,-1,1,1,1,2,1),(190,1,'29d06f8f-f970-4eba-8c01-88d124cd516b',7,-1,2,1,3,1,2),(191,1,'29d06f8f-f970-4eba-8c01-88d124cd516b',6,-1,2,1,1,1,3),(192,1,'29d06f8f-f970-4eba-8c01-88d124cd516b',1,-1,2,1,0,1,3),(193,1,'29d06f8f-f970-4eba-8c01-88d124cd516b',5,-1,1,2,2,1,2),(194,1,'29d06f8f-f970-4eba-8c01-88d124cd516b',4,-1,1,1,3,2,2),(195,1,'29d06f8f-f970-4eba-8c01-88d124cd516b',3,-1,1,2,1,1,3),(196,1,'29d06f8f-f970-4eba-8c01-88d124cd516b',2,-1,1,1,1,2,1),(197,1,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',7,-1,2,1,3,1,2),(198,1,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',6,-1,2,1,1,1,3),(199,1,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',1,-1,2,1,0,1,3),(200,1,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',5,-1,1,2,2,1,2),(201,1,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',4,-1,1,1,3,2,2),(202,1,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',3,-1,1,2,1,1,3),(203,1,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',2,-1,1,1,1,2,1),(204,1,'e0b6eca7-07be-46a5-8289-b1e6320de459',7,-1,2,1,3,1,2),(205,1,'e0b6eca7-07be-46a5-8289-b1e6320de459',6,-1,2,1,1,1,3),(206,1,'e0b6eca7-07be-46a5-8289-b1e6320de459',1,-1,2,1,0,1,3),(207,1,'e0b6eca7-07be-46a5-8289-b1e6320de459',5,-1,1,2,2,1,2),(208,1,'e0b6eca7-07be-46a5-8289-b1e6320de459',4,-1,1,1,3,2,2),(209,1,'e0b6eca7-07be-46a5-8289-b1e6320de459',3,-1,1,2,1,1,3),(210,1,'e0b6eca7-07be-46a5-8289-b1e6320de459',2,-1,1,1,1,2,1),(211,1,'69752a39-3c37-4a31-9e41-7003ac23dfe7',7,-1,2,1,3,1,2),(212,1,'69752a39-3c37-4a31-9e41-7003ac23dfe7',6,-1,2,1,1,1,3),(213,1,'69752a39-3c37-4a31-9e41-7003ac23dfe7',1,-1,2,1,0,1,3),(214,1,'69752a39-3c37-4a31-9e41-7003ac23dfe7',5,-1,1,2,2,1,2),(215,1,'69752a39-3c37-4a31-9e41-7003ac23dfe7',4,-1,1,1,3,2,2),(216,1,'69752a39-3c37-4a31-9e41-7003ac23dfe7',3,-1,1,2,1,1,3),(217,1,'69752a39-3c37-4a31-9e41-7003ac23dfe7',2,-1,1,1,1,2,1),(218,1,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',7,-1,2,1,3,1,2),(219,1,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',6,-1,2,1,1,1,3),(220,1,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',1,-1,2,1,0,1,3),(221,1,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',5,-1,1,2,2,1,2),(222,1,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',4,-1,1,1,3,2,2),(223,1,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',3,-1,1,2,1,1,3),(224,1,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',2,-1,1,1,1,2,1),(225,1,'79cf2f51-1138-4c27-8327-1797803d3232',7,-1,2,1,3,1,2),(226,1,'79cf2f51-1138-4c27-8327-1797803d3232',6,-1,2,1,1,1,3),(227,1,'79cf2f51-1138-4c27-8327-1797803d3232',1,-1,2,1,0,1,3),(228,1,'79cf2f51-1138-4c27-8327-1797803d3232',5,-1,1,2,2,1,2),(229,1,'79cf2f51-1138-4c27-8327-1797803d3232',4,-1,1,1,3,2,2),(230,1,'79cf2f51-1138-4c27-8327-1797803d3232',3,-1,1,2,1,1,3),(231,1,'79cf2f51-1138-4c27-8327-1797803d3232',2,-1,1,1,1,2,1),(232,1,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',7,-1,2,1,3,1,2),(233,1,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',6,-1,2,1,1,1,3),(234,1,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',1,-1,2,1,0,1,3),(235,1,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',5,-1,1,2,2,1,2),(236,1,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',4,-1,1,1,3,2,2),(237,1,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',3,-1,1,2,1,1,3),(238,1,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',2,-1,1,1,1,2,1);
/*!40000 ALTER TABLE `processflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processflowobjectcontrol`
--

DROP TABLE IF EXISTS `processflowobjectcontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processflowobjectcontrol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessID` varchar(50) NOT NULL DEFAULT '',
  `FlowID` int(11) NOT NULL DEFAULT '0',
  `ObjectID` int(11) NOT NULL DEFAULT '0',
  `Privilege` smallint(6) DEFAULT NULL,
  `RepeatedTime` smallint(6) DEFAULT NULL,
  `ActiveTime` datetime DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processflowobjectcontrol`
--

LOCK TABLES `processflowobjectcontrol` WRITE;
/*!40000 ALTER TABLE `processflowobjectcontrol` DISABLE KEYS */;
INSERT INTO `processflowobjectcontrol` VALUES (28,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',7,2,1,0,'2017-04-07 00:00:00','InActive'),(29,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',6,1,1,0,'2017-04-07 00:00:00','InActive'),(30,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',1,2,1,0,'2017-04-07 00:00:00','InActive'),(31,'be17b7e5-c31b-4fed-8d42-411ed0e83372',7,2,1,0,'2017-04-08 00:00:00','InActive'),(32,'be17b7e5-c31b-4fed-8d42-411ed0e83372',6,1,1,0,'2017-04-08 00:00:00','InActive'),(33,'be17b7e5-c31b-4fed-8d42-411ed0e83372',1,2,1,0,'2017-04-08 00:00:00','InActive'),(34,'6364d775-2540-44d1-be59-676f0c8dc910',7,2,1,0,'2017-04-08 00:00:00','InActive'),(35,'6364d775-2540-44d1-be59-676f0c8dc910',6,1,1,0,'2017-04-08 00:00:00','InActive'),(36,'6364d775-2540-44d1-be59-676f0c8dc910',1,2,1,0,'2017-04-08 00:00:00','InActive'),(37,'886d507d-b90a-4ace-a253-2687294040c9',7,2,1,0,'2017-04-09 00:00:00','InActive'),(38,'886d507d-b90a-4ace-a253-2687294040c9',6,1,1,0,'2017-04-09 00:00:00','InActive'),(39,'886d507d-b90a-4ace-a253-2687294040c9',1,2,1,0,'2017-04-09 00:00:00','InActive'),(40,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',7,2,1,0,'2017-04-09 00:00:00','InActive'),(41,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',6,1,1,0,'2017-04-09 00:00:00','InActive'),(42,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',1,2,1,0,'2017-04-09 00:00:00','InActive'),(43,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',7,2,1,0,'2017-04-09 00:00:00','InActive'),(44,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',6,1,1,0,'2017-04-09 00:00:00','InActive'),(45,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',1,2,1,0,'2017-04-09 00:00:00','InActive'),(46,'8994091c-3399-4771-9db8-2ab0457e6b21',7,2,1,0,'2017-04-09 00:00:00','InActive'),(47,'8994091c-3399-4771-9db8-2ab0457e6b21',6,1,1,0,'2017-04-09 00:00:00','InActive'),(48,'8994091c-3399-4771-9db8-2ab0457e6b21',1,2,1,0,'2017-04-09 00:00:00','InActive'),(49,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',7,2,1,0,'2017-04-09 00:00:00','InActive'),(50,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',6,1,1,0,'2017-04-09 00:00:00','InActive'),(51,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',1,2,1,0,'2017-04-09 00:00:00','InActive'),(52,'01686096-0080-4b0b-8b8c-2c770ecc0efb',7,2,1,0,'2017-04-09 00:00:00','InActive'),(53,'01686096-0080-4b0b-8b8c-2c770ecc0efb',6,1,1,0,'2017-04-09 00:00:00','InActive'),(54,'01686096-0080-4b0b-8b8c-2c770ecc0efb',1,2,1,0,'2017-04-09 00:00:00','InActive'),(55,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',7,2,1,0,'2017-04-09 00:00:00','InActive'),(56,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',6,1,1,0,'2017-04-09 00:00:00','InActive'),(57,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',1,2,1,0,'2017-04-09 00:00:00','InActive'),(58,'b6a5537f-5d66-42b3-ac99-b994758624f2',7,2,1,0,'2017-04-09 00:00:00','InActive'),(59,'b6a5537f-5d66-42b3-ac99-b994758624f2',6,1,1,0,'2017-04-09 00:00:00','InActive'),(60,'b6a5537f-5d66-42b3-ac99-b994758624f2',1,2,1,0,'2017-04-09 00:00:00','InActive'),(61,'455ea270-dcb8-4a50-be11-a29ff2179c6a',7,2,1,0,'2017-04-10 00:00:00','InActive'),(62,'455ea270-dcb8-4a50-be11-a29ff2179c6a',6,1,1,0,'2017-04-10 00:00:00','InActive'),(63,'455ea270-dcb8-4a50-be11-a29ff2179c6a',1,2,1,0,'2017-04-10 00:00:00','InActive'),(64,'d79a93fa-e950-425f-b248-76be3620321d',7,2,1,0,'2017-04-10 00:00:00','InActive'),(65,'d79a93fa-e950-425f-b248-76be3620321d',6,1,1,0,'2017-04-10 00:00:00','InActive'),(66,'d79a93fa-e950-425f-b248-76be3620321d',1,2,1,0,'2017-04-10 00:00:00','InActive'),(67,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',7,2,1,0,'2017-04-10 00:00:00','InActive'),(68,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',6,1,1,0,'2017-04-10 00:00:00','InActive'),(69,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',1,2,1,0,'2017-04-10 00:00:00','InActive'),(70,'31317770-82a7-4569-a43b-ed451dc59a78',7,2,1,0,'2017-04-10 00:00:00','InActive'),(71,'31317770-82a7-4569-a43b-ed451dc59a78',6,1,1,0,'2017-04-10 00:00:00','InActive'),(72,'31317770-82a7-4569-a43b-ed451dc59a78',1,2,1,0,'2017-04-10 00:00:00','InActive'),(73,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',7,2,1,0,'2017-04-10 00:00:00','InActive'),(74,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',6,1,1,0,'2017-04-10 00:00:00','InActive'),(75,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',1,2,1,0,'2017-04-10 00:00:00','InActive'),(76,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',7,2,1,0,'2017-04-10 00:00:00','InActive'),(77,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',6,1,1,0,'2017-04-10 00:00:00','InActive'),(78,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',1,2,1,0,'2017-04-10 00:00:00','InActive'),(79,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',7,2,1,0,'2017-04-10 00:00:00','InActive'),(80,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',6,1,1,0,'2017-04-10 00:00:00','InActive'),(81,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',1,2,1,0,'2017-04-10 00:00:00','InActive'),(82,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',7,2,1,0,'2017-04-10 00:00:00','InActive'),(83,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',6,1,1,0,'2017-04-10 00:00:00','InActive'),(84,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',1,2,1,0,'2017-04-10 00:00:00','InActive'),(85,'96437382-2854-4644-9dff-b22c82418c19',7,2,1,0,'2017-04-10 00:00:00','InActive'),(86,'96437382-2854-4644-9dff-b22c82418c19',6,1,1,0,'2017-04-10 00:00:00','InActive'),(87,'96437382-2854-4644-9dff-b22c82418c19',1,2,1,0,'2017-04-10 00:00:00','InActive'),(88,'225831db-dc7d-44e6-9aab-2ea190c52178',7,2,1,0,'2017-04-10 00:00:00','InActive'),(89,'225831db-dc7d-44e6-9aab-2ea190c52178',6,1,1,0,'2017-04-10 00:00:00','InActive'),(90,'225831db-dc7d-44e6-9aab-2ea190c52178',1,2,1,0,'2017-04-10 00:00:00','InActive'),(91,'b0317b97-a008-4020-afe3-717d0ebeff1c',7,2,1,0,'2017-04-10 00:00:00','InActive'),(92,'b0317b97-a008-4020-afe3-717d0ebeff1c',6,1,1,0,'2017-04-10 00:00:00','InActive'),(93,'b0317b97-a008-4020-afe3-717d0ebeff1c',1,2,1,0,'2017-04-10 00:00:00','InActive'),(94,'a4af6209-e279-46d0-a929-248f392681aa',7,2,1,0,'2017-04-10 00:00:00','InActive'),(95,'a4af6209-e279-46d0-a929-248f392681aa',6,1,1,0,'2017-04-10 00:00:00','InActive'),(96,'a4af6209-e279-46d0-a929-248f392681aa',1,2,1,0,'2017-04-10 00:00:00','InActive'),(97,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',7,2,1,0,'2017-04-10 00:00:00','InActive'),(98,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',6,1,1,0,'2017-04-10 00:00:00','InActive'),(99,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',1,2,1,0,'2017-04-10 00:00:00','InActive'),(100,'75711432-d389-4300-bcff-e2654d2f2b70',7,2,1,0,'2017-04-11 00:00:00','InActive'),(101,'75711432-d389-4300-bcff-e2654d2f2b70',6,1,1,0,'2017-04-11 00:00:00','InActive'),(102,'75711432-d389-4300-bcff-e2654d2f2b70',1,2,1,0,'2017-04-11 00:00:00','InActive'),(103,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',7,2,1,0,'2017-04-11 00:00:00','InActive'),(104,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',6,1,1,0,'2017-04-11 00:00:00','InActive'),(105,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',1,2,1,0,'2017-04-11 00:00:00','InActive'),(106,'29d06f8f-f970-4eba-8c01-88d124cd516b',7,2,1,0,'2017-04-11 00:00:00','InActive'),(107,'29d06f8f-f970-4eba-8c01-88d124cd516b',6,1,1,0,'2017-04-11 00:00:00','InActive'),(108,'29d06f8f-f970-4eba-8c01-88d124cd516b',1,2,1,0,'2017-04-11 00:00:00','InActive'),(109,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',7,2,1,0,'2017-04-11 00:00:00','InActive'),(110,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',6,1,1,0,'2017-04-11 00:00:00','InActive'),(111,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',1,2,1,0,'2017-04-11 00:00:00','InActive'),(112,'e0b6eca7-07be-46a5-8289-b1e6320de459',7,2,1,0,'2017-04-11 00:00:00','InActive'),(113,'e0b6eca7-07be-46a5-8289-b1e6320de459',6,1,1,0,'2017-04-11 00:00:00','InActive'),(114,'e0b6eca7-07be-46a5-8289-b1e6320de459',1,2,1,0,'2017-04-11 00:00:00','InActive'),(115,'69752a39-3c37-4a31-9e41-7003ac23dfe7',7,2,1,0,'2017-04-11 00:00:00','InActive'),(116,'69752a39-3c37-4a31-9e41-7003ac23dfe7',6,1,1,0,'2017-04-11 00:00:00','InActive'),(117,'69752a39-3c37-4a31-9e41-7003ac23dfe7',1,2,1,0,'2017-04-11 00:00:00','InActive'),(118,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',7,2,1,0,'2017-04-11 00:00:00','InActive'),(119,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',6,1,1,0,'2017-04-11 00:00:00','InActive'),(120,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',1,2,1,0,'2017-04-11 00:00:00','InActive'),(121,'79cf2f51-1138-4c27-8327-1797803d3232',7,2,1,0,'2017-04-11 00:00:00','InActive'),(122,'79cf2f51-1138-4c27-8327-1797803d3232',6,1,1,0,'2017-04-11 00:00:00','InActive'),(123,'79cf2f51-1138-4c27-8327-1797803d3232',1,2,1,0,'2017-04-11 00:00:00','InActive'),(124,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',7,2,1,0,'2017-04-11 00:00:00','InActive'),(125,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',6,1,1,0,'2017-04-11 00:00:00','InActive'),(126,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',1,2,1,0,'2017-04-11 00:00:00','InActive');
/*!40000 ALTER TABLE `processflowobjectcontrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processflowobjects`
--

DROP TABLE IF EXISTS `processflowobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processflowobjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `DroolsRuleID` int(11) NOT NULL DEFAULT '0',
  `ProcessID` varchar(50) NOT NULL DEFAULT '',
  `FlowID` int(11) NOT NULL DEFAULT '0',
  `FromActivityID` int(11) NOT NULL DEFAULT '0',
  `ToActivityID` int(11) NOT NULL DEFAULT '0',
  `XSLTO2M` longtext,
  `XSLTM2I` longtext,
  `OXMLID` int(11) DEFAULT NULL,
  `MXMLID` int(11) DEFAULT NULL,
  `IXMLID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processflowobjects`
--

LOCK TABLES `processflowobjects` WRITE;
/*!40000 ALTER TABLE `processflowobjects` DISABLE KEYS */;
INSERT INTO `processflowobjects` VALUES (28,1,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',1,0,3,NULL,NULL,NULL,NULL,NULL),(29,2,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',6,1,3,NULL,NULL,NULL,0,0),(30,3,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',7,3,2,NULL,NULL,0,0,NULL),(31,1,'be17b7e5-c31b-4fed-8d42-411ed0e83372',1,0,3,NULL,NULL,NULL,NULL,NULL),(32,2,'be17b7e5-c31b-4fed-8d42-411ed0e83372',6,1,3,NULL,NULL,NULL,0,0),(33,3,'be17b7e5-c31b-4fed-8d42-411ed0e83372',7,3,2,NULL,NULL,0,0,NULL),(34,1,'6364d775-2540-44d1-be59-676f0c8dc910',1,0,3,NULL,NULL,NULL,NULL,NULL),(35,2,'6364d775-2540-44d1-be59-676f0c8dc910',6,1,3,NULL,NULL,NULL,0,0),(36,3,'6364d775-2540-44d1-be59-676f0c8dc910',7,3,2,NULL,NULL,0,0,NULL),(37,1,'886d507d-b90a-4ace-a253-2687294040c9',1,0,3,NULL,NULL,NULL,NULL,NULL),(38,2,'886d507d-b90a-4ace-a253-2687294040c9',6,1,3,NULL,NULL,NULL,0,0),(39,3,'886d507d-b90a-4ace-a253-2687294040c9',7,3,2,NULL,NULL,0,0,NULL),(40,1,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',1,0,3,NULL,NULL,NULL,NULL,NULL),(41,2,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',6,1,3,NULL,NULL,NULL,0,0),(42,3,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',7,3,2,NULL,NULL,0,0,NULL),(43,1,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',1,0,3,NULL,NULL,NULL,NULL,NULL),(44,2,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',6,1,3,NULL,NULL,NULL,0,0),(45,3,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',7,3,2,NULL,NULL,0,0,NULL),(46,1,'8994091c-3399-4771-9db8-2ab0457e6b21',1,0,3,NULL,NULL,NULL,NULL,NULL),(47,2,'8994091c-3399-4771-9db8-2ab0457e6b21',6,1,3,NULL,NULL,NULL,0,0),(48,3,'8994091c-3399-4771-9db8-2ab0457e6b21',7,3,2,NULL,NULL,0,0,NULL),(49,1,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',1,0,3,NULL,NULL,NULL,NULL,NULL),(50,2,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',6,1,3,NULL,NULL,NULL,0,0),(51,3,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',7,3,2,NULL,NULL,0,0,NULL),(52,1,'01686096-0080-4b0b-8b8c-2c770ecc0efb',1,0,3,NULL,NULL,NULL,NULL,NULL),(53,2,'01686096-0080-4b0b-8b8c-2c770ecc0efb',6,1,3,NULL,NULL,NULL,0,0),(54,3,'01686096-0080-4b0b-8b8c-2c770ecc0efb',7,3,2,NULL,NULL,0,0,NULL),(55,1,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',1,0,3,NULL,NULL,NULL,NULL,NULL),(56,2,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',6,1,3,NULL,NULL,NULL,0,0),(57,3,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',7,3,2,NULL,NULL,0,0,NULL),(58,1,'b6a5537f-5d66-42b3-ac99-b994758624f2',1,0,3,NULL,NULL,NULL,NULL,NULL),(59,2,'b6a5537f-5d66-42b3-ac99-b994758624f2',6,1,3,NULL,NULL,NULL,0,0),(60,3,'b6a5537f-5d66-42b3-ac99-b994758624f2',7,3,2,NULL,NULL,0,0,NULL),(61,1,'455ea270-dcb8-4a50-be11-a29ff2179c6a',1,0,3,NULL,NULL,NULL,NULL,NULL),(62,2,'455ea270-dcb8-4a50-be11-a29ff2179c6a',6,1,3,NULL,NULL,NULL,0,0),(63,3,'455ea270-dcb8-4a50-be11-a29ff2179c6a',7,3,2,NULL,NULL,0,0,NULL),(64,1,'d79a93fa-e950-425f-b248-76be3620321d',1,0,3,NULL,NULL,NULL,NULL,NULL),(65,2,'d79a93fa-e950-425f-b248-76be3620321d',6,1,3,NULL,NULL,NULL,0,0),(66,3,'d79a93fa-e950-425f-b248-76be3620321d',7,3,2,NULL,NULL,0,0,NULL),(67,1,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',1,0,3,NULL,NULL,NULL,NULL,NULL),(68,2,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',6,1,3,NULL,NULL,NULL,0,0),(69,3,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',7,3,2,NULL,NULL,0,0,NULL),(70,1,'31317770-82a7-4569-a43b-ed451dc59a78',1,0,3,NULL,NULL,NULL,NULL,NULL),(71,2,'31317770-82a7-4569-a43b-ed451dc59a78',6,1,3,NULL,NULL,NULL,0,0),(72,3,'31317770-82a7-4569-a43b-ed451dc59a78',7,3,2,NULL,NULL,0,0,NULL),(73,1,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',1,0,3,NULL,NULL,NULL,NULL,NULL),(74,2,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',6,1,3,NULL,NULL,NULL,0,0),(75,3,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',7,3,2,NULL,NULL,0,0,NULL),(76,1,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',1,0,3,NULL,NULL,NULL,NULL,NULL),(77,2,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',6,1,3,NULL,NULL,NULL,0,0),(78,3,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',7,3,2,NULL,NULL,0,0,NULL),(79,1,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',1,0,3,NULL,NULL,NULL,NULL,NULL),(80,2,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',6,1,3,NULL,NULL,NULL,0,0),(81,3,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',7,3,2,NULL,NULL,0,0,NULL),(82,1,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',1,0,3,NULL,NULL,NULL,NULL,NULL),(83,2,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',6,1,3,NULL,NULL,NULL,0,0),(84,3,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',7,3,2,NULL,NULL,0,0,NULL),(85,1,'96437382-2854-4644-9dff-b22c82418c19',1,0,3,NULL,NULL,NULL,NULL,NULL),(86,2,'96437382-2854-4644-9dff-b22c82418c19',6,1,3,NULL,NULL,NULL,0,0),(87,3,'96437382-2854-4644-9dff-b22c82418c19',7,3,2,NULL,NULL,0,0,NULL),(88,1,'225831db-dc7d-44e6-9aab-2ea190c52178',1,0,3,NULL,NULL,NULL,NULL,NULL),(89,2,'225831db-dc7d-44e6-9aab-2ea190c52178',6,1,3,NULL,NULL,NULL,0,0),(90,3,'225831db-dc7d-44e6-9aab-2ea190c52178',7,3,2,NULL,NULL,0,0,NULL),(91,1,'b0317b97-a008-4020-afe3-717d0ebeff1c',1,0,3,NULL,NULL,NULL,NULL,NULL),(92,2,'b0317b97-a008-4020-afe3-717d0ebeff1c',6,1,3,NULL,NULL,NULL,0,0),(93,3,'b0317b97-a008-4020-afe3-717d0ebeff1c',7,3,2,NULL,NULL,0,0,NULL),(94,1,'a4af6209-e279-46d0-a929-248f392681aa',1,0,3,NULL,NULL,NULL,NULL,NULL),(95,2,'a4af6209-e279-46d0-a929-248f392681aa',6,1,3,NULL,NULL,NULL,0,0),(96,3,'a4af6209-e279-46d0-a929-248f392681aa',7,3,2,NULL,NULL,0,0,NULL),(97,1,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',1,0,3,NULL,NULL,NULL,NULL,NULL),(98,2,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',6,1,3,NULL,NULL,NULL,0,0),(99,3,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',7,3,2,NULL,NULL,0,0,NULL),(100,1,'75711432-d389-4300-bcff-e2654d2f2b70',1,0,3,NULL,NULL,NULL,NULL,NULL),(101,2,'75711432-d389-4300-bcff-e2654d2f2b70',6,1,3,NULL,NULL,NULL,0,0),(102,3,'75711432-d389-4300-bcff-e2654d2f2b70',7,3,2,NULL,NULL,0,0,NULL),(103,1,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',1,0,3,NULL,NULL,NULL,NULL,NULL),(104,2,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',6,1,3,NULL,NULL,NULL,0,0),(105,3,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',7,3,2,NULL,NULL,0,0,NULL),(106,1,'29d06f8f-f970-4eba-8c01-88d124cd516b',1,0,3,NULL,NULL,NULL,NULL,NULL),(107,2,'29d06f8f-f970-4eba-8c01-88d124cd516b',6,1,3,NULL,NULL,NULL,0,0),(108,3,'29d06f8f-f970-4eba-8c01-88d124cd516b',7,3,2,NULL,NULL,0,0,NULL),(109,1,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',1,0,3,NULL,NULL,NULL,NULL,NULL),(110,2,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',6,1,3,NULL,NULL,NULL,0,0),(111,3,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',7,3,2,NULL,NULL,0,0,NULL),(112,1,'e0b6eca7-07be-46a5-8289-b1e6320de459',1,0,3,NULL,NULL,NULL,NULL,NULL),(113,2,'e0b6eca7-07be-46a5-8289-b1e6320de459',6,1,3,NULL,NULL,NULL,0,0),(114,3,'e0b6eca7-07be-46a5-8289-b1e6320de459',7,3,2,NULL,NULL,0,0,NULL),(115,1,'69752a39-3c37-4a31-9e41-7003ac23dfe7',1,0,3,NULL,NULL,NULL,NULL,NULL),(116,2,'69752a39-3c37-4a31-9e41-7003ac23dfe7',6,1,3,NULL,NULL,NULL,0,0),(117,3,'69752a39-3c37-4a31-9e41-7003ac23dfe7',7,3,2,NULL,NULL,0,0,NULL),(118,1,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',1,0,3,NULL,NULL,NULL,NULL,NULL),(119,2,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',6,1,3,NULL,NULL,NULL,0,0),(120,3,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',7,3,2,NULL,NULL,0,0,NULL),(121,1,'79cf2f51-1138-4c27-8327-1797803d3232',1,0,3,NULL,NULL,NULL,NULL,NULL),(122,2,'79cf2f51-1138-4c27-8327-1797803d3232',6,1,3,NULL,NULL,NULL,0,0),(123,3,'79cf2f51-1138-4c27-8327-1797803d3232',7,3,2,NULL,NULL,0,0,NULL),(124,1,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',1,0,3,NULL,NULL,NULL,NULL,NULL),(125,2,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',6,1,3,NULL,NULL,NULL,0,0),(126,3,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',7,3,2,NULL,NULL,0,0,NULL);
/*!40000 ALTER TABLE `processflowobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processinformation`
--

DROP TABLE IF EXISTS `processinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessID` varchar(50) NOT NULL DEFAULT '',
  `ProcessName` varchar(50) DEFAULT NULL,
  `Source` smallint(6) DEFAULT NULL,
  `CaseType` smallint(6) DEFAULT NULL,
  `ParentCaseID` varchar(50) DEFAULT NULL,
  `MaximalLayer` smallint(6) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Persistent` tinyint(1) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `DurationUnit` varchar(1) DEFAULT NULL,
  `CostUnit` float DEFAULT NULL,
  `TWCID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processinformation`
--

LOCK TABLES `processinformation` WRITE;
/*!40000 ALTER TABLE `processinformation` DISABLE KEYS */;
INSERT INTO `processinformation` VALUES (11,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2','wfTest',1,1,'',0,NULL,1,'Completed','0',0,0),(12,'be17b7e5-c31b-4fed-8d42-411ed0e83372','Prediction based on linear regression',1,1,'',0,NULL,1,'Completed','0',0,0),(13,'6364d775-2540-44d1-be59-676f0c8dc910','Prediction based on linear regression',1,1,'',0,NULL,1,'Completed','0',0,0),(14,'886d507d-b90a-4ace-a253-2687294040c9','Prediction based on linear regression',1,1,'',0,NULL,1,'Completed','0',0,0),(15,'972b60dd-52ca-4d8a-98da-3aa1c29502b0','Prediction based on linear regression',1,1,'',0,NULL,1,'Completed','0',0,0),(16,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16','Prediction based on linear regression',1,1,'',0,NULL,1,'Completed','0',0,0),(17,'8994091c-3399-4771-9db8-2ab0457e6b21','Prediction based on linear regression',1,1,'',0,NULL,1,'Completed','0',0,0),(18,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835','Prediction based on linear regression',1,1,'',0,NULL,1,'Completed','0',0,0),(19,'01686096-0080-4b0b-8b8c-2c770ecc0efb','Prediction based on linear regression',1,1,'',0,NULL,1,'Completed','0',0,0),(20,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd','Prediction based on linear regression',1,1,'',0,NULL,1,'Completed','0',0,0),(21,'b6a5537f-5d66-42b3-ac99-b994758624f2','Prediction based on linear regression',1,1,'',0,NULL,1,'Completed','0',0,0),(22,'455ea270-dcb8-4a50-be11-a29ff2179c6a','Prediction based on linear regression',1,1,'',0,NULL,1,'Completed','0',0,0),(23,'d79a93fa-e950-425f-b248-76be3620321d','Prediction based on linear regression',1,1,'',0,NULL,1,'Completed','0',0,0),(24,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3','Prediction based on linear regression',1,1,'',0,NULL,1,'Completed','0',0,0),(25,'31317770-82a7-4569-a43b-ed451dc59a78','Prediction based on linear regression',1,1,'',0,NULL,1,'Completed','0',0,0),(26,'c2c11feb-4529-4724-9e14-fb5508a0e9ae','Classifer-tree-J48',1,1,'',0,NULL,1,'Completed','0',0,0),(27,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609','Classifer-tree-J48',1,1,'',0,NULL,1,'Completed','0',0,0),(28,'7d1f3abd-6101-4d64-a977-9c9022c5efd0','Classifer-tree-J48',1,1,'',0,NULL,1,'Completed','0',0,0),(29,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1','Classifer-tree-J48',1,1,'',0,NULL,1,'Completed','0',0,0),(30,'96437382-2854-4644-9dff-b22c82418c19','Classifer-tree-J48',1,1,'',0,NULL,1,'Completed','0',0,0),(31,'225831db-dc7d-44e6-9aab-2ea190c52178','Clustering by Kmeans',1,1,'',0,NULL,1,'Completed','0',0,0),(32,'b0317b97-a008-4020-afe3-717d0ebeff1c','Clustering by Kmeans',1,1,'',0,NULL,1,'Completed','0',0,0),(33,'a4af6209-e279-46d0-a929-248f392681aa','Clustering by Kmeans',1,1,'',0,NULL,1,'Completed','0',0,0),(34,'a75d0e6d-a422-4176-876f-d39ec75c7e9e','Clustering by Kmeans',1,1,'',0,NULL,1,'Completed','0',0,0),(35,'75711432-d389-4300-bcff-e2654d2f2b70','Clustering by Kmeans',1,1,'',0,NULL,1,'Completed','0',0,0),(36,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd','Clustering by Kmeans',1,1,'',0,NULL,1,'Completed','0',0,0),(37,'29d06f8f-f970-4eba-8c01-88d124cd516b','Clustering by Kmeans',1,1,'',0,NULL,1,'Completed','0',0,0),(38,'67bf3cf3-fd45-4772-bcb4-52391952d2ee','Clustering by Kmeans',1,1,'',0,NULL,1,'Completed','0',0,0),(39,'e0b6eca7-07be-46a5-8289-b1e6320de459','Clustering by Kmeans',1,1,'',0,NULL,1,'Completed','0',0,0),(40,'69752a39-3c37-4a31-9e41-7003ac23dfe7','Clustering by Kmeans',1,1,'',0,NULL,1,'Completed','0',0,0),(41,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3','Clustering by Kmeans',1,1,'',0,NULL,1,'Completed','0',0,0),(42,'79cf2f51-1138-4c27-8327-1797803d3232','Clustering by Kmeans',1,1,'',0,NULL,1,'Completed','0',0,0),(43,'5b06a87a-a2a2-419c-ae36-8b1a6592b499','Clustering by Kmeans',1,1,'',0,NULL,1,'Completed','0',0,0);
/*!40000 ALTER TABLE `processinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processinherentvariable`
--

DROP TABLE IF EXISTS `processinherentvariable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processinherentvariable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessID` varchar(50) NOT NULL DEFAULT '',
  `ObjectID` int(11) NOT NULL DEFAULT '0',
  `ObjectName` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `ValueType` smallint(6) DEFAULT NULL,
  `InitialValue` varchar(50) DEFAULT NULL,
  `Value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processinherentvariable`
--

LOCK TABLES `processinherentvariable` WRITE;
/*!40000 ALTER TABLE `processinherentvariable` DISABLE KEYS */;
INSERT INTO `processinherentvariable` VALUES (19,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',2,'address','',4,'',''),(20,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',1,'ip','',4,'8.8.8.8','8.8.8.8'),(21,'be17b7e5-c31b-4fed-8d42-411ed0e83372',2,'address','',4,'',''),(22,'be17b7e5-c31b-4fed-8d42-411ed0e83372',1,'ip','',4,'8.8.8.8','8.8.8.8'),(23,'6364d775-2540-44d1-be59-676f0c8dc910',2,'address','',4,'',''),(24,'6364d775-2540-44d1-be59-676f0c8dc910',1,'ip','',4,'8.8.8.8','8.8.8.8'),(25,'886d507d-b90a-4ace-a253-2687294040c9',2,'address','',4,'',''),(26,'886d507d-b90a-4ace-a253-2687294040c9',1,'ip','',4,'8.8.8.8','8.8.8.8'),(27,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',2,'address','',4,'',''),(28,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',1,'ip','',4,'8.8.8.8','8.8.8.8'),(29,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',2,'address','',4,'',''),(30,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',1,'ip','',4,'8.8.8.8','8.8.8.8'),(31,'8994091c-3399-4771-9db8-2ab0457e6b21',2,'address','',4,'',''),(32,'8994091c-3399-4771-9db8-2ab0457e6b21',1,'ip','',4,'8.8.8.8','8.8.8.8'),(33,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',2,'address','',4,'',''),(34,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',1,'ip','',4,'8.8.8.8','8.8.8.8'),(35,'01686096-0080-4b0b-8b8c-2c770ecc0efb',2,'address','',4,'',''),(36,'01686096-0080-4b0b-8b8c-2c770ecc0efb',1,'ip','',4,'8.8.8.8','8.8.8.8'),(37,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',2,'address','',4,'',''),(38,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',1,'ip','',4,'8.8.8.8','8.8.8.8'),(39,'b6a5537f-5d66-42b3-ac99-b994758624f2',2,'address','',4,'',''),(40,'b6a5537f-5d66-42b3-ac99-b994758624f2',1,'ip','',4,'8.8.8.8','8.8.8.8'),(41,'455ea270-dcb8-4a50-be11-a29ff2179c6a',2,'address','',4,'',''),(42,'455ea270-dcb8-4a50-be11-a29ff2179c6a',1,'ip','',4,'8.8.8.8','8.8.8.8'),(43,'d79a93fa-e950-425f-b248-76be3620321d',2,'address','',4,'',''),(44,'d79a93fa-e950-425f-b248-76be3620321d',1,'ip','',4,'8.8.8.8','8.8.8.8'),(45,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',2,'address','',4,'',''),(46,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',1,'ip','',4,'8.8.8.8','8.8.8.8'),(47,'31317770-82a7-4569-a43b-ed451dc59a78',2,'address','',4,'',''),(48,'31317770-82a7-4569-a43b-ed451dc59a78',1,'ip','',4,'8.8.8.8','8.8.8.8'),(49,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',2,'address','',4,'',''),(50,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',1,'ip','',4,'8.8.8.8','8.8.8.8'),(51,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',2,'address','',4,'',''),(52,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',1,'ip','',4,'8.8.8.8','8.8.8.8'),(53,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',2,'address','',4,'',''),(54,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',1,'ip','',4,'8.8.8.8','8.8.8.8'),(55,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',2,'address','',4,'',''),(56,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',1,'ip','',4,'8.8.8.8','8.8.8.8'),(57,'96437382-2854-4644-9dff-b22c82418c19',2,'address','',4,'',''),(58,'96437382-2854-4644-9dff-b22c82418c19',1,'ip','',4,'8.8.8.8','8.8.8.8'),(59,'225831db-dc7d-44e6-9aab-2ea190c52178',2,'address','',4,'',''),(60,'225831db-dc7d-44e6-9aab-2ea190c52178',1,'ip','',4,'8.8.8.8','8.8.8.8'),(61,'b0317b97-a008-4020-afe3-717d0ebeff1c',2,'address','',4,'',''),(62,'b0317b97-a008-4020-afe3-717d0ebeff1c',1,'ip','',4,'8.8.8.8','8.8.8.8'),(63,'a4af6209-e279-46d0-a929-248f392681aa',2,'address','',4,'',''),(64,'a4af6209-e279-46d0-a929-248f392681aa',1,'ip','',4,'8.8.8.8','8.8.8.8'),(65,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',2,'address','',4,'',''),(66,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',1,'ip','',4,'8.8.8.8','8.8.8.8'),(67,'75711432-d389-4300-bcff-e2654d2f2b70',2,'address','',4,'',''),(68,'75711432-d389-4300-bcff-e2654d2f2b70',1,'ip','',4,'8.8.8.8','8.8.8.8'),(69,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',2,'address','',4,'',''),(70,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',1,'ip','',4,'8.8.8.8','8.8.8.8'),(71,'29d06f8f-f970-4eba-8c01-88d124cd516b',2,'address','',4,'',''),(72,'29d06f8f-f970-4eba-8c01-88d124cd516b',1,'ip','',4,'8.8.8.8','8.8.8.8'),(73,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',2,'address','',4,'',''),(74,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',1,'ip','',4,'8.8.8.8','8.8.8.8'),(75,'e0b6eca7-07be-46a5-8289-b1e6320de459',2,'address','',4,'',''),(76,'e0b6eca7-07be-46a5-8289-b1e6320de459',1,'ip','',4,'8.8.8.8','8.8.8.8'),(77,'69752a39-3c37-4a31-9e41-7003ac23dfe7',2,'address','',4,'',''),(78,'69752a39-3c37-4a31-9e41-7003ac23dfe7',1,'ip','',4,'8.8.8.8','8.8.8.8'),(79,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',2,'address','',4,'',''),(80,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',1,'ip','',4,'8.8.8.8','8.8.8.8'),(81,'79cf2f51-1138-4c27-8327-1797803d3232',2,'address','',4,'',''),(82,'79cf2f51-1138-4c27-8327-1797803d3232',1,'ip','',4,'8.8.8.8','8.8.8.8'),(83,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',2,'address','',4,'',''),(84,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',1,'ip','',4,'8.8.8.8','8.8.8.8');
/*!40000 ALTER TABLE `processinherentvariable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processlogs`
--

DROP TABLE IF EXISTS `processlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessID` varchar(50) NOT NULL,
  `log` text,
  `starttime` bigint(20) DEFAULT NULL,
  `endtime` bigint(20) DEFAULT NULL,
  `idletime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processlogs`
--

LOCK TABLES `processlogs` WRITE;
/*!40000 ALTER TABLE `processlogs` DISABLE KEYS */;
INSERT INTO `processlogs` VALUES (8,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2','Process ID: f1ee3bb3-f89c-4fe5-9610-413f640c5dd2\nPROCESS EVENT----ProcessID: f1ee3bb3-f89c-4fe5-9610-413f640c5dd2, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: f1ee3bb3-f89c-4fe5-9610-413f640c5dd2, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: f1ee3bb3-f89c-4fe5-9610-413f640c5dd2, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: f1ee3bb3-f89c-4fe5-9610-413f640c5dd2, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: f1ee3bb3-f89c-4fe5-9610-413f640c5dd2, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: f1ee3bb3-f89c-4fe5-9610-413f640c5dd2, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491537076988,1491537076988,0),(9,'be17b7e5-c31b-4fed-8d42-411ed0e83372','Process ID: be17b7e5-c31b-4fed-8d42-411ed0e83372\nPROCESS EVENT----ProcessID: be17b7e5-c31b-4fed-8d42-411ed0e83372, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: be17b7e5-c31b-4fed-8d42-411ed0e83372, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: be17b7e5-c31b-4fed-8d42-411ed0e83372, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: be17b7e5-c31b-4fed-8d42-411ed0e83372, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: be17b7e5-c31b-4fed-8d42-411ed0e83372, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: be17b7e5-c31b-4fed-8d42-411ed0e83372, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491632712594,1491632712594,0),(10,'6364d775-2540-44d1-be59-676f0c8dc910','Process ID: 6364d775-2540-44d1-be59-676f0c8dc910\nPROCESS EVENT----ProcessID: 6364d775-2540-44d1-be59-676f0c8dc910, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 6364d775-2540-44d1-be59-676f0c8dc910, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 6364d775-2540-44d1-be59-676f0c8dc910, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 6364d775-2540-44d1-be59-676f0c8dc910, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 6364d775-2540-44d1-be59-676f0c8dc910, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 6364d775-2540-44d1-be59-676f0c8dc910, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491632795145,1491632795145,0),(11,'886d507d-b90a-4ace-a253-2687294040c9','Process ID: 886d507d-b90a-4ace-a253-2687294040c9\nPROCESS EVENT----ProcessID: 886d507d-b90a-4ace-a253-2687294040c9, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 886d507d-b90a-4ace-a253-2687294040c9, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 886d507d-b90a-4ace-a253-2687294040c9, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 886d507d-b90a-4ace-a253-2687294040c9, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 886d507d-b90a-4ace-a253-2687294040c9, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 886d507d-b90a-4ace-a253-2687294040c9, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491710971534,1491710971534,0),(12,'972b60dd-52ca-4d8a-98da-3aa1c29502b0','Process ID: 972b60dd-52ca-4d8a-98da-3aa1c29502b0\nPROCESS EVENT----ProcessID: 972b60dd-52ca-4d8a-98da-3aa1c29502b0, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 972b60dd-52ca-4d8a-98da-3aa1c29502b0, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 972b60dd-52ca-4d8a-98da-3aa1c29502b0, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 972b60dd-52ca-4d8a-98da-3aa1c29502b0, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 972b60dd-52ca-4d8a-98da-3aa1c29502b0, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 972b60dd-52ca-4d8a-98da-3aa1c29502b0, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491711007108,1491711007108,0),(13,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16','Process ID: 04a98b3e-6df0-49ec-ae51-b6f3a94d2d16\nPROCESS EVENT----ProcessID: 04a98b3e-6df0-49ec-ae51-b6f3a94d2d16, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 04a98b3e-6df0-49ec-ae51-b6f3a94d2d16, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 04a98b3e-6df0-49ec-ae51-b6f3a94d2d16, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 04a98b3e-6df0-49ec-ae51-b6f3a94d2d16, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 04a98b3e-6df0-49ec-ae51-b6f3a94d2d16, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 04a98b3e-6df0-49ec-ae51-b6f3a94d2d16, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491711619052,1491711619052,0),(14,'8994091c-3399-4771-9db8-2ab0457e6b21','Process ID: 8994091c-3399-4771-9db8-2ab0457e6b21\nPROCESS EVENT----ProcessID: 8994091c-3399-4771-9db8-2ab0457e6b21, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 8994091c-3399-4771-9db8-2ab0457e6b21, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 8994091c-3399-4771-9db8-2ab0457e6b21, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 8994091c-3399-4771-9db8-2ab0457e6b21, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 8994091c-3399-4771-9db8-2ab0457e6b21, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 8994091c-3399-4771-9db8-2ab0457e6b21, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491712291956,1491712291956,0),(15,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835','Process ID: 7d70a567-f2b2-4260-9ce1-5d6b1e2aa835\nPROCESS EVENT----ProcessID: 7d70a567-f2b2-4260-9ce1-5d6b1e2aa835, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 7d70a567-f2b2-4260-9ce1-5d6b1e2aa835, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 7d70a567-f2b2-4260-9ce1-5d6b1e2aa835, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 7d70a567-f2b2-4260-9ce1-5d6b1e2aa835, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 7d70a567-f2b2-4260-9ce1-5d6b1e2aa835, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 7d70a567-f2b2-4260-9ce1-5d6b1e2aa835, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491712487314,1491712487314,0),(16,'01686096-0080-4b0b-8b8c-2c770ecc0efb','Process ID: 01686096-0080-4b0b-8b8c-2c770ecc0efb\nPROCESS EVENT----ProcessID: 01686096-0080-4b0b-8b8c-2c770ecc0efb, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 01686096-0080-4b0b-8b8c-2c770ecc0efb, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 01686096-0080-4b0b-8b8c-2c770ecc0efb, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 01686096-0080-4b0b-8b8c-2c770ecc0efb, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 01686096-0080-4b0b-8b8c-2c770ecc0efb, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 01686096-0080-4b0b-8b8c-2c770ecc0efb, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491713474304,1491713474304,0),(17,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd','Process ID: c71f2cee-c7b7-40b0-b48c-149a96a9eacd\nPROCESS EVENT----ProcessID: c71f2cee-c7b7-40b0-b48c-149a96a9eacd, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: c71f2cee-c7b7-40b0-b48c-149a96a9eacd, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: c71f2cee-c7b7-40b0-b48c-149a96a9eacd, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: c71f2cee-c7b7-40b0-b48c-149a96a9eacd, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: c71f2cee-c7b7-40b0-b48c-149a96a9eacd, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: c71f2cee-c7b7-40b0-b48c-149a96a9eacd, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491721450462,1491721450462,0),(18,'b6a5537f-5d66-42b3-ac99-b994758624f2','Process ID: b6a5537f-5d66-42b3-ac99-b994758624f2\nPROCESS EVENT----ProcessID: b6a5537f-5d66-42b3-ac99-b994758624f2, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: b6a5537f-5d66-42b3-ac99-b994758624f2, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: b6a5537f-5d66-42b3-ac99-b994758624f2, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: b6a5537f-5d66-42b3-ac99-b994758624f2, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: b6a5537f-5d66-42b3-ac99-b994758624f2, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: b6a5537f-5d66-42b3-ac99-b994758624f2, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491721560924,1491721560924,0),(19,'455ea270-dcb8-4a50-be11-a29ff2179c6a','Process ID: 455ea270-dcb8-4a50-be11-a29ff2179c6a\nPROCESS EVENT----ProcessID: 455ea270-dcb8-4a50-be11-a29ff2179c6a, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 455ea270-dcb8-4a50-be11-a29ff2179c6a, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 455ea270-dcb8-4a50-be11-a29ff2179c6a, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 455ea270-dcb8-4a50-be11-a29ff2179c6a, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 455ea270-dcb8-4a50-be11-a29ff2179c6a, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 455ea270-dcb8-4a50-be11-a29ff2179c6a, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491793044221,1491793044221,0),(20,'d79a93fa-e950-425f-b248-76be3620321d','Process ID: d79a93fa-e950-425f-b248-76be3620321d\nPROCESS EVENT----ProcessID: d79a93fa-e950-425f-b248-76be3620321d, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: d79a93fa-e950-425f-b248-76be3620321d, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: d79a93fa-e950-425f-b248-76be3620321d, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: d79a93fa-e950-425f-b248-76be3620321d, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: d79a93fa-e950-425f-b248-76be3620321d, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: d79a93fa-e950-425f-b248-76be3620321d, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491793600119,1491793600119,0),(21,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3','Process ID: 0a8deb5f-bef1-41d9-a404-0a0b113f6af3\nPROCESS EVENT----ProcessID: 0a8deb5f-bef1-41d9-a404-0a0b113f6af3, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 0a8deb5f-bef1-41d9-a404-0a0b113f6af3, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 0a8deb5f-bef1-41d9-a404-0a0b113f6af3, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 0a8deb5f-bef1-41d9-a404-0a0b113f6af3, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 0a8deb5f-bef1-41d9-a404-0a0b113f6af3, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 0a8deb5f-bef1-41d9-a404-0a0b113f6af3, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491795511881,1491795511881,0),(22,'31317770-82a7-4569-a43b-ed451dc59a78','Process ID: 31317770-82a7-4569-a43b-ed451dc59a78\nPROCESS EVENT----ProcessID: 31317770-82a7-4569-a43b-ed451dc59a78, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 31317770-82a7-4569-a43b-ed451dc59a78, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 31317770-82a7-4569-a43b-ed451dc59a78, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 31317770-82a7-4569-a43b-ed451dc59a78, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 31317770-82a7-4569-a43b-ed451dc59a78, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 31317770-82a7-4569-a43b-ed451dc59a78, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491798365365,1491798365365,0),(26,'c2c11feb-4529-4724-9e14-fb5508a0e9ae','Process ID: c2c11feb-4529-4724-9e14-fb5508a0e9ae\nPROCESS EVENT----ProcessID: c2c11feb-4529-4724-9e14-fb5508a0e9ae, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: c2c11feb-4529-4724-9e14-fb5508a0e9ae, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: c2c11feb-4529-4724-9e14-fb5508a0e9ae, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: c2c11feb-4529-4724-9e14-fb5508a0e9ae, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: c2c11feb-4529-4724-9e14-fb5508a0e9ae, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: c2c11feb-4529-4724-9e14-fb5508a0e9ae, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491815929600,1491815929600,0),(27,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609','Process ID: 64d6fce7-4bc9-47fd-bfe9-5be9a5366609\nPROCESS EVENT----ProcessID: 64d6fce7-4bc9-47fd-bfe9-5be9a5366609, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 64d6fce7-4bc9-47fd-bfe9-5be9a5366609, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 64d6fce7-4bc9-47fd-bfe9-5be9a5366609, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 64d6fce7-4bc9-47fd-bfe9-5be9a5366609, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 64d6fce7-4bc9-47fd-bfe9-5be9a5366609, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 64d6fce7-4bc9-47fd-bfe9-5be9a5366609, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491816087108,1491816087108,0),(28,'7d1f3abd-6101-4d64-a977-9c9022c5efd0','Process ID: 7d1f3abd-6101-4d64-a977-9c9022c5efd0\nPROCESS EVENT----ProcessID: 7d1f3abd-6101-4d64-a977-9c9022c5efd0, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 7d1f3abd-6101-4d64-a977-9c9022c5efd0, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 7d1f3abd-6101-4d64-a977-9c9022c5efd0, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 7d1f3abd-6101-4d64-a977-9c9022c5efd0, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 7d1f3abd-6101-4d64-a977-9c9022c5efd0, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 7d1f3abd-6101-4d64-a977-9c9022c5efd0, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491820506962,1491820506962,0),(29,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1','Process ID: 51c86adc-abe9-477f-a03e-5e8d7c37dcd1\nPROCESS EVENT----ProcessID: 51c86adc-abe9-477f-a03e-5e8d7c37dcd1, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 51c86adc-abe9-477f-a03e-5e8d7c37dcd1, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 51c86adc-abe9-477f-a03e-5e8d7c37dcd1, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 51c86adc-abe9-477f-a03e-5e8d7c37dcd1, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 51c86adc-abe9-477f-a03e-5e8d7c37dcd1, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 51c86adc-abe9-477f-a03e-5e8d7c37dcd1, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491820866856,1491820866856,0),(30,'96437382-2854-4644-9dff-b22c82418c19','Process ID: 96437382-2854-4644-9dff-b22c82418c19\nPROCESS EVENT----ProcessID: 96437382-2854-4644-9dff-b22c82418c19, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 96437382-2854-4644-9dff-b22c82418c19, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 96437382-2854-4644-9dff-b22c82418c19, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 96437382-2854-4644-9dff-b22c82418c19, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 96437382-2854-4644-9dff-b22c82418c19, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 96437382-2854-4644-9dff-b22c82418c19, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491821170669,1491821170669,0),(31,'225831db-dc7d-44e6-9aab-2ea190c52178','Process ID: 225831db-dc7d-44e6-9aab-2ea190c52178\nPROCESS EVENT----ProcessID: 225831db-dc7d-44e6-9aab-2ea190c52178, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 225831db-dc7d-44e6-9aab-2ea190c52178, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 225831db-dc7d-44e6-9aab-2ea190c52178, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 225831db-dc7d-44e6-9aab-2ea190c52178, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 225831db-dc7d-44e6-9aab-2ea190c52178, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 225831db-dc7d-44e6-9aab-2ea190c52178, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491829839703,1491829839703,0),(32,'b0317b97-a008-4020-afe3-717d0ebeff1c','Process ID: b0317b97-a008-4020-afe3-717d0ebeff1c\nPROCESS EVENT----ProcessID: b0317b97-a008-4020-afe3-717d0ebeff1c, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: b0317b97-a008-4020-afe3-717d0ebeff1c, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: b0317b97-a008-4020-afe3-717d0ebeff1c, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: b0317b97-a008-4020-afe3-717d0ebeff1c, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: b0317b97-a008-4020-afe3-717d0ebeff1c, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: b0317b97-a008-4020-afe3-717d0ebeff1c, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491830107597,1491830107597,0),(33,'a4af6209-e279-46d0-a929-248f392681aa','Process ID: a4af6209-e279-46d0-a929-248f392681aa\nPROCESS EVENT----ProcessID: a4af6209-e279-46d0-a929-248f392681aa, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: a4af6209-e279-46d0-a929-248f392681aa, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: a4af6209-e279-46d0-a929-248f392681aa, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: a4af6209-e279-46d0-a929-248f392681aa, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: a4af6209-e279-46d0-a929-248f392681aa, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: a4af6209-e279-46d0-a929-248f392681aa, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491832203376,1491832203376,0),(34,'a75d0e6d-a422-4176-876f-d39ec75c7e9e','Process ID: a75d0e6d-a422-4176-876f-d39ec75c7e9e\nPROCESS EVENT----ProcessID: a75d0e6d-a422-4176-876f-d39ec75c7e9e, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: a75d0e6d-a422-4176-876f-d39ec75c7e9e, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: a75d0e6d-a422-4176-876f-d39ec75c7e9e, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: a75d0e6d-a422-4176-876f-d39ec75c7e9e, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: a75d0e6d-a422-4176-876f-d39ec75c7e9e, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: a75d0e6d-a422-4176-876f-d39ec75c7e9e, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491832372502,1491832372502,0),(35,'75711432-d389-4300-bcff-e2654d2f2b70','Process ID: 75711432-d389-4300-bcff-e2654d2f2b70\nPROCESS EVENT----ProcessID: 75711432-d389-4300-bcff-e2654d2f2b70, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 75711432-d389-4300-bcff-e2654d2f2b70, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 75711432-d389-4300-bcff-e2654d2f2b70, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 75711432-d389-4300-bcff-e2654d2f2b70, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 75711432-d389-4300-bcff-e2654d2f2b70, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 75711432-d389-4300-bcff-e2654d2f2b70, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491877111101,1491877111101,0),(36,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd','Process ID: efc983c3-b6a2-4ada-8232-0de25cf7c0dd\nPROCESS EVENT----ProcessID: efc983c3-b6a2-4ada-8232-0de25cf7c0dd, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: efc983c3-b6a2-4ada-8232-0de25cf7c0dd, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: efc983c3-b6a2-4ada-8232-0de25cf7c0dd, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: efc983c3-b6a2-4ada-8232-0de25cf7c0dd, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: efc983c3-b6a2-4ada-8232-0de25cf7c0dd, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: efc983c3-b6a2-4ada-8232-0de25cf7c0dd, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491877324538,1491877324538,0),(37,'29d06f8f-f970-4eba-8c01-88d124cd516b','Process ID: 29d06f8f-f970-4eba-8c01-88d124cd516b\nPROCESS EVENT----ProcessID: 29d06f8f-f970-4eba-8c01-88d124cd516b, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 29d06f8f-f970-4eba-8c01-88d124cd516b, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 29d06f8f-f970-4eba-8c01-88d124cd516b, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 29d06f8f-f970-4eba-8c01-88d124cd516b, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 29d06f8f-f970-4eba-8c01-88d124cd516b, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 29d06f8f-f970-4eba-8c01-88d124cd516b, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491879008229,1491879008229,0),(38,'67bf3cf3-fd45-4772-bcb4-52391952d2ee','Process ID: 67bf3cf3-fd45-4772-bcb4-52391952d2ee\nPROCESS EVENT----ProcessID: 67bf3cf3-fd45-4772-bcb4-52391952d2ee, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 67bf3cf3-fd45-4772-bcb4-52391952d2ee, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 67bf3cf3-fd45-4772-bcb4-52391952d2ee, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 67bf3cf3-fd45-4772-bcb4-52391952d2ee, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 67bf3cf3-fd45-4772-bcb4-52391952d2ee, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 67bf3cf3-fd45-4772-bcb4-52391952d2ee, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491879202586,1491879202586,0),(39,'e0b6eca7-07be-46a5-8289-b1e6320de459','Process ID: e0b6eca7-07be-46a5-8289-b1e6320de459\nPROCESS EVENT----ProcessID: e0b6eca7-07be-46a5-8289-b1e6320de459, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: e0b6eca7-07be-46a5-8289-b1e6320de459, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: e0b6eca7-07be-46a5-8289-b1e6320de459, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: e0b6eca7-07be-46a5-8289-b1e6320de459, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: e0b6eca7-07be-46a5-8289-b1e6320de459, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: e0b6eca7-07be-46a5-8289-b1e6320de459, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491879927839,1491879927839,0),(40,'69752a39-3c37-4a31-9e41-7003ac23dfe7','Process ID: 69752a39-3c37-4a31-9e41-7003ac23dfe7\nPROCESS EVENT----ProcessID: 69752a39-3c37-4a31-9e41-7003ac23dfe7, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 69752a39-3c37-4a31-9e41-7003ac23dfe7, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 69752a39-3c37-4a31-9e41-7003ac23dfe7, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 69752a39-3c37-4a31-9e41-7003ac23dfe7, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 69752a39-3c37-4a31-9e41-7003ac23dfe7, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 69752a39-3c37-4a31-9e41-7003ac23dfe7, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491880081030,1491880081030,0),(41,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3','Process ID: b11a0fb6-c692-4fb9-8c35-7f04a9691bd3\nPROCESS EVENT----ProcessID: b11a0fb6-c692-4fb9-8c35-7f04a9691bd3, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: b11a0fb6-c692-4fb9-8c35-7f04a9691bd3, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: b11a0fb6-c692-4fb9-8c35-7f04a9691bd3, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: b11a0fb6-c692-4fb9-8c35-7f04a9691bd3, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: b11a0fb6-c692-4fb9-8c35-7f04a9691bd3, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: b11a0fb6-c692-4fb9-8c35-7f04a9691bd3, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491889781590,1491889781590,0),(42,'79cf2f51-1138-4c27-8327-1797803d3232','Process ID: 79cf2f51-1138-4c27-8327-1797803d3232\nPROCESS EVENT----ProcessID: 79cf2f51-1138-4c27-8327-1797803d3232, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 79cf2f51-1138-4c27-8327-1797803d3232, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 79cf2f51-1138-4c27-8327-1797803d3232, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 79cf2f51-1138-4c27-8327-1797803d3232, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 79cf2f51-1138-4c27-8327-1797803d3232, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 79cf2f51-1138-4c27-8327-1797803d3232, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491891619224,1491891619224,0),(43,'5b06a87a-a2a2-419c-ae36-8b1a6592b499','Process ID: 5b06a87a-a2a2-419c-ae36-8b1a6592b499\nPROCESS EVENT----ProcessID: 5b06a87a-a2a2-419c-ae36-8b1a6592b499, EventID: 3, Expression: EndOf(1).\nDO ACTION----action: Activity, object: 3, executed.\nPROCESS EVENT----ProcessID: 5b06a87a-a2a2-419c-ae36-8b1a6592b499, EventID: 13, Expression: Initialized(3).\nPROCESS EVENT----ProcessID: 5b06a87a-a2a2-419c-ae36-8b1a6592b499, EventID: 14, Expression: Started(3).\nPROCESS EVENT----ProcessID: 5b06a87a-a2a2-419c-ae36-8b1a6592b499, EventID: 15, Expression: EndOf(3).\nDO ACTION----action: Activity, object: 2, executed.\nPROCESS EVENT----ProcessID: 5b06a87a-a2a2-419c-ae36-8b1a6592b499, EventID: 7, Expression: Initialized(2).\nPROCESS EVENT----ProcessID: 5b06a87a-a2a2-419c-ae36-8b1a6592b499, EventID: 9, Expression: EndOf(2).\nProcess Complete\n',1491891733016,1491891733016,0);
/*!40000 ALTER TABLE `processlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processobject`
--

DROP TABLE IF EXISTS `processobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processobject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessID` varchar(50) NOT NULL DEFAULT '',
  `ObjectID` int(11) NOT NULL DEFAULT '0',
  `ObjectName` varchar(50) DEFAULT NULL,
  `ISInput` tinyint(1) DEFAULT NULL,
  `ISOutput` tinyint(1) DEFAULT NULL,
  `ISVisible` tinyint(1) DEFAULT NULL,
  `ObjectType` smallint(6) DEFAULT NULL,
  `Scope` smallint(6) DEFAULT NULL,
  `PackageObjectID` smallint(6) DEFAULT NULL,
  `State` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processobject`
--

LOCK TABLES `processobject` WRITE;
/*!40000 ALTER TABLE `processobject` DISABLE KEYS */;
INSERT INTO `processobject` VALUES (19,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',2,'address',0,0,0,1,0,0,0),(20,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',1,'ip',0,0,0,1,0,0,0),(21,'be17b7e5-c31b-4fed-8d42-411ed0e83372',2,'address',0,0,0,1,0,0,0),(22,'be17b7e5-c31b-4fed-8d42-411ed0e83372',1,'ip',0,0,0,1,0,0,0),(23,'6364d775-2540-44d1-be59-676f0c8dc910',2,'address',0,0,0,1,0,0,0),(24,'6364d775-2540-44d1-be59-676f0c8dc910',1,'ip',0,0,0,1,0,0,0),(25,'886d507d-b90a-4ace-a253-2687294040c9',2,'address',0,0,0,1,0,0,0),(26,'886d507d-b90a-4ace-a253-2687294040c9',1,'ip',0,0,0,1,0,0,0),(27,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',2,'address',0,0,0,1,0,0,0),(28,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',1,'ip',0,0,0,1,0,0,0),(29,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',2,'address',0,0,0,1,0,0,0),(30,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',1,'ip',0,0,0,1,0,0,0),(31,'8994091c-3399-4771-9db8-2ab0457e6b21',2,'address',0,0,0,1,0,0,0),(32,'8994091c-3399-4771-9db8-2ab0457e6b21',1,'ip',0,0,0,1,0,0,0),(33,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',2,'address',0,0,0,1,0,0,0),(34,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',1,'ip',0,0,0,1,0,0,0),(35,'01686096-0080-4b0b-8b8c-2c770ecc0efb',2,'address',0,0,0,1,0,0,0),(36,'01686096-0080-4b0b-8b8c-2c770ecc0efb',1,'ip',0,0,0,1,0,0,0),(37,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',2,'address',0,0,0,1,0,0,0),(38,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',1,'ip',0,0,0,1,0,0,0),(39,'b6a5537f-5d66-42b3-ac99-b994758624f2',2,'address',0,0,0,1,0,0,0),(40,'b6a5537f-5d66-42b3-ac99-b994758624f2',1,'ip',0,0,0,1,0,0,0),(41,'455ea270-dcb8-4a50-be11-a29ff2179c6a',2,'address',0,0,0,1,0,0,0),(42,'455ea270-dcb8-4a50-be11-a29ff2179c6a',1,'ip',0,0,0,1,0,0,0),(43,'d79a93fa-e950-425f-b248-76be3620321d',2,'address',0,0,0,1,0,0,0),(44,'d79a93fa-e950-425f-b248-76be3620321d',1,'ip',0,0,0,1,0,0,0),(45,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',2,'address',0,0,0,1,0,0,0),(46,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',1,'ip',0,0,0,1,0,0,0),(47,'31317770-82a7-4569-a43b-ed451dc59a78',2,'address',0,0,0,1,0,0,0),(48,'31317770-82a7-4569-a43b-ed451dc59a78',1,'ip',0,0,0,1,0,0,0),(49,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',2,'address',0,0,0,1,0,0,0),(50,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',1,'ip',0,0,0,1,0,0,0),(51,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',2,'address',0,0,0,1,0,0,0),(52,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',1,'ip',0,0,0,1,0,0,0),(53,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',2,'address',0,0,0,1,0,0,0),(54,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',1,'ip',0,0,0,1,0,0,0),(55,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',2,'address',0,0,0,1,0,0,0),(56,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',1,'ip',0,0,0,1,0,0,0),(57,'96437382-2854-4644-9dff-b22c82418c19',2,'address',0,0,0,1,0,0,0),(58,'96437382-2854-4644-9dff-b22c82418c19',1,'ip',0,0,0,1,0,0,0),(59,'225831db-dc7d-44e6-9aab-2ea190c52178',2,'address',0,0,0,1,0,0,0),(60,'225831db-dc7d-44e6-9aab-2ea190c52178',1,'ip',0,0,0,1,0,0,0),(61,'b0317b97-a008-4020-afe3-717d0ebeff1c',2,'address',0,0,0,1,0,0,0),(62,'b0317b97-a008-4020-afe3-717d0ebeff1c',1,'ip',0,0,0,1,0,0,0),(63,'a4af6209-e279-46d0-a929-248f392681aa',2,'address',0,0,0,1,0,0,0),(64,'a4af6209-e279-46d0-a929-248f392681aa',1,'ip',0,0,0,1,0,0,0),(65,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',2,'address',0,0,0,1,0,0,0),(66,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',1,'ip',0,0,0,1,0,0,0),(67,'75711432-d389-4300-bcff-e2654d2f2b70',2,'address',0,0,0,1,0,0,0),(68,'75711432-d389-4300-bcff-e2654d2f2b70',1,'ip',0,0,0,1,0,0,0),(69,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',2,'address',0,0,0,1,0,0,0),(70,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',1,'ip',0,0,0,1,0,0,0),(71,'29d06f8f-f970-4eba-8c01-88d124cd516b',2,'address',0,0,0,1,0,0,0),(72,'29d06f8f-f970-4eba-8c01-88d124cd516b',1,'ip',0,0,0,1,0,0,0),(73,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',2,'address',0,0,0,1,0,0,0),(74,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',1,'ip',0,0,0,1,0,0,0),(75,'e0b6eca7-07be-46a5-8289-b1e6320de459',2,'address',0,0,0,1,0,0,0),(76,'e0b6eca7-07be-46a5-8289-b1e6320de459',1,'ip',0,0,0,1,0,0,0),(77,'69752a39-3c37-4a31-9e41-7003ac23dfe7',2,'address',0,0,0,1,0,0,0),(78,'69752a39-3c37-4a31-9e41-7003ac23dfe7',1,'ip',0,0,0,1,0,0,0),(79,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',2,'address',0,0,0,1,0,0,0),(80,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',1,'ip',0,0,0,1,0,0,0),(81,'79cf2f51-1138-4c27-8327-1797803d3232',2,'address',0,0,0,1,0,0,0),(82,'79cf2f51-1138-4c27-8327-1797803d3232',1,'ip',0,0,0,1,0,0,0),(83,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',2,'address',0,0,0,1,0,0,0),(84,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',1,'ip',0,0,0,1,0,0,0);
/*!40000 ALTER TABLE `processobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processprocessecarule`
--

DROP TABLE IF EXISTS `processprocessecarule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processprocessecarule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessID` varchar(50) NOT NULL DEFAULT '',
  `RuleID` int(11) NOT NULL DEFAULT '0',
  `EventID` int(11) NOT NULL DEFAULT '0',
  `ConditionID` int(11) NOT NULL DEFAULT '0',
  `ActionExpression` varchar(200) DEFAULT NULL,
  `Probability` float DEFAULT NULL,
  `ProbabilityCoefficient` float DEFAULT NULL,
  `ActiveTime` datetime DEFAULT NULL,
  `RepeatedTime` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processprocessecarule`
--

LOCK TABLES `processprocessecarule` WRITE;
/*!40000 ALTER TABLE `processprocessecarule` DISABLE KEYS */;
INSERT INTO `processprocessecarule` VALUES (19,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',1,3,0,'(Activity.3)',0,0,'2017-04-07 00:00:00',1),(20,'f1ee3bb3-f89c-4fe5-9610-413f640c5dd2',2,15,0,'(Activity.2)',0,0,'2017-04-07 00:00:00',1),(21,'be17b7e5-c31b-4fed-8d42-411ed0e83372',1,3,0,'(Activity.3)',0,0,'2017-04-08 00:00:00',1),(22,'be17b7e5-c31b-4fed-8d42-411ed0e83372',2,15,0,'(Activity.2)',0,0,'2017-04-08 00:00:00',1),(23,'6364d775-2540-44d1-be59-676f0c8dc910',1,3,0,'(Activity.3)',0,0,'2017-04-08 00:00:00',1),(24,'6364d775-2540-44d1-be59-676f0c8dc910',2,15,0,'(Activity.2)',0,0,'2017-04-08 00:00:00',1),(25,'886d507d-b90a-4ace-a253-2687294040c9',1,3,0,'(Activity.3)',0,0,'2017-04-09 00:00:00',1),(26,'886d507d-b90a-4ace-a253-2687294040c9',2,15,0,'(Activity.2)',0,0,'2017-04-09 00:00:00',1),(27,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',1,3,0,'(Activity.3)',0,0,'2017-04-09 00:00:00',1),(28,'972b60dd-52ca-4d8a-98da-3aa1c29502b0',2,15,0,'(Activity.2)',0,0,'2017-04-09 00:00:00',1),(29,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',1,3,0,'(Activity.3)',0,0,'2017-04-09 00:00:00',1),(30,'04a98b3e-6df0-49ec-ae51-b6f3a94d2d16',2,15,0,'(Activity.2)',0,0,'2017-04-09 00:00:00',1),(31,'8994091c-3399-4771-9db8-2ab0457e6b21',1,3,0,'(Activity.3)',0,0,'2017-04-09 00:00:00',1),(32,'8994091c-3399-4771-9db8-2ab0457e6b21',2,15,0,'(Activity.2)',0,0,'2017-04-09 00:00:00',1),(33,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',1,3,0,'(Activity.3)',0,0,'2017-04-09 00:00:00',1),(34,'7d70a567-f2b2-4260-9ce1-5d6b1e2aa835',2,15,0,'(Activity.2)',0,0,'2017-04-09 00:00:00',1),(35,'01686096-0080-4b0b-8b8c-2c770ecc0efb',1,3,0,'(Activity.3)',0,0,'2017-04-09 00:00:00',1),(36,'01686096-0080-4b0b-8b8c-2c770ecc0efb',2,15,0,'(Activity.2)',0,0,'2017-04-09 00:00:00',1),(37,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',1,3,0,'(Activity.3)',0,0,'2017-04-09 00:00:00',1),(38,'c71f2cee-c7b7-40b0-b48c-149a96a9eacd',2,15,0,'(Activity.2)',0,0,'2017-04-09 00:00:00',1),(39,'b6a5537f-5d66-42b3-ac99-b994758624f2',1,3,0,'(Activity.3)',0,0,'2017-04-09 00:00:00',1),(40,'b6a5537f-5d66-42b3-ac99-b994758624f2',2,15,0,'(Activity.2)',0,0,'2017-04-09 00:00:00',1),(41,'455ea270-dcb8-4a50-be11-a29ff2179c6a',1,3,0,'(Activity.3)',0,0,'2017-04-10 00:00:00',1),(42,'455ea270-dcb8-4a50-be11-a29ff2179c6a',2,15,0,'(Activity.2)',0,0,'2017-04-10 00:00:00',1),(43,'d79a93fa-e950-425f-b248-76be3620321d',1,3,0,'(Activity.3)',0,0,'2017-04-10 00:00:00',1),(44,'d79a93fa-e950-425f-b248-76be3620321d',2,15,0,'(Activity.2)',0,0,'2017-04-10 00:00:00',1),(45,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',1,3,0,'(Activity.3)',0,0,'2017-04-10 00:00:00',1),(46,'0a8deb5f-bef1-41d9-a404-0a0b113f6af3',2,15,0,'(Activity.2)',0,0,'2017-04-10 00:00:00',1),(47,'31317770-82a7-4569-a43b-ed451dc59a78',1,3,0,'(Activity.3)',0,0,'2017-04-10 00:00:00',1),(48,'31317770-82a7-4569-a43b-ed451dc59a78',2,15,0,'(Activity.2)',0,0,'2017-04-10 00:00:00',1),(49,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',1,3,0,'(Activity.3)',0,0,'2017-04-10 00:00:00',1),(50,'c2c11feb-4529-4724-9e14-fb5508a0e9ae',2,15,0,'(Activity.2)',0,0,'2017-04-10 00:00:00',1),(51,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',1,3,0,'(Activity.3)',0,0,'2017-04-10 00:00:00',1),(52,'64d6fce7-4bc9-47fd-bfe9-5be9a5366609',2,15,0,'(Activity.2)',0,0,'2017-04-10 00:00:00',1),(53,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',1,3,0,'(Activity.3)',0,0,'2017-04-10 00:00:00',1),(54,'7d1f3abd-6101-4d64-a977-9c9022c5efd0',2,15,0,'(Activity.2)',0,0,'2017-04-10 00:00:00',1),(55,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',1,3,0,'(Activity.3)',0,0,'2017-04-10 00:00:00',1),(56,'51c86adc-abe9-477f-a03e-5e8d7c37dcd1',2,15,0,'(Activity.2)',0,0,'2017-04-10 00:00:00',1),(57,'96437382-2854-4644-9dff-b22c82418c19',1,3,0,'(Activity.3)',0,0,'2017-04-10 00:00:00',1),(58,'96437382-2854-4644-9dff-b22c82418c19',2,15,0,'(Activity.2)',0,0,'2017-04-10 00:00:00',1),(59,'225831db-dc7d-44e6-9aab-2ea190c52178',1,3,0,'(Activity.3)',0,0,'2017-04-10 00:00:00',1),(60,'225831db-dc7d-44e6-9aab-2ea190c52178',2,15,0,'(Activity.2)',0,0,'2017-04-10 00:00:00',1),(61,'b0317b97-a008-4020-afe3-717d0ebeff1c',1,3,0,'(Activity.3)',0,0,'2017-04-10 00:00:00',1),(62,'b0317b97-a008-4020-afe3-717d0ebeff1c',2,15,0,'(Activity.2)',0,0,'2017-04-10 00:00:00',1),(63,'a4af6209-e279-46d0-a929-248f392681aa',1,3,0,'(Activity.3)',0,0,'2017-04-10 00:00:00',1),(64,'a4af6209-e279-46d0-a929-248f392681aa',2,15,0,'(Activity.2)',0,0,'2017-04-10 00:00:00',1),(65,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',1,3,0,'(Activity.3)',0,0,'2017-04-10 00:00:00',1),(66,'a75d0e6d-a422-4176-876f-d39ec75c7e9e',2,15,0,'(Activity.2)',0,0,'2017-04-10 00:00:00',1),(67,'75711432-d389-4300-bcff-e2654d2f2b70',1,3,0,'(Activity.3)',0,0,'2017-04-11 00:00:00',1),(68,'75711432-d389-4300-bcff-e2654d2f2b70',2,15,0,'(Activity.2)',0,0,'2017-04-11 00:00:00',1),(69,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',1,3,0,'(Activity.3)',0,0,'2017-04-11 00:00:00',1),(70,'efc983c3-b6a2-4ada-8232-0de25cf7c0dd',2,15,0,'(Activity.2)',0,0,'2017-04-11 00:00:00',1),(71,'29d06f8f-f970-4eba-8c01-88d124cd516b',1,3,0,'(Activity.3)',0,0,'2017-04-11 00:00:00',1),(72,'29d06f8f-f970-4eba-8c01-88d124cd516b',2,15,0,'(Activity.2)',0,0,'2017-04-11 00:00:00',1),(73,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',1,3,0,'(Activity.3)',0,0,'2017-04-11 00:00:00',1),(74,'67bf3cf3-fd45-4772-bcb4-52391952d2ee',2,15,0,'(Activity.2)',0,0,'2017-04-11 00:00:00',1),(75,'e0b6eca7-07be-46a5-8289-b1e6320de459',1,3,0,'(Activity.3)',0,0,'2017-04-11 00:00:00',1),(76,'e0b6eca7-07be-46a5-8289-b1e6320de459',2,15,0,'(Activity.2)',0,0,'2017-04-11 00:00:00',1),(77,'69752a39-3c37-4a31-9e41-7003ac23dfe7',1,3,0,'(Activity.3)',0,0,'2017-04-11 00:00:00',1),(78,'69752a39-3c37-4a31-9e41-7003ac23dfe7',2,15,0,'(Activity.2)',0,0,'2017-04-11 00:00:00',1),(79,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',1,3,0,'(Activity.3)',0,0,'2017-04-11 00:00:00',1),(80,'b11a0fb6-c692-4fb9-8c35-7f04a9691bd3',2,15,0,'(Activity.2)',0,0,'2017-04-11 00:00:00',1),(81,'79cf2f51-1138-4c27-8327-1797803d3232',1,3,0,'(Activity.3)',0,0,'2017-04-11 00:00:00',1),(82,'79cf2f51-1138-4c27-8327-1797803d3232',2,15,0,'(Activity.2)',0,0,'2017-04-11 00:00:00',1),(83,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',1,3,0,'(Activity.3)',0,0,'2017-04-11 00:00:00',1),(84,'5b06a87a-a2a2-419c-ae36-8b1a6592b499',2,15,0,'(Activity.2)',0,0,'2017-04-11 00:00:00',1);
/*!40000 ALTER TABLE `processprocessecarule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processrepeatedinformation`
--

DROP TABLE IF EXISTS `processrepeatedinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processrepeatedinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessID` varchar(50) DEFAULT NULL,
  `RepeatedType` smallint(6) DEFAULT NULL,
  `RepeatedID1` int(11) DEFAULT NULL,
  `RepeatedID2` int(11) DEFAULT NULL,
  `RepeatedTime` smallint(6) DEFAULT NULL,
  `StartTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `Parameter1` varchar(50) DEFAULT NULL,
  `Parameter2` varchar(50) DEFAULT NULL,
  `Parameter3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processrepeatedinformation`
--

LOCK TABLES `processrepeatedinformation` WRITE;
/*!40000 ALTER TABLE `processrepeatedinformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `processrepeatedinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20170320075705'),('20170320075706'),('20170320075707'),('20170320075708'),('20170320075709'),('20170320075710'),('20170320075711'),('20170320075712'),('20170320075713'),('20170322123122'),('20170405022809'),('20170405053607'),('20170406051037'),('20170406051751'),('20170406052745'),('20170406090808'),('20170409043822'),('20170409044044'),('20170501060831'),('20170501140752'),('20170512142453'),('20170513121810'),('20170513121811'),('20170513121812'),('20170513121813'),('20170513121814'),('20170513121815'),('20170514062158'),('20170515015614'),('20170515041656'),('20170515043845'),('20170515043846'),('20170515043847'),('20170515043848'),('20170515044523'),('20170521061318'),('20170521061319'),('20170521075130'),('20170521090643'),('20170522124523'),('20170522124525'),('20170522125922'),('20170522125923'),('20170524140907'),('20170524160541'),('20170524160542'),('20170525101732'),('20170525103750'),('20170526112912'),('20170528164122'),('20170528164123'),('20170528164223'),('20170530063256');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `separators`
--

DROP TABLE IF EXISTS `separators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `separators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `value` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `separators`
--

LOCK TABLES `separators` WRITE;
/*!40000 ALTER TABLE `separators` DISABLE KEYS */;
INSERT INTO `separators` VALUES (1,'Space','\\s','2017-05-14 14:32:04','2017-05-14 14:32:04'),(2,'Semicolon',';','2017-05-14 14:32:44','2017-05-14 14:32:44'),(3,'Comma',',','2017-05-14 14:33:36','2017-05-14 14:33:36');
/*!40000 ALTER TABLE `separators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shared_process_privileges`
--

DROP TABLE IF EXISTS `shared_process_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shared_process_privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_id` int(11) DEFAULT NULL,
  `edit_department_id` int(11) DEFAULT NULL,
  `execute_department_id` int(11) DEFAULT NULL,
  `delete_department_id` int(11) DEFAULT NULL,
  `is_shared_sample_input` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shared_process_privileges_on_delete_department_id` (`delete_department_id`),
  KEY `index_shared_process_privileges_on_edit_department_id` (`edit_department_id`),
  KEY `index_shared_process_privileges_on_execute_department_id` (`execute_department_id`),
  KEY `index_shared_process_privileges_on_process_id` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shared_process_privileges`
--

LOCK TABLES `shared_process_privileges` WRITE;
/*!40000 ALTER TABLE `shared_process_privileges` DISABLE KEYS */;
INSERT INTO `shared_process_privileges` VALUES (9,29,NULL,1,NULL,1,'2017-04-10 13:12:35','2017-04-10 13:12:35'),(10,30,NULL,1,NULL,1,'2017-04-10 13:12:35','2017-04-10 13:12:35'),(13,33,NULL,1,NULL,0,'2017-04-11 02:20:38','2017-04-11 02:20:38'),(14,34,NULL,1,NULL,0,'2017-04-11 02:20:38','2017-04-11 02:20:38'),(15,35,NULL,1,NULL,1,'2017-04-10 13:12:35','2017-04-10 13:12:35'),(16,36,NULL,1,NULL,1,'2017-04-10 13:12:35','2017-04-10 13:12:35'),(19,42,NULL,1,NULL,1,'2017-04-11 06:21:31','2017-04-11 06:21:31'),(20,43,NULL,1,NULL,1,'2017-04-11 06:21:31','2017-04-11 06:21:31'),(23,51,NULL,1,NULL,1,'2017-04-11 06:21:31','2017-04-11 06:21:31'),(24,52,NULL,1,NULL,1,'2017-04-10 13:12:35','2017-04-10 13:12:35'),(25,53,NULL,1,NULL,1,'2017-06-05 10:53:10','2017-06-05 10:53:10'),(26,54,NULL,1,NULL,1,'2017-06-05 10:54:57','2017-06-05 10:54:57');
/*!40000 ALTER TABLE `shared_process_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemapplicationinformation`
--

DROP TABLE IF EXISTS `systemapplicationinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemapplicationinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ApplicationID` int(11) NOT NULL DEFAULT '0',
  `Description` longtext,
  `ApplicationName` varchar(100) DEFAULT NULL,
  `ApplicationType` smallint(6) DEFAULT NULL,
  `InputSchemaID` int(11) DEFAULT NULL,
  `OutputSchemaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemapplicationinformation`
--

LOCK TABLES `systemapplicationinformation` WRITE;
/*!40000 ALTER TABLE `systemapplicationinformation` DISABLE KEYS */;
INSERT INTO `systemapplicationinformation` VALUES (1,12,'','IpAddressSearchWebService:getCountryCityByIp',4,5,6);
/*!40000 ALTER TABLE `systemapplicationinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemschema`
--

DROP TABLE IF EXISTS `systemschema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemschema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SchemaID` int(11) NOT NULL DEFAULT '0',
  `SchemaName` varchar(100) DEFAULT NULL,
  `description` mediumtext,
  `SchemaText` mediumtext,
  `SchemaType` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemschema`
--

LOCK TABLES `systemschema` WRITE;
/*!40000 ALTER TABLE `systemschema` DISABLE KEYS */;
/*!40000 ALTER TABLE `systemschema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemxmldocument`
--

DROP TABLE IF EXISTS `systemxmldocument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemxmldocument` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ObjectID` int(11) DEFAULT NULL,
  `ObjectName` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `FromSchemaID` int(11) DEFAULT NULL,
  `XML` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemxmldocument`
--

LOCK TABLES `systemxmldocument` WRITE;
/*!40000 ALTER TABLE `systemxmldocument` DISABLE KEYS */;
INSERT INTO `systemxmldocument` VALUES (1,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `systemxmldocument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_categories`
--

DROP TABLE IF EXISTS `task_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_categories`
--

LOCK TABLES `task_categories` WRITE;
/*!40000 ALTER TABLE `task_categories` DISABLE KEYS */;
INSERT INTO `task_categories` VALUES (1,'None','2017-05-21 14:26:08','2017-05-21 14:26:08'),(2,'Finance','2017-05-21 14:26:46','2017-05-21 14:26:46'),(3,'Server','2017-05-21 14:46:05','2017-05-21 14:46:05');
/*!40000 ALTER TABLE `task_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_category_and_wikis`
--

DROP TABLE IF EXISTS `task_category_and_wikis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_category_and_wikis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `wiki_page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_task_category_and_wikis_on_task_category_id` (`task_category_id`),
  KEY `index_task_category_and_wikis_on_wiki_page_id` (`wiki_page_id`),
  CONSTRAINT `fk_rails_bc79cd0b4f` FOREIGN KEY (`task_category_id`) REFERENCES `task_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_category_and_wikis`
--

LOCK TABLES `task_category_and_wikis` WRITE;
/*!40000 ALTER TABLE `task_category_and_wikis` DISABLE KEYS */;
INSERT INTO `task_category_and_wikis` VALUES (30,3,'2017-05-25 11:07:03','2017-05-25 11:07:03',33),(32,3,'2017-06-05 05:00:00','2017-06-05 05:00:00',35),(33,3,'2017-06-05 12:23:08','2017-06-05 12:23:08',36),(34,3,'2017-06-05 12:23:36','2017-06-05 12:23:36',37),(35,2,'2017-06-15 07:20:03','2017-06-15 07:20:03',38);
/*!40000 ALTER TABLE `task_category_and_wikis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_performances`
--

DROP TABLE IF EXISTS `task_performances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_performances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `description` text,
  `wiki_page_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_task_performances_on_wiki_page_id` (`wiki_page_id`),
  CONSTRAINT `fk_rails_a0faa3ce50` FOREIGN KEY (`wiki_page_id`) REFERENCES `wiki_pages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_performances`
--

LOCK TABLES `task_performances` WRITE;
/*!40000 ALTER TABLE `task_performances` DISABLE KEYS */;
INSERT INTO `task_performances` VALUES (3,'Performance between Time Series Prediciton Model and Clustering by EM Model','<p>In the XXX 2015 CPU data set, the&nbsp;Time Series Prediciton Model works better than&nbsp;Clustering by EM Model.</p>\r\n<p style=\"text-align: justify;\">It has lower error rate, I think this is because CPU workload changes over time.</p>',33,'2017-06-05 11:01:16','2017-06-05 11:01:16');
/*!40000 ALTER TABLE `task_performances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_algorithms`
--

DROP TABLE IF EXISTS `test_algorithms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_algorithms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `param3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `process_information_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_test_algorithms_on_process_information_id` (`process_information_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_algorithms`
--

LOCK TABLES `test_algorithms` WRITE;
/*!40000 ALTER TABLE `test_algorithms` DISABLE KEYS */;
INSERT INTO `test_algorithms` VALUES (29,NULL,3,NULL,NULL,29,'2017-04-10 13:15:08','2017-04-10 13:15:08'),(30,NULL,3,NULL,NULL,30,'2017-04-10 13:15:08','2017-04-10 13:15:08'),(34,NULL,3,NULL,NULL,33,'2017-04-11 02:18:30','2017-04-11 02:18:30'),(35,NULL,3,NULL,NULL,34,'2017-04-11 02:18:30','2017-04-11 02:18:30'),(37,NULL,3,NULL,NULL,35,'2017-04-11 02:22:05','2017-04-11 02:22:05'),(38,NULL,3,NULL,NULL,36,'2017-04-10 13:15:08','2017-04-10 13:15:08'),(46,NULL,3,NULL,NULL,42,'2017-04-11 06:20:19','2017-04-11 06:20:19'),(48,NULL,3,NULL,NULL,43,'2017-04-11 06:22:13','2017-04-11 06:22:13'),(49,NULL,3,NULL,NULL,51,'2017-04-11 06:20:19','2017-04-11 06:20:19'),(50,NULL,3,NULL,NULL,52,'2017-04-10 13:15:08','2017-04-10 13:15:08');
/*!40000 ALTER TABLE `test_algorithms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_files`
--

DROP TABLE IF EXISTS `upload_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `path` text,
  `process_information_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_upload_files_on_process_information_id` (`process_information_id`),
  CONSTRAINT `fk_rails_858c62fab4` FOREIGN KEY (`process_information_id`) REFERENCES `process_informations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_files`
--

LOCK TABLES `upload_files` WRITE;
/*!40000 ALTER TABLE `upload_files` DISABLE KEYS */;
INSERT INTO `upload_files` VALUES (27,'cpu.arff','/Users/xfhuang/code/Website/analysis_website/public/upload/cpu.arff',29,'2017-04-10 13:10:35','2017-04-10 13:10:35'),(28,'cpu.arff','/Users/xfhuang/code/Website/analysis_website/public/upload/cpu.arff',30,'2017-04-10 13:10:35','2017-04-10 13:10:35'),(32,'soybean.arff','/Users/xfhuang/code/Website/analysis_website/public/upload/soybean.arff',33,'2017-04-11 02:17:32','2017-04-11 02:17:32'),(33,'cpu.arff','/Users/xfhuang/code/Website/analysis_website/public/upload/cpu.arff',34,'2017-04-11 02:17:32','2017-04-11 02:17:32'),(34,'cpu.arff','/Users/xfhuang/code/Website/analysis_website/public/upload/cpu.arff',35,'2017-04-10 13:10:35','2017-04-10 13:10:35'),(35,'cpu.arff','/Users/xfhuang/code/Website/analysis_website/public/upload/cpu.arff',36,'2017-04-10 13:10:35','2017-04-10 13:10:35'),(43,'cpu.arff','/Users/xfhuang/code/Website/analysis_website/public/upload/cpu.arff',42,'2017-04-11 06:20:13','2017-04-11 06:20:13'),(45,'soybean.arff','/Users/xfhuang/code/Website/analysis_website/public/upload/soybean.arff',43,'2017-04-11 06:22:10','2017-04-11 06:22:10'),(48,'cpu.arff','/Users/xfhuang/code/Website/analysis_website/public/upload/cpu.arff',51,'2017-04-11 06:20:13','2017-04-11 06:20:13'),(49,'cpu.arff','/Users/xfhuang/code/Website/analysis_website/public/upload/cpu.arff',52,'2017-04-10 13:10:35','2017-04-10 13:10:35'),(50,'figure_3.png','/Users/xfhuang/code/Website/analysis_website/public/upload/figure_3.png',53,'2017-06-05 10:52:38','2017-06-05 10:52:38'),(51,'figure_2png.png','/Users/xfhuang/code/Website/analysis_website/public/upload/figure_2png.png',54,'2017-06-05 10:53:41','2017-06-05 10:53:41');
/*!40000 ALTER TABLE `upload_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_pictures`
--

DROP TABLE IF EXISTS `user_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `path` text,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_pictures_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_2d4ddee99d` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_pictures`
--

LOCK TABLES `user_pictures` WRITE;
/*!40000 ALTER TABLE `user_pictures` DISABLE KEYS */;
INSERT INTO `user_pictures` VALUES (1,'user.png','/Users/xfhuang/code/Website/analysis_website/public/user_picture/user.png',1,'2017-05-01 22:15:15','2017-05-01 22:15:15'),(3,'user3.png','/Users/xfhuang/code/Website/analysis_website/public/user_picture/user3.png',3,'2017-05-01 22:15:56','2017-05-01 22:15:56'),(4,'user4.png','public/user_picture/user4.png',3,'2017-05-01 22:24:55','2017-05-01 22:24:55'),(5,'user4.png','public/user_picture/user4.png',4,'2017-05-01 22:25:27','2017-05-01 22:25:27'),(10,'2.邵奔驰.jpeg.412164','/Users/xfhuang/code/Website/analysis_website/public/user_picture/2.邵奔驰.jpeg.412164',2,'2017-05-25 07:06:32','2017-05-25 07:06:32');
/*!40000 ALTER TABLE `user_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `user_name` varchar(255) NOT NULL DEFAULT '',
  `person_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'lanecatm@sjtu.edu.cn','$2a$10$SzwUS8taV7jDQqq4HkoysuFzoyrHW0zh6IRJAEt0yt1SxBttxS9oC','Admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2017-05-01 15:29:19','2017-05-01 08:55:59','::1','::1','2017-05-01 08:37:09','2017-05-01 15:29:19',NULL),(2,'pink@test.com','$2a$10$R8JkK6BONfDtS2X9.FtkU.Am4.Jp06hKQzn2K8HQqjV38JZp03nGm','Pink','Pink Pink','Female',NULL,'+86-11111111111',NULL,NULL,NULL,9,'2017-06-13 02:26:27','2017-06-05 02:36:57','::1','::1','2017-05-01 09:04:16','2017-06-13 02:26:27',NULL),(3,'ewqw@ss.com','$2a$10$c9FIvpgfB/aJow5nINCLOuDzr1aSma165csaTCuh4bEYU66jffzTu','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2017-05-25 13:48:49','2017-05-01 09:05:44','::1','::1','2017-05-01 09:05:44','2017-05-25 13:48:49',NULL),(4,'ewwqw@ss.com','$2a$10$nMwxkGsQ911Rjuh2i9JGJu4vIG38/xfkaUNvn.MxzuMYam7ILIpNW','ewdqw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,'2017-05-01 13:59:50','2017-05-01 13:57:57','::1','::1','2017-05-01 09:17:35','2017-05-01 13:59:50',NULL),(5,'xiaofu@sjtu.edu.cn','$2a$10$lF9xJY0dibZ9VU12AVMotuoccz5nuaiuVG3pUvHTMy/sNH4KB4lQ6','Xiaofu',NULL,NULL,NULL,NULL,NULL,NULL,'2017-06-05 05:55:18',7,'2017-06-05 05:55:52','2017-06-05 05:55:18','192.168.1.118','192.168.1.118','2017-05-25 14:09:03','2017-06-05 05:55:52',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_and_workflow_informations`
--

DROP TABLE IF EXISTS `wiki_and_workflow_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_and_workflow_informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_page_id` int(11) DEFAULT NULL,
  `workflow_information_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_wiki_and_workflow_informations_on_wiki_page_id` (`wiki_page_id`),
  KEY `index_wiki_and_workflow_informations_on_workflow_information_id` (`workflow_information_id`),
  CONSTRAINT `fk_rails_69ca5d7f00` FOREIGN KEY (`workflow_information_id`) REFERENCES `workflow_informations` (`id`),
  CONSTRAINT `fk_rails_f126eb8a69` FOREIGN KEY (`wiki_page_id`) REFERENCES `wiki_pages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_and_workflow_informations`
--

LOCK TABLES `wiki_and_workflow_informations` WRITE;
/*!40000 ALTER TABLE `wiki_and_workflow_informations` DISABLE KEYS */;
INSERT INTO `wiki_and_workflow_informations` VALUES (4,18,70,'2017-06-05 08:14:56','2017-06-05 08:14:56'),(6,33,73,'2017-06-05 09:51:57','2017-06-05 09:51:57'),(7,33,70,'2017-06-05 10:45:11','2017-06-05 10:45:11'),(8,33,75,'2017-06-05 10:50:38','2017-06-05 10:50:38'),(9,38,81,'2017-06-15 07:20:31','2017-06-15 07:20:31');
/*!40000 ALTER TABLE `wiki_and_workflow_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_page_versions`
--

DROP TABLE IF EXISTS `wiki_page_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_page_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `updator_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_wiki_page_versions_on_page_id` (`page_id`),
  KEY `index_wiki_page_versions_on_updator_id` (`updator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_page_versions`
--

LOCK TABLES `wiki_page_versions` WRITE;
/*!40000 ALTER TABLE `wiki_page_versions` DISABLE KEYS */;
INSERT INTO `wiki_page_versions` VALUES (1,1,2,1,'First Revision','','Test Wiki','dcac','2017-05-15 04:18:59'),(2,1,2,2,'dddd','','Test Wiki','dcac\r\ndcasdcf\r\ndcfac\r\ndcfa','2017-05-15 04:20:09'),(3,1,2,3,'First Revision','','edfwerf','rfwerfwe\r\ndcfac\r\ndcfa','2017-05-16 12:07:22'),(4,1,2,4,'First Revision','','edfwerfefqewf','rfwerfwe\r\ndcfac\r\ndcfa','2017-05-16 12:08:28'),(5,2,2,1,'First Revision','','dcsc','aedwed','2017-05-16 12:09:07'),(6,2,2,2,'First Revision','','hello','aedwed','2017-05-16 12:09:33'),(7,2,2,3,'First Revision','','ddd','aedwedd','2017-05-16 12:12:49'),(8,3,2,1,'First Revision','hello','hello','dqwdqwd','2017-05-16 12:19:32'),(9,2,2,4,'First Revision','','dddd','aedwedd','2017-05-17 05:08:11'),(10,2,2,5,'fffff','','dddd','aedweddfffff','2017-05-17 05:48:21'),(11,2,2,6,'fffff','','dddd','aedweddfffff','2017-05-17 05:48:21'),(12,3,2,2,'First Revision','hello','hello','<p>dqwdqwd</p>','2017-05-20 05:18:56'),(13,2,2,7,'','','dddd','<p>aedweddfffff</p>','2017-05-20 05:22:21'),(14,2,2,8,'fcewfd','','dddd','<p>aedweddffffffdcsedcsed</p>','2017-05-20 05:22:30'),(15,2,2,9,'','','dddd','<p><strong>aedweddffffffdcsedcsed</strong></p>','2017-05-20 05:22:37'),(16,4,2,1,'First Revision','hahaha_hahaha','hahaha_hahaha','<p>edqwedfqwedqwefwef</p>','2017-05-20 05:23:02'),(17,5,2,1,'First Revision','e','e','<h1><strong>Title</strong></h1>\r\n<p><strong>This is a demo.</strong></p>','2017-05-20 12:50:12'),(18,5,2,2,'Add title2','e','e','<h1><strong>Title</strong></h1>\r\n<h2><strong>Title2</strong></h2>\r\n<p><strong>This is a demo.</strong></p>','2017-05-20 12:50:56'),(19,5,2,3,'','e','e','<h1><strong>Title</strong></h1>\r\n<h2><strong>Title2</strong></h2>\r\n<p><strong>This is a demo.</strong></p>','2017-05-20 12:50:56'),(20,6,2,1,'First Revision','demo','demo','<p>demo</p>','2017-05-20 13:13:38'),(21,7,2,1,'First Revision','demo','demo','<p>dfwefw</p>','2017-05-20 13:15:34'),(22,7,2,2,'add rr','demo','demo','<h1>dfwefwrrrfwerfw</h1>\r\n<p>r\'f\'w\'er\'f\'w\'re\'ge\'r\'t\'g\'h</p>\r\n<p>tgertger</p>\r\n<h3>1. tgertger</h3>\r\n<p>fgtvrtgrtggertgertgertgertherthetrhrthetrtherthrttrhrthrtefgvwergerthgerth</p>\r\n<p>tgherthetr</p>\r\n<p>&nbsp;</p>','2017-05-21 05:46:56'),(23,8,2,1,'First Revision','dcadsfas','dcadsfas','<p>dawefawef</p>','2017-05-21 05:51:20'),(24,9,2,1,'First Revision','hello','hello','','2017-05-21 07:01:53'),(25,10,2,1,'First Revision','CPU_Prediction','CPU_Prediction','<p>sfasfaef</p>\r\n<p>&nbsp;</p>','2017-05-21 08:11:26'),(26,11,2,1,'First Revision','CPU_Prediction','CPU_Prediction','<p>sfasfaef</p>\r\n<p>&nbsp;</p>','2017-05-21 08:11:59'),(27,12,2,1,'First Revision','rfwefw','rfwefw','','2017-05-21 08:18:08'),(28,13,2,1,'First Revision','qewfqwef','qewfqwef','','2017-05-21 08:20:54'),(29,14,2,1,'First Revision','wfgesrg','wfgesrg','','2017-05-21 08:21:57'),(30,15,2,1,'First Revision','rwefwe','rwefwe','','2017-05-21 08:22:34'),(31,16,2,1,'First Revision','sadfasfa','sadfasfa','<p>esfawef</p>','2017-05-21 08:43:33'),(32,16,2,2,'','sadfasfa','sadfasfa','<p>esfawef</p>\r\n<p>eafaef</p>','2017-05-21 08:43:59'),(33,17,2,1,'First Revision','dwaedawd','dwaedawd','','2017-05-21 09:29:29'),(34,9,2,2,'','hello','hello','<p>asdfawefawegeqrgf</p>','2017-05-21 09:46:04'),(35,18,2,1,'First Revision','None','None','','2017-05-21 09:57:36'),(36,19,2,1,'First Revision','aaa','aaa','<p>wwww</p>','2017-05-21 17:51:35'),(37,20,2,1,'First Revision','CPU_Prediction','CPU_Prediction','<h3 style=\"box-sizing: border-box; outline-width: 0px; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: #333333; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\">CPU Prediction</h3>\r\n<p>This is CPU_Prediction</p>','2017-05-22 02:48:42'),(38,20,2,2,'add .','CPU_Prediction','CPU_Prediction','<h3 style=\"box-sizing: border-box; outline-width: 0px; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: #333333; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\">CPU Prediction</h3>\r\n<p>This is CPU_Prediction.</p>','2017-05-22 02:49:07'),(39,21,2,1,'First Revision','CPU','CPU','','2017-05-22 08:19:55'),(40,22,2,1,'First Revision','CPU_test','CPU_test','<p>cpu test</p>','2017-05-25 08:31:06'),(41,23,2,1,'First Revision','hello','hello','','2017-05-25 08:37:43'),(42,24,2,1,NULL,'CPU_Prediction','CPU Prediction','<p>CPU Prediction</p>','2017-05-25 10:05:57'),(43,24,2,1,'First Revision','CPU_Prediction','CPU Prediction','<p>CPU Prediction</p>','2017-05-25 10:05:57'),(44,25,2,1,NULL,'CPU_hahahah','CPU hahahah','<p>CPU hahahah</p>','2017-05-25 10:41:36'),(45,25,2,1,'First Revision','CPU_hahahah','CPU hahahah','<p>CPU hahahah</p>','2017-05-25 10:41:36'),(46,26,2,1,NULL,'edqwedwea','edqwedwea','<p>dqewdeqwdqwefqwef</p>','2017-05-25 10:43:02'),(47,26,2,1,'First Revision','edqwedwea','edqwedwea','<p>dqewdeqwdqwefqwef</p>','2017-05-25 10:43:02'),(48,27,2,1,NULL,'sdas','sdas','<p>dawdawd</p>','2017-05-25 10:45:39'),(49,27,2,1,'First Revision','sdas','sdas','<p>dawdawd</p>','2017-05-25 10:45:39'),(50,28,2,1,NULL,'rff','rff','','2017-05-25 10:47:46'),(51,28,2,1,'First Revision','rff','rff','','2017-05-25 10:47:46'),(52,29,2,1,NULL,'name','name','','2017-05-25 10:48:40'),(53,29,2,1,'First Revision','name','name','','2017-05-25 10:48:40'),(54,30,2,1,NULL,'name','name','','2017-05-25 10:51:27'),(55,30,2,1,'First Revision','name','name','','2017-05-25 10:51:27'),(56,31,2,1,NULL,'rff','rff','','2017-05-25 10:51:44'),(57,31,2,1,'First Revision','rff','rff','','2017-05-25 10:51:44'),(58,32,2,1,NULL,'Stock_predict','Stock predict','','2017-05-25 10:53:49'),(59,32,2,1,'First Revision','Stock_predict','Stock predict','','2017-05-25 10:53:50'),(60,32,2,2,'Add content','Stock_predict','Stock predict','<h3 style=\"box-sizing: border-box; outline-width: 0px; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: #333333; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\">Stock prediction</h3>\r\n<p>Stock market prediction<span style=\"color: #222222; font-family: sans-serif;\">&nbsp;is the act of trying to determine the future value of a company&nbsp;</span><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;\" title=\"Stock\" href=\"https://en.wikipedia.org/wiki/Stock\">stock</a><span style=\"color: #222222; font-family: sans-serif;\">&nbsp;or other&nbsp;</span><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;\" title=\"Financial instrument\" href=\"https://en.wikipedia.org/wiki/Financial_instrument\">financial instrument</a><span style=\"color: #222222; font-family: sans-serif;\">&nbsp;traded on an&nbsp;</span><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;\" title=\"Exchange (organized market)\" href=\"https://en.wikipedia.org/wiki/Exchange_(organized_market)\">exchange</a><span style=\"color: #222222; font-family: sans-serif;\">. The successful prediction of a stock\'s future price could yield significant profit. The&nbsp;</span><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;\" title=\"Efficient-market hypothesis\" href=\"https://en.wikipedia.org/wiki/Efficient-market_hypothesis\">efficient-market hypothesis</a><span style=\"color: #222222; font-family: sans-serif;\">&nbsp;suggests that stock prices reflect all currently available information and any price changes that are not based on newly revealed information thus are inherently unpredictable. Others disagree and those with this viewpoint possess myriad methods and technologies which purportedly allow them to gain future price information.</span></p>','2017-05-25 10:59:53'),(61,33,2,1,NULL,'CPU_Prediction','CPU Prediction','','2017-05-25 11:07:03'),(62,33,2,1,'First Revision','CPU_Prediction','CPU Prediction','','2017-05-25 11:07:03'),(63,34,5,1,NULL,'Test_admin','Test admin','','2017-05-25 14:39:45'),(64,34,5,1,'First Revision','Test_admin','Test admin','','2017-05-25 14:39:45'),(65,34,5,2,'','Test_admin','Test admin','<p style=\"margin-top: 0px; padding-right: 20px; padding-left: 20px; font-family: Arial, Helvetica, sans-serif; font-size: medium;\">The purpose of the test is to gauge the network security system\'s ability to&nbsp;<strong>find the actual target string</strong>&nbsp;in the content. In the real world, you would not know where the threats were coming from or what the exact delivery vehicle would be. The objective is to create a&nbsp;<strong>single content rule</strong>&nbsp;that fires on&nbsp;<strong>all</strong>&nbsp;of the Test Files but not on&nbsp;<strong>any</strong>&nbsp;of the Negative Control files. So triggering on the test files\' URLs or HTTP headers or filenames or MD5 hashes and stuff like that is&nbsp;<strong>cheating</strong>&nbsp;and&nbsp;<strong>it doesn\'t count.</strong>&nbsp;If the teacher catches you, you\'re going to be in trouble!</p>\r\n<p style=\"margin-top: 0px; padding-right: 20px; padding-left: 20px; font-family: Arial, Helvetica, sans-serif; font-size: medium;\">* Note: In the test files where the target string is embedded in a Windows executable file (e.g. Test Files 20, 21, 26 and 27), the characters in the target string are separated by ASCII NULL characters. In PCRE syntax, the target string, when compiled into an exe file, would appear as e\\x00v\\x00a\\x00l\\x00(\\x00u\\x00n\\x00e\\x00s\\x00c... So your rule should look for both the target string as depicted above in red and the NULL-separated version.</p>\r\n<p style=\"margin-top: 0px; padding-right: 20px; padding-left: 20px; font-family: Arial, Helvetica, sans-serif; font-size: medium;\">To test your network security system\'s Content IQ&trade;:</p>\r\n<ul style=\"padding: 0px 20px 15px 40px; margin: 0px; font-family: Arial, Helvetica, sans-serif; font-size: medium;\">\r\n<li style=\"margin-top: 10px;\">Set your network security system up to look for the target string (or some representative sub-string of the target string). Normally this involves creating a content rule that generates an alert when it sees the target string.</li>\r\n<li style=\"margin-top: 10px;\">Click on the link that says \"Click Here to Download All Test Files Automatically\" or click on each of the Test File links individually. This will cause the files to be downloaded across your network to your browser and through (or past) your network security system. Each Test File should generate an alert on your network security system.</li>\r\n<li style=\"margin-top: 10px;\">Check to see how many of the Test Files were identified by your network security system as containing the target string.</li>\r\n<li style=\"margin-top: 10px;\">For extra credit, see if you can&nbsp;<strong>recover the Test Files</strong>&nbsp;from your network security system\'s alert database or packet store.</li>\r\n<li style=\"margin-top: 10px;\">For extra extra credit, see if your network security system can&nbsp;<strong>prevent</strong>&nbsp;the Test Files from entering your network.</li>\r\n<li style=\"margin-top: 10px;\">Click on each of the Negative Control Files. They are the same as the corresponding Test Files above except that&nbsp;<strong>they do not contain the target string</strong>. Your network security system should&nbsp;<strong>not</strong>&nbsp;trigger on any of the Negative Control Files. If it does, it\'s a false positive.</li>\r\n</ul>\r\n<p style=\"margin-top: 0px; padding-right: 20px; padding-left: 20px; font-family: Arial, Helvetica, sans-serif; font-size: medium;\">&nbsp;</p>','2017-05-26 11:26:18'),(66,18,5,2,'','None','None','<p>[[Test admin]]</p>','2017-05-30 06:30:21'),(67,18,5,3,'','None','None','','2017-05-30 06:30:56'),(68,35,5,1,NULL,'Stock_predict','Stock predict','<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><strong>Stock market prediction</strong>&nbsp;is the act of trying to determine the future value of a company&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Stock\" href=\"https://en.wikipedia.org/wiki/Stock\">stock</a>&nbsp;or other&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Financial instrument\" href=\"https://en.wikipedia.org/wiki/Financial_instrument\">financial instrument</a>&nbsp;traded on an&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Exchange (organized market)\" href=\"https://en.wikipedia.org/wiki/Exchange_(organized_market)\">exchange</a>. The successful prediction of a stock\'s future price could yield significant profit. The&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Efficient-market hypothesis\" href=\"https://en.wikipedia.org/wiki/Efficient-market_hypothesis\">efficient-market hypothesis</a>&nbsp;suggests that stock prices reflect all currently available information and any price changes that are not based on newly revealed information thus are inherently unpredictable. Others disagree and those with this viewpoint possess myriad methods and technologies which purportedly allow them to gain future price information.<span id=\"The_Efficient_Markets_Hypothesis_and_the_random_walk\" class=\"mw-headline\">The Efficient Markets Hypothesis and the random walk</span></p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">The&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Efficient-market hypothesis\" href=\"https://en.wikipedia.org/wiki/Efficient-market_hypothesis\">efficient-market hypothesis</a>&nbsp;posits that stock prices are a function of information and rational expectations, and that newly revealed information about a company\'s prospects is almost immediately reflected in the current stock price. This would imply that all publicly known information about a company, which obviously includes its price history, would already be reflected in the current price of the stock. Accordingly, changes in the stock price reflect release of new information, changes in the market generally, or random movements around the value that reflects the existing information set.&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Burton Malkiel\" href=\"https://en.wikipedia.org/wiki/Burton_Malkiel\">Burton Malkiel</a>, in his influential 1973 work&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"A Random Walk Down Wall Street\" href=\"https://en.wikipedia.org/wiki/A_Random_Walk_Down_Wall_Street\">A Random Walk Down Wall Street</a>, claimed that stock prices could therefore not be accurately predicted by looking at price history. As a result, Malkiel argued, stock prices are best described by a statistical process called a \"random walk\" meaning each day\'s deviations from the central value are random and unpredictable. This led Malkiel to conclude that paying financial services persons to predict the market actually hurt, rather than helped, net portfolio return. A number of empirical tests support the notion that the theory applies generally, as most portfolios managed by professional stock predictors do not outperform the market average return after accounting for the managers\' fees.</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">While the&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Efficient-market hypothesis\" href=\"https://en.wikipedia.org/wiki/Efficient-market_hypothesis\">efficient-market hypothesis</a>&nbsp;finds favor among financial academics, but its critics point to instances in which actual market experience differs from the prediction-of-unpredictability the hypothesis implies. A large industry has grown up around the implication proposition that some analysts can predict stocks better than others; ironically that would be impossible under the Efficient Markets Hypothesis if the stock prediction industry did not offer something its customers believed to be of value.</p>\r\n<h2 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; margin: 1em 0px 0.25em; overflow: hidden; padding: 0px; border-bottom: 1px solid #a2a9b1; font-family: \'Linux Libertine\', Georgia, Times, serif; line-height: 1.3;\"><span id=\"Prediction_methods\" class=\"mw-headline\">Prediction methods</span></h2>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Prediction methodologies fall into three broad categories which can (and often do) overlap. They are&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Fundamental analysis\" href=\"https://en.wikipedia.org/wiki/Fundamental_analysis\">fundamental analysis</a>,&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Technical analysis\" href=\"https://en.wikipedia.org/wiki/Technical_analysis\">technical analysis</a>&nbsp;(charting) and technological methods.</p>\r\n<h3 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; font-size: 1.2em; line-height: 1.6; font-family: sans-serif;\"><span id=\"Fundamental_analysis\" class=\"mw-headline\">Fundamental analysis</span></h3>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Fundamental Analysts are concerned with the company that underlies the stock itself. They evaluate a company\'s past performance as well as the credibility of its&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Account (accountancy)\" href=\"https://en.wikipedia.org/wiki/Account_(accountancy)\">accounts</a>. Many performance ratios are created that aid the fundamental analyst with assessing the validity of a stock, such as the&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"P/E ratio\" href=\"https://en.wikipedia.org/wiki/P/E_ratio\">P/E ratio</a>.&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Warren Buffett\" href=\"https://en.wikipedia.org/wiki/Warren_Buffett\">Warren Buffett</a>&nbsp;is perhaps the most famous of all Fundamental Analysts.</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Fundamental analysis is built on the belief that human society needs capital to make progress and if a company operates well, it should be rewarded with additional capital and result in a surge in stock price. Fundamental analysis is widely used by fund managers as it is the most reasonable, objective and made from publicly available information like financial statement analysis.</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Another meaning of fundamental analysis is beyond bottom-up company analysis, it refers to top-down analysis from first analyzing the global economy, followed by country analysis and then sector analysis, and finally the company level analysis.</p>\r\n<h3 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; font-size: 1.2em; line-height: 1.6; font-family: sans-serif;\"><span id=\"Technical_analysis\" class=\"mw-headline\">Technical analysis</span></h3>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Technical analysts or chartists are not concerned with any of the company\'s fundamentals. They seek to determine the future price of a stock based solely on the (potential) trends of the past price (a form of&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Time series analysis\" href=\"https://en.wikipedia.org/wiki/Time_series_analysis\">time series analysis</a>). Numerous patterns are employed such as the&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Head and shoulders (chart pattern)\" href=\"https://en.wikipedia.org/wiki/Head_and_shoulders_(chart_pattern)\">head and shoulders</a>&nbsp;or&nbsp;<a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background: none;\" title=\"Cup and saucer (chart pattern) (page does not exist)\" href=\"https://en.wikipedia.org/w/index.php?title=Cup_and_saucer_(chart_pattern)&amp;action=edit&amp;redlink=1\">cup and saucer</a>. Alongside the patterns, statistical techniques are used such as the&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Exponential moving average\" href=\"https://en.wikipedia.org/wiki/Exponential_moving_average\">exponential moving average</a>&nbsp;(EMA). Candle stick patterns are believed to be first developed by Japanese rice merchants, and nowadays widely used by technical analysts.</p>\r\n<h3 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; font-size: 1.2em; line-height: 1.6; font-family: sans-serif;\"><span id=\"Data_Mining_Technologies_.28e.g._ANN.29\" class=\"mw-headline\">Data Mining Technologies (e.g. ANN)</span></h3>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">With the advent of the&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Digital computer\" href=\"https://en.wikipedia.org/wiki/Digital_computer\">digital computer</a>, stock market prediction has since moved into the technological realm. The most prominent technique involves the use of&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Artificial neural networks\" href=\"https://en.wikipedia.org/wiki/Artificial_neural_networks\">artificial neural networks</a>&nbsp;(ANNs) and Genetic Algorithms. Scholars found bacterial chemotaxis optimization method may perform better than GA.<sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-1\">[1]</a></sup>&nbsp;ANNs can be thought of as&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Mathematical function\" href=\"https://en.wikipedia.org/wiki/Mathematical_function\">mathematical function</a>&nbsp;approximators. The most common form of ANN in use for stock market prediction is the&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Feedforward neural network\" href=\"https://en.wikipedia.org/wiki/Feedforward_neural_network\">feed forward network</a>&nbsp;utilising the&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Backpropagation\" href=\"https://en.wikipedia.org/wiki/Backpropagation\">backward propagation of errors</a>&nbsp;algorithm to update the network weights. These networks are commonly referred to as&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Backpropagation\" href=\"https://en.wikipedia.org/wiki/Backpropagation\">Backpropagation</a>&nbsp;networks. Another form of ANN that is more appropriate for stock prediction is the time&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Recurrent neural network\" href=\"https://en.wikipedia.org/wiki/Recurrent_neural_network\">recurrent neural network</a>&nbsp;(RNN) or&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Time delay neural network\" href=\"https://en.wikipedia.org/wiki/Time_delay_neural_network\">time delay neural network</a>&nbsp;(TDNN). Examples of RNN and TDNN are the Elman, Jordan, and Elman-Jordan networks. (See the&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Recurrent neural network\" href=\"https://en.wikipedia.org/wiki/Recurrent_neural_network#Elman_networks_and_Jordan_networks\">Elman And Jordan Networks</a>)..</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">For stock prediction with ANNs, there are usually two approaches taken for forecasting different time horizons: independent and joint. The independent approach employs a single ANN for each time horizon, for example, 1-day, 2-day, or 5-day. The advantage of this approach is that network forecasting error for one horizon won\'t impact the error for another horizon&mdash;since each time horizon is typically a unique problem. The joint approach, however, incorporates multiple time horizons together so that they are determined simultaneously. In this approach, forecasting error for one time horizon may share its error with that of another horizon, which can decrease performance. There are also more parameters required for a joint model, which increases the risk of overfitting.</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Of late, the majority of academic research groups studying ANNs for stock forecasting seem to be using an ensemble of independent ANNs methods more frequently, with greater success. An ensemble of ANNs would use low price and time lags to predict future lows, while another network would use lagged highs to predict future highs. The predicted low and high predictions are then used to form stop prices for buying or selling. Outputs from the individual \"low\" and \"high\" networks can also be input into a final network that would also incorporate volume, intermarket data or statistical summaries of prices, leading to a final ensemble output that would trigger buying, selling, or market directional change. A major finding with ANNs and stock prediction is that a classification approach (vs. function approximation) using outputs in the form of buy(y=+1) and sell(y=-1) results in better predictive reliability than a quantitative output such as low or high price.<sup id=\"cite_ref-2\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-2\">[2]</a></sup>&nbsp;This is explained by the fact that an ANN can predict class better than a quantitative value as in function approximation&mdash;since ANNs occasionally learn more about the noise in the input data.</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Since NNs require training and can have a large parameter space, it is useful to modify the network structure for optimal predictive ability.</p>\r\n<h4 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; line-height: 1.6; font-family: sans-serif;\"><span id=\"Internet-based_data_sources_for_stock_market_prediction\" class=\"mw-headline\">Internet-based data sources for stock market prediction</span></h4>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Tobias Preis\" href=\"https://en.wikipedia.org/wiki/Tobias_Preis\">Tobias Preis</a>&nbsp;et al. introduced a method to identify online precursors for stock market moves, using trading strategies based on search volume data provided by&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Google Trends\" href=\"https://en.wikipedia.org/wiki/Google_Trends\">Google Trends</a>.<sup id=\"cite_ref-3\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-3\">[3]</a></sup>&nbsp;Their analysis of&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Google\" href=\"https://en.wikipedia.org/wiki/Google\">Google</a>&nbsp;search volume for 98 terms of varying financial relevance, published in&nbsp;<em><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Scientific Reports\" href=\"https://en.wikipedia.org/wiki/Scientific_Reports\">Scientific Reports</a></em>,<sup id=\"cite_ref-4\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-4\">[4]</a></sup>&nbsp;suggests that increases in search volume for financially relevant search terms tend to precede large losses in financial markets.<sup id=\"cite_ref-5\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-5\">[5]</a></sup><sup id=\"cite_ref-6\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-6\">[6]</a></sup><sup id=\"cite_ref-7\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-7\">[7]</a></sup><sup id=\"cite_ref-8\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-8\">[8]</a></sup><sup id=\"cite_ref-9\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-9\">[9]</a></sup><sup id=\"cite_ref-10\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-10\">[10]</a></sup><sup id=\"cite_ref-11\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-11\">[11]</a></sup><sup id=\"cite_ref-12\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-12\">[12]</a></sup>&nbsp;Out of these terms, three were significant at the 5% level (|<em>z</em>| &gt; 1.96). The best term in the negative direction was \"debt\", followed by \"color\".</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">In a study published in&nbsp;<em><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Scientific Reports\" href=\"https://en.wikipedia.org/wiki/Scientific_Reports\">Scientific Reports</a></em>&nbsp;in 2013,<sup id=\"cite_ref-13\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-13\">[13]</a></sup>&nbsp;Helen Susannah Moat,&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Tobias Preis\" href=\"https://en.wikipedia.org/wiki/Tobias_Preis\">Tobias Preis</a>&nbsp;and colleagues demonstrated a link between changes in the number of views of&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"English Wikipedia\" href=\"https://en.wikipedia.org/wiki/English_Wikipedia\">English Wikipedia</a>&nbsp;articles relating to financial topics and subsequent large stock market moves.<sup id=\"cite_ref-14\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-14\">[14]</a></sup></p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">The collective mood of&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Twitter\" href=\"https://en.wikipedia.org/wiki/Twitter\">Twitter</a>&nbsp;messages has been linked to stock market performance.<sup id=\"cite_ref-15\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-15\">[15]</a></sup>&nbsp;The study, however, has been criticized for its methodology.</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">The activity in stock message boards has been mined in order to predict asset returns.<sup id=\"cite_ref-Galvez2017_16-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-Galvez2017-16\">[16]</a></sup></p>\r\n<h4 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; line-height: 1.6; font-family: sans-serif;\"><span id=\"Applications_of_Complexity_Science_for_stock_market_prediction\" class=\"mw-headline\">Applications of Complexity Science for stock market prediction</span></h4>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Using new statistical analysis tools of&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Complexity economics\" href=\"https://en.wikipedia.org/wiki/Complexity_economics\">complexity theory</a>, researchers at the&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"New England Complex Systems Institute\" href=\"https://en.wikipedia.org/wiki/New_England_Complex_Systems_Institute\">New England Complex Systems Institute</a>&nbsp;(NECSI) performed research on predicting&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Stock market crash\" href=\"https://en.wikipedia.org/wiki/Stock_market_crash\">stock market crashes</a>.<sup id=\"cite_ref-17\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-17\">[17]</a></sup><sup id=\"cite_ref-18\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-18\">[18]</a></sup><sup id=\"cite_ref-19\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-19\">[19]</a></sup>&nbsp;It has long been thought that market crashes are triggered by panics that may or may not be justified by external news. This research indicates that it is the internal structure of the market, not external crises, which is primarily responsible for crashes. The number of different stocks that move up or down together were shown to be an indicator of the mimicry within the market, how much investors look to one another for cues. When the mimicry is high, many stocks follow each other\'s movements - a prime reason for panic to take hold. It was shown that a dramatic increase in market mimicry occurred during the entire year before each market crash of the past 25 years, including the&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Financial crisis of 2007&ndash;08\" href=\"https://en.wikipedia.org/wiki/Financial_crisis_of_2007%E2%80%9308\">financial crisis of 2007&ndash;08</a>.</p>','2017-05-30 13:46:31'),(69,35,5,1,'First Revision','Stock_predict','Stock predict','<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><strong>Stock market prediction</strong>&nbsp;is the act of trying to determine the future value of a company&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Stock\" href=\"https://en.wikipedia.org/wiki/Stock\">stock</a>&nbsp;or other&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Financial instrument\" href=\"https://en.wikipedia.org/wiki/Financial_instrument\">financial instrument</a>&nbsp;traded on an&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Exchange (organized market)\" href=\"https://en.wikipedia.org/wiki/Exchange_(organized_market)\">exchange</a>. The successful prediction of a stock\'s future price could yield significant profit. The&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Efficient-market hypothesis\" href=\"https://en.wikipedia.org/wiki/Efficient-market_hypothesis\">efficient-market hypothesis</a>&nbsp;suggests that stock prices reflect all currently available information and any price changes that are not based on newly revealed information thus are inherently unpredictable. Others disagree and those with this viewpoint possess myriad methods and technologies which purportedly allow them to gain future price information.<span id=\"The_Efficient_Markets_Hypothesis_and_the_random_walk\" class=\"mw-headline\">The Efficient Markets Hypothesis and the random walk</span></p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">The&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Efficient-market hypothesis\" href=\"https://en.wikipedia.org/wiki/Efficient-market_hypothesis\">efficient-market hypothesis</a>&nbsp;posits that stock prices are a function of information and rational expectations, and that newly revealed information about a company\'s prospects is almost immediately reflected in the current stock price. This would imply that all publicly known information about a company, which obviously includes its price history, would already be reflected in the current price of the stock. Accordingly, changes in the stock price reflect release of new information, changes in the market generally, or random movements around the value that reflects the existing information set.&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Burton Malkiel\" href=\"https://en.wikipedia.org/wiki/Burton_Malkiel\">Burton Malkiel</a>, in his influential 1973 work&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"A Random Walk Down Wall Street\" href=\"https://en.wikipedia.org/wiki/A_Random_Walk_Down_Wall_Street\">A Random Walk Down Wall Street</a>, claimed that stock prices could therefore not be accurately predicted by looking at price history. As a result, Malkiel argued, stock prices are best described by a statistical process called a \"random walk\" meaning each day\'s deviations from the central value are random and unpredictable. This led Malkiel to conclude that paying financial services persons to predict the market actually hurt, rather than helped, net portfolio return. A number of empirical tests support the notion that the theory applies generally, as most portfolios managed by professional stock predictors do not outperform the market average return after accounting for the managers\' fees.</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">While the&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Efficient-market hypothesis\" href=\"https://en.wikipedia.org/wiki/Efficient-market_hypothesis\">efficient-market hypothesis</a>&nbsp;finds favor among financial academics, but its critics point to instances in which actual market experience differs from the prediction-of-unpredictability the hypothesis implies. A large industry has grown up around the implication proposition that some analysts can predict stocks better than others; ironically that would be impossible under the Efficient Markets Hypothesis if the stock prediction industry did not offer something its customers believed to be of value.</p>\r\n<h2 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; margin: 1em 0px 0.25em; overflow: hidden; padding: 0px; border-bottom: 1px solid #a2a9b1; font-family: \'Linux Libertine\', Georgia, Times, serif; line-height: 1.3;\"><span id=\"Prediction_methods\" class=\"mw-headline\">Prediction methods</span></h2>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Prediction methodologies fall into three broad categories which can (and often do) overlap. They are&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Fundamental analysis\" href=\"https://en.wikipedia.org/wiki/Fundamental_analysis\">fundamental analysis</a>,&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Technical analysis\" href=\"https://en.wikipedia.org/wiki/Technical_analysis\">technical analysis</a>&nbsp;(charting) and technological methods.</p>\r\n<h3 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; font-size: 1.2em; line-height: 1.6; font-family: sans-serif;\"><span id=\"Fundamental_analysis\" class=\"mw-headline\">Fundamental analysis</span></h3>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Fundamental Analysts are concerned with the company that underlies the stock itself. They evaluate a company\'s past performance as well as the credibility of its&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Account (accountancy)\" href=\"https://en.wikipedia.org/wiki/Account_(accountancy)\">accounts</a>. Many performance ratios are created that aid the fundamental analyst with assessing the validity of a stock, such as the&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"P/E ratio\" href=\"https://en.wikipedia.org/wiki/P/E_ratio\">P/E ratio</a>.&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Warren Buffett\" href=\"https://en.wikipedia.org/wiki/Warren_Buffett\">Warren Buffett</a>&nbsp;is perhaps the most famous of all Fundamental Analysts.</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Fundamental analysis is built on the belief that human society needs capital to make progress and if a company operates well, it should be rewarded with additional capital and result in a surge in stock price. Fundamental analysis is widely used by fund managers as it is the most reasonable, objective and made from publicly available information like financial statement analysis.</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Another meaning of fundamental analysis is beyond bottom-up company analysis, it refers to top-down analysis from first analyzing the global economy, followed by country analysis and then sector analysis, and finally the company level analysis.</p>\r\n<h3 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; font-size: 1.2em; line-height: 1.6; font-family: sans-serif;\"><span id=\"Technical_analysis\" class=\"mw-headline\">Technical analysis</span></h3>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Technical analysts or chartists are not concerned with any of the company\'s fundamentals. They seek to determine the future price of a stock based solely on the (potential) trends of the past price (a form of&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Time series analysis\" href=\"https://en.wikipedia.org/wiki/Time_series_analysis\">time series analysis</a>). Numerous patterns are employed such as the&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Head and shoulders (chart pattern)\" href=\"https://en.wikipedia.org/wiki/Head_and_shoulders_(chart_pattern)\">head and shoulders</a>&nbsp;or&nbsp;<a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background: none;\" title=\"Cup and saucer (chart pattern) (page does not exist)\" href=\"https://en.wikipedia.org/w/index.php?title=Cup_and_saucer_(chart_pattern)&amp;action=edit&amp;redlink=1\">cup and saucer</a>. Alongside the patterns, statistical techniques are used such as the&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Exponential moving average\" href=\"https://en.wikipedia.org/wiki/Exponential_moving_average\">exponential moving average</a>&nbsp;(EMA). Candle stick patterns are believed to be first developed by Japanese rice merchants, and nowadays widely used by technical analysts.</p>\r\n<h3 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; font-size: 1.2em; line-height: 1.6; font-family: sans-serif;\"><span id=\"Data_Mining_Technologies_.28e.g._ANN.29\" class=\"mw-headline\">Data Mining Technologies (e.g. ANN)</span></h3>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">With the advent of the&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Digital computer\" href=\"https://en.wikipedia.org/wiki/Digital_computer\">digital computer</a>, stock market prediction has since moved into the technological realm. The most prominent technique involves the use of&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Artificial neural networks\" href=\"https://en.wikipedia.org/wiki/Artificial_neural_networks\">artificial neural networks</a>&nbsp;(ANNs) and Genetic Algorithms. Scholars found bacterial chemotaxis optimization method may perform better than GA.<sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-1\">[1]</a></sup>&nbsp;ANNs can be thought of as&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Mathematical function\" href=\"https://en.wikipedia.org/wiki/Mathematical_function\">mathematical function</a>&nbsp;approximators. The most common form of ANN in use for stock market prediction is the&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Feedforward neural network\" href=\"https://en.wikipedia.org/wiki/Feedforward_neural_network\">feed forward network</a>&nbsp;utilising the&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Backpropagation\" href=\"https://en.wikipedia.org/wiki/Backpropagation\">backward propagation of errors</a>&nbsp;algorithm to update the network weights. These networks are commonly referred to as&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Backpropagation\" href=\"https://en.wikipedia.org/wiki/Backpropagation\">Backpropagation</a>&nbsp;networks. Another form of ANN that is more appropriate for stock prediction is the time&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Recurrent neural network\" href=\"https://en.wikipedia.org/wiki/Recurrent_neural_network\">recurrent neural network</a>&nbsp;(RNN) or&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Time delay neural network\" href=\"https://en.wikipedia.org/wiki/Time_delay_neural_network\">time delay neural network</a>&nbsp;(TDNN). Examples of RNN and TDNN are the Elman, Jordan, and Elman-Jordan networks. (See the&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Recurrent neural network\" href=\"https://en.wikipedia.org/wiki/Recurrent_neural_network#Elman_networks_and_Jordan_networks\">Elman And Jordan Networks</a>)..</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">For stock prediction with ANNs, there are usually two approaches taken for forecasting different time horizons: independent and joint. The independent approach employs a single ANN for each time horizon, for example, 1-day, 2-day, or 5-day. The advantage of this approach is that network forecasting error for one horizon won\'t impact the error for another horizon&mdash;since each time horizon is typically a unique problem. The joint approach, however, incorporates multiple time horizons together so that they are determined simultaneously. In this approach, forecasting error for one time horizon may share its error with that of another horizon, which can decrease performance. There are also more parameters required for a joint model, which increases the risk of overfitting.</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Of late, the majority of academic research groups studying ANNs for stock forecasting seem to be using an ensemble of independent ANNs methods more frequently, with greater success. An ensemble of ANNs would use low price and time lags to predict future lows, while another network would use lagged highs to predict future highs. The predicted low and high predictions are then used to form stop prices for buying or selling. Outputs from the individual \"low\" and \"high\" networks can also be input into a final network that would also incorporate volume, intermarket data or statistical summaries of prices, leading to a final ensemble output that would trigger buying, selling, or market directional change. A major finding with ANNs and stock prediction is that a classification approach (vs. function approximation) using outputs in the form of buy(y=+1) and sell(y=-1) results in better predictive reliability than a quantitative output such as low or high price.<sup id=\"cite_ref-2\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-2\">[2]</a></sup>&nbsp;This is explained by the fact that an ANN can predict class better than a quantitative value as in function approximation&mdash;since ANNs occasionally learn more about the noise in the input data.</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Since NNs require training and can have a large parameter space, it is useful to modify the network structure for optimal predictive ability.</p>\r\n<h4 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; line-height: 1.6; font-family: sans-serif;\"><span id=\"Internet-based_data_sources_for_stock_market_prediction\" class=\"mw-headline\">Internet-based data sources for stock market prediction</span></h4>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Tobias Preis\" href=\"https://en.wikipedia.org/wiki/Tobias_Preis\">Tobias Preis</a>&nbsp;et al. introduced a method to identify online precursors for stock market moves, using trading strategies based on search volume data provided by&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Google Trends\" href=\"https://en.wikipedia.org/wiki/Google_Trends\">Google Trends</a>.<sup id=\"cite_ref-3\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-3\">[3]</a></sup>&nbsp;Their analysis of&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Google\" href=\"https://en.wikipedia.org/wiki/Google\">Google</a>&nbsp;search volume for 98 terms of varying financial relevance, published in&nbsp;<em><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Scientific Reports\" href=\"https://en.wikipedia.org/wiki/Scientific_Reports\">Scientific Reports</a></em>,<sup id=\"cite_ref-4\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-4\">[4]</a></sup>&nbsp;suggests that increases in search volume for financially relevant search terms tend to precede large losses in financial markets.<sup id=\"cite_ref-5\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-5\">[5]</a></sup><sup id=\"cite_ref-6\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-6\">[6]</a></sup><sup id=\"cite_ref-7\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-7\">[7]</a></sup><sup id=\"cite_ref-8\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-8\">[8]</a></sup><sup id=\"cite_ref-9\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-9\">[9]</a></sup><sup id=\"cite_ref-10\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-10\">[10]</a></sup><sup id=\"cite_ref-11\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-11\">[11]</a></sup><sup id=\"cite_ref-12\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-12\">[12]</a></sup>&nbsp;Out of these terms, three were significant at the 5% level (|<em>z</em>| &gt; 1.96). The best term in the negative direction was \"debt\", followed by \"color\".</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">In a study published in&nbsp;<em><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Scientific Reports\" href=\"https://en.wikipedia.org/wiki/Scientific_Reports\">Scientific Reports</a></em>&nbsp;in 2013,<sup id=\"cite_ref-13\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-13\">[13]</a></sup>&nbsp;Helen Susannah Moat,&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Tobias Preis\" href=\"https://en.wikipedia.org/wiki/Tobias_Preis\">Tobias Preis</a>&nbsp;and colleagues demonstrated a link between changes in the number of views of&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"English Wikipedia\" href=\"https://en.wikipedia.org/wiki/English_Wikipedia\">English Wikipedia</a>&nbsp;articles relating to financial topics and subsequent large stock market moves.<sup id=\"cite_ref-14\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-14\">[14]</a></sup></p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">The collective mood of&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Twitter\" href=\"https://en.wikipedia.org/wiki/Twitter\">Twitter</a>&nbsp;messages has been linked to stock market performance.<sup id=\"cite_ref-15\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-15\">[15]</a></sup>&nbsp;The study, however, has been criticized for its methodology.</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">The activity in stock message boards has been mined in order to predict asset returns.<sup id=\"cite_ref-Galvez2017_16-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-Galvez2017-16\">[16]</a></sup></p>\r\n<h4 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0.3em 0px 0px; overflow: hidden; padding-top: 0.5em; padding-bottom: 0px; border-bottom: 0px; line-height: 1.6; font-family: sans-serif;\"><span id=\"Applications_of_Complexity_Science_for_stock_market_prediction\" class=\"mw-headline\">Applications of Complexity Science for stock market prediction</span></h4>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Using new statistical analysis tools of&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Complexity economics\" href=\"https://en.wikipedia.org/wiki/Complexity_economics\">complexity theory</a>, researchers at the&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"New England Complex Systems Institute\" href=\"https://en.wikipedia.org/wiki/New_England_Complex_Systems_Institute\">New England Complex Systems Institute</a>&nbsp;(NECSI) performed research on predicting&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Stock market crash\" href=\"https://en.wikipedia.org/wiki/Stock_market_crash\">stock market crashes</a>.<sup id=\"cite_ref-17\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-17\">[17]</a></sup><sup id=\"cite_ref-18\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-18\">[18]</a></sup><sup id=\"cite_ref-19\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 12px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Stock_market_prediction#cite_note-19\">[19]</a></sup>&nbsp;It has long been thought that market crashes are triggered by panics that may or may not be justified by external news. This research indicates that it is the internal structure of the market, not external crises, which is primarily responsible for crashes. The number of different stocks that move up or down together were shown to be an indicator of the mimicry within the market, how much investors look to one another for cues. When the mimicry is high, many stocks follow each other\'s movements - a prime reason for panic to take hold. It was shown that a dramatic increase in market mimicry occurred during the entire year before each market crash of the past 25 years, including the&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Financial crisis of 2007&ndash;08\" href=\"https://en.wikipedia.org/wiki/Financial_crisis_of_2007%E2%80%9308\">financial crisis of 2007&ndash;08</a>.</p>','2017-05-30 13:46:31'),(70,33,5,2,'add content','CPU_Prediction','CPU Prediction','<h1>1. Introduction</h1>\r\n<p>CPU utilization prediction is an important component of the resource allocation and job scheduling problems in virtualized servers and clouds. Utilization prediction is used by a resource manager to balance workload among physical nodes thus increasing the efficiency of resource usage. In the case of virtual machine distribution task the accurate prediction of CPU utilization allows to migrate one or more virtual machines, avoiding the physical machines\' overload.&nbsp;</p>\r\n<p>Here we tried some most popular approaches to CPU utilization prediction, the advantages and disadvantages of the methods being applied and the appliance limitations. We focus on regression models (ARFIMA and its special cases), Bayesian models, the Kalman filter and clustering.&nbsp;</p>\r\n<h1>2. Models</h1>\r\n<h2>2.1 regression model</h2>\r\n<h2>2.2 Bayesian model</h2>\r\n<p>&nbsp;</p>','2017-06-05 02:32:24'),(71,34,2,3,NULL,'Server_analysis','Server analysis','<p>Server analysis</p>','2017-06-05 03:03:35'),(72,34,2,1,'First Revision','Server_analysis','Server analysis','<p>Server analysis</p>','2017-06-05 03:03:35'),(73,33,2,3,'','CPU_Prediction','CPU Prediction','<h1>1. Introduction</h1>\r\n<p>CPU utilization prediction is an important component of the resource allocation and job scheduling problems in virtualized servers and clouds. Utilization prediction is used by a resource manager to balance workload among physical nodes thus increasing the efficiency of resource usage. In the case of virtual machine distribution task the accurate prediction of CPU utilization allows to migrate one or more virtual machines, avoiding the physical machines\' overload.&nbsp;</p>\r\n<p>Here we tried some most popular approaches to CPU utilization prediction, the advantages and disadvantages of the methods being applied and the appliance limitations. We focus on regression models (ARFIMA and its special cases), Bayesian models, the Kalman filter and clustering.&nbsp;</p>\r\n<h1>2. Models</h1>\r\n<h2>2.1 regression model</h2>\r\n<h2>2.2 Bayesian model</h2>\r\n<p>&nbsp;</p>','2017-06-05 03:09:59'),(74,33,2,4,'','CPU_Prediction','CPU Prediction','<h1>1. Introduction</h1>\r\n<p>CPU utilization prediction is an important component of the resource allocation and job scheduling problems in virtualized servers and clouds. Utilization prediction is used by a resource manager to balance workload among physical nodes thus increasing the efficiency of resource usage. In the case of virtual machine distribution task the accurate prediction of CPU utilization allows to migrate one or more virtual machines, avoiding the physical machines\' overload.&nbsp;</p>\r\n<p>Here we tried some most popular approaches to CPU utilization prediction, the advantages and disadvantages of the methods being applied and the appliance limitations. We focus on regression models (ARFIMA and its special cases), Bayesian models, the Kalman filter and clustering.&nbsp;</p>\r\n<h1>&nbsp;</h1>\r\n<p>&nbsp;</p>','2017-06-05 03:10:18'),(75,33,2,5,'','CPU_Prediction','CPU Prediction','<h6>&nbsp;</h6>\r\n<h2 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; margin: 1em 0px 0.25em; overflow: hidden; padding: 0px; border-bottom: 1px solid #a2a9b1; font-family: \'Linux Libertine\', Georgia, Times, serif; line-height: 1.3;\"><span id=\"References\" class=\"mw-headline\">Introduction</span></h2>\r\n<p>CPU utilization prediction is an important component of the resource allocation and job scheduling problems in virtualized servers and clouds. Utilization prediction is used by a resource manager to balance workload among physical nodes thus increasing the efficiency of resource usage. In the case of virtual machine distribution task the accurate prediction of CPU utilization allows to migrate one or more virtual machines, avoiding the physical machines\' overload.&nbsp;&nbsp;</p>\r\n<h2 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; margin: 1em 0px 0.25em; overflow: hidden; padding: 0px; border-bottom: 1px solid #a2a9b1; font-family: \'Linux Libertine\', Georgia, Times, serif; line-height: 1.3;\"><span id=\"References\" class=\"mw-headline\"></span><span id=\"References\" class=\"mw-headline\">References</span></h2>\r\n<p>[1] Kudinova M, Melekhova A, Verinov A. CPU utilization prediction methods overview[C]//Proceedings of the 11th Central &amp; Eastern European Software Engineering Conference in Russia. ACM, 2015: 7.</p>\r\n<p>&nbsp;</p>','2017-06-05 04:58:42'),(76,35,2,2,NULL,'Memory_Prediction','Memory Prediction','','2017-06-05 05:00:00'),(77,35,2,1,'First Revision','Memory_Prediction','Memory Prediction','','2017-06-05 05:00:00'),(78,33,5,6,'','CPU_Prediction','CPU Prediction','<h6>&nbsp;</h6>\r\n<h2 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; margin: 1em 0px 0.25em; overflow: hidden; padding: 0px; border-bottom: 1px solid #a2a9b1; font-family: \'Linux Libertine\', Georgia, Times, serif; line-height: 1.3;\"><span id=\"References\" class=\"mw-headline\">Introduction</span></h2>\r\n<p>CPU utilization prediction is an important component of the resource allocation and job scheduling problems in virtualized servers and clouds. Utilization prediction is used by a resource manager to balance workload among physical nodes thus increasing the efficiency of resource usage. In the case of virtual machine distribution task the accurate prediction of CPU utilization allows to migrate one or more virtual machines, avoiding the physical machines\' overload.&nbsp;&nbsp;</p>\r\n<p><img src=\"../../assets/cpu.jpeg\" alt=\"cpu\" width=\"387\" height=\"268\" /></p>\r\n<h2 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; margin: 1em 0px 0.25em; overflow: hidden; padding: 0px; border-bottom: 1px solid #a2a9b1; font-family: \'Linux Libertine\', Georgia, Times, serif; line-height: 1.3;\"><span id=\"References\" class=\"mw-headline\"></span><span id=\"References\" class=\"mw-headline\">References</span></h2>\r\n<p>[1] Kudinova M, Melekhova A, Verinov A. CPU utilization prediction methods overview[C]//Proceedings of the 11th Central &amp; Eastern European Software Engineering Conference in Russia. ACM, 2015: 7.</p>\r\n<p>&nbsp;</p>','2017-06-05 10:24:59'),(79,33,5,7,'','CPU_Prediction','CPU Prediction','<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../assets/cpu.jpeg\" alt=\"cpu\" width=\"387\" height=\"268\" /></p>\r\n<h2 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; margin: 1em 0px 0.25em; overflow: hidden; padding: 0px; border-bottom: 1px solid #a2a9b1; font-family: \'Linux Libertine\', Georgia, Times, serif; line-height: 1.3;\"><span id=\"References\" class=\"mw-headline\">Introduction</span></h2>\r\n<p>CPU utilization prediction is an important component of the resource allocation and job scheduling problems in virtualized servers and clouds. Utilization prediction is used by a resource manager to balance workload among physical nodes thus increasing the efficiency of resource usage. In the case of virtual machine distribution task the accurate prediction of CPU utilization allows to migrate one or more virtual machines, avoiding the physical machines\' overload.&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; margin: 1em 0px 0.25em; overflow: hidden; padding: 0px; border-bottom: 1px solid #a2a9b1; font-family: \'Linux Libertine\', Georgia, Times, serif; line-height: 1.3;\"><span id=\"References\" class=\"mw-headline\"></span><span id=\"References\" class=\"mw-headline\">References</span></h2>\r\n<p>[1] Kudinova M, Melekhova A, Verinov A. CPU utilization prediction methods overview[C]//Proceedings of the 11th Central &amp; Eastern European Software Engineering Conference in Russia. ACM, 2015: 7.</p>\r\n<p>&nbsp;</p>','2017-06-05 10:46:18'),(80,33,5,8,'','CPU_Prediction','CPU Prediction','<p><img src=\"../../assets/cpu.jpeg\" alt=\"cpu\" width=\"60\" height=\"42\" /></p>\r\n<h2 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; margin: 1em 0px 0.25em; overflow: hidden; padding: 0px; border-bottom: 1px solid #a2a9b1; font-family: \'Linux Libertine\', Georgia, Times, serif; line-height: 1.3;\"><span id=\"References\" class=\"mw-headline\">Introduction</span></h2>\r\n<p>CPU utilization prediction is an important component of the resource allocation and job scheduling problems in virtualized servers and clouds. Utilization prediction is used by a resource manager to balance workload among physical nodes thus increasing the efficiency of resource usage. In the case of virtual machine distribution task the accurate prediction of CPU utilization allows to migrate one or more virtual machines, avoiding the physical machines\' overload.&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; margin: 1em 0px 0.25em; overflow: hidden; padding: 0px; border-bottom: 1px solid #a2a9b1; font-family: \'Linux Libertine\', Georgia, Times, serif; line-height: 1.3;\"><span id=\"References\" class=\"mw-headline\"></span><span id=\"References\" class=\"mw-headline\">References</span></h2>\r\n<p>[1] Kudinova M, Melekhova A, Verinov A. CPU utilization prediction methods overview[C]//Proceedings of the 11th Central &amp; Eastern European Software Engineering Conference in Russia. ACM, 2015: 7.</p>\r\n<p>&nbsp;</p>','2017-06-05 10:46:42'),(81,33,5,9,'','CPU_Prediction','CPU Prediction','<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../assets/cpu.jpeg\" alt=\"cpu\" width=\"300\" height=\"210\" /></p>\r\n<h2 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; margin: 1em 0px 0.25em; overflow: hidden; padding: 0px; border-bottom: 1px solid #a2a9b1; font-family: \'Linux Libertine\', Georgia, Times, serif; line-height: 1.3;\"><span id=\"References\" class=\"mw-headline\">Introduction</span></h2>\r\n<p>CPU utilization prediction is an important component of the resource allocation and job scheduling problems in virtualized servers and clouds. Utilization prediction is used by a resource manager to balance workload among physical nodes thus increasing the efficiency of resource usage. In the case of virtual machine distribution task the accurate prediction of CPU utilization allows to migrate one or more virtual machines, avoiding the physical machines\' overload.&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; margin: 1em 0px 0.25em; overflow: hidden; padding: 0px; border-bottom: 1px solid #a2a9b1; font-family: \'Linux Libertine\', Georgia, Times, serif; line-height: 1.3;\"><span id=\"References\" class=\"mw-headline\"></span><span id=\"References\" class=\"mw-headline\">References</span></h2>\r\n<p>[1] Kudinova M, Melekhova A, Verinov A. CPU utilization prediction methods overview[C]//Proceedings of the 11th Central &amp; Eastern European Software Engineering Conference in Russia. ACM, 2015: 7.</p>\r\n<p>&nbsp;</p>','2017-06-05 10:46:57'),(82,36,5,1,NULL,'Stock_predict','Stock predict','','2017-06-05 12:23:08'),(83,36,5,1,'First Revision','Stock_predict','Stock predict','','2017-06-05 12:23:08'),(84,37,5,1,NULL,'User_classification','User classification','','2017-06-05 12:23:36'),(85,37,5,1,'First Revision','User_classification','User classification','','2017-06-05 12:23:36'),(86,38,2,1,NULL,'stock_predi','stock predi','<h1>Introduction</h1>\r\n<p>------</p>\r\n<p>duahdoiasjod</p>\r\n<h2>The paper about this problem</h2>\r\n<h2>Reference</h2>\r\n<p>----</p>\r\n<p>&nbsp;</p>','2017-06-15 07:20:03'),(87,38,2,1,'First Revision','stock_predi','stock predi','<h1>Introduction</h1>\r\n<p>------</p>\r\n<p>duahdoiasjod</p>\r\n<h2>The paper about this problem</h2>\r\n<h2>Reference</h2>\r\n<p>----</p>\r\n<p>&nbsp;</p>','2017-06-15 07:20:03');
/*!40000 ALTER TABLE `wiki_page_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_pages`
--

DROP TABLE IF EXISTS `wiki_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator_id` int(11) DEFAULT NULL,
  `updator_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_wiki_pages_on_path` (`path`),
  KEY `index_wiki_pages_on_creator_id` (`creator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_pages`
--

LOCK TABLES `wiki_pages` WRITE;
/*!40000 ALTER TABLE `wiki_pages` DISABLE KEYS */;
INSERT INTO `wiki_pages` VALUES (18,2,5,'None','None','','2017-05-21 09:57:36','2017-05-30 06:30:56'),(33,2,5,'CPU_Prediction','CPU Prediction','<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../assets/cpu.jpeg\" alt=\"cpu\" width=\"300\" height=\"210\" /></p>\r\n<h2 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; margin: 1em 0px 0.25em; overflow: hidden; padding: 0px; border-bottom: 1px solid #a2a9b1; font-family: \'Linux Libertine\', Georgia, Times, serif; line-height: 1.3;\"><span id=\"References\" class=\"mw-headline\">Introduction</span></h2>\r\n<p>CPU utilization prediction is an important component of the resource allocation and job scheduling problems in virtualized servers and clouds. Utilization prediction is used by a resource manager to balance workload among physical nodes thus increasing the efficiency of resource usage. In the case of virtual machine distribution task the accurate prediction of CPU utilization allows to migrate one or more virtual machines, avoiding the physical machines\' overload.&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2 style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; margin: 1em 0px 0.25em; overflow: hidden; padding: 0px; border-bottom: 1px solid #a2a9b1; font-family: \'Linux Libertine\', Georgia, Times, serif; line-height: 1.3;\"><span id=\"References\" class=\"mw-headline\"></span><span id=\"References\" class=\"mw-headline\">References</span></h2>\r\n<p>[1] Kudinova M, Melekhova A, Verinov A. CPU utilization prediction methods overview[C]//Proceedings of the 11th Central &amp; Eastern European Software Engineering Conference in Russia. ACM, 2015: 7.</p>\r\n<p>&nbsp;</p>','2017-05-25 11:07:03','2017-06-05 10:46:57'),(35,2,2,'Memory_Prediction','Memory Prediction','','2017-06-05 05:00:00','2017-06-05 05:00:00'),(36,5,5,'Stock_predict','Stock predict','','2017-06-05 12:23:08','2017-06-05 12:23:08'),(37,5,5,'User_classification','User classification','','2017-06-05 12:23:36','2017-06-05 12:23:36'),(38,2,2,'stock_predi','stock predi','<h1>Introduction</h1>\r\n<p>------</p>\r\n<p>duahdoiasjod</p>\r\n<h2>The paper about this problem</h2>\r\n<h2>Reference</h2>\r\n<p>----</p>\r\n<p>&nbsp;</p>','2017-06-15 07:20:03','2017-06-15 07:20:03');
/*!40000 ALTER TABLE `wiki_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_relationships`
--

DROP TABLE IF EXISTS `wiki_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_page_id` int(11) DEFAULT NULL,
  `related_wiki_page_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_wiki_relationships_on_wiki_page_id` (`wiki_page_id`),
  KEY `index_wiki_relationships_on_related_wiki_page_id` (`related_wiki_page_id`),
  CONSTRAINT `fk_rails_9867412fa5` FOREIGN KEY (`wiki_page_id`) REFERENCES `wiki_pages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_relationships`
--

LOCK TABLES `wiki_relationships` WRITE;
/*!40000 ALTER TABLE `wiki_relationships` DISABLE KEYS */;
INSERT INTO `wiki_relationships` VALUES (1,18,18,'2017-05-30 07:02:08','2017-05-30 07:02:08'),(2,18,33,'2017-05-30 07:02:17','2017-05-30 07:02:17'),(4,33,35,'2017-06-05 05:00:10','2017-06-05 05:00:10');
/*!40000 ALTER TABLE `wiki_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_categories`
--

DROP TABLE IF EXISTS `workflow_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_categories`
--

LOCK TABLES `workflow_categories` WRITE;
/*!40000 ALTER TABLE `workflow_categories` DISABLE KEYS */;
INSERT INTO `workflow_categories` VALUES (1,'Prediction',NULL,'2017-04-08 06:11:19','2017-04-08 06:11:19'),(2,'Clustering',NULL,'2017-04-08 06:11:19','2017-04-08 06:11:19'),(3,'Classification',NULL,'2017-04-08 06:11:19','2017-04-08 06:11:19'),(4,'Regression',NULL,'2017-04-08 06:11:19','2017-04-08 06:11:19');
/*!40000 ALTER TABLE `workflow_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_comments`
--

DROP TABLE IF EXISTS `workflow_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `score` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `comment_parent_id` int(11) DEFAULT NULL,
  `workflow_information_id` int(11) DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_workflow_comments_on_author_id` (`author_id`),
  KEY `index_workflow_comments_on_comment_parent_id` (`comment_parent_id`),
  KEY `index_workflow_comments_on_process_id` (`process_id`),
  KEY `index_workflow_comments_on_workflow_information_id` (`workflow_information_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_comments`
--

LOCK TABLES `workflow_comments` WRITE;
/*!40000 ALTER TABLE `workflow_comments` DISABLE KEYS */;
INSERT INTO `workflow_comments` VALUES (11,NULL,'<p>Very good</p>',5,NULL,NULL,73,NULL,'2017-06-05 11:06:29','2017-06-05 11:06:29');
/*!40000 ALTER TABLE `workflow_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_information_and_tags`
--

DROP TABLE IF EXISTS `workflow_information_and_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_information_and_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_information_id` int(11) DEFAULT NULL,
  `workflow_tag_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_workflow_information_and_tags_on_workflow_information_id` (`workflow_information_id`),
  KEY `index_workflow_information_and_tags_on_workflow_tag_id` (`workflow_tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_information_and_tags`
--

LOCK TABLES `workflow_information_and_tags` WRITE;
/*!40000 ALTER TABLE `workflow_information_and_tags` DISABLE KEYS */;
INSERT INTO `workflow_information_and_tags` VALUES (32,20,9,'2017-04-10 13:13:24','2017-04-10 13:13:24'),(113,73,17,'2017-06-05 09:51:57','2017-06-05 09:51:57'),(114,74,17,'2017-06-05 10:45:54','2017-06-05 10:45:54'),(115,75,18,'2017-06-05 10:50:38','2017-06-05 10:50:38'),(116,75,19,'2017-06-05 10:50:38','2017-06-05 10:50:38'),(117,76,18,'2017-06-05 11:00:18','2017-06-05 11:00:18'),(118,76,19,'2017-06-05 11:00:18','2017-06-05 11:00:18'),(119,77,18,'2017-06-05 11:02:03','2017-06-05 11:02:03'),(120,77,19,'2017-06-05 11:02:03','2017-06-05 11:02:03'),(122,81,9,'2017-06-15 07:20:31','2017-06-15 07:20:31'),(123,82,9,'2017-06-15 07:25:01','2017-06-15 07:25:01'),(124,83,9,'2017-06-15 07:28:05','2017-06-15 07:28:05');
/*!40000 ALTER TABLE `workflow_information_and_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_informations`
--

DROP TABLE IF EXISTS `workflow_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introduction` text COLLATE utf8_unicode_ci,
  `detial_description` text COLLATE utf8_unicode_ci,
  `version_name` text COLLATE utf8_unicode_ci,
  `category_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `last_editor_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `persistent` tinyint(1) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `most_possible_duration` int(11) DEFAULT NULL,
  `minimal_duration` int(11) DEFAULT NULL,
  `maximal_duration` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `xml` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_workflow_informations_on_author_id` (`author_id`),
  KEY `index_workflow_informations_on_category_id` (`category_id`),
  KEY `index_workflow_informations_on_last_editor_id` (`last_editor_id`),
  KEY `index_workflow_informations_on_tag_id` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_informations`
--

LOCK TABLES `workflow_informations` WRITE;
/*!40000 ALTER TABLE `workflow_informations` DISABLE KEYS */;
INSERT INTO `workflow_informations` VALUES (20,'Clustering by Kmeans','This is a model clustering data by Kmeans algorithm.','Add function: adjust the number for clustering','V 0.0.2',2,NULL,1,1,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-04-10 13:08:40','2017-04-10 13:13:30',NULL),(69,'Clustering by EM','Clustering by EM',NULL,NULL,NULL,NULL,5,5,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-06-05 08:12:40','2017-06-05 08:12:40',NULL),(70,'Clustering by EM ','Clustering by EM algorithm','init version\r\n','V 0.0.2',1,NULL,5,5,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-06-05 08:13:52','2017-06-05 10:45:19',''),(73,'Time Series Prediciton','prediction for time series problem','Init version','V 0.0.1',1,NULL,5,5,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-06-05 08:44:02','2017-06-05 09:52:58','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<bpmn2:definitions xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:bpmn2=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" id=\"sample-diagram\" targetNamespace=\"http://bpmn.io/schema/bpmn\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\">\r\n  <bpmn2:process id=\"Process_1\" isExecutable=\"false\">\r\n    <bpmn2:startEvent id=\"StartEvent_1\">\r\n      <bpmn2:outgoing>SequenceFlow_1jkf45a</bpmn2:outgoing>\r\n    </bpmn2:startEvent>\r\n    <bpmn2:task id=\"Task_025r0ep\" name=\"Time Series Configuration\">\r\n      <bpmn2:incoming>SequenceFlow_1jkf45a</bpmn2:incoming>\r\n      <bpmn2:outgoing>SequenceFlow_0s5a05h</bpmn2:outgoing>\r\n    </bpmn2:task>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_1jkf45a\" sourceRef=\"StartEvent_1\" targetRef=\"Task_025r0ep\" />\r\n    <bpmn2:task id=\"Task_1yj3e4b\" name=\"Linear Regression\">\r\n      <bpmn2:incoming>SequenceFlow_0s5a05h</bpmn2:incoming>\r\n      <bpmn2:outgoing>SequenceFlow_1ozku3u</bpmn2:outgoing>\r\n    </bpmn2:task>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_0s5a05h\" sourceRef=\"Task_025r0ep\" targetRef=\"Task_1yj3e4b\" />\r\n    <bpmn2:task id=\"Task_1udlrl4\" name=\"Visualization and Output\">\r\n      <bpmn2:incoming>SequenceFlow_1ozku3u</bpmn2:incoming>\r\n      <bpmn2:outgoing>SequenceFlow_05zhdcp</bpmn2:outgoing>\r\n    </bpmn2:task>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_1ozku3u\" sourceRef=\"Task_1yj3e4b\" targetRef=\"Task_1udlrl4\" />\r\n    <bpmn2:endEvent id=\"EndEvent_1r0m3nd\">\r\n      <bpmn2:incoming>SequenceFlow_05zhdcp</bpmn2:incoming>\r\n    </bpmn2:endEvent>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_05zhdcp\" sourceRef=\"Task_1udlrl4\" targetRef=\"EndEvent_1r0m3nd\" />\r\n  </bpmn2:process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_1\">\r\n    <bpmndi:BPMNPlane id=\"BPMNPlane_1\" bpmnElement=\"Process_1\">\r\n      <bpmndi:BPMNShape id=\"_BPMNShape_StartEvent_2\" bpmnElement=\"StartEvent_1\">\r\n        <dc:Bounds x=\"167\" y=\"150\" width=\"36\" height=\"36\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"140\" y=\"186\" width=\"90\" height=\"20\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"Task_025r0ep_di\" bpmnElement=\"Task_025r0ep\">\r\n        <dc:Bounds x=\"240\" y=\"128\" width=\"100\" height=\"80\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_1jkf45a_di\" bpmnElement=\"SequenceFlow_1jkf45a\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"203\" y=\"168\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"240\" y=\"168\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"221.5\" y=\"146\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNShape id=\"Task_1yj3e4b_di\" bpmnElement=\"Task_1yj3e4b\">\r\n        <dc:Bounds x=\"385\" y=\"128\" width=\"100\" height=\"80\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_0s5a05h_di\" bpmnElement=\"SequenceFlow_0s5a05h\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"340\" y=\"168\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"385\" y=\"168\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"362.5\" y=\"146.5\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNShape id=\"Task_1udlrl4_di\" bpmnElement=\"Task_1udlrl4\">\r\n        <dc:Bounds x=\"524\" y=\"128\" width=\"100\" height=\"80\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_1ozku3u_di\" bpmnElement=\"SequenceFlow_1ozku3u\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"485\" y=\"168\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"524\" y=\"168\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"504.5\" y=\"146\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNShape id=\"EndEvent_1r0m3nd_di\" bpmnElement=\"EndEvent_1r0m3nd\">\r\n        <dc:Bounds x=\"668\" y=\"150\" width=\"36\" height=\"36\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"686\" y=\"189\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_05zhdcp_di\" bpmnElement=\"SequenceFlow_05zhdcp\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"624\" y=\"168\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"668\" y=\"168\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"646\" y=\"146\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</bpmn2:definitions>\r\n'),(74,'Time Series Prediciton','prediction for time series problem','Init version','V 0.0.1',1,NULL,5,5,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-06-05 08:44:02','2017-06-05 10:47:14','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<bpmn2:definitions xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:bpmn2=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" id=\"sample-diagram\" targetNamespace=\"http://bpmn.io/schema/bpmn\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\">\r\n  <bpmn2:process id=\"Process_1\" isExecutable=\"false\">\r\n    <bpmn2:startEvent id=\"StartEvent_1\">\r\n      <bpmn2:outgoing>SequenceFlow_1jkf45a</bpmn2:outgoing>\r\n    </bpmn2:startEvent>\r\n    <bpmn2:task id=\"Task_025r0ep\" name=\"Time Series Configuration\">\r\n      <bpmn2:incoming>SequenceFlow_1jkf45a</bpmn2:incoming>\r\n      <bpmn2:outgoing>SequenceFlow_0s5a05h</bpmn2:outgoing>\r\n    </bpmn2:task>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_1jkf45a\" sourceRef=\"StartEvent_1\" targetRef=\"Task_025r0ep\" />\r\n    <bpmn2:task id=\"Task_1yj3e4b\" name=\"Linear Regression\">\r\n      <bpmn2:incoming>SequenceFlow_0s5a05h</bpmn2:incoming>\r\n      <bpmn2:outgoing>SequenceFlow_1ozku3u</bpmn2:outgoing>\r\n    </bpmn2:task>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_0s5a05h\" sourceRef=\"Task_025r0ep\" targetRef=\"Task_1yj3e4b\" />\r\n    <bpmn2:task id=\"Task_1udlrl4\" name=\"Visualization and Output\">\r\n      <bpmn2:incoming>SequenceFlow_1ozku3u</bpmn2:incoming>\r\n      <bpmn2:outgoing>SequenceFlow_05zhdcp</bpmn2:outgoing>\r\n    </bpmn2:task>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_1ozku3u\" sourceRef=\"Task_1yj3e4b\" targetRef=\"Task_1udlrl4\" />\r\n    <bpmn2:endEvent id=\"EndEvent_1r0m3nd\">\r\n      <bpmn2:incoming>SequenceFlow_05zhdcp</bpmn2:incoming>\r\n    </bpmn2:endEvent>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_05zhdcp\" sourceRef=\"Task_1udlrl4\" targetRef=\"EndEvent_1r0m3nd\" />\r\n  </bpmn2:process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_1\">\r\n    <bpmndi:BPMNPlane id=\"BPMNPlane_1\" bpmnElement=\"Process_1\">\r\n      <bpmndi:BPMNShape id=\"_BPMNShape_StartEvent_2\" bpmnElement=\"StartEvent_1\">\r\n        <dc:Bounds x=\"167\" y=\"150\" width=\"36\" height=\"36\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"140\" y=\"186\" width=\"90\" height=\"20\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"Task_025r0ep_di\" bpmnElement=\"Task_025r0ep\">\r\n        <dc:Bounds x=\"240\" y=\"128\" width=\"100\" height=\"80\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_1jkf45a_di\" bpmnElement=\"SequenceFlow_1jkf45a\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"203\" y=\"168\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"240\" y=\"168\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"221.5\" y=\"146\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNShape id=\"Task_1yj3e4b_di\" bpmnElement=\"Task_1yj3e4b\">\r\n        <dc:Bounds x=\"385\" y=\"128\" width=\"100\" height=\"80\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_0s5a05h_di\" bpmnElement=\"SequenceFlow_0s5a05h\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"340\" y=\"168\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"385\" y=\"168\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"362.5\" y=\"146.5\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNShape id=\"Task_1udlrl4_di\" bpmnElement=\"Task_1udlrl4\">\r\n        <dc:Bounds x=\"527\" y=\"128\" width=\"100\" height=\"80\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_1ozku3u_di\" bpmnElement=\"SequenceFlow_1ozku3u\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"485\" y=\"168\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"527\" y=\"168\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"461\" y=\"146.5\" width=\"90\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNShape id=\"EndEvent_1r0m3nd_di\" bpmnElement=\"EndEvent_1r0m3nd\">\r\n        <dc:Bounds x=\"668\" y=\"150\" width=\"36\" height=\"36\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"686\" y=\"189\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_05zhdcp_di\" bpmnElement=\"SequenceFlow_05zhdcp\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"627\" y=\"168\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"668\" y=\"168\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"602.5\" y=\"146.5\" width=\"90\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</bpmn2:definitions>\r\n'),(75,'SMOreg Regression','','init version','0.0.1',4,NULL,5,5,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-06-05 10:49:47','2017-06-05 10:58:47','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<bpmn2:definitions xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:bpmn2=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" id=\"sample-diagram\" targetNamespace=\"http://bpmn.io/schema/bpmn\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\">\r\n  <bpmn2:process id=\"Process_1\" isExecutable=\"false\">\r\n    <bpmn2:startEvent id=\"StartEvent_1\">\r\n      <bpmn2:outgoing>SequenceFlow_14impae</bpmn2:outgoing>\r\n    </bpmn2:startEvent>\r\n    <bpmn2:task id=\"Task_1wc18i7\" name=\"Time Series Configurations\">\r\n      <bpmn2:incoming>SequenceFlow_14impae</bpmn2:incoming>\r\n      <bpmn2:outgoing>SequenceFlow_070y5pp</bpmn2:outgoing>\r\n    </bpmn2:task>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_14impae\" sourceRef=\"StartEvent_1\" targetRef=\"Task_1wc18i7\" />\r\n    <bpmn2:task id=\"Task_0ttnn82\" name=\"SMOreg\">\r\n      <bpmn2:incoming>SequenceFlow_070y5pp</bpmn2:incoming>\r\n      <bpmn2:outgoing>SequenceFlow_0ge9tgy</bpmn2:outgoing>\r\n    </bpmn2:task>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_070y5pp\" sourceRef=\"Task_1wc18i7\" targetRef=\"Task_0ttnn82\" />\r\n    <bpmn2:task id=\"Task_0o02vsg\" name=\"Visualization and Output\">\r\n      <bpmn2:incoming>SequenceFlow_0ge9tgy</bpmn2:incoming>\r\n      <bpmn2:outgoing>SequenceFlow_1blqik9</bpmn2:outgoing>\r\n    </bpmn2:task>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_0ge9tgy\" sourceRef=\"Task_0ttnn82\" targetRef=\"Task_0o02vsg\" />\r\n    <bpmn2:endEvent id=\"EndEvent_1hfqblx\">\r\n      <bpmn2:incoming>SequenceFlow_1blqik9</bpmn2:incoming>\r\n    </bpmn2:endEvent>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_1blqik9\" sourceRef=\"Task_0o02vsg\" targetRef=\"EndEvent_1hfqblx\" />\r\n  </bpmn2:process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_1\">\r\n    <bpmndi:BPMNPlane id=\"BPMNPlane_1\" bpmnElement=\"Process_1\">\r\n      <bpmndi:BPMNShape id=\"_BPMNShape_StartEvent_2\" bpmnElement=\"StartEvent_1\">\r\n        <dc:Bounds x=\"145\" y=\"165\" width=\"36\" height=\"36\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"118\" y=\"201\" width=\"90\" height=\"20\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"Task_1wc18i7_di\" bpmnElement=\"Task_1wc18i7\">\r\n        <dc:Bounds x=\"216\" y=\"143\" width=\"100\" height=\"80\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_14impae_di\" bpmnElement=\"SequenceFlow_14impae\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"181\" y=\"183\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"216\" y=\"183\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"198.5\" y=\"161\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNShape id=\"Task_0ttnn82_di\" bpmnElement=\"Task_0ttnn82\">\r\n        <dc:Bounds x=\"343\" y=\"143\" width=\"100\" height=\"80\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_070y5pp_di\" bpmnElement=\"SequenceFlow_070y5pp\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"316\" y=\"183\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"343\" y=\"183\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"329.5\" y=\"161\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNShape id=\"Task_0o02vsg_di\" bpmnElement=\"Task_0o02vsg\">\r\n        <dc:Bounds x=\"469\" y=\"143\" width=\"100\" height=\"80\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_0ge9tgy_di\" bpmnElement=\"SequenceFlow_0ge9tgy\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"443\" y=\"183\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"469\" y=\"183\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"456\" y=\"161\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNShape id=\"EndEvent_1hfqblx_di\" bpmnElement=\"EndEvent_1hfqblx\">\r\n        <dc:Bounds x=\"605\" y=\"165\" width=\"36\" height=\"36\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"623\" y=\"204\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_1blqik9_di\" bpmnElement=\"SequenceFlow_1blqik9\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"569\" y=\"183\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"605\" y=\"183\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"587\" y=\"161.5\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</bpmn2:definitions>\r\n'),(76,'SMOreg Regression','','init version','0.0.1',4,NULL,5,5,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-06-05 10:49:47','2017-06-05 11:00:58','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<bpmn2:definitions xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:bpmn2=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" id=\"sample-diagram\" targetNamespace=\"http://bpmn.io/schema/bpmn\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\">\r\n  <bpmn2:process id=\"Process_1\" isExecutable=\"false\">\r\n    <bpmn2:startEvent id=\"StartEvent_1\" name=\"start\">\r\n      <bpmn2:outgoing>SequenceFlow_14impae</bpmn2:outgoing>\r\n    </bpmn2:startEvent>\r\n    <bpmn2:task id=\"Task_1wc18i7\" name=\"Time Series Configurations\">\r\n      <bpmn2:incoming>SequenceFlow_14impae</bpmn2:incoming>\r\n      <bpmn2:outgoing>SequenceFlow_070y5pp</bpmn2:outgoing>\r\n    </bpmn2:task>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_14impae\" sourceRef=\"StartEvent_1\" targetRef=\"Task_1wc18i7\" />\r\n    <bpmn2:task id=\"Task_0ttnn82\" name=\"SMOreg\">\r\n      <bpmn2:incoming>SequenceFlow_070y5pp</bpmn2:incoming>\r\n      <bpmn2:outgoing>SequenceFlow_0ge9tgy</bpmn2:outgoing>\r\n    </bpmn2:task>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_070y5pp\" sourceRef=\"Task_1wc18i7\" targetRef=\"Task_0ttnn82\" />\r\n    <bpmn2:task id=\"Task_0o02vsg\" name=\"Visualization and Output\">\r\n      <bpmn2:incoming>SequenceFlow_0ge9tgy</bpmn2:incoming>\r\n      <bpmn2:outgoing>SequenceFlow_1blqik9</bpmn2:outgoing>\r\n    </bpmn2:task>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_0ge9tgy\" sourceRef=\"Task_0ttnn82\" targetRef=\"Task_0o02vsg\" />\r\n    <bpmn2:endEvent id=\"EndEvent_1hfqblx\" name=\"end\">\r\n      <bpmn2:incoming>SequenceFlow_1blqik9</bpmn2:incoming>\r\n    </bpmn2:endEvent>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_1blqik9\" sourceRef=\"Task_0o02vsg\" targetRef=\"EndEvent_1hfqblx\" />\r\n  </bpmn2:process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_1\">\r\n    <bpmndi:BPMNPlane id=\"BPMNPlane_1\" bpmnElement=\"Process_1\">\r\n      <bpmndi:BPMNShape id=\"_BPMNShape_StartEvent_2\" bpmnElement=\"StartEvent_1\">\r\n        <dc:Bounds x=\"145\" y=\"165\" width=\"36\" height=\"36\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"152\" y=\"201\" width=\"22\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"Task_1wc18i7_di\" bpmnElement=\"Task_1wc18i7\">\r\n        <dc:Bounds x=\"216\" y=\"143\" width=\"100\" height=\"80\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_14impae_di\" bpmnElement=\"SequenceFlow_14impae\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"181\" y=\"183\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"216\" y=\"183\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"198.5\" y=\"161\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNShape id=\"Task_0ttnn82_di\" bpmnElement=\"Task_0ttnn82\">\r\n        <dc:Bounds x=\"343\" y=\"143\" width=\"100\" height=\"80\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_070y5pp_di\" bpmnElement=\"SequenceFlow_070y5pp\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"316\" y=\"183\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"343\" y=\"183\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"329.5\" y=\"161\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNShape id=\"Task_0o02vsg_di\" bpmnElement=\"Task_0o02vsg\">\r\n        <dc:Bounds x=\"469\" y=\"143\" width=\"100\" height=\"80\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_0ge9tgy_di\" bpmnElement=\"SequenceFlow_0ge9tgy\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"443\" y=\"183\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"469\" y=\"183\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"456\" y=\"161\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNShape id=\"EndEvent_1hfqblx_di\" bpmnElement=\"EndEvent_1hfqblx\">\r\n        <dc:Bounds x=\"607\" y=\"165\" width=\"36\" height=\"36\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"616\" y=\"204\" width=\"19\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_1blqik9_di\" bpmnElement=\"SequenceFlow_1blqik9\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"569\" y=\"183\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"607\" y=\"183\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"543\" y=\"161.5\" width=\"90\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</bpmn2:definitions>\r\n'),(77,'SMOreg Regression','','init version','0.0.1',4,NULL,5,5,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-06-05 10:49:47','2017-06-05 12:15:39',' <?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<bpmn2:definitions xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:bpmn2=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" id=\"sample-diagram\" targetNamespace=\"http://bpmn.io/schema/bpmn\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\">\r\n  <bpmn2:process id=\"Process_1\" isExecutable=\"false\">\r\n    <bpmn2:startEvent id=\"StartEvent_1\">\r\n      <bpmn2:outgoing>SequenceFlow_14impae</bpmn2:outgoing>\r\n    </bpmn2:startEvent>\r\n    <bpmn2:task id=\"Task_1wc18i7\" name=\"Time Series Configurations\">\r\n      <bpmn2:incoming>SequenceFlow_14impae</bpmn2:incoming>\r\n      <bpmn2:outgoing>SequenceFlow_070y5pp</bpmn2:outgoing>\r\n    </bpmn2:task>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_14impae\" sourceRef=\"StartEvent_1\" targetRef=\"Task_1wc18i7\" />\r\n    <bpmn2:task id=\"Task_0ttnn82\" name=\"SMOreg\">\r\n      <bpmn2:incoming>SequenceFlow_070y5pp</bpmn2:incoming>\r\n      <bpmn2:outgoing>SequenceFlow_0ge9tgy</bpmn2:outgoing>\r\n    </bpmn2:task>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_070y5pp\" sourceRef=\"Task_1wc18i7\" targetRef=\"Task_0ttnn82\" />\r\n    <bpmn2:task id=\"Task_0o02vsg\" name=\"Visualization and Output\">\r\n      <bpmn2:incoming>SequenceFlow_0ge9tgy</bpmn2:incoming>\r\n      <bpmn2:outgoing>SequenceFlow_1blqik9</bpmn2:outgoing>\r\n    </bpmn2:task>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_0ge9tgy\" sourceRef=\"Task_0ttnn82\" targetRef=\"Task_0o02vsg\" />\r\n    <bpmn2:endEvent id=\"EndEvent_1hfqblx\">\r\n      <bpmn2:incoming>SequenceFlow_1blqik9</bpmn2:incoming>\r\n    </bpmn2:endEvent>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_1blqik9\" sourceRef=\"Task_0o02vsg\" targetRef=\"EndEvent_1hfqblx\" />\r\n  </bpmn2:process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_1\">\r\n    <bpmndi:BPMNPlane id=\"BPMNPlane_1\" bpmnElement=\"Process_1\">\r\n      <bpmndi:BPMNShape id=\"_BPMNShape_StartEvent_2\" bpmnElement=\"StartEvent_1\">\r\n        <dc:Bounds x=\"145\" y=\"165\" width=\"36\" height=\"36\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"118\" y=\"201\" width=\"90\" height=\"20\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"Task_1wc18i7_di\" bpmnElement=\"Task_1wc18i7\">\r\n        <dc:Bounds x=\"216\" y=\"143\" width=\"100\" height=\"80\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_14impae_di\" bpmnElement=\"SequenceFlow_14impae\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"181\" y=\"183\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"216\" y=\"183\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"198.5\" y=\"161\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNShape id=\"Task_0ttnn82_di\" bpmnElement=\"Task_0ttnn82\">\r\n        <dc:Bounds x=\"343\" y=\"143\" width=\"100\" height=\"80\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_070y5pp_di\" bpmnElement=\"SequenceFlow_070y5pp\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"316\" y=\"183\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"343\" y=\"183\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"329.5\" y=\"161\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNShape id=\"Task_0o02vsg_di\" bpmnElement=\"Task_0o02vsg\">\r\n        <dc:Bounds x=\"469\" y=\"143\" width=\"100\" height=\"80\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_0ge9tgy_di\" bpmnElement=\"SequenceFlow_0ge9tgy\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"443\" y=\"183\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"469\" y=\"183\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"456\" y=\"161\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNShape id=\"EndEvent_1hfqblx_di\" bpmnElement=\"EndEvent_1hfqblx\">\r\n        <dc:Bounds x=\"605\" y=\"165\" width=\"36\" height=\"36\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"623\" y=\"204\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_1blqik9_di\" bpmnElement=\"SequenceFlow_1blqik9\">\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"569\" y=\"183\" />\r\n        <di:waypoint xsi:type=\"dc:Point\" x=\"605\" y=\"183\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"587\" y=\"161.5\" width=\"0\" height=\"13\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</bpmn2:definitions>\r\n '),(78,'drtd','fhfy',NULL,NULL,NULL,NULL,2,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-06-13 02:49:09','2017-06-13 02:49:09',NULL),(79,'','',NULL,NULL,NULL,NULL,2,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-06-13 02:50:50','2017-06-13 02:50:50',NULL),(80,'Tmp','tmp\r\n',NULL,NULL,NULL,NULL,2,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-06-13 02:50:58','2017-06-13 02:50:58',NULL),(81,'Clustering by Kmeans','This is a model clustering data by Kmeans algorithm.','Add function: adjust the number for clustering','V 0.0.2',2,NULL,1,2,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-04-10 13:08:40','2017-06-15 07:20:24',NULL),(82,'Clustering by Kmeans','This is a model clustering data by Kmeans algorithm.','Add function: adjust the number for clustering','V 0.0.2',2,NULL,1,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-04-10 13:08:40','2017-06-15 07:25:05',NULL),(83,'Clustering by Kmeans','This is a model clustering data by Kmeans algorithm.','Add function: adjust the number for clustering','V 0.0.2',2,NULL,1,2,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-04-10 13:08:40','2017-06-15 07:28:05',NULL);
/*!40000 ALTER TABLE `workflow_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_privileges`
--

DROP TABLE IF EXISTS `workflow_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_information_id` int(11) DEFAULT NULL,
  `edit_department_id` int(11) DEFAULT NULL,
  `execute_department_id` int(11) DEFAULT NULL,
  `delete_department_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_workflow_privileges_on_delete_department_id` (`delete_department_id`),
  KEY `index_workflow_privileges_on_edit_department_id` (`edit_department_id`),
  KEY `index_workflow_privileges_on_execute_department_id` (`execute_department_id`),
  KEY `index_workflow_privileges_on_workflow_information_id` (`workflow_information_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_privileges`
--

LOCK TABLES `workflow_privileges` WRITE;
/*!40000 ALTER TABLE `workflow_privileges` DISABLE KEYS */;
INSERT INTO `workflow_privileges` VALUES (18,20,2,1,3,'2017-04-10 13:12:49','2017-04-10 13:12:49'),(67,69,NULL,NULL,NULL,'2017-06-05 08:12:40','2017-06-05 08:12:40'),(68,70,NULL,NULL,NULL,'2017-06-05 08:13:52','2017-06-05 08:13:52'),(71,73,NULL,NULL,NULL,'2017-06-05 09:51:43','2017-06-05 09:51:43'),(72,74,NULL,NULL,NULL,'2017-06-05 10:45:54','2017-06-05 10:45:54'),(73,75,1,1,1,'2017-06-05 10:49:47','2017-06-05 10:57:09'),(74,76,1,1,1,'2017-06-05 11:00:18','2017-06-05 11:00:18'),(75,77,1,1,1,'2017-06-05 11:02:03','2017-06-05 11:02:03'),(76,78,NULL,NULL,NULL,'2017-06-13 02:49:09','2017-06-13 02:49:09'),(77,79,NULL,NULL,NULL,'2017-06-13 02:50:50','2017-06-13 02:50:50'),(78,80,NULL,NULL,NULL,'2017-06-13 02:50:58','2017-06-13 02:50:58'),(79,81,2,1,3,'2017-06-15 07:20:24','2017-06-15 07:20:24'),(80,82,2,1,3,'2017-06-15 07:25:01','2017-06-15 07:25:01'),(81,83,2,1,3,'2017-06-15 07:28:05','2017-06-15 07:28:05');
/*!40000 ALTER TABLE `workflow_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_tags`
--

DROP TABLE IF EXISTS `workflow_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_tags`
--

LOCK TABLES `workflow_tags` WRITE;
/*!40000 ALTER TABLE `workflow_tags` DISABLE KEYS */;
INSERT INTO `workflow_tags` VALUES (9,'Kmeans','2017-04-10 11:27:20','2017-04-10 11:27:20'),(12,'linear_regression','2017-04-10 12:12:45','2017-04-10 12:12:45'),(13,'sdfcwae','2017-04-10 12:57:03','2017-04-10 12:57:03'),(14,'1D','2017-04-10 13:43:03','2017-04-10 13:43:03'),(15,'regression','2017-05-20 03:52:23','2017-05-20 03:52:23'),(16,'ddd','2017-05-20 03:52:23','2017-05-20 03:52:23'),(17,'TimeSeries','2017-06-05 08:45:00','2017-06-05 08:45:00'),(18,'SMOreg','2017-06-05 10:50:38','2017-06-05 10:50:38'),(19,'SVM','2017-06-05 10:50:38','2017-06-05 10:50:38');
/*!40000 ALTER TABLE `workflow_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowactivityinformation`
--

DROP TABLE IF EXISTS `workflowactivityinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowactivityinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowID` int(11) DEFAULT NULL,
  `ActivityID` int(11) DEFAULT NULL,
  `ActivityName` varchar(50) DEFAULT NULL,
  `Layer` smallint(6) DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `IsComposite` tinyint(1) DEFAULT NULL,
  `Description` mediumtext,
  `ChoiceManager` tinyint(1) NOT NULL,
  `ActivityType` smallint(6) DEFAULT NULL,
  `ActivityImplementation` smallint(6) DEFAULT NULL,
  `StartTime` float DEFAULT NULL,
  `Duration` float DEFAULT NULL,
  `IconID` smallint(6) DEFAULT NULL,
  `ActivityURL` mediumtext,
  `MultiPersonMode` smallint(6) DEFAULT NULL,
  `SubmitPersonNumber` smallint(6) DEFAULT NULL,
  `TWCID` int(11) DEFAULT NULL,
  `IsCallback` tinyint(1) DEFAULT NULL,
  `ObjectList` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowactivityinformation`
--

LOCK TABLES `workflowactivityinformation` WRITE;
/*!40000 ALTER TABLE `workflowactivityinformation` DISABLE KEYS */;
INSERT INTO `workflowactivityinformation` VALUES (1,3,1,'start',1,-1,0,'开始活动',0,1,0,0,0,0,'None',0,0,0,0,'...'),(2,3,2,'end',1,-1,0,'结束活动',0,2,0,0,0,0,'None',0,0,0,0,'...'),(3,3,3,'getAddress',1,-1,0,'activity',0,3,2,0,0,0,'none',0,0,1,0,'...');
/*!40000 ALTER TABLE `workflowactivityinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowactivityinputmapping`
--

DROP TABLE IF EXISTS `workflowactivityinputmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowactivityinputmapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowID` int(11) NOT NULL,
  `ActivityID` int(11) NOT NULL,
  `DataflowID` int(11) NOT NULL,
  `InputSchema` mediumtext,
  `InputXML` mediumtext,
  `XSLT` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowactivityinputmapping`
--

LOCK TABLES `workflowactivityinputmapping` WRITE;
/*!40000 ALTER TABLE `workflowactivityinputmapping` DISABLE KEYS */;
INSERT INTO `workflowactivityinputmapping` VALUES (1,3,3,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:tns=\"http://www.example.org/DocumentSchema\" targetNamespace=\"http://www.example.org/DocumentSchema\">\r\n   <element name=\"Parameter\" type=\"tns:Parameter\" />\r\n   <complexType name=\"Parameter\">\r\n      <sequence>\r\n         <element name=\"ip\" type=\"tns:ip\" />\r\n      </sequence>\r\n   </complexType>\r\n   <complexType name=\"ip\">\r\n      <sequence>\r\n         <element name=\"NAME\" type=\"string\" />\r\n         <element name=\"TYPE\" type=\"string\" />\r\n         <element name=\"VALUE\" type=\"string\" />\r\n      </sequence>\r\n      <attribute name=\"ObjectID\" type=\"int\" fixed=\"1\" />\r\n   </complexType>\r\n</schema>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Parameter>\r\n   <ip ObjectID=\"1\">\r\n      <NAME />\r\n      <TYPE />\r\n      <VALUE />\r\n   </ip>\r\n</Parameter>\r\n\r\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\r\n   <xsl:template match=\"/\">\r\n      <INPUT>\r\n         <theIpAddress>\r\n            <NAME>\r\n               <xsl:value-of select=\"Parameter/ip/NAME\" />\r\n            </NAME>\r\n            <TYPE>\r\n               <xsl:value-of select=\"Parameter/ip/TYPE\" />\r\n            </TYPE>\r\n            <VALUE>\r\n               <xsl:value-of select=\"Parameter/ip/VALUE\" />\r\n            </VALUE>\r\n         </theIpAddress>\r\n      </INPUT>\r\n   </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n');
/*!40000 ALTER TABLE `workflowactivityinputmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowactivityinvokingapplication`
--

DROP TABLE IF EXISTS `workflowactivityinvokingapplication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowactivityinvokingapplication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowID` int(11) NOT NULL DEFAULT '0',
  `ActivityID` int(11) NOT NULL DEFAULT '0',
  `ApplicationID` int(11) NOT NULL DEFAULT '0',
  `InvocationType` smallint(6) DEFAULT NULL,
  `InputSchemaID` int(11) DEFAULT NULL,
  `OutputSchemaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowactivityinvokingapplication`
--

LOCK TABLES `workflowactivityinvokingapplication` WRITE;
/*!40000 ALTER TABLE `workflowactivityinvokingapplication` DISABLE KEYS */;
INSERT INTO `workflowactivityinvokingapplication` VALUES (1,3,3,12,1,0,0);
/*!40000 ALTER TABLE `workflowactivityinvokingapplication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowapplication`
--

DROP TABLE IF EXISTS `workflowapplication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowapplication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowID` int(11) NOT NULL DEFAULT '0',
  `ApplicationID` smallint(6) NOT NULL DEFAULT '0',
  `Description` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowapplication`
--

LOCK TABLES `workflowapplication` WRITE;
/*!40000 ALTER TABLE `workflowapplication` DISABLE KEYS */;
INSERT INTO `workflowapplication` VALUES (1,3,12,'IpAddressSearchWebService:getCountryCityByIp');
/*!40000 ALTER TABLE `workflowapplication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowcondition`
--

DROP TABLE IF EXISTS `workflowcondition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowcondition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowID` int(11) NOT NULL DEFAULT '0',
  `ConditionID` int(11) NOT NULL DEFAULT '0',
  `ConditionRepresentation` varchar(200) DEFAULT NULL,
  `ConditionName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowcondition`
--

LOCK TABLES `workflowcondition` WRITE;
/*!40000 ALTER TABLE `workflowcondition` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowcondition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowcontrolflowcondition`
--

DROP TABLE IF EXISTS `workflowcontrolflowcondition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowcontrolflowcondition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowID` smallint(6) NOT NULL DEFAULT '0',
  `ControlFlowID` smallint(6) NOT NULL DEFAULT '0',
  `ConditionID` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowcontrolflowcondition`
--

LOCK TABLES `workflowcontrolflowcondition` WRITE;
/*!40000 ALTER TABLE `workflowcontrolflowcondition` DISABLE KEYS */;
INSERT INTO `workflowcontrolflowcondition` VALUES (1,3,2,0),(2,3,3,0),(3,3,4,0),(4,3,5,0);
/*!40000 ALTER TABLE `workflowcontrolflowcondition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowevent`
--

DROP TABLE IF EXISTS `workflowevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowevent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowID` int(11) NOT NULL DEFAULT '0',
  `EventID` int(11) NOT NULL DEFAULT '0',
  `EventName` varchar(50) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `EventRepresentation` longtext,
  `EventType` smallint(6) DEFAULT NULL,
  `LogicType` smallint(6) DEFAULT NULL,
  `ActivityID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowevent`
--

LOCK TABLES `workflowevent` WRITE;
/*!40000 ALTER TABLE `workflowevent` DISABLE KEYS */;
INSERT INTO `workflowevent` VALUES (1,3,1,'Initialized(1)','活动(1)成功进行初始化','Initialized(1)',1,0,1),(2,3,2,'Started(1)','活动(1)已经运行','Started(1)',1,0,1),(3,3,3,'EndOf(1)','活动(1)结束','EndOf(1)',1,0,1),(4,3,4,'Overtime(1)','活动(1)已经超时','Overtime(1)',1,0,1),(5,3,5,'Aborted(1)','活动(1)已经被放弃','Aborted(1)',1,0,1),(6,3,6,'Error(1)','活动(1)处于错误状态','Error(1)',1,0,1),(7,3,7,'Initialized(2)','活动(2)成功进行初始化','Initialized(2)',1,0,2),(8,3,8,'Started(2)','活动(2)已经运行','Started(2)',1,0,2),(9,3,9,'EndOf(2)','活动(2)结束','EndOf(2)',1,0,2),(10,3,10,'Overtime(2)','活动(2)已经超时','Overtime(2)',1,0,2),(11,3,11,'Aborted(2)','活动(2)已经被放弃','Aborted(2)',1,0,2),(12,3,12,'Error(2)','活动(2)处于错误状态','Error(2)',1,0,2),(13,3,13,'Initialized(3)','活动(3)成功进行初始化','Initialized(3)',1,0,3),(14,3,14,'Started(3)','活动(3)已经运行','Started(3)',1,0,3),(15,3,15,'EndOf(3)','活动(3)结束','EndOf(3)',1,0,3),(16,3,16,'Overtime(3)','活动(3)已经超时','Overtime(3)',1,0,3),(17,3,17,'Aborted(3)','活动(3)已经被放弃','Aborted(3)',1,0,3),(18,3,18,'Error(3)','活动(3)处于错误状态','Error(3)',1,0,3);
/*!40000 ALTER TABLE `workflowevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowflow`
--

DROP TABLE IF EXISTS `workflowflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ModelType` smallint(6) NOT NULL DEFAULT '0',
  `WorkflowID` int(11) NOT NULL DEFAULT '0',
  `FlowID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) DEFAULT NULL,
  `Type` smallint(6) NOT NULL DEFAULT '0',
  `FromObjectType` smallint(6) NOT NULL DEFAULT '0',
  `ObjectId1` int(11) NOT NULL DEFAULT '0',
  `ToObjectType` smallint(6) NOT NULL DEFAULT '0',
  `ObjectID2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowflow`
--

LOCK TABLES `workflowflow` WRITE;
/*!40000 ALTER TABLE `workflowflow` DISABLE KEYS */;
INSERT INTO `workflowflow` VALUES (1,1,3,7,-1,2,1,3,1,2),(2,1,3,6,-1,2,1,1,1,3),(3,1,3,1,-1,2,1,0,1,3),(4,1,3,5,-1,1,2,2,1,2),(5,1,3,4,-1,1,1,3,2,2),(6,1,3,3,-1,1,2,1,1,3),(7,1,3,2,-1,1,1,1,2,1);
/*!40000 ALTER TABLE `workflowflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowflowobjectcontrol`
--

DROP TABLE IF EXISTS `workflowflowobjectcontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowflowobjectcontrol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowID` int(11) NOT NULL DEFAULT '0',
  `FlowID` int(11) NOT NULL DEFAULT '0',
  `ObjectID` smallint(6) NOT NULL DEFAULT '0',
  `Privilege` smallint(6) DEFAULT NULL,
  `ObjectType` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowflowobjectcontrol`
--

LOCK TABLES `workflowflowobjectcontrol` WRITE;
/*!40000 ALTER TABLE `workflowflowobjectcontrol` DISABLE KEYS */;
INSERT INTO `workflowflowobjectcontrol` VALUES (1,3,7,2,1,1),(2,3,6,1,1,1),(3,3,1,2,1,1);
/*!40000 ALTER TABLE `workflowflowobjectcontrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowflowobjects`
--

DROP TABLE IF EXISTS `workflowflowobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowflowobjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowID` int(11) NOT NULL DEFAULT '0',
  `FlowID` int(11) NOT NULL DEFAULT '0',
  `DroolsRuleID` int(11) DEFAULT NULL,
  `FromActivityID` int(11) DEFAULT NULL,
  `ToActivityID` int(11) DEFAULT NULL,
  `XSLTO2M` longtext,
  `XSLTM2I` longtext,
  `OXMLID` int(11) DEFAULT NULL,
  `MXMLID` int(11) DEFAULT NULL,
  `IXMLID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowflowobjects`
--

LOCK TABLES `workflowflowobjects` WRITE;
/*!40000 ALTER TABLE `workflowflowobjects` DISABLE KEYS */;
INSERT INTO `workflowflowobjects` VALUES (1,3,1,1,0,3,'',NULL,NULL,NULL,NULL),(2,3,6,2,1,3,NULL,NULL,NULL,0,0),(3,3,7,3,3,2,NULL,NULL,0,0,NULL);
/*!40000 ALTER TABLE `workflowflowobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowinherentvariable`
--

DROP TABLE IF EXISTS `workflowinherentvariable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowinherentvariable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowID` int(11) NOT NULL DEFAULT '0',
  `ObjectID` int(11) NOT NULL DEFAULT '0',
  `ObjectName` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `ValueType` smallint(6) DEFAULT NULL,
  `InitialValue` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowinherentvariable`
--

LOCK TABLES `workflowinherentvariable` WRITE;
/*!40000 ALTER TABLE `workflowinherentvariable` DISABLE KEYS */;
INSERT INTO `workflowinherentvariable` VALUES (1,3,2,'address','',4,''),(2,3,1,'ip','',4,'8.8.8.8');
/*!40000 ALTER TABLE `workflowinherentvariable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowobject`
--

DROP TABLE IF EXISTS `workflowobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowobject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowID` varchar(50) DEFAULT NULL,
  `ObjectID` int(11) DEFAULT NULL,
  `ObjectName` varchar(100) DEFAULT NULL,
  `ISInput` tinyint(1) DEFAULT NULL,
  `ISOutput` tinyint(1) DEFAULT NULL,
  `ISVisible` tinyint(1) DEFAULT NULL,
  `ObjectType` smallint(6) DEFAULT NULL,
  `Scope` smallint(6) DEFAULT NULL,
  `PackageObjectID` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowobject`
--

LOCK TABLES `workflowobject` WRITE;
/*!40000 ALTER TABLE `workflowobject` DISABLE KEYS */;
INSERT INTO `workflowobject` VALUES (1,'3',2,'address',0,0,0,1,0,0),(2,'3',1,'ip',0,0,0,1,0,0);
/*!40000 ALTER TABLE `workflowobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowprocessecarule`
--

DROP TABLE IF EXISTS `workflowprocessecarule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowprocessecarule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowID` int(11) NOT NULL DEFAULT '0',
  `RuleID` int(11) NOT NULL DEFAULT '0',
  `EventID` int(11) NOT NULL DEFAULT '0',
  `ConditionID` int(11) NOT NULL DEFAULT '0',
  `ActionExpression` varchar(200) DEFAULT NULL,
  `Probability` float DEFAULT NULL,
  `ProbabilityCoefficient` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowprocessecarule`
--

LOCK TABLES `workflowprocessecarule` WRITE;
/*!40000 ALTER TABLE `workflowprocessecarule` DISABLE KEYS */;
INSERT INTO `workflowprocessecarule` VALUES (1,3,1,3,0,'(Activity.3)',0,0),(2,3,2,15,0,'(Activity.2)',0,0);
/*!40000 ALTER TABLE `workflowprocessecarule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-27 13:19:12
