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
INSERT INTO `CHUCVU` VALUES (1,'Nhân Viên'),(2,'Admin'),(3,'Người Dùng');
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
INSERT INTO `DANHMUCSANPHAM` VALUES (1,'Áo Sơ Mi',NULL),(2,'Áo Thun',NULL),(3,'Quần Jean',NULL),(4,'Quần Dài',NULL),(5,'Áo Khoác',NULL),(6,'Túi Đeo',NULL);
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
INSERT INTO `HOADON` VALUES (5,'Nguyen Linh Phuong','0901','pham the hien quan 8',NULL,NULL,'Giao hÃ ng táº­n nÆ¡i','nhanh nhanh'),(6,'Nguyen Linh Phuong1','0901','pham the hien quan 8',NULL,NULL,'Giao hÃ ng táº­n nÆ¡i','nhanh nha'),(7,'Nguyen Linh Phuong2','0901','pham the hien quan 8',NULL,NULL,'Giao hÃ ng táº­n nÆ¡i','tesst');
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
INSERT INTO `MAUSANPHAM` VALUES (1,'Xanh Dương'),(2,'Xám'),(3,'Trắng'),(4,'Hồng'),(5,'Xanh Lá'),(6,'Xanh Ngọc');
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
INSERT INTO `NHANVIEN` VALUES (1,'Nguyễn Linh Phương','Phạm Thế Hiển P6 Q8',_binary '','01234567890',2,'nlphuong95@gmail.com','nguyenphuong','123456'),(2,NULL,NULL,_binary '\0',NULL,NULL,'abc@gmail.com','abc@gmail.com','123456'),(3,NULL,NULL,_binary '\0',NULL,NULL,'abcd@gmail.com','abcd@gmail.com','123456'),(4,NULL,NULL,_binary '\0',NULL,NULL,'abcd@gmail.com','abcd@gmail.com','123456');
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
INSERT INTO `SANPHAM` VALUES (1,2,'Áo Thun Cổ Tròn Đơn Giản M2','150000','Chất liệu: Cotton 2 chiều\nThành phần: 100% Cotton\n- Co dãn 2 chiều\n- Thấm hút mồ hôi tốt mang lại cảm giác thoáng mát','7505a679-81cf-0e00-b843-001811062416.jpeg'),(2,2,'Áo Thun Cổ Tròn Thiên Nhiên Kì Vĩ Khủng Long M6','199000 ','Chất liệu: Cotton Compact\nThành phần: 100% Cotton\n- Thân thiện\n- Thấm hút thoát ẩm\n- Mềm mại\n- Kiểm soát mùi\n- Điều hòa nhiệt\n+ Họa tiết in dẻo\n- HDSD:\n+ Nên giặt chung với sản phẩm cùng màu\n+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh\n+ Nên phơi trong bóng râm để giữ sp bền màu','20ec490f-aee4-0700-c9fa-00181b22f1b7.jpeg'),(3,1,'Sơ Mi Tay Dài Đơn Giản M11','255000','Chất liệu: Kate\nThành phần: 12% modal và 88% superfine\n- Ít nhăn và dễ ủi\n- Nhanh khô và thoáng mát\nHDSD:\n- Áo sơ mi màu phơi trong bóng râm để tránh bạc màu phần vai áo\n- Áo sơ mi trắng có thể phơi ngoài nắng để áo trắng sáng hơn ( không phơi quá lâu )','31aadf2f-485f-0200-f8e0-001823d06909.jpeg'),(4,1,'Sơ Mi Tay Ngắn Y Nguyên Bản 18- Summer Ver3','225000','Chất liệu: Vải dù - in chuyển nhiệt\nThành phần: 100% poly\n- Co giãn 2 chiều\n- Bề mặt mềm mại\n- Nhanh khô\n- Độ bền cao\n- HDSD:\n+ Nên sử dụng các loại bột giặt dịu nhẹ hoặc đã được pha loãng tránh các chất hóa học mạnh sẽ làm hổng chất lượng vải.\n+ Nên lộn mặt trái sản phẩm khi giặt, không nên dùng bàn chải quá cứng chà xát mạnh lên bề mặt vải.\n+ GIặt ủi nhiệt độ thường tránh nhiệt độ quá cao sẽ ảnh hưởng đến chất lượng hình in.\n+ Phơi trong bóng râm tránh nắng gắt .','43deae56-dff0-9500-1aa0-001819ad0c92.jpeg'),(5,5,'Áo Khoác Classic Đơn Giản 12VAHDT Vạn Xuân Kiến Quốc M2','385000','- Chất liệu:\nMINI ZURRY\n- Thành Phần:\n+ 94% COTTON\n- Thân thiện\n-Thấm hút thoát ẩm\n- Mềm mại\n- Ít nhăn\n+ 6% SPANDEX\nCo giản tối ưu\n- Logo VXKQ in dẻo\n+ Phối 2 túi hộp cực chất, cực cá tính\n+ Bo tay xỏ ngón đa dụng\n+ Dây kéo viền phản quang\n+ Túi trong tiện dụng\n+ Reverse Coil Zipper\n(Những chiếc khoá này có bề mặt ngoài dẹp, phẳng trong khi răng khoá thì ở trong)\n+ Nón rộng','893154d0-102d-4800-28ac-001818dcc054.jpeg'),(6,5,'Áo Khoác Classic Đơn Giản F03','299000','ÁO KHOÁC DÙ ĐA TÍNH NĂNG\n- Trượt nước\n- Chống UV\nChất liệu: Vải Dù\nThành phần: 100% poly\n- Vải dù bền, dai và nhẹ\n- Ưu điểm vượt trội là thoáng khí','0adc6247-e4f9-3e00-99c7-001818da7d03.jpeg'),(7,3,'Quần Dài Jean Slimfit Đơn Giản M3','425000','Chất liệu: Jean Cotton\nThành phần: 99% cotton 1% spandex\n- Mềm mại\n- Thoáng mát','c421849c-7332-1100-7197-0017a45f2480.jpeg'),(8,3,'Quần Dài Jean Straight Đơn Giản M1','425000','Chất liệu: Jean Cotton\nThành phần: 99% cotton 1% spandex\n- Độ bền cao\n- Mang đến sự thoải mái ở phần hông và đùi nhưng vẫn rất gọn gàng\nHDSD:\n- Hãy lộn mặt trái của sản phẩm trước khi giặt để hạn chế bay màu vải.\n- Không nên sử dụng các chất tẩy rửa mạnh trong quá trình giặt.','7d05dbcb-8688-0800-4156-0017890d1e1a.jpeg'),(9,4,'Quần Dài Tây Đơn Giản HG09','385000','Chất liệu: 8018T - Đen\nThành phần: 12% Modal + 88% Superfine\n- Thoáng mát\n- Mềm mại.\nHDSD:\n- Không giặt bằng xà bông có độ tẩy cao.\n- Không phơi sản phẩm trực tiếp dưới nắng lớn.','631d2354-dc9a-0500-4c58-00174faba778.jpeg'),(10,4,'Quần Dài Tây Đơn Giản HG17','325000','Chất liệu: Vải Quần Tây\nThành phần: 82% polyester 14% rayon 4% spandex\n- Mềm mại\n- Thoáng khí\n- Thân thiện với mối trường\n- Hút ẩm tốt','633da725-5f31-0300-9838-00180ffdfc20.jpeg'),(11,6,'Túi Đeo Đặc Biệt B38','249000','Túi Đeo TK B38\n\n- Chất liệu: 840HD Màu Đen/Trắng + Lót 210D Đen\n- PU foam 5mm giúp giữ phom\n- Dây kéo YKK #5\n- Logo chữ Y\n- Thiết kế nhiều ngăn tiện dụng\n+ Ngăn chính rộng + bên trong có ngăn dây kéo\n+ 2 Ngăn nhỏ PVC mesh\n+ Ngăn kéo nhỏ phía sau túi\n\nKích thước: 24 x 29 x 9cm','4c0fa2a4-7f26-0100-eaa5-001754f8c6f9.jpeg'),(12,6,'Túi Đeo Đặc Biệt B24','179000','B24 - TÚI ĐEO CHÉO\nChất liệu:\n- Vài chính: 1000D Cordura Đen trượt nước\n- Lưới Airmesh\n- Khóa buckle 20/38mm\nThiết kế thời trang & Đa dụng\n- Thiết kế với 3 ngăn hộp\n- Thêm 1 ngăn rời tiện dụng\n- Kích thước nhỏ gọn tiện dụng\nMàu sắc: ĐEN','7ac0d60a-b4c6-0f00-7baa-001613a68c93.jpeg'),(13,1,'Sơ Mi Tay Ngắn Y Nguyên Bản 18- Summer Ver1','225000','Chất liệu: Vải dù - in chuyển nhiệt\nThành phần: 100% poly\n- Co giãn 2 chiều\n- Bề mặt mềm mại\n- Nhanh khô\n- Độ bền cao\n- HDSD:\n+ Nên sử dụng các loại bột giặt dịu nhẹ hoặc đã được pha loãng tránh các chất hóa học mạnh sẽ làm hổng chất lượng vải.\n+ Nên lộn mặt trái sản phẩm khi giặt, không nên dùng bàn chải quá cứng chà xát mạnh lên bề mặt vải.\n+ GIặt ủi nhiệt độ thường tránh nhiệt độ quá cao sẽ ảnh hưởng đến chất lượng hình in.\n+ Phơi trong bóng râm tránh nắng gắt .','58d0add1-1b94-9900-4afa-001819ad40ed.jpeg'),(14,2,'Test','115000','test',NULL),(15,3,'Test1','125000','test1',NULL),(16,4,'Test2','135000','test2',NULL),(17,5,'Test3','145000','test3',NULL),(18,6,'Test4','155000','test4',NULL),(19,1,'Test5','165000','test5',NULL);
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
