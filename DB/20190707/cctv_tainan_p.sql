-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2019 年 07 月 07 日 15:08
-- 伺服器版本: 10.1.31-MariaDB
-- PHP 版本： 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `wra_2019`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cctv_tainan_p`
--

CREATE TABLE `cctv_tainan_p` (
  `aid` int(1) UNSIGNED NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lon` decimal(10,6) DEFAULT NULL,
  `lat` decimal(10,6) DEFAULT NULL,
  `normal` int(11) NOT NULL,
  `floods` int(11) NOT NULL,
  `unknow` int(11) NOT NULL,
  `color_num` int(11) NOT NULL,
  `realtime` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `cctv_tainan_p`
--

INSERT INTO `cctv_tainan_p` (`aid`, `id`, `address`, `url`, `xy`, `lon`, `lat`, `normal`, `floods`, `unknow`, `color_num`, `realtime`) VALUES
(1, 'TNb1', '鹽埕87號旁(全)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=0&guid=9077be2a-6415-4e8c-8f1e-f71643c600e3', '120.10529, 23.15594', '120.105290', '23.155940', 99, 0, 0, 1, '2019-06-11:06:23:42'),
(2, 'TNb2', '康樂街、尊王路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=1&guid=877842b2-dcbb-4f67-9646-be9a95329a21', '120.19430, 22.99211', '120.194300', '22.992110', 57, 0, 42, 1, '2019-06-11:06:23:44'),
(3, 'TNb3', '南門路、友愛街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=2&guid=2db1bc87-33c8-4ca3-8757-c026f49ed2da', '120.20476, 22.99144', '120.204760', '22.991440', 93, 0, 6, 1, '2019-06-11:06:23:45'),
(4, 'TNb4', '國華街、樹林街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=3&guid=424135cb-3534-4579-8810-609b711242a7', '120.18867, 22.96164', '120.188670', '22.961640', 24, 75, 0, 2, '2019-06-11:06:23:48'),
(5, 'TNb5', '臺19線、大豐里南天宮路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=4&guid=a0a4384d-3116-418a-b93a-ec0c16cd1b6f', '120.22251, 23.26982', '120.222510', '23.269820', 99, 0, 0, 1, '2019-06-11:06:23:54'),
(6, 'TNb6', '台南市仁德區中正路三段220號對面', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=5&guid=4642d6b3-b170-4274-8706-b814f28aeeb0', '120.25140, 22.97732', '120.251400', '22.977320', 97, 0, 2, 1, '2019-06-11:06:23:55'),
(7, 'TNb7', '台南市仁德區中山路650號面', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=6&guid=55893b0d-8594-4020-913f-c5df619d515d', '120.24812, 22.97284', '120.248120', '22.972840', 99, 0, 0, 1, '2019-06-11:06:23:57'),
(8, 'TNb8', '新化區中正路、正新北路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=7&guid=fc8eee61-fd00-4cf0-89e0-bef0c21c5c5a', '120.30516, 23.04264', '120.305160', '23.042640', 57, 0, 42, 1, '2019-06-11:06:24:00'),
(9, 'TNb9', '新營區東興路、民治東路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=9&guid=2369538e-2429-4511-854f-3b46afe61761', '120.32367, 23.31114', '120.323670', '23.311140', 99, 0, 0, 1, '2019-06-11:06:24:05'),
(10, 'TNb10', '七股區玉成里24號(七股所)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=10&guid=420ed8cf-adf5-42b2-ae45-f4d82f270c45', '120.13455, 23.13678', '120.134550', '23.136780', 99, 0, 0, 1, '2019-06-11:06:24:13'),
(11, 'TNb11', '學甲區中正路、自強路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=11&guid=0175fc5f-c68d-4835-9701-83ab2b123b7b', '120.17940, 23.22897', '120.179400', '23.228970', 98, 0, 1, 1, '2019-06-11:06:24:14'),
(12, 'TNb12', '學甲區信義路、寶發路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=12&guid=77c1cab7-543a-42ec-99d3-6714fde1cab4', '120.17529, 23.22834', '120.175290', '23.228340', 99, 0, 0, 1, '2019-06-11:06:24:22'),
(13, 'TNb13', '仁德區中正路3段701號(7-11)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=13&guid=d8e55056-d993-404b-9378-f3ea88271ce4', '120.25580, 22.99184', '120.255800', '22.991840', 99, 0, 0, 1, '2019-06-11:06:24:27'),
(14, 'TNb14', '中西區民族路海安路路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=14&guid=14e2794f-a5df-47cc-94dc-80d385a716dd', '120.19759, 22.99841', '120.197590', '22.998410', 57, 0, 42, 1, '2019-06-11:06:24:28'),
(15, 'TNb15', '中西區府連路健康路路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=15&guid=590c7120-a7cd-482f-a364-9218853f8454', '120.20969, 22.98141', '120.209690', '22.981410', 57, 0, 42, 1, '2019-06-11:06:24:28'),
(16, 'TNb16', '中西區華平路、西賢1街187巷口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=16&guid=5aecab8e-91df-4562-805d-46dee5a16d7d', '120.17565, 23.00363', '120.175650', '23.003630', 93, 0, 6, 1, '2019-06-11:06:24:40'),
(17, 'TNb17', '安南區安中路、安吉路口(主機座加高)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=17&guid=0702e2e0-672b-443e-a8a3-39d9e57e5515', '120.18860, 23.04694', '120.188600', '23.046940', 57, 0, 42, 1, '2019-06-11:06:24:44'),
(18, 'TNb18', '北區文賢路、文賢路1122巷口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=18&guid=3c964bdb-7da9-436a-ba70-bf4944e1744a', '120.19349, 23.01640', '120.193490', '23.016400', 81, 0, 17, 1, '2019-06-11:06:24:49'),
(19, 'TNb19', '北區中華北路2段大和路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=19&guid=4b2574d8-6d54-4b66-8424-80cb128b1e0b', '120.18906, 23.01602', '120.189060', '23.016020', 99, 0, 0, 1, '2019-06-11:06:24:56'),
(20, 'TNb20', '柳營區柳營路、中山西路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=20&guid=ea0af9ba-1f2f-4231-9b87-883390c4b7ef', '120.31256, 23.27651', '120.312560', '23.276510', 97, 0, 2, 1, '2019-06-11:06:25:02'),
(21, 'TNb21', '七股區台17線、南26線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=21&guid=7b54edee-ca15-412e-88a9-51fb6b67ae02', '120.13285, 23.18772', '120.132850', '23.187720', 99, 0, 0, 1, '2019-06-11:06:25:10'),
(22, 'TNb22', '西港區173線、南45線', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=22&guid=3cd204b1-01a1-409f-8af4-189f202ccd6c', '120.21693, 23.13935', '120.216930', '23.139350', 97, 0, 2, 1, '2019-06-11:06:25:16'),
(23, 'TNb23', '佳里區176線、南47線路口(子龍廟前)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=23&guid=c759ad80-13ed-4b64-8b44-50655b4e5ccd', '120.20907, 23.17544', '120.209070', '23.175440', 99, 0, 0, 1, '2019-06-11:06:25:23'),
(24, 'TNb24', '山上區178線、南182線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=24&guid=cd07a6a6-e02b-4356-8eda-33ada7b14d3d', '120.36646, 23.08264', '120.366460', '23.082640', 99, 0, 0, 1, '2019-06-11:06:25:30'),
(25, 'TNb25', '仁德區中正路一段、崑崙路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=26&guid=2a96a987-378a-4bb7-b258-a29c532375d1', '120.24449, 22.92924', '120.244490', '22.929240', 99, 0, 0, 1, '2019-06-11:06:25:40'),
(26, 'TNb26', '玉井區中山路、中正路口(玉井分局前)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=27&guid=d8509f90-d65d-4d40-8a46-bef7e06595fa', '120.45850, 23.12004', '120.458500', '23.120040', 99, 0, 0, 1, '2019-06-11:06:25:43'),
(27, 'TNb27', '中西區民生路、環河街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=28&guid=45d64896-633a-4aab-8c33-05258552c133', '120.19260, 22.99682', '120.192600', '22.996820', 31, 0, 68, 3, '2019-06-11:06:25:49'),
(28, 'TNb28', '中西區民權路、西和路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=29&guid=3cf3859a-13b0-42e7-8f64-1d7e61c5b51c', '120.18730, 22.99924', '120.187300', '22.999240', 99, 0, 0, 1, '2019-06-11:06:26:01'),
(29, 'TNb29', '安南區北安路怡安路口、長溪街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=30&guid=e68e82a0-bf79-400d-b99f-1c13e4cae0d3', '120.20384, 23.04314', '120.203840', '23.043140', 57, 0, 42, 1, '2019-06-11:06:26:01'),
(30, 'TNb30', '安南區海佃路4段388巷口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=31&guid=babce7c9-b0b4-4882-a0c8-322cef33294d', '120.17630, 23.06284', '120.176300', '23.062840', 99, 0, 0, 1, '2019-06-11:06:26:06'),
(31, 'TNb31', '安南區海佃路、安吉路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=32&guid=c0e08a71-42d1-4052-9e57-52dde57cd480', '120.18747, 23.04134', '120.187470', '23.041340', 97, 0, 1, 1, '2019-06-11:06:26:13'),
(32, 'TNb32', '安南區台江大道、長溪路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=33&guid=099c9314-3234-4c69-b701-bcd967deb603', '120.20069, 23.05933', '120.200690', '23.059330', 99, 0, 0, 1, '2019-06-11:06:26:21'),
(33, 'TNb33', '中西區民權路、湖美街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=34&guid=fbd4285d-277e-44a6-869c-fd5436d856f4', '120.18006, 22.99923', '120.180060', '22.999230', 40, 56, 2, 2, '2019-06-11:06:26:25'),
(34, 'TNb34', '安南區海佃路、同安路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=35&guid=2b6f28dd-f0c8-4987-8fb7-07a0c3df866d', '120.18796, 23.03893', '120.187960', '23.038930', 61, 38, 0, 1, '2019-06-11:06:26:28'),
(35, 'TNb35', '仁德區民安路、文華路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=36&guid=de3025b9-7375-4242-8080-9ce40daa211f', '120.24006, 22.95951', '120.240060', '22.959510', 98, 0, 0, 1, '2019-06-11:06:26:32'),
(36, 'TNb36', '仁德區中正路2段、上崙街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=37&guid=bbe757a4-a646-4413-8f2b-89b40e56f400', '120.24798, 22.93828', '120.247980', '22.938280', 98, 1, 0, 1, '2019-06-11:06:26:37'),
(37, 'TNb37', '仁德區中山路、中正路2段口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=38&guid=8b8c260a-fa4d-4829-8d64-99f472e7b5e1', '120.25187, 22.97184', '120.251870', '22.971840', 99, 0, 0, 1, '2019-06-11:06:26:41'),
(38, 'TNb38', '永康區復興路、大灣路口(北基加油站)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=39&guid=e52f0434-e15d-4021-88b3-570301803cfa', '120.25037, 22.99882', '120.250370', '22.998820', 99, 0, 0, 1, '2019-06-11:06:26:48'),
(39, 'TNb39', '永康區永大路1段、大灣東路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=40&guid=f2590677-3d73-4951-b4ef-c9ce2c1a59be', '120.25870, 22.99806', '120.258700', '22.998060', 99, 0, 0, 1, '2019-06-11:06:26:55'),
(40, 'TNb40', '永康區文化路、永華路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=41&guid=9685dd74-2289-43d7-a1ae-06fc2aa8dfed', '120.25800, 23.01644', '120.258000', '23.016440', 99, 0, 0, 1, '2019-06-11:06:26:59'),
(41, 'TNb41', '西港區臺19線西港大橋旁便道', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=42&guid=522076e1-42cd-40ed-846a-df8f6117ab99', '120.20457, 23.11123', '120.204570', '23.111230', 98, 1, 0, 1, '2019-06-11:06:27:12'),
(42, 'TNb42', '七股區臺17線、文化路（南32線）路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=43&guid=564da3c0-e74b-45d1-887a-b7e63e51d271', '120.13444, 23.15961', '120.134440', '23.159610', 57, 0, 42, 1, '2019-06-11:06:27:13'),
(43, 'TNb43', '將軍區將富里臺17線、南18線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=44&guid=75ced123-5410-428d-8f4f-c8b43e8d1af3', '120.13529, 23.21492 ', '120.135290', '23.214920', 99, 0, 0, 1, '2019-06-11:06:27:20'),
(44, 'TNb44', '學甲區中正路、三民路、華宗路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=45&guid=de0cbfc0-033c-4d95-91ff-38e455f0ebda', '120.18370, 23.23864', '120.183700', '23.238640', 99, 0, 0, 1, '2019-06-11:06:27:24'),
(45, 'TNb45', '大內區圖書館前南181線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=46&guid=62e8fe26-36eb-4af0-922a-2f762ba551b4', '120.35640, 23.11942', '120.356400', '23.119420', 99, 0, 0, 1, '2019-06-11:06:27:33'),
(46, 'TNb46', '左鎮區光和里臺20線和平橋前路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=47&guid=8e3787d9-863c-4a9b-a665-2a0eee9c1080', '120.38009, 23.06769', '120.380090', '23.067690', 86, 12, 1, 1, '2019-06-11:06:27:39'),
(47, 'TNb47', '玉井區臺84線、豐里路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=48&guid=c557cae8-b3ad-41ac-823e-374134390dd6', '120.44170, 23.13220', '120.441700', '23.132200', 57, 0, 42, 1, '2019-06-11:06:27:41'),
(48, 'TNb48', '玉井區中華路、中山路口(統一超商前)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=49&guid=7e2f28bf-be4e-4dff-8af6-1003e4f03439', '120.46569, 23.12112', '120.465690', '23.121120', 99, 0, 0, 1, '2019-06-11:06:27:50'),
(49, 'TNb49', '安南區安中路、怡安路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=50&guid=c5d453c7-6b04-414a-9517-1f071ff85acc', '120.19203, 23.04532', '120.192030', '23.045320', 57, 0, 42, 1, '2019-06-11:06:27:54'),
(50, 'TNb50', '安南區公學路、安吉路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=51&guid=c5c51b3c-381f-4ce3-af96-23ab18f85add', '120.19134, 23.06834', '120.191340', '23.068340', 95, 4, 0, 1, '2019-06-11:06:28:04'),
(51, 'TNb51', '東區裕農路、裕義路', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=52&guid=7acd0bfb-2bfd-4f0a-85e3-9a201283ac56', '120.24730, 22.99073', '120.247300', '22.990730', 99, 0, 0, 1, '2019-06-11:06:28:10'),
(52, 'TNb52', '中西區中華西路2段、光賢街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=53&guid=a8852a5f-46b5-44b3-830f-fb1017451172', '120.18679, 23.00414', '120.186790', '23.004140', 55, 0, 43, 1, '2019-06-11:06:28:19'),
(53, 'TNb53', '北區文賢路、和緯路口-2', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=54&guid=1563892f-5b29-4ae8-9dde-579e5cc704b0', '120.19330, 23.01004', '120.193300', '23.010040', 95, 0, 3, 1, '2019-06-11:06:28:25'),
(54, 'TNb54', '中西區西門路1段、和意路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=55&guid=232c9479-43ba-4047-80c8-b336002a2e38', '120.19746, 22.98904', '120.197460', '22.989040', 99, 0, 0, 1, '2019-06-11:06:28:32'),
(55, 'TNb55', '南區中華南路、永成路-2', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=56&guid=ec2506bf-e866-4dde-82a7-6fbd1a6fddab', '120.19520, 22.96264', '120.195200', '22.962640', 50, 39, 9, 1, '2019-06-11:06:28:39'),
(56, 'TNb56', '安南區北安路、安中路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=57&guid=a71fb655-2a76-4266-af45-f3274aba8bcc', '120.20277, 23.03892', '120.202770', '23.038920', 93, 1, 5, 1, '2019-06-11:06:28:44'),
(57, 'TNb57', '七股區南176線與南29線路口(大文國小前)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=58&guid=1ce96c67-3dde-4c3d-9107-42cc2146e35e', '120.15232, 23.15061', '120.152320', '23.150610', 7, 0, 92, 3, '2019-06-11:06:28:50'),
(58, 'TNb58', '七股區南25線與南34-1線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=59&guid=80845839-8df3-47aa-9e11-eac9952eb763', '120.10647, 23.15402', '120.106470', '23.154020', 99, 0, 0, 1, '2019-06-11:06:28:55'),
(59, 'TNb59', '西港區中周寮與南40線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=61&guid=2f08f7be-f134-4dfe-8ded-c36a3d4a0ac1', '120.22335, 23.12382', '120.223350', '23.123820', 0, 99, 0, 2, '2019-06-11:06:29:00'),
(60, 'TNb60', '善化區成功路高雄牧場前路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=62&guid=212385bc-ffc6-48a5-9ebe-4c0fd99ed1f9', '120.32865, 23.12458', '120.328650', '23.124580', 57, 0, 42, 1, '2019-06-11:06:29:01'),
(61, 'TNb61', '安定區臺19線與新吉里61號前路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=63&guid=177bef79-051d-4209-bf04-f5f37a070d6d', '120.21039, 23.08463', '120.210390', '23.084630', 57, 0, 42, 1, '2019-06-11:06:29:02'),
(62, 'TNb62', '仁德區太子路與高速公路便道路口(新泰汽車)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=64&guid=c3af6de5-fa8f-44f4-b6d7-52a1dd920509', '120.24888, 22.99086', '120.248880', '22.990860', 99, 0, 0, 1, '2019-06-11:06:29:05'),
(63, 'TNb63', '玉井區樹糖街、憲政街、中正路、太子街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=65&guid=c36303ae-463b-4219-840f-6ffe83d6475c', '120.46020, 23.12420', '120.460200', '23.124200', 6, 93, 0, 2, '2019-06-11:06:29:10'),
(64, 'TNb64', '永康區大灣路與大灣路942巷口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=66&guid=d85574b1-e23f-44e9-be41-b3f1f015c5fd', '120.25490, 22.99965', '120.254900', '22.999650', 57, 0, 42, 1, '2019-06-11:06:29:12'),
(65, 'TNb65', '佳里區臺19線與營頂67-1號路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=67&guid=348d8acd-cdb7-4380-89c5-2c16524245ea', '120.18860, 23.19954', '120.188600', '23.199540', 28, 0, 70, 3, '2019-06-11:06:29:16'),
(66, 'TNb66', '中西區民生路、中華西路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=68&guid=814c6339-3af4-4830-89ab-b1b5ab807710', '120.18699, 22.99813', '120.186990', '22.998130', 99, 0, 0, 1, '2019-06-11:06:29:25'),
(67, 'TNb67', '鹽水區武廟路、北門路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=69&guid=ce297d08-5cdc-4055-875e-822b7e894135', '120.26616, 23.32353', '120.266160', '23.323530', 99, 0, 0, 1, '2019-06-11:06:29:29'),
(68, 'TNb68', '新營區民治路、健康路、民治路53巷口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=70&guid=f1041589-dca8-4fb2-9023-8298810e12d1', '120.31254, 23.31094', '120.312540', '23.310940', 99, 0, 0, 1, '2019-06-11:06:29:46'),
(69, 'TNb69', '後壁區南85線、南85-1線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=71&guid=b017fadc-8bcb-4b83-86d4-c70c56a0ed0d', '120.33666, 23.38644', '120.336660', '23.386440', 99, 0, 0, 1, '2019-06-11:06:29:59'),
(70, 'TNb70', '麻豆區興國路、興南路、仁愛路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=72&guid=550a04c3-21d8-4f4d-81eb-cf43f84e2183', '120.24827, 23.18321', '120.248270', '23.183210', 99, 0, 0, 1, '2019-06-11:06:30:09'),
(71, 'TNb71', '六甲區中山路、民族路、和平街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=74&guid=dc08389d-7e5c-42f5-bd4d-3d98afe2e1b1', '120.34370, 23.23274', '120.343700', '23.232740', 99, 0, 0, 1, '2019-06-11:06:30:21'),
(72, 'TNb72', '七股區臺61線、176線東側路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=75&guid=d6336da4-81d8-4803-8c1d-3385052e2da1', '120.09390, 23.15264', '120.093900', '23.152640', 99, 0, 0, 1, '2019-06-11:06:30:29'),
(73, 'TNb73', '佳里區南34線、南37線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=76&guid=0b6e40a7-2d66-461f-883c-45ca3f769efe', '120.16590, 23.12930', '120.165900', '23.129300', 51, 47, 1, 1, '2019-06-11:06:30:39'),
(74, 'TNb74', '佳里區南24線、南47線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=77&guid=ef4cfa32-a314-461c-8dea-bcd783bf048c', '120.19366, 23.18884', '120.193660', '23.188840', 99, 0, 0, 1, '2019-06-11:06:30:47'),
(75, 'TNb75', '西港區南34線、南41線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=78&guid=cec95235-22e8-466c-a7f2-7291e0134f63', '120.18010, 23.12763', '120.180100', '23.127630', 88, 10, 0, 1, '2019-06-11:06:30:54'),
(76, 'TNb76', '安定區178線、南132線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=79&guid=427b8b55-4690-4a38-9195-cf64f9af8aa9', '120.23526, 23.11494', '120.235260', '23.114940', 57, 0, 42, 1, '2019-06-11:06:30:56'),
(77, 'TNb77', '新市區臺1線、南138線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=80&guid=31d4ba3f-76c3-4ef4-9aed-37d7604c05a9', '120.30135, 23.07453', '120.301350', '23.074530', 57, 0, 42, 1, '2019-06-11:06:30:57'),
(78, 'TNb78', '新市區永新路、永華三街、永華二街、金華路1段口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=81&guid=83d01335-19d5-4e62-8d23-e71da92acf3e', '120.29500, 23.05924', '120.295000', '23.059240', 57, 0, 42, 1, '2019-06-11:06:30:57'),
(79, 'TNb79', '新市區臺1線、南177線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=82&guid=19656457-5ec8-4a86-b475-6e0b8a5620d2', '120.31306, 23.09626', '120.313060', '23.096260', 57, 0, 42, 1, '2019-06-11:06:30:58'),
(80, 'TNb80', '仁德區中正路1段、文賢路1段、文賢路2段口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=83&guid=890e3478-7d89-470b-8191-3321054a174d', '120.23596, 22.92304', '120.235960', '22.923040', 57, 0, 42, 1, '2019-06-11:06:31:03'),
(81, 'TNb81', '歸仁區武當路、歸仁八路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=85&guid=e2ff6c9c-ccf9-4363-8f86-bf668304cd52', '120.28209, 22.92792', '120.282090', '22.927920', 57, 0, 42, 1, '2019-06-11:06:31:03'),
(82, 'TNb82', '歸仁區忠孝北路、中正北路1段、大光街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=86&guid=96443ef4-94fe-46cc-b2a9-9a859ddb627f', '120.29579, 22.97444', '120.295790', '22.974440', 57, 0, 42, 1, '2019-06-11:06:31:04'),
(83, 'TNb83', '玉井區中山路、中正路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=87&guid=3a69af76-d87a-4225-8634-36d9407fe610', '120.46536, 23.12651', '120.465360', '23.126510', 57, 0, 42, 1, '2019-06-11:06:31:08'),
(84, 'TNb84', '永康區民族路、大安街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=88&guid=4f681c09-d589-4682-8ebb-fa2ad327a256', '120.26556, 23.00896', '120.265560', '23.008960', 57, 0, 42, 1, '2019-06-11:06:31:12'),
(85, 'TNb85', '永康區文化路、永二街、永二街245巷口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=89&guid=aa01c407-63f7-455d-8ed4-1335345a2920', '120.25229, 23.01591', '120.252290', '23.015910', 57, 0, 42, 1, '2019-06-11:06:31:12'),
(86, 'TNb86', '永康區永明街、國民路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=90&guid=a447b204-1071-4997-8b82-d0949eb9ce47', '120.26239, 23.02504', '120.262390', '23.025040', 57, 0, 42, 1, '2019-06-11:06:31:15'),
(87, 'TNb87', '永康區北興路、大灣路40巷口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=91&guid=2237e6ea-252d-493c-9427-97a56cdf5467', '120.27094, 23.01325', '120.270940', '23.013250', 57, 0, 42, 1, '2019-06-11:06:31:16'),
(88, 'TNb88', '永康區大灣路、大灣三街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=92&guid=8e9b2f78-a953-46fa-89bc-b340ed7b9a84', '120.26628, 23.00469', '120.266280', '23.004690', 57, 0, 42, 1, '2019-06-11:06:31:17'),
(89, 'TNb89', '永康區永大路3段、竹南街、永大路3段469巷、八德街140巷口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=93&guid=804c95f5-4d38-4a35-8fb9-bcb6560a2e2b', '120.25815, 23.04012', '120.258150', '23.040120', 57, 0, 42, 1, '2019-06-11:06:31:17'),
(90, 'TNb90', '東區小東路、前鋒路口 舊網路移機', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=94&guid=5020f1b7-caf7-4598-a9ac-b4ee3bea3ee2', '120.21366, 23.00184', '120.213660', '23.001840', 57, 0, 42, 1, '2019-06-11:06:31:18'),
(91, 'TNb91', '安平區安平路、安北路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=95&guid=b082a0b0-e714-48c7-8db6-67aff0ae72a4', '120.16807, 22.99934', '120.168070', '22.999340', 57, 0, 42, 1, '2019-06-11:06:31:19');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `cctv_tainan_p`
--
ALTER TABLE `cctv_tainan_p`
  ADD PRIMARY KEY (`aid`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `cctv_tainan_p`
--
ALTER TABLE `cctv_tainan_p`
  MODIFY `aid` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
