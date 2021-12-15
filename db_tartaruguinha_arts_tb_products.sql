-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: sql10.freesqldatabase.com    Database: sql10454601
-- ------------------------------------------------------
-- Server version	5.5.62-0ubuntu0.14.04.1

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
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `description` text,
  `prize` double DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `qnt_stock` int(11) DEFAULT NULL,
  `image` text,
  `id_category` int(11) NOT NULL,
  `product_care` text,
  `specifications` text,
  PRIMARY KEY (`id_product`),
  KEY `fk_tb_produto_tb_categoria_idx` (`id_category`),
  CONSTRAINT `fk_tb_produto_tb_categoria` FOREIGN KEY (`id_category`) REFERENCES `tb_categories` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_products`
--

LOCK TABLES `tb_products` WRITE;
/*!40000 ALTER TABLE `tb_products` DISABLE KEYS */;
INSERT INTO `tb_products` VALUES (1,'Caneca Mar Profundo','Caneca em cerâmica estampada em alta definição. *Não sai na água, não desbota. *Resistente a microondas.',20,1,5,'https://tartaruga.s3.sa-east-1.amazonaws.com/Caneca+1+-+600px.png',1,'Lavar com sabão neutro e esponja macia. Não usar produtos abrasivos na limpeza. Pode ser levado ao micro-ondas e à lava-louças. ','Altura: 9,5 cm, Diâmetro: 8 cm, Capacidade: 325 ml'),(2,'Caneca 3 Tartarugas','Caneca em cerâmica estampada em alta definição. *Não sai na água, não desbota. *Resistente a microondas.',20,1,3,'https://tartaruga.s3.sa-east-1.amazonaws.com/Caneca+2+-+600px.png',1,'Lavar com sabão neutro e esponja macia. Não usar produtos abrasivos na limpeza. Pode ser levado ao micro-ondas e à lava-louças. ','Altura: 9,5 cm, Diâmetro: 8 cm, Capacidade: 325 ml'),(3,'Caneca Tartaruga Tattoo Esmeralda','Caneca em cerâmica estampada em alta definição. *Não sai na água, não desbota. *Resistente a microondas.',20,1,3,'https://tartaruga.s3.sa-east-1.amazonaws.com/Caneca+3+-+600px.png',1,'Lavar com sabão neutro e esponja macia. Não usar produtos abrasivos na limpeza. Pode ser levado ao micro-ondas e à lava-louças. ','Altura: 9,5 cm, Diâmetro: 8 cm, Capacidade: 325 ml'),(4,'Caneca Totem de Tartarugas','Caneca em cerâmica estampada em alta definição. *Não sai na água, não desbota. *Resistente a microondas.',20,0,2,'https://tartaruga.s3.sa-east-1.amazonaws.com/Caneca+4+-+600px.png',1,'Lavar com sabão neutro e esponja macia. Não usar produtos abrasivos na limpeza. Pode ser levado ao micro-ondas e à lava-louças. ','Altura: 9,5 cm, Diâmetro: 8 cm, Capacidade: 325 ml'),(5,'Caneca Tartaruga Coral','Caneca em cerâmica estampada em alta definição. *Não sai na água, não desbota. *Resistente a microondas.',20,0,2,'https://tartaruga.s3.sa-east-1.amazonaws.com/Caneca+5+-+600px.png',1,'Lavar com sabão neutro e esponja macia. Não usar produtos abrasivos na limpeza. Pode ser levado ao micro-ondas e à lava-louças. ','Altura: 9,5 cm, Diâmetro: 8 cm, Capacidade: 325 ml'),(6,'Caneca Baleia','Caneca em cerâmica estampada em alta definição. *Não sai na água, não desbota. *Resistente a microondas.',20,0,3,'https://tartaruga.s3.sa-east-1.amazonaws.com/Caneca+6++-+600px.png',1,'Lavar com sabão neutro e esponja macia. Não usar produtos abrasivos na limpeza. Pode ser levado ao micro-ondas e à lava-louças. ','Altura: 9,5 cm, Diâmetro: 8 cm, Capacidade: 325 ml'),(7,'Almofada Tartaruga Colorida','Almofada estampada.',30,0,1,'https://tartaruga.s3.sa-east-1.amazonaws.com/Almofada+1+-+600+px.png',2,'Lavar com sabão neutro, pode ser lavada na máquina de lavar.','Tecido: Tactel. Tamanho: 40x40 cm.'),(8,'Almofada Tartaruga Livre','Almofada estampada.',30,0,1,'https://tartaruga.s3.sa-east-1.amazonaws.com/Almofada+2+-+600px.png',2,'Lavar com sabão neutro, pode ser lavada na máquina de lavar.','Tecido: Tactel. Tamanho: 40x40 cm.'),(9,'Almofada Tartaruga Roxa','Almofada estampada.',30,1,2,'https://tartaruga.s3.sa-east-1.amazonaws.com/Almofada+3+-+600ox.png',2,'Lavar com sabão neutro, pode ser lavada na máquina de lavar.','Tecido: Tactel. Tamanho: 40x40 cm.'),(10,'Almofada Tartaruga Esmeralda','Almofada estampada.',30,0,1,'https://tartaruga.s3.sa-east-1.amazonaws.com/Almofada+4+-+600px.png',2,'Lavar com sabão neutro, pode ser lavada na máquina de lavar.','Tecido: Tactel. Tamanho: 40x40 cm.'),(11,'Almofada Tartaruga Corais','Almofada estampada.',30,1,1,'https://tartaruga.s3.sa-east-1.amazonaws.com/Almofada+5+-+600px.png',2,'Lavar com sabão neutro, pode ser lavada na máquina de lavar.','Tecido: Tactel. Tamanho: 40x40 cm.'),(12,'Almofada Tartaruga Wind','Almofada estampada.',30,0,1,'https://tartaruga.s3.sa-east-1.amazonaws.com/Almofada+6+-+600px.png',2,'Lavar com sabão neutro, pode ser lavada na máquina de lavar.','Tecido: Tactel. Tamanho: 40x40 cm.'),(13,'Almofada de Pescoço Kids','Almofada de pescoço estampada.',45,1,2,'https://tartaruga.s3.sa-east-1.amazonaws.com/41ac0e26-e5a6-4579-ac03-55b0315f703b.jpg',3,'Lavar com sabão neutro, pode ser lavada na máquina de lavar.','Tecido: Tactel. Tamanho: 40x40 cm.'),(14,'Almofada de Pescoço Baby Turtle','Almofada de pescoço estampada.',45,0,4,'https://tartaruga.s3.sa-east-1.amazonaws.com/579fa3f5-10a2-429c-833c-6cc1f2c6911c.jpg',3,'Lavar com sabão neutro, pode ser lavada na máquina de lavar.','Tecido: Tactel. Tamanho: 40x40 cm.'),(15,'Almofada de Pescoço Orca','Almofada de pescoço estampada.',45,0,2,'https://tartaruga.s3.sa-east-1.amazonaws.com/64cbf7b5-ed36-4d1b-a26a-7cc1d55c5103+-+Copia.jpg',3,'Lavar com sabão neutro, pode ser lavada na máquina de lavar.','Tecido: Tactel. Tamanho: 40x40 cm.'),(16,'Almofada de Pescoço Orca 2','Almofada de pescoço estampada.',45,0,2,'https://tartaruga.s3.sa-east-1.amazonaws.com/64cbf7b5-ed36-4d1b-a26a-7cc1d55c5103.jpg',3,'Lavar com sabão neutro, pode ser lavada na máquina de lavar.','Tecido: Tactel. Tamanho: 40x40 cm.'),(17,'Almofada de Pescoço Sol no Oceano','Almofada de pescoço estampada.',45,0,4,'https://tartaruga.s3.sa-east-1.amazonaws.com/89f58eb0-0423-472a-ab20-39f6b65a66d1+(1).jpg',3,'Lavar com sabão neutro, pode ser lavada na máquina de lavar.','Tecido: Tactel. Tamanho: 40x40 cm.'),(18,'Almofada de Pescoço Sol no Oceano 2','Almofada de pescoço estampada.',45,0,2,'https://tartaruga.s3.sa-east-1.amazonaws.com/89f58eb0-0423-472a-ab20-39f6b65a66d1.jpg',3,'Lavar com sabão neutro, pode ser lavada na máquina de lavar.','Tecido: Tactel. Tamanho: 40x40 cm.'),(19,'Máscara Tartaruga  Esmeralda','Máscara estampada.',15,1,2,'https://tartaruga.s3.sa-east-1.amazonaws.com/M%C3%A1scara+1+-+600px.png',4,'Lavar com sabão neutro.','Tamanhos: PP, P, M, G e GG. Tecido: Helanca sport.'),(20,'Máscara Tartaruga Livre','Máscara estampada.',15,0,1,'https://tartaruga.s3.sa-east-1.amazonaws.com/M%C3%A1scara+2+-+600px.png',4,'Lavar com sabão neutro.','Tamanhos: PP, P, M, G e GG. Tecido: Helanca sport.'),(21,'Máscara Tartaruga Colorida','Máscara estampada.',15,0,1,'https://tartaruga.s3.sa-east-1.amazonaws.com/M%C3%A1scara+3+-+600px.png',4,'Lavar com sabão neutro.','Tamanhos: PP, P, M, G e GG. Tecido: Helanca sport.'),(22,'Máscara Tartaruga Tattoo Esmeralda','Máscara estampada.',15,0,2,'https://tartaruga.s3.sa-east-1.amazonaws.com/M%C3%A1scara+4+-+600px.png',4,'Lavar com sabão neutro.','Tamanhos: PP, P, M, G e GG. Tecido: Helanca sport.'),(23,'Máscara Tartaruga Smile Verde','Máscara estampada.',15,0,3,'https://tartaruga.s3.sa-east-1.amazonaws.com/M%C3%A1scara+5+-+600px.png',4,'Lavar com sabão neutro.','Tamanhos: PP, P, M, G e GG. Tecido: Helanca sport.'),(24,'Máscara Tartaruga Neon','Máscara estampada.',15,0,1,'https://tartaruga.s3.sa-east-1.amazonaws.com/Mascara+6+-+600px.png',4,'Lavar com sabão neutro.','Tamanhos: PP, P, M, G e GG. Tecido: Helanca sport.');
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

-- Dump completed on 2021-12-15 13:05:43
