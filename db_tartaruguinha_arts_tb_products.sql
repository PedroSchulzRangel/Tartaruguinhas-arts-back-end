-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: db_tartaruguinha_arts
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `tb_products`
--

DROP TABLE IF EXISTS `tb_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_products` (
  `id_product` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `description` text,
  `prize` double DEFAULT NULL,
  `featured` int DEFAULT NULL,
  `qnt_stock` int DEFAULT NULL,
  `image` text,
  `id_category` int NOT NULL,
  `product_care` text,
  `specifications` text,
  PRIMARY KEY (`id_product`),
  KEY `fk_tb_produto_tb_categoria_idx` (`id_category`),
  CONSTRAINT `fk_tb_produto_tb_categoria` FOREIGN KEY (`id_category`) REFERENCES `tb_categories` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_products`
--

LOCK TABLES `tb_products` WRITE;
/*!40000 ALTER TABLE `tb_products` DISABLE KEYS */;
INSERT INTO `tb_products` VALUES (1,'Caneca de Cerâmica','Caneca em cerâmica branca, estampada em alta definição. *Não sai na água, não desbota. *Resistente a microondas.',10,1,5,'link',1,'Lavar com sabão neutro e esponja macia. Não usar produtos abrasivos na limpeza. Pode ser levado ao micro-ondas e à lava-louças. ','Altura: 9,5 cm, Diâmetro: 8 cm, Capacidade: 325 ml'),(2,'Caneca de Cerâmica Mágica','Caneca em cerâmica preta, estampada em alta definição. Ao colocar qualquer líquido quente a estampa aparece. *Não sai na água, não desbota. *Resistente a microondas. ',20,1,3,'link',1,'Lavar com sabão neutro e esponja macia. Não usar produtos abrasivos na limpeza. Pode ser levado ao micro-ondas e à lava-louças. ','Altura: 9,5 cm, Diâmetro: 8 cm, Capacidade: 325 ml'),(3,'Caneca de Vidro Fosca','Caneca de vidro fosca, estampada em alta definição. *Não sai na água, não desbota. *Resistente a microondas.',20,0,3,'link',1,'Lavar com sabão neutro e esponja macia. Não usar produtos abrasivos na limpeza. Pode ser levado ao micro-ondas e à lava-louças.','Altura: 9,5 cm, Diâmetro: 8 cm, Capacidade: 325 ml'),(4,'Caneca de Chopp Fosca','Caneca de vidro fosca, estampada em alta definição. *Não sai na água, não desbota. *Resistente a microondas.',30,1,2,'link',1,'Lavar com sabão neutro e esponja macia. Não usar produtos abrasivos na limpeza. Pode ser levado ao micro-ondas e à lava-louças.','Altura: 9,5 cm, Diâmetro: 8 cm, Capacidade: 475 ml'),(5,'Almofada','Almofada estampada em alta definição.',30,0,2,'link',3,' Lavar com sabão neutro, pode ser lavada na máquina de lavar.','Tecido: Tactel. Tamanho: 40x40 cm.'),(6,'Almofada de Pescoço','Almofada estampada em alta definição ideal para deixar sua viagem mais confortável.',15,0,3,'link',3,' Lavar com sabão neutro, pode ser lavada na máquina de lavar.','Tecido: Helanca sport.'),(7,'Azulejo de Cerâmica','Azulejo em cerâmica branca, estampada em alta definição.',15,1,1,'link',2,'Não usar produtos abrasivos na limpeza.','Tamanhos: 15 x 15 cm, 20 x 20 cm, 15 x 20 cm e 20 x 30 cm.'),(8,'Azulejo Tipo Relógio','Azulejo relógio em cerâmica branca, estampada em alta definição.',15,1,1,'link',2,'Não usar produtos abrasivos na limpeza','Tamanhos: 15 x 15 cm e 20 x 20 cm.'),(9,'Sunga','Sunga estampa de oceano',50,0,2,'link',5,'',NULL),(10,'Biquine','Biquine estampa de oceano',90,1,1,'link',5,NULL,NULL),(11,'Maiô','Maiô estampa de oceano',90,0,1,'link',5,NULL,NULL),(12,'Máscara','Máscara estampada em alta definição.',NULL,NULL,NULL,NULL,4,'Lavar com sabão neutro.','Tamanhos: PP, P, M, G e GG. Tecido: Helanca sport.');
/*!40000 ALTER TABLE `tb_products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-27 16:45:11
