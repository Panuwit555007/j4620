-- phpMyAdmin SQL Dump
-- version 5.0.4deb2+deb11u1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 25, 2025 at 09:19 AM
-- Server version: 10.5.26-MariaDB-0+deb11u2
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop4620`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(7) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_detail` text NOT NULL,
  `p_price` float(9,2) NOT NULL,
  `p_ext` varchar(50) NOT NULL,
  `c_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_detail`, `p_price`, `p_ext`, `c_id`) VALUES
(1, 'เสื้อนักเรียนหญิง', 'ผ้าชนิดนี้มีคุณสมบัติในการระบายอากาศได้ดี ทำให้ผู้สวมใส่รู้สึกสบาย ไม่ร้อนอบอ้าวดูแลรักษาง่าย ซักง่าย แห้งเร็ว ไม่ยับง่าย และสีไม่ตกง่าย', 240.00, 'JPG', 2),
(2, 'กระโปรง', 'ผ้าโทเร (Tore): เป็นผ้าสังเคราะห์ชนิดหนึ่งที่มีความแข็งแรง ทนทานต่อการขาดและการยับ มีความมันวาวเล็กน้อย และให้สัมผัสที่เย็นสบาย', 160.00, 'JPG', 2),
(3, 'ถุงเท้า', ' ทำจากเส้นใยสังเคราะห์ ทำให้ถุงเท้านักเรียนมีอายุการใช้งานที่ยาวนานมีความยืดหยุ่นสูง ทำให้ถุงเท้ากระชับพอดีกับเท้า', 20.00, 'JPG', 3),
(4, 'รองเท้านักเรียนหญิง', 'ทำจาก PU (Polyurethane) ซึ่งเป็นวัสดุที่เลียนแบบลักษณะของหนังแท้ แต่มีน้ำหนักเบา ทำให้สวมใส่สบาย ไม่รู้สึกหนักเท้า', 150.00, 'JPG', 3),
(5, 'รองเท้าผ้าใบนักเรียนชาย\r\n', ' ทำจากผ้าใบใช้ทำส่วนบนของรองเท้า เพื่อให้ระบายอากาศได้ดีและสวมใส่สบาย', 150.00, 'JPG', 3),
(6, 'เสื้อเนตรนารี\r\n', 'ผ้าฝ้าย หรือ ผ้าผสม ที่มีความทนทาน ระบายอากาศดี ช่วยให้รู้สึกสบายตัวแม้ในสภาพอากาศร้อน \r\n', 260.00, 'JPG', 1),
(7, 'ปากกา\r\n', 'ปากกาลายมือเส้นที่คมชัด\r\n', 45.00, 'JPG', 4),
(8, 'ดินสอ\r\n', 'ปลอกดินสอส่วนใหญ่ทำจาก ไม้ โดยเฉพาะไม้ซีดาร์ ซึ่งมีกลิ่นหอม เนื้อไม้ค่อนข้างนิ่ม ทำให้เหลาได้ง่าย\r\n', 5.00, 'JPG', 4),
(9, 'ไม้บรรทัดพลาสติก\r\n', 'ไม้บรรทัดพลาสติกส่วนใหญ่ทำจากพลาสติก PVCหรืออะคริลิกซึ่งเป็นวัสดุสังเคราะห์ ทำให้บรรทัดมีลักษณะโปร่งใสทำให้มองเห็นตัวเลขและเส้นแบ่งได้ชัดเจน\r\n', 5.00, 'JPG', 4),
(10, 'กบเหล่าดินสอ\r\n', ' กบเหลาดินสอจะทำจากวัสดุหลายชนิดผสมผสานกัน เพื่อให้ได้ทั้งความแข็งแรง ทนทาน และใช้งานได้สะดวก\r\n', 10.00, 'JPG', 2),
(11, 'ยางลบ\r\n', 'เป็นวัสดุมีความยืดหยุ่นสูง ทำให้ลบรอยดินสอได้อย่างมีประสิทธิภาพ\r\n', 5.00, 'JPG', 4),
(12, 'กระเป๋าใส่อุปกรณ์การเรียน\r\n', 'ทำจากผ้าใบ เป็นวัสดุที่แข็งแรง ทนทานต่อการขูดขีด และมีน้ำหนักเบา เหมาะสำหรับการใช้งานในชีวิตประจำวัน มีให้เลือกหลายสีและลวดลาย\r\n', 30.00, 'JPG', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
