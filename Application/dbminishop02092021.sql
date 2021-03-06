-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: dbminishop
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `CHITIETHOADON`
--

DROP TABLE IF EXISTS `CHITIETHOADON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CHITIETHOADON` (
  `mahoadon` int NOT NULL,
  `machitietsanpham` int NOT NULL,
  `soluong` int DEFAULT NULL,
  `giatien` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`mahoadon`,`machitietsanpham`),
  KEY `FK_CTHOADON_CTSANPHAM` (`machitietsanpham`),
  CONSTRAINT `FK_CTHOADON_CTSANPHAM` FOREIGN KEY (`machitietsanpham`) REFERENCES `CHITIETSANPHAM` (`machitietsanpham`),
  CONSTRAINT `FK_CTHOADON_HOADON` FOREIGN KEY (`mahoadon`) REFERENCES `HOADON` (`mahoadon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHITIETHOADON`
--

LOCK TABLES `CHITIETHOADON` WRITE;
/*!40000 ALTER TABLE `CHITIETHOADON` DISABLE KEYS */;
INSERT INTO `CHITIETHOADON` VALUES (5,1,1,'150000'),(5,8,1,'199000 '),(6,11,1,'255000'),(6,12,1,'225000'),(7,2,3,'150000'),(7,9,4,'199000 '),(7,12,2,'225000');
/*!40000 ALTER TABLE `CHITIETHOADON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CHITIETKHUYENMAI`
--

DROP TABLE IF EXISTS `CHITIETKHUYENMAI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CHITIETKHUYENMAI` (
  `makhuyenmai` int NOT NULL,
  `masanpham` int NOT NULL,
  PRIMARY KEY (`makhuyenmai`,`masanpham`),
  KEY `FK_CHITIETKHUYENMAI_SANPHAM` (`masanpham`),
  CONSTRAINT `FK_CHITIETKHUYENMAI_SANPHAM` FOREIGN KEY (`masanpham`) REFERENCES `SANPHAM` (`masanpham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHITIETKHUYENMAI`
--

LOCK TABLES `CHITIETKHUYENMAI` WRITE;
/*!40000 ALTER TABLE `CHITIETKHUYENMAI` DISABLE KEYS */;
/*!40000 ALTER TABLE `CHITIETKHUYENMAI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CHITIETSANPHAM`
--

DROP TABLE IF EXISTS `CHITIETSANPHAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CHITIETSANPHAM` (
  `machitietsanpham` int NOT NULL AUTO_INCREMENT,
  `masanpham` int DEFAULT NULL,
  `masize` int DEFAULT NULL,
  `mamau` int DEFAULT NULL,
  `soluong` int DEFAULT NULL,
  `ngaynhap` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`machitietsanpham`),
  KEY `FK_CHITIET_SANPHAM` (`masanpham`),
  KEY `FK_CHITIET_SIZESANPHAM` (`masize`),
  KEY `FK_CHITIET_MAUSANPHAM` (`mamau`),
  CONSTRAINT `FK_CHITIET_MAUSANPHAM` FOREIGN KEY (`mamau`) REFERENCES `MAUSANPHAM` (`mamau`),
  CONSTRAINT `FK_CHITIET_SANPHAM` FOREIGN KEY (`masanpham`) REFERENCES `SANPHAM` (`masanpham`),
  CONSTRAINT `FK_CHITIET_SIZESANPHAM` FOREIGN KEY (`masize`) REFERENCES `SIZESANPHAM` (`masize`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHITIETSANPHAM`
--

LOCK TABLES `CHITIETSANPHAM` WRITE;
/*!40000 ALTER TABLE `CHITIETSANPHAM` DISABLE KEYS */;
INSERT INTO `CHITIETSANPHAM` VALUES (1,1,1,1,2,'24/11/2020'),(2,1,1,2,3,'24/11/2020'),(3,1,1,3,5,'24/11/2020'),(4,1,2,1,6,'24/11/2020'),(5,1,3,4,2,'24/11/2020'),(6,1,4,6,1,'24/11/2020'),(7,2,1,3,4,'24/11/2020'),(8,2,2,6,7,'24/11/2020'),(9,2,3,5,8,'24/11/2020'),(10,2,4,5,2,'24/11/2020'),(11,3,2,3,4,'24/11/2020'),(12,4,4,1,5,'24/11/2020'),(13,5,3,6,10,'24/11/2020');
/*!40000 ALTER TABLE `CHITIETSANPHAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CHUCVU`
--

DROP TABLE IF EXISTS `CHUCVU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CHUCVU` (
  `machucvu` int NOT NULL AUTO_INCREMENT,
  `tenchucvu` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`machucvu`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHUCVU`
--

LOCK TABLES `CHUCVU` WRITE;
/*!40000 ALTER TABLE `CHUCVU` DISABLE KEYS */;
INSERT INTO `CHUCVU` VALUES (1,'Nh??n Vi??n'),(2,'Admin'),(3,'Ng?????i D??ng');
/*!40000 ALTER TABLE `CHUCVU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DANHMUCSANPHAM`
--

DROP TABLE IF EXISTS `DANHMUCSANPHAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DANHMUCSANPHAM` (
  `madanhmuc` int NOT NULL AUTO_INCREMENT,
  `tendanhmuc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hinhdanhmuc` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`madanhmuc`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DANHMUCSANPHAM`
--

LOCK TABLES `DANHMUCSANPHAM` WRITE;
/*!40000 ALTER TABLE `DANHMUCSANPHAM` DISABLE KEYS */;
INSERT INTO `DANHMUCSANPHAM` VALUES (1,'??o S?? Mi',NULL),(2,'??o Thun',NULL),(3,'Qu???n Jean',NULL),(4,'Qu???n D??i',NULL),(5,'??o Kho??c',NULL),(6,'T??i ??eo',NULL);
/*!40000 ALTER TABLE `DANHMUCSANPHAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HOADON`
--

DROP TABLE IF EXISTS `HOADON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HOADON` (
  `mahoadon` int NOT NULL AUTO_INCREMENT,
  `tenkhachhang` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sodt` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachigiaohang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tinhtrang` bit(1) DEFAULT NULL,
  `ngaylap` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhthucgiaohang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghichu` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`mahoadon`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HOADON`
--

LOCK TABLES `HOADON` WRITE;
/*!40000 ALTER TABLE `HOADON` DISABLE KEYS */;
INSERT INTO `HOADON` VALUES (5,'Nguyen Linh Phuong','0901','pham the hien quan 8',NULL,NULL,'Giao h????ng t??????n n????i','nhanh nhanh'),(6,'Nguyen Linh Phuong1','0901','pham the hien quan 8',NULL,NULL,'Giao h????ng t??????n n????i','nhanh nha'),(7,'Nguyen Linh Phuong2','0901','pham the hien quan 8',NULL,NULL,'Giao h????ng t??????n n????i','tesst');
/*!40000 ALTER TABLE `HOADON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KHUYENMAI`
--

DROP TABLE IF EXISTS `KHUYENMAI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KHUYENMAI` (
  `makhuyenmai` int NOT NULL AUTO_INCREMENT,
  `tenkhuyenmai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `thoigianbatdau` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `thoigianketthuc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `hinhkhuyenmai` text COLLATE utf8_unicode_ci,
  `giagiam` int DEFAULT NULL,
  PRIMARY KEY (`makhuyenmai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KHUYENMAI`
--

LOCK TABLES `KHUYENMAI` WRITE;
/*!40000 ALTER TABLE `KHUYENMAI` DISABLE KEYS */;
/*!40000 ALTER TABLE `KHUYENMAI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MAUSANPHAM`
--

DROP TABLE IF EXISTS `MAUSANPHAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MAUSANPHAM` (
  `mamau` int NOT NULL AUTO_INCREMENT,
  `tenmau` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`mamau`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAUSANPHAM`
--

LOCK TABLES `MAUSANPHAM` WRITE;
/*!40000 ALTER TABLE `MAUSANPHAM` DISABLE KEYS */;
INSERT INTO `MAUSANPHAM` VALUES (1,'Xanh D????ng'),(2,'X??m'),(3,'Tr???ng'),(4,'H???ng'),(5,'Xanh L??'),(6,'Xanh Ng???c');
/*!40000 ALTER TABLE `MAUSANPHAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NHANVIEN`
--

DROP TABLE IF EXISTS `NHANVIEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NHANVIEN` (
  `manhanvien` int NOT NULL AUTO_INCREMENT,
  `hoten` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `diachi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gioitinh` bit(1) DEFAULT NULL,
  `cmnd` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `machucvu` int DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tendangnhap` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matkhau` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`manhanvien`),
  KEY `FK_NHANVIEN_CHUCVU` (`machucvu`),
  CONSTRAINT `FK_NHANVIEN_CHUCVU` FOREIGN KEY (`machucvu`) REFERENCES `CHUCVU` (`machucvu`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NHANVIEN`
--

LOCK TABLES `NHANVIEN` WRITE;
/*!40000 ALTER TABLE `NHANVIEN` DISABLE KEYS */;
INSERT INTO `NHANVIEN` VALUES (1,'Nguy???n Linh Ph????ng','Ph???m Th??? Hi???n P6 Q8',_binary '','01234567890',2,'nlphuong95@gmail.com','nguyenphuong','123456'),(2,NULL,NULL,_binary '\0',NULL,NULL,'abc@gmail.com','abc@gmail.com','123456'),(3,NULL,NULL,_binary '\0',NULL,NULL,'abcd@gmail.com','abcd@gmail.com','123456'),(4,NULL,NULL,_binary '\0',NULL,NULL,'abcd@gmail.com','abcd@gmail.com','123456');
/*!40000 ALTER TABLE `NHANVIEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SANPHAM`
--

DROP TABLE IF EXISTS `SANPHAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SANPHAM` (
  `masanpham` int NOT NULL AUTO_INCREMENT,
  `madanhmuc` int DEFAULT NULL,
  `tensanpham` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `giatien` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `hinhsanpham` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`masanpham`),
  KEY `FK_SANPHAM_DANHMUC` (`madanhmuc`),
  CONSTRAINT `FK_SANPHAM_DANHMUC` FOREIGN KEY (`madanhmuc`) REFERENCES `DANHMUCSANPHAM` (`madanhmuc`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SANPHAM`
--

LOCK TABLES `SANPHAM` WRITE;
/*!40000 ALTER TABLE `SANPHAM` DISABLE KEYS */;
INSERT INTO `SANPHAM` VALUES (1,2,'??o Thun C??? Tr??n ????n Gi???n M2','150000','Ch???t li???u: Cotton 2 chi???u\nTh??nh ph???n: 100% Cotton\n- Co d??n 2 chi???u\n- Th???m h??t m??? h??i t???t mang l???i c???m gi??c tho??ng m??t','7505a679-81cf-0e00-b843-001811062416.jpeg'),(2,2,'??o Thun C??? Tr??n Thi??n Nhi??n K?? V?? Kh???ng Long M6','199000 ','Ch???t li???u: Cotton Compact\nTh??nh ph???n: 100% Cotton\n- Th??n thi???n\n- Th???m h??t tho??t ???m\n- M???m m???i\n- Ki???m so??t m??i\n- ??i???u h??a nhi???t\n+ H???a ti???t in d???o\n- HDSD:\n+ N??n gi???t chung v???i s???n ph???m c??ng m??u\n+ Kh??ng d??ng thu???c t???y ho???c x?? ph??ng c?? t??nh t???y m???nh\n+ N??n ph??i trong b??ng r??m ????? gi??? sp b???n m??u','20ec490f-aee4-0700-c9fa-00181b22f1b7.jpeg'),(3,1,'S?? Mi Tay D??i ????n Gi???n M11','255000','Ch???t li???u: Kate\nTh??nh ph???n: 12% modal v?? 88% superfine\n- ??t nh??n v?? d??? ???i\n- Nhanh kh?? v?? tho??ng m??t\nHDSD:\n- ??o s?? mi m??u ph??i trong b??ng r??m ????? tr??nh b???c m??u ph???n vai ??o\n- ??o s?? mi tr???ng c?? th??? ph??i ngo??i n???ng ????? ??o tr???ng s??ng h??n ( kh??ng ph??i qu?? l??u )','31aadf2f-485f-0200-f8e0-001823d06909.jpeg'),(4,1,'S?? Mi Tay Ng???n Y Nguy??n B???n 18- Summer Ver3','225000','Ch???t li???u: V???i d?? - in chuy???n nhi???t\nTh??nh ph???n: 100% poly\n- Co gi??n 2 chi???u\n- B??? m???t m???m m???i\n- Nhanh kh??\n- ????? b???n cao\n- HDSD:\n+ N??n s??? d???ng c??c lo???i b???t gi???t d???u nh??? ho???c ???? ???????c pha lo??ng tr??nh c??c ch???t h??a h???c m???nh s??? l??m h???ng ch???t l?????ng v???i.\n+ N??n l???n m???t tr??i s???n ph???m khi gi???t, kh??ng n??n d??ng b??n ch???i qu?? c???ng ch?? x??t m???nh l??n b??? m???t v???i.\n+ GI???t ???i nhi???t ????? th?????ng tr??nh nhi???t ????? qu?? cao s??? ???nh h?????ng ?????n ch???t l?????ng h??nh in.\n+ Ph??i trong b??ng r??m tr??nh n???ng g???t .','43deae56-dff0-9500-1aa0-001819ad0c92.jpeg'),(5,5,'??o Kho??c Classic ????n Gi???n 12VAHDT V???n Xu??n Ki???n Qu???c M2','385000','- Ch???t li???u:\nMINI ZURRY\n- Th??nh Ph???n:\n+ 94% COTTON\n- Th??n thi???n\n-Th???m h??t tho??t ???m\n- M???m m???i\n- ??t nh??n\n+ 6% SPANDEX\nCo gi???n t???i ??u\n- Logo VXKQ in d???o\n+ Ph???i 2 t??i h???p c???c ch???t, c???c c?? t??nh\n+ Bo tay x??? ng??n ??a d???ng\n+ D??y k??o vi???n ph???n quang\n+ T??i trong ti???n d???ng\n+ Reverse Coil Zipper\n(Nh???ng chi???c kho?? n??y c?? b??? m???t ngo??i d???p, ph???ng trong khi r??ng kho?? th?? ??? trong)\n+ N??n r???ng','893154d0-102d-4800-28ac-001818dcc054.jpeg'),(6,5,'??o Kho??c Classic ????n Gi???n F03','299000','??O KHO??C D?? ??A T??NH N??NG\n- Tr?????t n?????c\n- Ch???ng UV\nCh???t li???u: V???i D??\nTh??nh ph???n: 100% poly\n- V???i d?? b???n, dai v?? nh???\n- ??u ??i???m v?????t tr???i l?? tho??ng kh??','0adc6247-e4f9-3e00-99c7-001818da7d03.jpeg'),(7,3,'Qu???n D??i Jean Slimfit ????n Gi???n M3','425000','Ch???t li???u: Jean Cotton\nTh??nh ph???n: 99% cotton 1% spandex\n- M???m m???i\n- Tho??ng m??t','c421849c-7332-1100-7197-0017a45f2480.jpeg'),(8,3,'Qu???n D??i Jean Straight ????n Gi???n M1','425000','Ch???t li???u: Jean Cotton\nTh??nh ph???n: 99% cotton 1% spandex\n- ????? b???n cao\n- Mang ?????n s??? tho???i m??i ??? ph???n h??ng v?? ????i nh??ng v???n r???t g???n g??ng\nHDSD:\n- H??y l???n m???t tr??i c???a s???n ph???m tr?????c khi gi???t ????? h???n ch??? bay m??u v???i.\n- Kh??ng n??n s??? d???ng c??c ch???t t???y r???a m???nh trong qu?? tr??nh gi???t.','7d05dbcb-8688-0800-4156-0017890d1e1a.jpeg'),(9,4,'Qu???n D??i T??y ????n Gi???n HG09','385000','Ch???t li???u: 8018T - ??en\nTh??nh ph???n: 12% Modal + 88% Superfine\n- Tho??ng m??t\n- M???m m???i.\nHDSD:\n- Kh??ng gi???t b???ng x?? b??ng c?? ????? t???y cao.\n- Kh??ng ph??i s???n ph???m tr???c ti???p d?????i n???ng l???n.','631d2354-dc9a-0500-4c58-00174faba778.jpeg'),(10,4,'Qu???n D??i T??y ????n Gi???n HG17','325000','Ch???t li???u: V???i Qu???n T??y\nTh??nh ph???n: 82% polyester 14% rayon 4% spandex\n- M???m m???i\n- Tho??ng kh??\n- Th??n thi???n v???i m???i tr?????ng\n- H??t ???m t???t','633da725-5f31-0300-9838-00180ffdfc20.jpeg'),(11,6,'T??i ??eo ?????c Bi???t B38','249000','T??i ??eo TK B38\n\n- Ch???t li???u: 840HD M??u ??en/Tr???ng + L??t 210D ??en\n- PU foam 5mm gi??p gi??? phom\n- D??y k??o YKK #5\n- Logo ch??? Y\n- Thi???t k??? nhi???u ng??n ti???n d???ng\n+ Ng??n ch??nh r???ng + b??n trong c?? ng??n d??y k??o\n+ 2 Ng??n nh??? PVC mesh\n+ Ng??n k??o nh??? ph??a sau t??i\n\nK??ch th?????c: 24 x 29 x 9cm','4c0fa2a4-7f26-0100-eaa5-001754f8c6f9.jpeg'),(12,6,'T??i ??eo ?????c Bi???t B24','179000','B24 - T??I ??EO CH??O\nCh???t li???u:\n- V??i ch??nh: 1000D Cordura ??en tr?????t n?????c\n- L?????i Airmesh\n- Kh??a buckle 20/38mm\nThi???t k??? th???i trang & ??a d???ng\n- Thi???t k??? v???i 3 ng??n h???p\n- Th??m 1 ng??n r???i ti???n d???ng\n- K??ch th?????c nh??? g???n ti???n d???ng\nM??u s???c: ??EN','7ac0d60a-b4c6-0f00-7baa-001613a68c93.jpeg'),(13,1,'S?? Mi Tay Ng???n Y Nguy??n B???n 18- Summer Ver1','225000','Ch???t li???u: V???i d?? - in chuy???n nhi???t\nTh??nh ph???n: 100% poly\n- Co gi??n 2 chi???u\n- B??? m???t m???m m???i\n- Nhanh kh??\n- ????? b???n cao\n- HDSD:\n+ N??n s??? d???ng c??c lo???i b???t gi???t d???u nh??? ho???c ???? ???????c pha lo??ng tr??nh c??c ch???t h??a h???c m???nh s??? l??m h???ng ch???t l?????ng v???i.\n+ N??n l???n m???t tr??i s???n ph???m khi gi???t, kh??ng n??n d??ng b??n ch???i qu?? c???ng ch?? x??t m???nh l??n b??? m???t v???i.\n+ GI???t ???i nhi???t ????? th?????ng tr??nh nhi???t ????? qu?? cao s??? ???nh h?????ng ?????n ch???t l?????ng h??nh in.\n+ Ph??i trong b??ng r??m tr??nh n???ng g???t .','58d0add1-1b94-9900-4afa-001819ad40ed.jpeg'),(14,2,'Test','115000','test',NULL),(15,3,'Test1','125000','test1',NULL),(16,4,'Test2','135000','test2',NULL),(17,5,'Test3','145000','test3',NULL),(18,6,'Test4','155000','test4',NULL),(19,1,'Test5','165000','test5',NULL);
/*!40000 ALTER TABLE `SANPHAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SIZESANPHAM`
--

DROP TABLE IF EXISTS `SIZESANPHAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SIZESANPHAM` (
  `masize` int NOT NULL AUTO_INCREMENT,
  `size` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`masize`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SIZESANPHAM`
--

LOCK TABLES `SIZESANPHAM` WRITE;
/*!40000 ALTER TABLE `SIZESANPHAM` DISABLE KEYS */;
INSERT INTO `SIZESANPHAM` VALUES (1,'M'),(2,'L'),(3,'XL'),(4,'XXL');
/*!40000 ALTER TABLE `SIZESANPHAM` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-02 12:31:30
