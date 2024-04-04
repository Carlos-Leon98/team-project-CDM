-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: StatePark_test
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `StateParks`
--

DROP TABLE IF EXISTS `StateParks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StateParks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `county` varchar(25) DEFAULT NULL,
  `description` text,
  `GoogleMapsUrl` text,
  `address` varchar(100) DEFAULT NULL,
  `HasCamping` tinyint(1) DEFAULT NULL,
  `HasHiking` tinyint(1) DEFAULT NULL,
  `HasFlushToilets` tinyint(1) DEFAULT NULL,
  `HasPitToilets` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StateParks`
--

LOCK TABLES `StateParks` WRITE;
/*!40000 ALTER TABLE `StateParks` DISABLE KEYS */;
INSERT INTO `StateParks` VALUES (22,'Amnicon Falls State Park','Douglas County','Nestled in Douglas County, Amnicon Falls State Park is renowned for its stunning waterfalls and scenic river gorge. Hiking trails wind through rich forests, offering spectacular views of the Amnicon River as it cascades over a series of beautiful waterfalls. This park is a haven for nature lovers and photographers alike, with picnic areas and a campground enhancing its allure.','https://www.google.com/maps/place/Amnicon+Falls+State+Park/@46.6081889,-91.894753,17z/data=!3m1!4b1!4m6!3m5!1s0x52aef6ff8cdd4e1f:0x6086c97d6cf2df57!8m2!3d46.6081889!4d-91.8921781!16s%2Fm%2F0260p51?entry=ttu','4279 County Rd U, South Range, WI 54874',1,1,NULL,NULL),(23,'Aztalan State Park','Jefferson County','Aztalan State Park, located in Jefferson County, is a historical treasure, featuring one of Wisconsin\'s most significant archaeological sites. It showcases an ancient Middle-Mississippian village that thrived between AD 1000 and 1300. Visitors can explore reconstructed ceremonial mounds, stockade, and platform mounds, offering a unique glimpse into the region\'s prehistoric past.','https://www.google.com/maps/place/Aztalan+State+Park/@43.0694396,-88.8646045,16.87z/data=!4m6!3m5!1s0x88067963ef40391b:0x30c207d957a860cf!8m2!3d43.0687467!4d-88.8631605!16zL20vMDFreGxy?entry=ttu','N6200 County Rd Q, Jefferson, WI 53549',0,1,NULL,NULL),(24,'Belmont Mound State Park','Lafayette','Belmont Mound State Park, set in Lafayette County, is a small, day-use park known for its prominent limestone mound. Offering panoramic views of the surrounding countryside, the park is a favorite spot for picnicking and bird watching. A short trail to the top of the mound allows visitors to enjoy the scenic beauty of the area.','https://www.google.com/maps/place/Belmont+Mound+State+Park/@42.7669394,-90.3537032,17z/data=!3m1!4b1!4m6!3m5!1s0x87fd39335b697235:0x700c02f6b0791979!8m2!3d42.7669394!4d-90.3511283!16s%2Fm%2F047l_l9?entry=ttu','18650 Co Rd G, Platteville, WI 53818',0,1,NULL,NULL),(25,'Big Bay State Park','Ashland','Big Bay State Park, located in Ashland County on Madeline Island, is famous for its long sandy beaches and majestic cliffs. This park offers a peaceful retreat with over 7 miles of hiking trails, stunning views of Lake Superior, and a variety of wildlife. Ideal for camping, swimming, and kayaking, it\'s a perfect getaway for those seeking a tranquil nature experience.','https://www.google.com/maps/place/Big+Bay+State+Park/@46.7881132,-90.6763015,17z/data=!3m1!4b1!4m6!3m5!1s0x52a901b5ae27c23b:0x51fd1fc2d819ca2!8m2!3d46.7881132!4d-90.6737266!16zL20vMDloX3hy?entry=ttu','2402 Hagen Rd, La Pointe, WI 54850',1,1,NULL,NULL),(26,'Big Foot Beach State Park','Walworth','Located in Walworth County, Big Foot Beach State Park offers a delightful beach experience on the shores of Lake Geneva. This park is ideal for swimming, sunbathing, and picnicking. Its well-maintained trails are perfect for hiking and nature observation, winding through prairies and woodlands. It\'s a popular destination for families and outdoor enthusiasts.','https://www.google.com/maps/place/Big+Foot+Beach+State+Park/@42.5664609,-88.4413887,17z/data=!3m1!4b1!4m6!3m5!1s0x88058a4f516cf873:0x637400e104880215!8m2!3d42.566461!4d-88.4365178!16s%2Fm%2F0260sxx?entry=ttu','1550 S Lake Shore Dr, Lake Geneva, WI 53147',1,1,NULL,NULL),(27,'Blue Mound State Park','Dane','Contains observation towers atop the highest point in southern Wisconsin and the state park system\'s only swimming pool.','https://www.google.com/maps/place/Blue+Mound+State+Park/@43.0256389,-89.8468495,17z/data=!3m1!4b1!4m6!3m5!1s0x88079aadf3ca966f:0x8fb783d874c331eb!8m2!3d43.0256389!4d-89.8442746!16zL20vMDRkOWR5?entry=ttu','4350 Mounds Park Rd, Blue Mounds, WI 53517',1,1,NULL,NULL),(28,'Brunet Island State Park','Chippewa','Preserves a 179-acre (72 ha) island and backwater channels popular with canoeists.','https://www.google.com/maps/place/Brunet+Island+State+Park/@45.1799484,-91.1639556,17z/data=!3m1!4b1!4m6!3m5!1s0x52ab599ef5d2d203:0x2ae1d17a7410270e!8m2!3d45.1799484!4d-91.1613807!16zL20vMGgyNzlz?entry=ttu','23125 255th St, Cornell, WI 54732',1,1,NULL,NULL),(29,'Buckhorn State Park','Juneau','Protects a scenic peninsula on a reservoir formed at the confluence of the Wisconsin and Yellow Rivers.','https://www.google.com/maps/place/Buckhorn+State+Park/@43.9457623,-90.0061768,17z/data=!3m1!4b1!4m6!3m5!1s0x8800a8005861330d:0x46635a2259bafeae!8m2!3d43.9457623!4d-90.0036019!16s%2Fm%2F0260vkj?entry=ttu','W8450 Buckhorn Park Ave, Necedah, WI 54646',1,1,NULL,NULL),(30,'Cadiz Springs State Recreation Area','Green','Offers water recreation on two spring-fed reservoirs in the mostly lakeless Driftless Area','https://www.google.com/maps/place/Cadiz+Springs+State+Recreation+Area/@42.5842147,-89.7699415,17z/data=!3m1!4b1!4m6!3m5!1s0x8807e1852e813e6f:0xbd46f037de1b1368!8m2!3d42.5842147!4d-89.7673666!16s%2Fm%2F047pj4j?entry=ttu','N2241 Cadiz Springs Rd, Browntown, WI 53522',0,1,NULL,NULL),(31,'Cambellsport Drumlins State Park','Fond du Lac','A unit of the Ice Age National Scientific Reserve.','https://www.google.com/maps/place/Campbellsport+Drumlins+State+Park/@43.6178987,-88.3340972,17z/data=!3m1!4b1!4m6!3m5!1s0x88046fa337fa0f1b:0x112ab27fa54e6eba!8m2!3d43.6178987!4d-88.3315223!16s%2Fg%2F11svzf73m3?entry=ttu','Campbellsport, WI 53010',0,0,NULL,NULL),(32,'Capital Springs State Recreation Area','Dane','Encompasses park properties just south of Madison unified in the centennial year of the state park system. A Native American archaeological site is on the NRHP.','https://www.google.com/maps/place/Capital+Springs+Recreation+Area/@43.0281733,-89.3502507,16.34z/data=!4m10!1m2!2m1!1sCapital+Springs+State+Recreation+Area!3m6!1s0x88065212377dade3:0x4c5c6f5dcc5e24de!8m2!3d43.0276319!4d-89.348055!15sCiVDYXBpdGFsIFNwcmluZ3MgU3RhdGUgUmVjcmVhdGlvbiBBcmVhWiciJWNhcGl0YWwgc3ByaW5ncyBzdGF0ZSByZWNyZWF0aW9uIGFyZWGSAQxjb3VudHJ5X3BhcmvgAQA!16s%2Fm%2F02610sb?entry=ttu','3102 Lake Farm Rd, Madison, WI 53711',0,1,NULL,NULL),(33,'Chippewa Moraine State Recreation Area','Chippewa','Interprets varied glacial landforms. The park is a unit of the Ice Age National Scientific Reserve.','https://www.google.com/maps/place/Chippewa+Moraine+State+Recreation+Area/@45.2227353,-91.4159912,16.43z/data=!4m6!3m5!1s0x52aca3c111014ba5:0x5ceb55a59a8ba577!8m2!3d45.2235158!4d-91.4140998!16zL20vMGgzdGho?entry=ttu','13394 Co Hwy M, New Auburn, WI 54757',0,1,NULL,NULL),(34,'Copper Culture State Park','Oconto','Interprets a burial ground used by the Old Copper Culture from 3000 to 2000 BCE. The site is a National Historic Landmark','https://www.google.com/maps/place/Copper+Culture+State+Park/@44.8858786,-87.9058916,15.28z/data=!4m6!3m5!1s0x88029921e282b7c7:0x749833e42becfdc!8m2!3d44.8878308!4d-87.8978126!16s%2Fm%2F0260tbn?entry=ttu','260 Copper Culture Way, Oconto, WI 54153',0,0,NULL,NULL),(35,'Copper Falls State Park','Ashland','Contains 7.5 miles (12.1 km) of the Bad River, including a 2-mile (3.2 km) gorge with several waterfalls. The park is listed on the NRHP.','https://www.google.com/maps/place/Copper+Falls+State+Park/@46.3727867,-90.6476557,15.1z/data=!4m6!3m5!1s0x52a97844c03cc3d3:0xfd1bede6c98d82!8m2!3d46.3761555!4d-90.6439684!16s%2Fm%2F04cs4p7?entry=ttu','36764 Copper Falls Rd, Mellen, WI 54546',1,1,NULL,NULL),(36,'Council Grounds State Park','Lincoln','Lies on a riverbank where Native Americans were said to have once held councils.','https://www.google.com/maps/place/Council+Grounds+State+Park/@45.1854287,-89.7425256,14.98z/data=!4m6!3m5!1s0x4d554653979be359:0x3b057b09c65beccc!8m2!3d45.187002!4d-89.7345548!16s%2Fm%2F04cr12w?entry=ttu','N1895 Council Grounds Dr, Merrill, WI 54452',1,1,NULL,NULL);
/*!40000 ALTER TABLE `StateParks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-31 16:31:49
