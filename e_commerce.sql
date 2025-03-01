-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: e_commerce
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `catégorie`
--

DROP TABLE IF EXISTS `catégorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catégorie` (
  `ID_catégorie` int NOT NULL AUTO_INCREMENT,
  `Nom_de_la_catégorie` varchar(100) NOT NULL,
  `Description` text,
  PRIMARY KEY (`ID_catégorie`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catégorie`
--

LOCK TABLES `catégorie` WRITE;
/*!40000 ALTER TABLE `catégorie` DISABLE KEYS */;
INSERT INTO `catégorie` VALUES (1,'Électronique','Produits électroniques comme smartphones, ordinateurs, et accessoires.'),(2,'Vêtements','Habits pour hommes, femmes et enfants, incluant chaussures et accessoires.'),(3,'Alimentation','Produits alimentaires, épicerie, et boissons.'),(4,'Maison & Décoration','Meubles, articles de décoration et équipements pour la maison.'),(5,'Beauté & Santé','Produits cosmétiques, soins du corps, et compléments alimentaires.'),(6,'Sports & Loisirs','Équipements de sport, jeux et articles de plein air.'),(7,'Livres & Papeterie','Livres, fournitures scolaires et de bureau.'),(8,'Automobile','Pièces détachées, accessoires et équipements pour véhicules.'),(9,'Jouets & Jeux','Jouets pour enfants, jeux de société et consoles de jeux.'),(10,'Informatique','Ordinateurs, composants, logiciels et accessoires.');
/*!40000 ALTER TABLE `catégorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `ID_du_Client` int NOT NULL AUTO_INCREMENT,
  `Nom_Client` varchar(100) NOT NULL,
  `Prénom_client` varchar(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Adresse_de_livraison` text NOT NULL,
  `Numéro_téléphone` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_du_Client`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Numéro_téléphone` (`Numéro_téléphone`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Rakotoarison','Tahina','RakotoarisonTahina@sayna.com','ANTANANARIVO logt VI 175','0333256878'),(2,'Randrianarivelo','Miora','MioraRandrianarivelo@sayna.com','ANTANANARIVO logt II 210','0345689741'),(3,'Ramanantsoa','Toavina','ToavinaRamanantsoa@sayna.com','Nouvelle adresse, Antananarivo','0326987412'),(5,'Rasoamanana','Fara','FaraRasoamanana@sayna.com','ANTANANARIVO logt II 216','0347788996'),(6,'Andrianantenaina','Lova','LovaAndrianantenaina@sayna.com','ANTANANARIVO logt II 218','0326549871'),(7,'Rakotonirina','Tsiry','TsiryRakotonirina@sayna.com','ANTANANARIVO Analamahitsy 125','0339876543'),(8,'Ravelojaona','Hanta','HantaRavelojaona@sayna.com','ANTANANARIVO logt II 232','0341234567'),(9,'Randriamampionona','Faly','FalyRandriamampionona@sayna.com','ANTANANARIVO logt II 222','0327894561'),(10,'Ratsimbazafy','Solo','SoloRatsimbazafy@sayna.com','ANTANANARIVO Analamahitsy 127','0334567890'),(11,'Andriantsalama','Voahirana','VoahiranaAndriantsalama@sayna.com','ANTANANARIVO Analamahitsy 129','0347891234'),(12,'Ramanandraibe','Mialy','MialyRamanandraibe@sayna.com','ANTANANARIVO Analamahitsy 145','0321478520'),(13,'Raherimanana','Toky','TokyRaherimanana@sayna.com','ANTANANARIVO Analamahitsy 133','0332587416'),(14,'Andrianjaka','Fenosoa','FenosoaAndrianjaka@sayna.com','ANTANANARIVO Analamahitsy 187','0343698521'),(15,'Rakotomavo','Nirina','NirinaRakotomavo@sayna.com','ANTANANARIVO Analamahitsy 121','0326547892'),(16,'Rasamimanana','Johary','JoharyRasamimanana@sayna.com','ANTANANARIVO Analamahitsy 136','0331597536');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commande` (
  `ID_commande` int NOT NULL AUTO_INCREMENT,
  `ID_du_Client` int NOT NULL,
  `Date_commande` datetime DEFAULT CURRENT_TIMESTAMP,
  `Etat_commande` enum('en attente','expédiée','livrée','annulée') NOT NULL DEFAULT 'en attente',
  PRIMARY KEY (`ID_commande`),
  KEY `ID_du_Client` (`ID_du_Client`),
  CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`ID_du_Client`) REFERENCES `client` (`ID_du_Client`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
INSERT INTO `commande` VALUES (1,1,'2024-02-20 10:30:00','en attente'),(2,2,'2024-02-18 15:45:00','expédiée'),(3,3,'2024-02-17 08:20:00','livrée'),(5,1,'2024-02-21 09:50:00','en attente'),(6,5,'2024-02-22 14:35:00','expédiée'),(7,11,'2025-03-01 22:52:30','livrée');
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenir`
--

DROP TABLE IF EXISTS `contenir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenir` (
  `ID_produit` int NOT NULL,
  `ID_commande` int NOT NULL,
  `Quantité` int NOT NULL,
  PRIMARY KEY (`ID_produit`,`ID_commande`),
  KEY `ID_commande` (`ID_commande`),
  CONSTRAINT `contenir_ibfk_1` FOREIGN KEY (`ID_produit`) REFERENCES `produit` (`ID_du_produit`) ON DELETE CASCADE,
  CONSTRAINT `contenir_ibfk_2` FOREIGN KEY (`ID_commande`) REFERENCES `commande` (`ID_commande`) ON DELETE CASCADE,
  CONSTRAINT `contenir_chk_1` CHECK ((`Quantité` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenir`
--

LOCK TABLES `contenir` WRITE;
/*!40000 ALTER TABLE `contenir` DISABLE KEYS */;
INSERT INTO `contenir` VALUES (1,1,2),(3,1,1),(5,2,3),(7,5,2),(8,3,5),(15,6,4);
/*!40000 ALTER TABLE `contenir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit` (
  `ID_du_produit` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) NOT NULL,
  `Description` text,
  `Prix` decimal(10,2) NOT NULL,
  `ID_catégorie` int NOT NULL,
  `Stock_disponible` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_du_produit`),
  KEY `ID_catégorie` (`ID_catégorie`),
  CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`ID_catégorie`) REFERENCES `catégorie` (`ID_catégorie`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` VALUES (1,'Smartphone Samsung Galaxy S22','Écran AMOLED 6.1\", 128 Go, appareil photo 50 MP',799.99,1,50),(2,'Ordinateur portable Dell XPS 13','Intel Core i7, 16 Go RAM, 512 Go SSD',1299.99,1,30),(3,'Casque Bluetooth Sony WH-1000XM4','Réduction de bruit active, autonomie 30h',299.99,1,100),(4,'T-shirt coton homme','100% coton, plusieurs couleurs disponibles',19.99,2,200),(5,'Jean slim femme','Jean bleu slim fit, taille haute',49.99,2,150),(6,'Baskets Adidas Originals','Chaussures de sport en cuir blanc',89.99,2,75),(7,'Chocolat noir 70%','Tablette de chocolat noir pur origine Madagascar',3.99,3,500),(8,'Riz basmati 5kg','Riz parfumé de haute qualité',14.99,3,300),(9,'Café Arabica bio 500g','Café en grains, cultivé en haute altitude',12.99,3,120),(10,'Lampe LED design','Lampe de chevet avec variateur de lumière',39.99,4,80),(11,'Canapé 3 places','Canapé en velours bleu, pieds en bois',599.99,4,20),(12,'Crème hydratante Nivea','Crème visage hydratante pour peau sèche',9.99,5,300),(13,'Shampoing bio','Shampoing sans sulfate, à l’aloe vera',7.99,5,250),(14,'Vélo de route','Cadre en aluminium, 21 vitesses',499.99,6,15),(15,'Ballon de football','Ballon taille 5, en cuir synthétique',29.99,6,200),(16,'Roman \"L’Alchimiste\"','Livre de Paulo Coelho, best-seller mondial',11.99,7,100),(17,'Stylo plume Parker','Stylo de luxe avec recharge incluse',24.99,7,75),(18,'Huile moteur 5W30','Huile synthétique pour moteur diesel et essence',39.99,8,50),(19,'Balais d’essuie-glace','Compatible avec plusieurs modèles de voitures',19.99,8,120),(20,'Puzzle 1000 pièces','Puzzle paysage, idéal pour enfants et adultes',15.99,9,90),(21,'Console de jeux PS5','Console dernière génération avec manette DualSense',499.99,9,40),(22,'Clavier mécanique RGB','Clavier gaming avec touches rétroéclairées',79.99,10,100),(23,'Disque dur externe 1 To','Stockage portable USB 3.0, compatible Windows & Mac',59.99,10,150);
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateurs_admin`
--

DROP TABLE IF EXISTS `utilisateurs_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilisateurs_admin` (
  `ID_user` int NOT NULL AUTO_INCREMENT,
  `Nom_utilisateur` varchar(100) NOT NULL,
  `Mot_de_passe` varchar(255) NOT NULL,
  `Rôle` enum('admin','user') NOT NULL,
  PRIMARY KEY (`ID_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateurs_admin`
--

LOCK TABLES `utilisateurs_admin` WRITE;
/*!40000 ALTER TABLE `utilisateurs_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilisateurs_admin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-01 23:11:27
