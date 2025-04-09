-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: aula1
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT '1',
  `ordem` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Alimentos e Bebidas',1,0),(2,'Vestuário',1,1),(3,'Eletrônicos',1,2),(4,'Móveis e Decoração',1,3),(5,'Saúde e Bem-estar',1,4),(6,'Beleza e Cosméticos',1,5),(7,'Livros e Papelaria',1,6),(8,'Tecnologia e Informática',1,7),(9,'Casa e Jardim',1,8),(10,'Automóveis e Peças',1,9),(11,'Brinquedos e Jogos',1,0);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `telefone` char(14) NOT NULL,
  `cpf` char(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Ana Silva','1234567890','12345678900'),(2,'Bruno Santos','2345678901','23456789001'),(3,'Carlos Oliveira','3456789012','34567890102'),(4,'Daniela Souza','4567890123','45678901203'),(5,'Eduardo Costa','5678901234','56789012304'),(6,'Fernanda Almeida','6789012345','67890123405'),(7,'Gabriel Rocha','7890123456','78901234506'),(8,'Helena Pereira','8901234567','89012345607'),(9,'Igor Martins','9012345678','90123456708'),(10,'Juliana Ferreira','0123456789','01234567809'),(11,'Karla Lima','1122334455','11223344510'),(12,'Lucas Mendes','2233445566','22334455611'),(13,'Mariana Pinto','3344556677','33445566712'),(14,'Nicolas Barbosa','4455667788','44556677813'),(15,'Olga Santos','5566778899','55667788914'),(16,'Pedro Costa','6677889900','66778899015'),(17,'Quésia Almeida','7788990011','77889900116'),(18,'Rafael Souza','8899001122','88990011217'),(19,'Sofia Martins','9900112233','99001122318'),(20,'Tiago Rocha','1011122334','10111223319'),(21,'Ursula Pereira','2122233345','21222333420'),(22,'Vinícius Lima','3233344456','32333444521'),(23,'Wagner Ferreira','4344455567','43444555622'),(24,'Ximena Oliveira','5455566678','54555666723'),(25,'Yara Barbosa','6566677789','65666777824'),(26,'Zé Carlos','7677788890','76777888925'),(27,'Ana Clara Costa','8788899901','87888999026'),(28,'Bruna Pereira','9899900012','98999000127'),(29,'Carlos Eduardo','0901011122','09010111228'),(30,'Diana Silva','1011122233','10111222329'),(31,'Evelyn Rocha','2122233344','21222333430'),(32,'Fábio Martins','3233344455','32333444531'),(33,'Giovana Souza','4344455566','43444555632'),(34,'Henrique Mendes','5455566677','54555666733'),(35,'Isabel Pinto','6566677788','65666777834'),(36,'João Barbosa','7677788899','76777888935'),(37,'Karina Ferreira','8788899900','87888999036'),(38,'Leandro Lima','9899900011','98999000137'),(39,'Marcela Santos','0901011123','09010111238'),(40,'Natália Costa','1011122234','10111222339'),(41,'Olga Rocha','2122233345','21222333440'),(42,'Paulo Lima','3233344456','32333444541'),(43,'Quintino Souza','4344455567','43444555642'),(44,'Rita Almeida','5455566678','54555666743'),(45,'Samuel Ferreira','6566677789','65666777844'),(46,'Tânia Pinto','7677788890','76777888945'),(47,'Ubirajara Rocha','8788899901','87888999046'),(48,'Vera Santos','9899900012','98999000147'),(49,'Wendel Barbosa','0901011123','09010111248'),(50,'Xuxa Lima','1011122234','10111222349'),(51,'Yasmin Oliveira','2122233345','21222333450'),(52,'Zé Maria Costa','3233344456','32333444551'),(53,'Aline Mendes','4344455567','43444555652'),(54,'Bernardo Rocha','5455566678','54555666753'),(55,'César Pinto','6566677789','65666777854'),(56,'Débora Almeida','7677788890','76777888955'),(57,'Eliete Ferreira','8788899901','87888999056'),(58,'Felipe Barbosa','9899900012','98999000157'),(59,'Gustavo Souza','0901011123','09010111258'),(60,'Heloísa Lima','1011122234','10111222359'),(61,'Ivan Martins','2122233345','21222333460'),(62,'Janaína Rocha','3233344456','32333444561'),(63,'Kleber Pinto','4344455567','43444555662'),(64,'Luciana Costa','5455566678','54555666763'),(65,'Márcio Almeida','6566677789','65666777864'),(66,'Nayara Ferreira','7677788890','76777888965'),(67,'Otávio Barbosa','8788899901','87888999066'),(68,'Paola Pinto','9899900012','98999000167'),(69,'Queli Rocha','0901011123','09010111268'),(70,'Rafael Pinto','1011122234','10111222369'),(71,'Sílvia Almeida','2122233345','21222333470'),(72,'Tereza Lima','3233344456','32333444571'),(73,'Ubaldo Costa','4344455567','43444555672'),(74,'Valéria Ferreira','5455566678','54555666773'),(75,'Wellington Rocha','6566677789','65666777874'),(76,'Xerxes Pinto','7677788890','76777888975'),(77,'Yago Almeida','8788899901','87888999076'),(78,'Zuleika Ferreira','9899900012','98999000177'),(79,'Alexandre Barbosa','0901011123','09010111278'),(80,'Beatriz Pinto','1011122234','10111222379'),(81,'Célia Rocha','2122233345','21222333480'),(82,'Dulce Almeida','3233344456','32333444581'),(83,'Edson Ferreira','4344455567','43444555682'),(84,'Felipe Souza','5455566678','54555666783'),(85,'Geovana Pinto','6566677789','65666777884'),(86,'Henrique Lima','7677788890','76777888985'),(87,'Isabel Ferreira','8788899901','87888999086'),(88,'Jonas Costa','9899900012','98999000187'),(89,'Karla Souza','0901011123','09010111288'),(90,'Leila Pinto','1011122234','10111222389'),(91,'Marcelo Rocha','2122233345','21222333490'),(92,'Nina Costa','3233344456','32333444591'),(93,'Olga Pinto','4344455567','43444555692'),(94,'Paula Ferreira','5455566678','54555666793'),(95,'Quentin Rocha','6566677789','65666777894'),(96,'Renata Almeida','7677788890','76777888995'),(97,'Simone Pinto','8788899901','87888999096'),(98,'Tiago Souza','9899900012','98999000197'),(99,'Ulrike Rocha','0901011123','09010111298'),(100,'Vera Costa','1011122234','10111222399'),(101,'Walter Pinto','2122233345','21222333400');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_enderecos`
--

DROP TABLE IF EXISTS `clientes_enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes_enderecos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(150) NOT NULL,
  `numero` char(4) NOT NULL DEFAULT 'S/N',
  `complemento` varchar(45) DEFAULT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` char(2) NOT NULL,
  `cep` char(8) NOT NULL,
  `principal` tinyint(1) NOT NULL DEFAULT '0',
  `clientes_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_clientes` (`clientes_id`),
  CONSTRAINT `fk_clientes` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_enderecos`
--

LOCK TABLES `clientes_enderecos` WRITE;
/*!40000 ALTER TABLE `clientes_enderecos` DISABLE KEYS */;
INSERT INTO `clientes_enderecos` VALUES (1,'Rua A','123','Apt 101','Bairro A','Cidade A','SP','01000000',1,1),(2,'Rua B','456',NULL,'Bairro B','Cidade B','RJ','20000000',0,1),(3,'Rua C','789','Apt 202','Bairro C','Cidade C','MG','30000000',1,2),(4,'Rua D','101',NULL,'Bairro D','Cidade D','BA','40000000',0,2),(5,'Rua E','202','Casa','Bairro E','Cidade E','PR','50000000',0,2),(6,'Rua F','303',NULL,'Bairro F','Cidade F','RS','60000000',1,3),(7,'Rua G','404','Apt 303','Bairro G','Cidade G','SP','70000000',0,3),(8,'Avenida 1','500','Bloco A','Centro','São Paulo','SP','01001000',1,4),(9,'Rua das Flores','45',NULL,'Jardim das Palmeiras','Belo Horizonte','MG','30100000',1,5),(10,'Rua das Árvores','88',NULL,'Centro','Brasília','DF','70000000',0,5),(11,'Rua do Sol','33','Apt 12','Bairro do Sol','Natal','RN','59000000',1,6),(12,'Avenida Rio Branco','150',NULL,'Centro','Rio de Janeiro','RJ','20000001',1,7),(13,'Rua das Palmeiras','250','Casa','Bairro do Rio','Niterói','RJ','24000000',0,7),(14,'Rua 15 de Novembro','500','Apt 404','Bairro Novo','Porto Alegre','RS','90000000',1,8),(15,'Rua da Paz','77',NULL,'Bairro A','Curitiba','PR','80000000',1,9),(16,'Rua São Paulo','88','Apt 101','Bairro São José','São Paulo','SP','01001010',0,9),(17,'Avenida das Nações','999',NULL,'Bairro Central','Salvador','BA','40000001',1,10),(18,'Rua das Acácias','123','Casa','Bairro das Flores','Rio de Janeiro','RJ','20000002',0,10),(19,'Rua Carlos Gomes','155',NULL,'Centro','Porto Alegre','RS','90000001',1,11),(20,'Rua das Rosas','120','Casa','Bairro das Flores','Recife','PE','50000000',1,12),(21,'Avenida Brasil','140',NULL,'Centro','São Paulo','SP','01001011',0,12),(22,'Rua XV de Novembro','40',NULL,'Centro','Vitória','ES','29000000',1,13),(23,'Rua do Rio','100','Casa','Bairro Jardim','Campo Grande','MS','79000000',0,13),(24,'Avenida Paulista','1500',NULL,'Centro','São Paulo','SP','01310000',1,14),(25,'Rua do Comércio','10','Casa','Centro','Florianópolis','SC','88000000',1,15),(26,'Avenida Beira-Mar','100',NULL,'Praia do Santinho','Florianópolis','SC','88010000',0,15),(27,'Rua Marquês de Abrantes','70','Apt 301','Flamengo','Rio de Janeiro','RJ','22230150',1,16),(28,'Rua Monte Alegre','200',NULL,'Vila Pirituba','São Paulo','SP','02000000',1,17),(29,'Avenida Universitária','190',NULL,'Centro','Uberlândia','MG','38400000',1,18),(30,'Rua das Violetas','450','Casa','Jardim das Flores','Belo Horizonte','MG','30100000',0,18),(31,'Rua das Margaridas','55',NULL,'Bairro Jardim','Rio de Janeiro','RJ','20001000',1,19),(32,'Rua Joaquim Nabuco','300','Casa','Bairro Novo','Recife','PE','50000001',1,20),(33,'Rua das Acácias','120',NULL,'Bairro das Flores','Rio de Janeiro','RJ','20002000',1,21),(34,'Rua dos Carvalhos','110','Apt 305','Vila Progresso','Campinas','SP','13000000',1,22),(35,'Rua dos Girassóis','510',NULL,'Bairro Jardim','Salvador','BA','40001000',1,23),(36,'Rua das Andorinhas','20',NULL,'Vila Flor','Salvador','BA','40002000',0,23),(37,'Rua do Comércio','50','Loja 2','Centro','Maceió','AL','57000000',1,24),(38,'Avenida Central','999','Apt 101','Centro','São Paulo','SP','01002000',1,25),(39,'Rua Amazonas','450',NULL,'Bairro das Palmeiras','Belém','PA','66000000',1,26),(40,'Rua do Sol','150','Casa','Bairro do Sol','Fortaleza','CE','60001000',1,27),(41,'Rua das Palmeiras','200',NULL,'Vila das Árvores','Fortaleza','CE','60002000',0,27),(42,'Rua das Margaridas','320','Casa','Bairro Verde','Cuiabá','MT','78000000',1,28),(43,'Avenida Rio de Janeiro','200',NULL,'Centro','Niterói','RJ','24000001',1,29),(44,'Rua Marechal Floriano','50','Apt 301','Bairro Novo','Niterói','RJ','24001000',0,29),(45,'Rua General Osório','55','Casa','Vila Militar','Manaus','AM','69000000',1,30),(46,'Rua da Alegria','60',NULL,'Bairro Central','Manaus','AM','69001000',0,30),(47,'Avenida das Nações','1150',NULL,'Centro','São José','SC','88000001',1,31),(48,'Rua do Porto','800',NULL,'Vila do Porto','Recife','PE','50000002',1,32),(49,'Rua Alvorada','220','Apt 2','Bairro Bom Retiro','São Paulo','SP','01203000',1,33),(50,'Rua São José','505','Casa','Vila São José','Porto Alegre','RS','90010000',1,34),(51,'Avenida do Contorno','100',NULL,'Bairro Contorno','Belo Horizonte','MG','30100001',1,35),(52,'Rua Rio de Janeiro','150','Apt 203','Centro','Belo Horizonte','MG','30101000',0,35),(53,'Rua dos Pássaros','500',NULL,'Bairro das Andorinhas','Natal','RN','59002000',1,36),(54,'Rua da Praia','1500',NULL,'Centro','Florianópolis','SC','88010001',1,37),(55,'Rua dos Jacarandás','210',NULL,'Bairro Centro','Goiânia','GO','74000000',1,38),(56,'Avenida Goiás','300','Casa','Jardim Goiás','Goiânia','GO','74010000',0,38),(57,'Rua da Alegria','10','Casa','Bairro Santa Teresa','Vitória','ES','29001000',1,39),(58,'Avenida Brasília','400',NULL,'Centro','Brasília','DF','70000001',1,40),(59,'Rua Cacau','5',NULL,'Vila Nova','Aracaju','SE','49000000',1,41),(60,'Rua São João','777',NULL,'Centro','Recife','PE','50002000',1,42),(61,'Avenida do Sol','900','Casa','Bairro Sol Nascente','Recife','PE','50003000',0,42),(62,'Rua da Esperança','90',NULL,'Vila Esperança','São Luís','MA','65000000',1,43),(63,'Rua dos Tucanos','111','Casa','Bairro Jardim','Aracaju','SE','49010000',1,44),(64,'Rua da Paz','333',NULL,'Bairro São José','Aracaju','SE','49020000',0,44),(65,'Rua Tamoios','444','Casa','Centro','Uberaba','MG','38000000',1,45),(66,'Avenida dos Trabalhadores','50','Casa','Vila dos Trabalhadores','Santos','SP','11000000',1,46),(67,'Rua da Vitória','222',NULL,'Centro','Vitória','ES','29002000',1,47),(68,'Rua Celso Costa','80','Casa','Bairro Planalto','Teresina','PI','64000000',1,48),(69,'Rua Fernandes Lima','1000',NULL,'Centro','Maceió','AL','57001000',1,49),(70,'Rua Paraguai','25',NULL,'Bairro Novo','Cuiabá','MT','78001000',1,50),(71,'Rua do Bosque','50',NULL,'Bairro do Bosque','Curitiba','PR','80000001',1,51),(72,'Avenida Campinas','250',NULL,'Vila Campinas','Campinas','SP','13001000',1,52),(73,'Rua do Vale','333','Apt 303','Bairro do Vale','São Paulo','SP','01003000',1,53),(74,'Rua das Laranjeiras','210',NULL,'Centro','Rio de Janeiro','RJ','22222222',1,54),(75,'Avenida Sete de Setembro','50','Casa','Bairro Central','Belo Horizonte','MG','30102000',1,55),(76,'Rua das Violetas','120',NULL,'Vila das Flores','São Paulo','SP','01004000',1,56),(77,'Avenida Goiás','200','Apt 502','Centro','São Paulo','SP','01005000',0,56),(78,'Rua da Paz','99','Casa','Bairro São João','Porto Alegre','RS','90011000',1,57),(79,'Rua Central','100',NULL,'Bairro Rio Branco','Manaus','AM','69002000',1,58),(80,'Rua Barreto Leme','300',NULL,'Vila Souza','São Paulo','SP','01006000',1,59),(81,'Avenida Rio Branco','150',NULL,'Centro','São Paulo','SP','01007000',0,59),(82,'Rua das Palmeiras','510','Casa','Vila Nova','Brasília','DF','70002000',1,60),(83,'Avenida João Pessoa','1250',NULL,'Centro','Goiânia','GO','74001001',1,61),(84,'Rua Vitória','122','Apt 404','Bairro do Sol','Maceió','AL','57002001',1,62),(85,'Avenida da Liberdade','350',NULL,'Centro','Maceió','AL','57003000',0,62),(86,'Rua da Prata','123',NULL,'Centro','Santos','SP','11002000',1,63),(87,'Avenida Ipiranga','150',NULL,'Vila Ipiranga','Porto Alegre','RS','90012000',1,64),(88,'Rua Xavier da Silva','200','Apt 501','Centro','Porto Alegre','RS','90013000',0,64),(89,'Rua das Acácias','820',NULL,'Bairro Central','Rio de Janeiro','RJ','20003000',1,65),(90,'Rua Dona Maria','175','Apt 305','Bairro da Praia','São Paulo','SP','01008000',1,66),(91,'Avenida Dom Pedro II','250','Casa','Vila Nova','Curitiba','PR','80003000',1,67),(92,'Rua Belo Horizonte','100',NULL,'Vila América','Uberlândia','MG','38402000',1,68),(93,'Rua Santa Cruz','175',NULL,'Vila São Pedro','São José','SC','88002000',1,69),(94,'Avenida Padre Cícero','700','Apt 201','Centro','Fortaleza','CE','60003000',1,70),(95,'Rua das Dálias','420',NULL,'Vila Paulista','São Paulo','SP','01009000',1,71),(96,'Rua do Café','910',NULL,'Bairro da Alegria','Campinas','SP','13002000',1,72),(97,'Rua do Parque','1010','Apt 102','Bairro do Parque','Goiânia','GO','74002000',1,73),(98,'Rua das Palmeiras','303',NULL,'Centro','Goiânia','GO','74003000',0,73),(99,'Rua Cândido Motta','150',NULL,'Vila Cândido','São Paulo','SP','01010000',1,74),(100,'Rua Princesa Isabel','100','Casa','Bairro Princesa','Recife','PE','50004000',1,75),(101,'Rua Serra Azul','250',NULL,'Vila São José','Porto Alegre','RS','90014000',1,76),(102,'Rua Rio Branco','10',NULL,'Centro','Belo Horizonte','MG','30103000',1,77),(103,'Rua das Pedras','1050','Casa','Vila das Pedras','Aracaju','SE','49001001',1,78),(104,'Rua Francisco Rodrigues','800',NULL,'Vila São Jorge','São Paulo','SP','01011000',1,79),(105,'Rua do Ouro','600',NULL,'Bairro Ouro','Belo Horizonte','MG','30104000',1,80),(106,'Rua das Flores','200',NULL,'Vila São João','Salvador','BA','40004000',1,81),(107,'Rua do Barro','350',NULL,'Vila Barro','São Paulo','SP','01012000',1,82),(108,'Avenida das Águas','999',NULL,'Bairro das Águas','Cuiabá','MT','78002000',1,83),(109,'Rua do Horizonte','500',NULL,'Centro','Teresina','PI','64001000',1,84),(110,'Rua da Serra','333','Apt 601','Vila das Pedras','São Paulo','SP','01013000',1,85),(111,'Rua dos Canários','180',NULL,'Vila São Luís','Goiânia','GO','74004000',1,87),(112,'Rua Moisés','222','Casa','Centro','Recife','PE','50005000',1,88),(113,'Rua do Limoeiro','500',NULL,'Bairro Limoeiro','Brasília','DF','70003000',1,89),(114,'Rua do Frevo','120',NULL,'Vila Nova','Recife','PE','50006000',1,90),(115,'Rua de Cima','85','Apt 5','Bairro Novo','São Paulo','SP','01014000',1,91),(116,'Rua do Senhor','200',NULL,'Vila do Senhor','São Paulo','SP','01015000',1,92),(117,'Rua da Vitória','100',NULL,'Bairro Vitória','Rio de Janeiro','RJ','20004000',1,93),(118,'Rua São Pedro','300',NULL,'Vila São Pedro','Belo Horizonte','MG','30105000',1,94),(119,'Rua Major Lopes','400',NULL,'Centro','Goiânia','GO','74005000',1,95),(120,'Rua do Lago','150','Apt 2','Vila Água','Uberlândia','MG','38403000',1,96),(121,'Rua da Escola','420','Casa','Bairro da Escola','São Paulo','SP','01016000',1,97),(122,'Rua Brasil','50',NULL,'Vila São João','Porto Alegre','RS','90015000',1,98),(123,'Rua Tiradentes','250',NULL,'Bairro do Campo','Teresina','PI','64002000',1,99),(124,'Rua Amazonas','900','Casa','Centro','Cuiabá','MT','78003000',1,100);
/*!40000 ALTER TABLE `clientes_enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf` char(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios_funcoes`
--

DROP TABLE IF EXISTS `funcionarios_funcoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios_funcoes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `funcao` varchar(50) NOT NULL,
  `cbo` char(7) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `funcionarios_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_funcionarios` (`funcionarios_id`),
  CONSTRAINT `fk_funcionarios` FOREIGN KEY (`funcionarios_id`) REFERENCES `funcionarios` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios_funcoes`
--

LOCK TABLES `funcionarios_funcoes` WRITE;
/*!40000 ALTER TABLE `funcionarios_funcoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionarios_funcoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `data_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` double NOT NULL DEFAULT '0',
  `nf` varchar(255) DEFAULT NULL,
  `clientes_id` int NOT NULL,
  `funcionarios_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_pedidos_id_clientes_id` (`clientes_id`),
  KEY `idx_funcionarios` (`funcionarios_id`),
  CONSTRAINT `fk_pedidos_clientes` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `fk_pedidos_funcionarios` FOREIGN KEY (`funcionarios_id`) REFERENCES `funcionarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_itens`
--

DROP TABLE IF EXISTS `pedidos_itens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_itens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `produto` varchar(150) NOT NULL,
  `quantidade` int NOT NULL,
  `valor` double NOT NULL,
  `pedidos_id` int NOT NULL,
  `clientes_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pedidos_itens` (`pedidos_id`),
  KEY `fk_clientes_itens` (`clientes_id`),
  CONSTRAINT `fk_clientes_itens` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `fk_pedidos_itens` FOREIGN KEY (`pedidos_id`) REFERENCES `pedidos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_itens`
--

LOCK TABLES `pedidos_itens` WRITE;
/*!40000 ALTER TABLE `pedidos_itens` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos_itens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `preco` double NOT NULL DEFAULT '0',
  `from_categorias` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Cerveja Artesanal','Cerveja de produção local, com 5% de álcool.',12.99,1),(2,'Tênis Esportivo','Tênis de corrida com solado antiderrapante e amortecimento.',199.99,2),(3,'Sofá de 3 Lugares','Sofá confortável para 3 pessoas, com tecido anti-rasgo.',899,4),(4,'Relógio Smart','Relógio inteligente com monitoramento de saúde e notificações.',299.99,6),(5,'Café Orgânico','Café em grãos orgânico, com sabor suave e aroma intenso.',25.5,1),(6,'Cadeira de Escritório','Cadeira ergonômica com ajuste de altura e encosto acolchoado.',350,4),(7,'Pelúcia de Urso','Urso de pelúcia macio de 50 cm de altura.',79.9,11),(8,'Óculos de Sol','Óculos de sol com proteção UV e estilo moderno.',120,6),(9,'Mochila Executiva','Mochila para laptop com compartimentos para acessórios.',250,9),(10,'Shampoo Anti-Caspa','Shampoo para controle de caspa e hidratação dos cabelos.',19.9,10),(11,'Vinho Tinto','Vinho tinto de 750 ml com aroma frutado e sabor encorpado.',39.9,1),(12,'Tábua de Queijos','Kit com 3 tipos de queijos, ideal para petiscos.',50,19),(13,'Tênis Casual','Tênis casual em couro com detalhes em tecido.',149.9,2),(14,'Camiseta Básica','Camiseta de algodão com modelo simples e confortável.',29.9,2),(15,'Cama Box','Cama box queen size, com colchão ortopédico e excelente conforto.',1200,4),(16,'Smartphone Android','Smartphone com tela de 6 polegadas e 64 GB de armazenamento.',999,6),(17,'Secador de Cabelos','Secador de cabelos com 2 níveis de temperatura e 3 velocidades.',149.9,10),(18,'Almofada Decorativa','Almofada de 40x40 cm com estampa moderna.',40,9),(19,'Câmera Fotográfica','Câmera DSLR com lente de 18-55mm e 24 MP.',2000,6),(20,'Fone de Ouvido Bluetooth','Fone de ouvido com cancelamento de ruído e bateria de longa duração.',180,6),(21,'Escova de Dentes Elétrica','Escova de dentes elétrica com 3 modos de escovação.',79.9,10),(22,'Barbecue Grill','Churrasqueira portátil para até 10 pessoas.',150,4),(23,'Cadeira de Praia','Cadeira reclinável de praia com suporte para copo.',99.9,9),(24,'Kit de Jardinagem','Kit básico para jardinagem, com ferramentas e sementes.',65,9),(25,'Carrinho de Bebê','Carrinho de bebê com sistema de reclinação e cinto de segurança.',650,11),(26,'Kit de Maquiagem','Kit de maquiagem com base, corretivo, batom e sombra.',99.9,10),(27,'Máscara de Cílios','Máscara para cílios com efeito volumoso e longa duração.',45,10),(28,'Console de Videogame','Console de última geração com 1 TB de armazenamento.',2499,6),(29,'Caminha para Cães','Cama confortável para cães de porte médio.',120,11),(30,'Tênis de Skate','Tênis específico para skate com solado antiderrapante.',180,2),(31,'Lentes de Contato','Lentes de contato coloridas para olhos castanhos.',60,10),(32,'Bolsa de Couro','Bolsa de couro legítimo com compartimentos internos.',350,2),(33,'Chá Verde','Chá verde orgânico, ideal para quem busca bem-estar.',15,1),(34,'Assadeira Antiaderente','Assadeira de 30 cm, com revestimento antiaderente.',45,4),(35,'Balde de Gelo','Balde de gelo de inox com capacidade para 2 litros.',70,4),(36,'Fralda Descartável','Pacote com 30 fraldas descartáveis para bebês.',45,11),(37,'Ar Condicionado','Ar condicionado portátil com capacidade para 12.000 BTUs.',1500,4),(38,'Pipoqueira Elétrica','Máquina de pipoca elétrica com capacidade de 1,5 litros.',100,4),(39,'Raquete de Tênis','Raquete de tênis de alta performance para iniciantes.',120,2),(40,'Cesta de Piquenique','Cesta de piquenique com espaço para 4 pessoas e acessórios.',90,9),(41,'Secadora de Roupas','Secadora de roupas compacta com 5 kg de capacidade.',899,4),(42,'Cadeira para Auto','Cadeira de segurança para carro para crianças até 10 anos.',220,11),(43,'Mixer de Mão','Mixer de mão com 5 velocidades e lâminas em inox.',120,4),(44,'Camiseta de Bandas','Camiseta com estampa de bandas famosas, de algodão.',40,2),(45,'Smartphone com Câmera 5G','Smartphone com câmera tripla de 108 MP e conectividade 5G.',1599,6),(46,'Pipoqueira Profissional','Máquina de pipoca com capacidade de 3 litros e sistema antiaderente.',150,4),(47,'Bolsa de Praia','Bolsa grande para praia, resistente à água, com alça ajustável.',45,9),(48,'Blender','Liquidificador com 6 lâminas de aço inox e 1,5 L de capacidade.',170,4),(49,'Tênis de Corrida','Tênis com amortecimento especial e solado ultra-leve.',230,2),(50,'Tênis Casual Masculino','Tênis casual masculino, perfeito para o dia a dia.',149,2),(51,'Saco de Dormir','Saco de dormir de inverno, com isolamento térmico de alta qualidade.',120,9),(52,'Camisa Polo','Camisa polo de algodão, confortável e versátil.',59.9,2),(53,'Chinelos de Dormir','Chinelos de dormir, confortáveis e estilosos.',35,2),(54,'Almofada de Pé','Almofada ortopédica para descanso dos pés após o trabalho.',50,9),(55,'Lentes de Sol','Lentes de sol com proteção UVA/UVB, design moderno.',70,6),(56,'Cesta de Café da Manhã','Cesta com pães, sucos e doces, ideal para presentear.',80,1),(57,'Mochila de Camping','Mochila de camping com capacidade para 40L, resistente à água.',170,9),(58,'Ar Condicionado Split','Ar condicionado split com tecnologia inverter e baixo consumo de energia.',1999,4),(59,'Cafeteira Elétrica','Cafeteira elétrica com sistema de café expresso.',150,1),(60,'Relógio de Pulso Masculino','Relógio masculino com pulseira de couro e estilo clássico.',250,6),(61,'Óculos de Grau','Óculos de grau com armação leve e confortável.',80,6),(62,'Mochila Escolar','Mochila escolar com compartimentos para notebooks e livros.',120,9),(63,'Calça Jeans','Calça jeans masculina, modelo slim, disponível em várias cores.',89.9,2),(64,'Camisa de Manga Longa','Camisa de manga longa, 100% algodão, confortável.',49.9,2);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-09  9:43:14
