-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2025 年 06 月 13 日 06:05
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `product`
--

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `create_at` datetime DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT current_timestamp(),
  `is_valid` tinyint(4) DEFAULT 1,
  `style` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `category_id`, `description`, `price`, `quantity`, `create_at`, `update_at`, `is_valid`, `style`) VALUES
(1, 1, 'KALLAX 層架組', 1, '多功能層架，可橫放或直放，適合收納和展示。', 1999, 40, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(2, 1, 'EKTORP 三人座沙發', 1, '舒適的三人座沙發，可拆洗的布套。', 12999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(3, 1, 'LACK 邊桌', 1, '輕巧實用的邊桌，適合各種空間。', 399, 100, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 0, '北歐簡約風'),
(4, 1, 'POÄNG 扶手椅', 1, '經典設計扶手椅，提供舒適支撐。', 3999, 30, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 0, '北歐簡約風'),
(5, 1, 'BRIMNES 電視櫃', 1, '現代風格電視櫃，附收納空間。', 2999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(6, 1, 'FRIHETEN 沙發床', 1, '多功能沙發床，可展開作為床使用。', 15999, 15, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(7, 1, 'LÖVBACKEN 茶几', 1, '葉形設計茶几，增添空間趣味。', 1999, 35, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(8, 1, 'STRANDMON 扶手椅', 1, '高背扶手椅，提供舒適支撐。', 5999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(9, 1, 'STOCKHOLM 2017 茶几', 1, '大理石紋茶几，展現優雅風格。', 4999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '輕奢設計風'),
(10, 1, 'VIMLE 沙發', 1, '模組化沙發，可自由組合。', 19999, 15, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(11, 1, 'KIVIK 沙發', 1, '寬敞舒適的沙發，適合家庭使用。', 24999, 10, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(12, 1, 'LIDHULT 沙發', 1, '高品質沙發，提供極致舒適。', 29999, 8, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '輕奢設計風'),
(13, 1, 'NORDLI 床頭櫃', 1, '現代風格床頭櫃，附收納空間。', 2499, 40, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(14, 1, 'HEMNES 電視櫃', 1, '實木電視櫃，提供充足收納空間。', 3999, 30, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(15, 1, 'BRIMNES 電視櫃組合', 1, '模組化電視櫃組合，可自由搭配。', 5999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(16, 1, 'KALLAX 層架組合', 1, '多功能層架組合，適合收納和展示。', 2999, 35, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(17, 1, 'LACK 層架', 1, '輕巧實用的層架，適合各種空間。', 699, 80, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(18, 1, 'BILLY 書櫃', 1, '經典書櫃，可自由組合。', 2499, 45, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(19, 1, 'FJÄLLBO 層架', 1, '工業風格層架，展現獨特魅力。', 1999, 30, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '工業復古風'),
(20, 1, 'KALLAX 收納櫃', 1, '多功能收納櫃，可橫放或直放。', 2499, 40, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(21, 1, 'BJÖRKUDDEN 餐桌', 2, '實木餐桌，可延伸設計，適合家庭使用。', 5999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(22, 1, 'METOD 廚房系統', 2, '模組化廚房系統，可依需求組合。', 29999, 15, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(23, 1, 'INGATORP 餐椅', 2, '舒適的餐椅，適合長時間用餐。', 1999, 50, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(24, 1, 'VADHOLMA 廚房推車', 2, '多功能廚房推車，可移動使用。', 3999, 30, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '工業復古風'),
(25, 1, 'KUNGSFORS 廚房收納架', 2, '模組化廚房收納系統，可自由組合。', 2499, 40, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(26, 1, 'BJÖRKUDDEN 餐椅', 2, '實木餐椅，搭配餐桌使用。', 1999, 45, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(27, 1, 'INGATORP 餐桌', 2, '可延伸餐桌，適合家庭使用。', 7999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(28, 1, 'VADHOLMA 廚房島', 2, '多功能廚房島，提供額外工作空間。', 8999, 15, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '工業復古風'),
(29, 1, 'KUNGSFORS 廚房掛架', 2, '廚房收納掛架，節省空間。', 1499, 60, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(30, 1, 'BJÖRKUDDEN 長凳', 2, '實木長凳，可作為座位或收納使用。', 2999, 30, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(31, 1, 'INGATORP 餐邊櫃', 2, '實木餐邊櫃，提供額外收納空間。', 4999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(32, 1, 'VADHOLMA 廚房收納櫃', 2, '實木廚房收納櫃，展現自然質感。', 5999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '工業復古風'),
(33, 1, 'KUNGSFORS 廚房收納系統', 2, '模組化廚房收納系統，可自由組合。', 3499, 35, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(34, 1, 'BJÖRKUDDEN 吧台椅', 2, '實木吧台椅，適合廚房島使用。', 1499, 40, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(35, 1, 'INGATORP 餐椅組合', 2, '四張餐椅組合，適合家庭使用。', 7999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(36, 1, 'VADHOLMA 廚房收納架組合', 2, '廚房收納架組合，提供充足收納空間。', 4999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '工業復古風'),
(37, 1, 'KUNGSFORS 廚房收納系統組合', 2, '廚房收納系統組合，可自由搭配。', 6999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(38, 1, 'BJÖRKUDDEN 餐桌組合', 2, '餐桌和四張餐椅組合，適合家庭使用。', 9999, 15, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(39, 1, 'INGATORP 餐邊櫃組合', 2, '餐邊櫃和收納架組合，提供充足收納空間。', 7999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(40, 1, 'VADHOLMA 廚房島組合', 2, '廚房島和收納架組合，提供額外工作空間。', 12999, 10, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '工業復古風'),
(41, 1, 'KUNGSFORS 廚房收納系統組合', 2, '廚房收納系統組合，可自由搭配。', 8999, 15, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(42, 1, 'MALM 床架', 3, '簡約設計床架，附收納空間。', 7999, 30, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(43, 1, 'PAX 衣櫃系統', 3, '可自由組合的衣櫃系統，提供多種收納方案。', 15999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(44, 1, 'HEMNES 床頭櫃', 3, '實木床頭櫃，提供額外收納空間。', 2999, 35, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(45, 1, 'SLÄKT 床墊', 3, '舒適的記憶棉床墊，提供良好支撐。', 8999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(46, 1, 'BRIMNES 化妝台', 3, '附鏡子的化妝台，提供充足收納空間。', 3999, 30, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(47, 1, 'NORDLI 床架', 3, '現代風格床架，附收納空間。', 9999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(48, 1, 'PLATSA 衣櫃', 3, '模組化衣櫃，可自由組合。', 6999, 30, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(49, 1, 'HEMNES 床頭櫃組合', 3, '床頭櫃和收納架組合，提供充足收納空間。', 4999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(50, 1, 'SLÄKT 床墊組合', 3, '床墊和床包組合，提供舒適睡眠體驗。', 11999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(51, 1, 'BRIMNES 化妝台組合', 3, '化妝台和收納架組合，提供充足收納空間。', 5999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(52, 1, 'NORDLI 床架組合', 3, '床架和床頭櫃組合，提供充足收納空間。', 12999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(53, 1, 'PLATSA 衣櫃組合', 3, '衣櫃和收納架組合，提供充足收納空間。', 8999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(54, 1, 'HEMNES 床頭櫃組合', 3, '床頭櫃和收納架組合，提供充足收納空間。', 4999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(55, 1, 'SLÄKT 床墊組合', 3, '床墊和床包組合，提供舒適睡眠體驗。', 11999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(56, 1, 'BRIMNES 化妝台組合', 3, '化妝台和收納架組合，提供充足收納空間。', 5999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(57, 1, 'NORDLI 床架組合', 3, '床架和床頭櫃組合，提供充足收納空間。', 12999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(58, 1, 'PLATSA 衣櫃組合', 3, '衣櫃和收納架組合，提供充足收納空間。', 8999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(59, 1, 'HEMNES 床頭櫃組合', 3, '床頭櫃和收納架組合，提供充足收納空間。', 4999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(60, 1, 'SLÄKT 床墊組合', 3, '床墊和床包組合，提供舒適睡眠體驗。', 11999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(61, 1, 'BRIMNES 化妝台組合', 3, '化妝台和收納架組合，提供充足收納空間。', 5999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(62, 1, 'STUVA 兒童收納櫃', 4, '色彩繽紛的兒童收納櫃，安全圓角設計。', 2999, 35, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(63, 1, 'SUNDVIK 兒童床', 4, '可延伸的兒童床，陪伴孩子成長。', 4999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(64, 1, 'FLISAT 兒童書櫃', 4, '開放式兒童書櫃，培養收納習慣。', 1999, 40, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(65, 1, 'MAMMUT 兒童桌椅組', 4, '適合兒童使用的桌椅組，安全穩固。', 1499, 50, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(66, 1, 'BUSUNGE 兒童衣櫃', 4, '兒童專用衣櫃，附掛衣桿和收納空間。', 2999, 30, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(67, 1, 'STUVA 兒童床', 4, '可延伸的兒童床，陪伴孩子成長。', 3999, 35, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(68, 1, 'SUNDVIK 兒童書櫃', 4, '開放式兒童書櫃，培養收納習慣。', 2499, 30, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(69, 1, 'FLISAT 兒童桌椅組', 4, '適合兒童使用的桌椅組，安全穩固。', 1999, 40, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(70, 1, 'MAMMUT 兒童衣櫃', 4, '兒童專用衣櫃，附掛衣桿和收納空間。', 3499, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(71, 1, 'BUSUNGE 兒童收納櫃', 4, '色彩繽紛的兒童收納櫃，安全圓角設計。', 2499, 35, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(72, 1, 'BEKANT 辦公桌', 5, '人體工學辦公桌，可調整高度。', 6999, 30, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '工業復古風'),
(73, 1, 'MARKUS 辦公椅', 5, '符合人體工學的辦公椅，提供良好支撐。', 4999, 40, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '工業復古風'),
(74, 1, 'ALEX 抽屜櫃', 5, '辦公收納抽屜櫃，提供充足收納空間。', 2499, 45, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(75, 1, 'LÅNESPELARE 電競椅', 5, '專業電競椅，提供舒適支撐。', 5999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '工業復古風'),
(76, 1, 'MICKE 書桌', 5, '簡約書桌，附收納空間。', 1999, 50, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(77, 1, 'SKUBB 收納盒', 6, '多用途收納盒，可折疊收納。', 299, 100, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '無印自然風'),
(78, 1, 'SAMLA 收納箱', 6, '堅固耐用的收納箱，可堆疊使用。', 399, 80, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '無印自然風'),
(79, 1, 'TJENA 收納盒', 6, '環保材質收納盒，適合文件收納。', 199, 120, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '無印自然風'),
(80, 1, 'KUGGIS 收納箱', 6, '可折疊收納箱，節省空間。', 499, 60, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '無印自然風'),
(81, 1, 'SOCKERBIT 收納盒', 6, '多層收納盒，適合小物收納。', 299, 90, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '無印自然風'),
(82, 1, 'KIVIK 三人座沙發組合', 1, '舒適的三人座沙發，搭配腳凳使用。', 27999, 12, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(83, 1, 'LIDHULT 沙發組合', 1, '高品質沙發組合，提供極致舒適。', 32999, 8, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '輕奢設計風'),
(84, 1, 'NORDLI 床頭櫃組合', 1, '現代風格床頭櫃組合，提供充足收納空間。', 3499, 35, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(85, 1, 'HEMNES 電視櫃組合', 1, '實木電視櫃組合，提供充足收納空間。', 4999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(86, 1, 'BRIMNES 電視櫃系統', 1, '模組化電視櫃系統，可自由組合。', 7999, 15, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(87, 1, 'KALLAX 層架系統', 1, '多功能層架系統，適合收納和展示。', 3999, 30, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(88, 1, 'LACK 層架組合', 1, '輕巧實用的層架組合，適合各種空間。', 999, 70, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(89, 1, 'BILLY 書櫃系統', 1, '經典書櫃系統，可自由組合。', 3499, 40, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(90, 1, 'FJÄLLBO 層架系統', 1, '工業風格層架系統，展現獨特魅力。', 2999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '工業復古風'),
(91, 1, 'KALLAX 收納系統', 1, '多功能收納系統，可橫放或直放。', 3499, 35, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(92, 1, 'LACK 收納櫃', 1, '輕巧實用的收納櫃，適合各種空間。', 899, 85, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(93, 1, 'BILLY 收納櫃', 1, '經典收納櫃，可自由組合。', 2999, 45, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(94, 1, 'FJÄLLBO 收納櫃', 1, '工業風格收納櫃，展現獨特魅力。', 2499, 30, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '工業復古風'),
(95, 1, 'KALLAX 展示櫃', 1, '多功能展示櫃，適合收納和展示。', 2999, 40, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(96, 1, 'LACK 展示櫃', 1, '輕巧實用的展示櫃，適合各種空間。', 799, 90, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(97, 1, 'BJÖRKUDDEN 餐桌系統', 2, '實木餐桌系統，可延伸設計，適合家庭使用。', 7999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(98, 1, 'METOD 廚房系統組合', 2, '模組化廚房系統組合，可依需求組合。', 35999, 12, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(99, 1, 'INGATORP 餐椅系統', 2, '舒適的餐椅系統，適合長時間用餐。', 2999, 45, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(100, 1, 'VADHOLMA 廚房推車系統', 2, '多功能廚房推車系統，可移動使用。', 4999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '工業復古風'),
(101, 1, 'KUNGSFORS 廚房收納系統組合', 2, '模組化廚房收納系統組合，可自由組合。', 3499, 35, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(102, 1, 'BJÖRKUDDEN 餐椅系統', 2, '實木餐椅系統，搭配餐桌使用。', 2999, 40, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(103, 1, 'INGATORP 餐桌系統', 2, '可延伸餐桌系統，適合家庭使用。', 9999, 15, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(104, 1, 'VADHOLMA 廚房島系統', 2, '多功能廚房島系統，提供額外工作空間。', 10999, 12, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '工業復古風'),
(105, 1, 'KUNGSFORS 廚房掛架系統', 2, '廚房收納掛架系統，節省空間。', 1999, 55, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(106, 1, 'BJÖRKUDDEN 長凳系統', 2, '實木長凳系統，可作為座位或收納使用。', 3999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(107, 1, 'INGATORP 餐邊櫃系統', 2, '實木餐邊櫃系統，提供額外收納空間。', 5999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(108, 1, 'VADHOLMA 廚房收納櫃系統', 2, '實木廚房收納櫃系統，展現自然質感。', 6999, 15, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '工業復古風'),
(109, 1, 'KUNGSFORS 廚房收納系統組合', 2, '模組化廚房收納系統組合，可自由組合。', 4499, 30, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(110, 1, 'BJÖRKUDDEN 吧台椅系統', 2, '實木吧台椅系統，適合廚房島使用。', 1999, 35, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(111, 1, 'INGATORP 餐椅系統組合', 2, '四張餐椅系統組合，適合家庭使用。', 9999, 15, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(112, 1, 'MALM 床架系統', 3, '簡約設計床架系統，附收納空間。', 9999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(113, 1, 'PAX 衣櫃系統組合', 3, '可自由組合的衣櫃系統組合，提供多種收納方案。', 18999, 15, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(114, 1, 'HEMNES 床頭櫃系統', 3, '實木床頭櫃系統，提供額外收納空間。', 3999, 30, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(115, 1, 'SLÄKT 床墊系統', 3, '舒適的記憶棉床墊系統，提供良好支撐。', 10999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(116, 1, 'BRIMNES 化妝台系統', 3, '附鏡子的化妝台系統，提供充足收納空間。', 4999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(117, 1, 'NORDLI 床架系統', 3, '現代風格床架系統，附收納空間。', 11999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(118, 1, 'PLATSA 衣櫃系統', 3, '模組化衣櫃系統，可自由組合。', 7999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(119, 1, 'HEMNES 床頭櫃系統組合', 3, '床頭櫃和收納架系統組合，提供充足收納空間。', 5999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(120, 1, 'SLÄKT 床墊系統組合', 3, '床墊和床包系統組合，提供舒適睡眠體驗。', 13999, 15, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(121, 1, 'BRIMNES 化妝台系統組合', 3, '化妝台和收納架系統組合，提供充足收納空間。', 6999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(122, 1, 'STUVA 兒童收納系統', 4, '色彩繽紛的兒童收納系統，安全圓角設計。', 3999, 30, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(123, 1, 'SUNDVIK 兒童床系統', 4, '可延伸的兒童床系統，陪伴孩子成長。', 5999, 20, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(124, 1, 'FLISAT 兒童書櫃系統', 4, '開放式兒童書櫃系統，培養收納習慣。', 2499, 35, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(125, 1, 'MAMMUT 兒童桌椅系統', 4, '適合兒童使用的桌椅系統，安全穩固。', 1999, 45, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(126, 1, 'BUSUNGE 兒童衣櫃系統', 4, '兒童專用衣櫃系統，附掛衣桿和收納空間。', 3999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '北歐簡約風'),
(127, 1, 'BEKANT 辦公桌系統', 5, '人體工學辦公桌系統，可調整高度。', 7999, 25, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '工業復古風'),
(128, 1, 'MARKUS 辦公椅系統', 5, '符合人體工學的辦公椅系統，提供良好支撐。', 5999, 35, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '工業復古風'),
(129, 1, 'ALEX 抽屜櫃系統', 5, '辦公收納抽屜櫃系統，提供充足收納空間。', 2999, 40, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '現代極簡風'),
(130, 1, 'SKUBB 收納系統', 6, '多用途收納系統，可折疊收納。', 399, 90, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '無印自然風'),
(131, 1, 'SAMLA 收納箱系統', 6, '堅固耐用的收納箱系統，可堆疊使用。', 499, 70, '2025-06-12 22:48:02', '2025-06-12 22:48:02', 1, '無印自然風'),
(132, 1, '9', 3, '9', 9, 9, '2025-06-13 10:35:04', '2025-06-13 10:35:04', 0, '日式禪園風');

-- --------------------------------------------------------

--
-- 資料表結構 `products_category`
--

CREATE TABLE `products_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `products_category`
--

INSERT INTO `products_category` (`category_id`, `category_name`) VALUES
(1, '客廳'),
(2, '餐廳/廚房'),
(3, '臥室'),
(4, '兒童房'),
(5, '辦公空間'),
(6, '收納用品');

-- --------------------------------------------------------

--
-- 資料表結構 `product_img`
--

CREATE TABLE `product_img` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `img` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `product_img`
--

INSERT INTO `product_img` (`id`, `product_id`, `img`) VALUES
(1, 3, '1749719882.jpg'),
(2, 1, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(39, 4, '1749730270.jpg'),
(40, 5, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(41, 6, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(42, 7, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(43, 8, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(44, 9, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(45, 10, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(46, 11, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(47, 12, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(48, 13, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(49, 14, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(50, 15, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(51, 16, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(52, 17, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(53, 18, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(54, 19, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(55, 20, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(56, 21, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(57, 22, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(58, 23, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(59, 24, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(60, 25, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(61, 26, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(62, 27, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(63, 28, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(64, 29, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(65, 30, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(66, 31, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(67, 32, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(68, 33, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(69, 34, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(70, 35, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(71, 36, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(72, 37, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(73, 38, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(74, 39, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(75, 40, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(76, 41, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(77, 42, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(78, 43, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(79, 44, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(80, 45, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(81, 46, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(82, 47, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(83, 48, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(84, 49, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(85, 50, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(86, 51, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(87, 52, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(88, 53, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(89, 54, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(90, 55, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(91, 56, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(92, 57, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(93, 58, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(94, 59, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(95, 60, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(96, 61, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(97, 62, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(98, 63, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(99, 64, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(100, 65, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(101, 66, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(102, 67, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(103, 68, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(104, 69, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(105, 70, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(106, 71, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(107, 72, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(108, 73, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(109, 74, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(110, 75, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(111, 76, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(112, 77, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(113, 78, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(114, 79, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(115, 80, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(116, 81, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(117, 82, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(118, 83, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(119, 84, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(120, 85, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(121, 86, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(122, 87, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(123, 88, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(124, 89, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(125, 90, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(126, 91, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(127, 92, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(128, 93, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(129, 94, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(130, 95, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(131, 96, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(132, 97, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(133, 1, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(134, 2, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(135, 3, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(136, 4, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(137, 5, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(138, 6, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(139, 7, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(140, 8, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(141, 9, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(142, 10, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(143, 11, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(144, 12, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(145, 13, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(146, 14, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(147, 15, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(148, 16, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(149, 17, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(150, 18, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(151, 19, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(152, 20, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(153, 21, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(154, 22, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(155, 23, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(156, 24, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(157, 25, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(158, 26, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(159, 27, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(160, 28, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(161, 29, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(162, 30, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(163, 31, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(164, 32, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(165, 33, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(166, 34, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(167, 35, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(168, 36, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(169, 37, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(170, 38, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(171, 39, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(172, 40, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(173, 41, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(174, 42, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(175, 43, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(176, 44, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(177, 45, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(178, 46, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(179, 47, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(180, 48, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(181, 49, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(182, 50, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(183, 51, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(184, 52, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(185, 53, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(186, 54, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(187, 55, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(188, 56, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(189, 57, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(190, 58, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(191, 59, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(192, 60, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(193, 61, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(194, 62, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(195, 63, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(196, 64, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(197, 65, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(198, 66, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(199, 67, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(200, 68, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(201, 69, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(202, 70, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(203, 71, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(204, 72, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(205, 73, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(206, 74, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(207, 75, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(208, 76, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(209, 77, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(210, 78, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(211, 79, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(212, 80, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(213, 81, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(214, 82, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(215, 83, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(216, 84, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(217, 85, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(218, 86, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(219, 87, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(220, 88, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(221, 89, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(222, 90, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(223, 91, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(224, 92, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(225, 93, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(226, 94, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(227, 95, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(228, 96, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(229, 97, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(230, 98, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(231, 99, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(232, 100, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(233, 101, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(234, 102, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(235, 103, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(236, 104, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(237, 105, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(238, 106, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(239, 107, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(240, 108, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(241, 109, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(242, 110, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(243, 111, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(244, 112, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(245, 113, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(246, 114, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(247, 115, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(248, 116, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(249, 117, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(250, 118, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(251, 119, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(252, 120, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(253, 121, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(254, 122, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg'),
(255, 123, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
(256, 124, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
(257, 125, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
(258, 126, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
(259, 127, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
(260, 128, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
(261, 129, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
(262, 130, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
(263, 131, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg'),
(264, 132, '1749782327.jpg'),
(265, 132, '1749782192.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `style`
--

CREATE TABLE `style` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `des` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `style`
--

INSERT INTO `style` (`id`, `product_id`, `des`) VALUES
(9, 1, '北歐簡約風'),
(10, 2, '現代極簡風'),
(11, 3, '工業復古風'),
(12, 4, '日式禪園風'),
(13, 5, '美式鄉村風'),
(14, 6, '法式優雅風'),
(15, 7, '輕奢設計風'),
(16, 8, '無印自然風');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `level_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `total_spent` int(11) DEFAULT NULL,
  `is_valid` tinyint(4) NOT NULL DEFAULT 1,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `name`, `birthday`, `email`, `password`, `phone`, `postcode`, `city`, `area`, `address`, `level_id`, `created_at`, `total_spent`, `is_valid`, `role_id`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-06-09 09:20:23', NULL, 0, 99);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- 資料表索引 `products_category`
--
ALTER TABLE `products_category`
  ADD PRIMARY KEY (`category_id`);

--
-- 資料表索引 `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- 資料表索引 `style`
--
ALTER TABLE `style`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `products_category`
--
ALTER TABLE `products_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_img`
--
ALTER TABLE `product_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `style`
--
ALTER TABLE `style`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `products_category` (`category_id`);

--
-- 資料表的限制式 `product_img`
--
ALTER TABLE `product_img`
  ADD CONSTRAINT `product_img_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- 資料表的限制式 `style`
--
ALTER TABLE `style`
  ADD CONSTRAINT `style_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
