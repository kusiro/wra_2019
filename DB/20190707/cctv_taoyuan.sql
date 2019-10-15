-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2019 年 07 月 07 日 15:09
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
-- 資料表結構 `cctv_taoyuan`
--

CREATE TABLE `cctv_taoyuan` (
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
-- 資料表的匯出資料 `cctv_taoyuan`
--

INSERT INTO `cctv_taoyuan` (`aid`, `id`, `address`, `url`, `xy`, `lon`, `lat`, `normal`, `floods`, `unknow`, `color_num`, `realtime`) VALUES
(1, 'TY1', '大園區中正東路與民生南路', 'http://61.60.10.121/camera104?1=1rand=1375.1935387918713', '121.2034 25.0623', '121.203400', '25.062300', 80, 19, 0, 1, '2019-06-11:06:21:31'),
(2, 'TY2', '大園區中正東路埔心街', 'http://61.60.10.121/camera144?1=1rand=8293.233707090281', '121.2223 25.0547', '121.222300', '25.054700', 51, 38, 9, 1, '2019-06-11:06:21:34'),
(4, 'TY4', '蘆竹區南青路(台31)大竹路', 'http://61.60.10.121/camera146?1=1rand=507.1324075034798', '121.2420 25.0395', '121.242000', '25.039500', 8, 36, 55, 3, '2019-06-11:06:21:35'),
(5, 'TY5', '大園區中正東路 南青路(下匝道)', 'http://61.60.10.121/camera127?1=1rand=8974.289157446012', '121.2304 25.0283', '121.230400', '25.028300', 2, 60, 36, 2, '2019-06-11:06:21:36'),
(7, 'TY7', '蘆竹區南崁路中正路口', 'http://61.60.10.121/camera97?1=1rand=9671.51466853854', '121.2901 25.0505', '121.290100', '25.050500', 3, 96, 0, 2, '2019-06-11:06:21:37'),
(8, 'TY8', '蘆竹區南崁路忠孝東路', 'http://61.60.10.121/camera98?1=1rand=10620.65950365226', '121.2959 25.0455', '121.295900', '25.045500', 5, 84, 9, 2, '2019-06-11:06:21:38'),
(9, 'TY9', '蘆竹區中正路南國新南路', 'http://61.60.10.121/camera1?1=1rand=8223.19233653685', '121.2958 25.0409', '121.295800', '25.040900', 95, 3, 0, 1, '2019-06-11:06:21:38'),
(10, 'TY10', '桃園區經國路與新南路', 'http://61.60.10.121/camera126?1=1rand=86.85916525911486', '121.3010 25.0342', '121.301000', '25.034200', 0, 99, 0, 2, '2019-06-11:06:21:40'),
(12, 'TY12', '桃園區莊敬路經國路口', 'http://61.60.10.121/camera59?1=1rand=1945.1304263876946', '121.3015 25.0258', '121.301500', '25.025800', 99, 0, 0, 1, '2019-06-11:06:21:46'),
(13, 'TY13', '桃園區莊敬路中正路口', 'http://61.60.10.121/camera60?1=1rand=6484.238240319058', '121.2952 25.0231', '121.295200', '25.023100', 2, 96, 0, 2, '2019-06-11:06:21:47'),
(14, 'TY14', '桃園區莊敬路富國路口', 'http://61.60.10.121/camera61?1=1rand=4992.526434207339', '121.2839 25.0186', '121.283900', '25.018600', 83, 16, 0, 1, '2019-06-11:06:21:47'),
(15, 'TY15', '桃園區春日路南平路口', 'http://61.60.10.121/camera129?1=1rand=1127.5236147703704', '121.3077 25.0216', '121.307700', '25.021600', 98, 0, 1, 1, '2019-06-11:06:21:48'),
(16, 'TY16', '桃園區經國路南平路口', 'http://61.60.10.121/camera66?1=1rand=2212.930598205761', '121.3039 25.0204', '121.303900', '25.020400', 0, 0, 99, 3, '2019-06-11:06:21:49'),
(17, 'TY17', '桃園區中正路南平路口', 'http://61.60.10.121/camera47?1=1rand=7626.435511260504', '121.2977 25.0179', '121.297700', '25.017900', 89, 0, 10, 1, '2019-06-11:06:21:50'),
(18, 'TY18', '桃園區大有路大興路口', 'http://61.60.10.121/camera130?1=1rand=1032.4693102156716', '121.3165 25.0167', '121.316500', '25.016700', 99, 0, 0, 1, '2019-06-11:06:21:50'),
(20, 'TY21', '桃園區大興西路經國路', 'http://61.60.10.121/camera18?1=1rand=1063.1074764571285', '121.3065 25.0150', '121.306500', '25.015000', 99, 0, 0, 1, '2019-06-11:06:21:52'),
(21, 'TY21', '桃園區大興西路經國路', 'http://61.60.10.121/camera2?1=1rand=7584.274749542058', '121.3063 25.0151', '121.306300', '25.015100', 99, 0, 0, 1, '2019-06-11:06:21:52'),
(22, 'TY22', '桃園區大興西路中正路', 'http://61.60.10.121/camera23?1=1rand=6331.110185770702', '121.3004 25.0124', '121.300400', '25.012400', 0, 0, 99, 3, '2019-06-11:06:21:53'),
(25, 'TY24', '桃園區大興西路中埔二街', 'http://61.60.10.121/camera24?1=1rand=10624.489117125639', '121.2966 25.0104', '121.296600', '25.010400', 95, 1, 3, 1, '2019-06-11:06:21:54'),
(26, 'TY26', '桃園區大興西路永安路', 'http://61.60.10.121/camera25?1=1rand=4569.053856739329', '121.2925 25.0070', '121.292500', '25.007000', 92, 7, 0, 1, '2019-06-11:06:21:56'),
(27, 'TY26', '桃園區大興西路永安路', 'http://61.60.10.121/camera20?1=1rand=1035.2290141922085', '121.2925 25.0069', '121.292500', '25.006900', 92, 7, 0, 1, '2019-06-11:06:21:56'),
(28, 'TY27', '桃園區永安路與大興西路', 'http://61.60.10.121/camera116?1=1rand=7951.159457547751', '121.2923 25.0069', '121.292300', '25.006900', 46, 0, 53, 3, '2019-06-11:06:21:58'),
(29, 'TY29', '桃園區大興西路國際路', 'http://61.60.10.121/camera26?1=1rand=1242.9699747484185', '121.2868 25.0020', '121.286800', '25.002000', 0, 99, 0, 2, '2019-06-11:06:21:59'),
(30, 'TY29', '桃園區大興西路國際路', 'http://61.60.10.121/camera22?1=1rand=7497.20867896315', '121.2867 25.0021', '121.286700', '25.002100', 0, 99, 0, 2, '2019-06-11:06:21:59'),
(31, 'TY30', '桃園區大興西路二段與國際路二段旁路側', 'http://61.60.10.121/camera109?1=1rand=8036.4451829070795', '121.2867 25.0022', '121.286700', '25.002200', 10, 86, 3, 2, '2019-06-11:06:22:00'),
(33, 'TY32', '桃園區春日路經國路口', 'http://61.60.10.121/camera54?1=1rand=5485.497459546678', '121.3112 25.0089', '121.311200', '25.008900', 47, 28, 23, 1, '2019-06-11:06:22:05'),
(34, 'TY33', '桃園區春日路民光東路', 'http://61.60.10.121/camera3?1=1rand=9245.674012495016', '121.3121 25.0061', '121.312100', '25.006100', 7, 92, 0, 2, '2019-06-11:06:22:05'),
(35, 'TY34', '桃園區三民路與中正路口', 'http://61.60.10.121/camera36?1=1rand=109.82843799922182', '121.3085 24.9988', '121.308500', '24.998800', 12, 87, 0, 2, '2019-06-11:06:22:06'),
(36, 'TY35', '桃園區永安路三民路口', 'http://61.60.10.121/camera53?1=1rand=3984.369447923205', '121.3064 24.9969', '121.306400', '24.996900', 47, 50, 1, 2, '2019-06-11:06:22:06'),
(37, 'TY36', '桃園區文中路國際路口', 'http://61.60.10.121/camera51?1=1rand=7884.402871190624', '121.2877 24.9959', '121.287700', '24.995900', 97, 1, 1, 1, '2019-06-11:06:22:07'),
(38, 'TY37', '桃園區大興西路三段與文中路旁路側', 'http://61.60.10.121/camera110?1=1rand=9102.498493811921', '121.2781 24.9937', '121.278100', '24.993700', 1, 0, 98, 3, '2019-06-11:06:22:07'),
(39, 'TY38', '桃園區文中路與龍安街口', 'http://61.60.10.121/camera50?1=1rand=4600.673526850729', '121.2780 24.9937', '121.278000', '24.993700', 20, 79, 0, 2, '2019-06-11:06:22:08'),
(41, 'TY40', '沒有站名(桃園區中山東路春日路口)', 'http://61.60.10.121/camera56?1=1rand=6901.172752357914', '121.3158 24.9963', '121.315800', '24.996300', 1, 12, 85, 3, '2019-06-11:06:22:09'),
(42, 'TY41', '桃園區中山路中正路(往北照中正路)', 'http://61.60.10.121/camera125?1=1rand=7978.004238240725', '121.3122 24.9947', '121.312200', '24.994700', 90, 9, 0, 1, '2019-06-11:06:22:10'),
(43, 'TY42', '桃園區中山路中正路口', 'http://61.60.10.121/camera42?1=1rand=10442.184597584685', '121.3111 24.9946', '121.311100', '24.994600', 1, 97, 1, 2, '2019-06-11:06:22:10'),
(44, 'TY43', '桃園區中山路民族路口', 'http://61.60.10.121/camera46?1=1rand=9417.381145904514', '121.3086 24.9932', '121.308600', '24.993200', 64, 0, 35, 1, '2019-06-11:06:22:12'),
(45, 'TY44', '桃園區中山路三民路口', 'http://61.60.10.121/camera41?1=1rand=779.9254527450486', '121.3059 24.9925', '121.305900', '24.992500', 92, 1, 6, 1, '2019-06-11:06:22:12'),
(46, 'TY45', '桃園區中山路正光街口', 'http://61.60.10.121/camera45?1=1rand=10980.309457994925', '121.2949 24.9910', '121.294900', '24.991000', 41, 58, 0, 2, '2019-06-11:06:22:13'),
(47, 'TY46', '桃園區中山路國際路口', 'http://61.60.10.121/camera39?1=1rand=5834.912325307319', '121.2887 24.9899', '121.288700', '24.989900', 61, 35, 2, 1, '2019-06-11:06:22:14'),
(48, 'TY47', '桃園區中山路與國際路', 'http://61.60.10.121/camera115?1=1rand=1128.4461971356025', '121.2886 24.9898', '121.288600', '24.989800', 63, 0, 35, 1, '2019-06-11:06:22:14'),
(49, 'TY48', '桃園區中山路龍安街口', 'http://61.60.10.121/camera44?1=1rand=7768.24333616251', '121.2822 24.9868', '121.282200', '24.986800', 0, 74, 25, 2, '2019-06-11:06:22:15'),
(50, 'TY49', '桃園區春日路成功路口', 'http://61.60.10.121/camera57?1=1rand=6286.706119352194', '121.3166 24.9941', '121.316600', '24.994100', 3, 0, 96, 3, '2019-06-11:06:22:15'),
(51, 'TY50', '桃園區復興路與春日路口', 'http://61.60.10.121/camera63?1=1rand=9099.612822837515', '121.3176 24.9899', '121.317600', '24.989900', 59, 5, 34, 1, '2019-06-11:06:22:16'),
(52, 'TY51', '桃園區民族路復興路口', 'http://61.60.10.121/camera52?1=1rand=10265.464983880678', '121.3101 24.9895', '121.310100', '24.989500', 0, 59, 40, 2, '2019-06-11:06:22:16'),
(53, 'TY52', '桃園區復興路南華路', 'http://61.60.10.121/camera6?1=1rand=1567.9052304057648', '121.3087 24.9891', '121.308700', '24.989100', 19, 74, 6, 2, '2019-06-11:06:22:17'),
(54, 'TY53', '桃園區復興路三民路口', 'http://61.60.10.121/camera64?1=1rand=10198.130630562411', '121.3070 24.9891', '121.307000', '24.989100', 1, 90, 7, 2, '2019-06-11:06:22:18'),
(55, 'TY54', '桃園區桃鶯路建國路口', 'http://61.60.10.121/camera58?1=1rand=217.43258516352614', '121.3180 24.9860', '121.318000', '24.986000', 0, 1, 98, 3, '2019-06-11:06:22:20'),
(57, 'TY56', '桃園區介壽路三民路', 'http://61.60.10.121/camera7?1=1rand=8547.651847601299', '121.3076 24.9820', '121.307600', '24.982000', 2, 97, 0, 2, '2019-06-11:06:22:21'),
(58, 'TY57', '龜山區萬壽路與山鶯路', 'http://61.60.10.121/camera117?1=1rand=7888.505921690478', '121.3225 24.9920', '121.322500', '24.992000', 1, 98, 0, 2, '2019-06-11:06:22:22'),
(59, 'TY58', '龜山區三民路萬壽路口', 'http://61.60.10.121/camera93?1=1rand=1618.11370439823', '121.3254 24.9927', '121.325400', '24.992700', 3, 96, 0, 2, '2019-06-11:06:22:23'),
(60, 'TY59', '龜山區萬壽路二段與自強西路口(縣105)', 'http://61.60.10.121/camera96?1=1rand=1672.834860711344', '121.3324 24.9935', '121.332400', '24.993500', 10, 1, 88, 3, '2019-06-11:06:22:23'),
(61, 'TY60', '龜山區長壽路與忠義路', 'http://61.60.10.121/camera123?1=1rand=778.218438559877', '121.3438 25.0018', '121.343800', '25.001800', 51, 39, 9, 1, '2019-06-11:06:22:24'),
(62, 'TY61', '龜山區萬壽路二段與東萬壽路口', 'http://61.60.10.121/camera94?1=1rand=2577.945807573754', '121.3620 25.0019', '121.362000', '25.001900', 15, 82, 1, 2, '2019-06-11:06:22:25'),
(63, 'TY62', '龜山區萬壽路一段與中正路', 'http://61.60.10.121/camera122?1=1rand=1111.7976175407118', '121.4084 25.0189', '121.408400', '25.018900', 96, 0, 3, 1, '2019-06-11:06:22:27'),
(64, 'TY63', '八德區福德一路國二往西匝道口', 'http://61.60.10.121/camera82?1=1rand=4830.247018438996', '121.3260 24.9630', '121.326000', '24.963000', 0, 0, 99, 3, '2019-06-11:06:22:28'),
(65, 'TY64', '八德區和平路與福德一街', 'http://61.60.10.121/camera81?1=1rand=2784.8101226768363', '121.3199 24.9600', '121.319900', '24.960000', 1, 98, 0, 2, '2019-06-11:06:22:29'),
(66, 'TY65', '八德區介壽路建國路口', 'http://61.60.10.121/camera79?1=1rand=2881.2086486586027', '121.2992 24.9576', '121.299200', '24.957600', 95, 3, 0, 1, '2019-06-11:06:22:29'),
(68, 'TY67', '中壢區中華路興仁路口', 'http://61.60.10.121/camera67?1=1rand=10076.628628134373', '121.2600 24.9735', '121.260000', '24.973500', 31, 0, 67, 3, '2019-06-11:06:22:31'),
(69, 'TY68', '中壢區中華路自強一路口', 'http://61.60.10.121/camera69?1=1rand=4148.965463275254', '121.2444 24.9671', '121.244400', '24.967100', 93, 6, 0, 1, '2019-06-11:06:22:31'),
(70, 'TY69', '中壢區普忠路中華路口', 'http://61.60.10.121/camera133?1=1rand=4062.7430833635744', '121.2412 24.9662', '121.241200', '24.966200', 0, 0, 99, 3, '2019-06-11:06:22:32'),
(71, 'TY70', '中壢區中華路中園路口', 'http://61.60.10.121/camera68?1=1rand=9839.776683991506', '121.2379 24.9648', '121.237900', '24.964800', 0, 0, 99, 3, '2019-06-11:06:22:34'),
(72, 'TY71', '中壢區中華路育樂街', 'http://61.60.10.121/camera8?1=1rand=7818.443973902767', '121.2353 24.9640', '121.235300', '24.964000', 77, 4, 18, 1, '2019-06-11:06:22:34'),
(73, 'TY72', '中壢區環北路延平路', 'http://61.60.10.121/camera27?1=1rand=8891.631304808694', '121.2299 24.9632', '121.229900', '24.963200', 99, 0, 0, 1, '2019-06-11:06:22:35'),
(74, 'TY73', '中壢區環北路慈惠三街', 'http://61.60.10.121/camera29?1=1rand=763.6868557884053', '121.2258 24.9657', '121.225800', '24.965700', 85, 0, 13, 1, '2019-06-11:06:22:35'),
(75, 'TY74', '中壢區環北路新生路', 'http://61.60.10.121/camera30?1=1rand=5544.040339359928', '121.2234 24.9660', '121.223400', '24.966000', 0, 0, 99, 3, '2019-06-11:06:22:36'),
(77, 'TY76', '中壢區環西路民權路', 'http://61.60.10.121/camera33?1=1rand=298.9049078429533', '121.2166 24.9658', '121.216600', '24.965800', 99, 0, 0, 1, '2019-06-11:06:22:38'),
(78, 'TY77', '中壢區環西路志廣路', 'http://61.60.10.121/camera34?1=1rand=9011.84972573152', '121.2074 24.9608', '121.207400', '24.960800', 43, 0, 56, 3, '2019-06-11:06:22:39'),
(79, 'TY78', '中壢區環西路與民族路口', 'http://61.60.10.121/camera78?1=1rand=7970.521550550476', '121.2070 24.9574', '121.207000', '24.957400', 0, 96, 2, 2, '2019-06-11:06:22:40'),
(80, 'TY79', '中壢區民族路廣德街', 'http://61.60.10.121/camera11?1=1rand=5444.914752312442', '121.2050 24.9572', '121.205000', '24.957200', 99, 0, 0, 1, '2019-06-11:06:22:42'),
(81, 'TY80', '中壢區東園路(吉林路口)', 'http://61.60.10.121/camera131?1=1rand=4290.271950823536', '121.2399 24.9792', '121.239900', '24.979200', 50, 0, 49, 1, '2019-06-11:06:22:42'),
(82, 'TY81', '中壢區中園路吉林路', 'http://61.60.10.121/camera9?1=1rand=10670.255182611576', '121.2361 24.9813', '121.236100', '24.981300', 0, 99, 0, 2, '2019-06-11:06:22:43'),
(83, 'TY82', '中壢區南園二路與中福路口前', 'http://61.60.10.121/camera106?1=1rand=923.7868918958745', '121.2286 24.9716', '121.228600', '24.971600', 91, 6, 1, 1, '2019-06-11:06:22:43'),
(84, 'TY83', '中壢區普忠路環中路口', 'http://61.60.10.121/camera132?1=1rand=1656.3674332988921', '121.2489 24.9577', '121.248900', '24.957700', 3, 0, 96, 3, '2019-06-11:06:22:44'),
(85, 'TY84', '中壢區環中東路中山東路', 'http://61.60.10.121/camera10?1=1rand=10656.1704752747', '121.2404 24.9515', '121.240400', '24.951500', 53, 46, 0, 1, '2019-06-11:06:22:44'),
(86, 'TY85', '中壢區中山東路中北路口', 'http://61.60.10.121/camera74?1=1rand=6391.053542023887', '121.2356 24.9556', '121.235600', '24.955600', 5, 0, 94, 3, '2019-06-11:06:22:48'),
(87, 'TY86', '平鎮區環南路金陵路口', 'http://61.60.10.121/camera77?1=1rand=643.1401919015187', '121.2230 24.9407', '121.223000', '24.940700', 24, 1, 73, 3, '2019-06-11:06:22:50'),
(88, 'TY87', '平鎮區環南路德育路', 'http://61.60.10.121/camera12?1=1rand=3837.6714693797007', '121.2186 24.9402', '121.218600', '24.940200', 92, 7, 0, 1, '2019-06-11:06:22:51'),
(89, 'TY88', '平鎮區中豐路環南路口', 'http://61.60.10.121/camera70?1=1rand=5812.01618917889', '121.2165 24.9403', '121.216500', '24.940300', 0, 99, 0, 2, '2019-06-11:06:22:51'),
(90, 'TY89', '平鎮區中豐路與環南路', 'http://61.60.10.121/camera119?1=1rand=5218.234966343269', '121.2163 24.9403', '121.216300', '24.940300', 0, 99, 0, 2, '2019-06-11:06:22:52'),
(91, 'TY90', '平鎮區環南路延平路口', 'http://61.60.10.121/camera73?1=1rand=3133.0799978009395', '121.2085 24.9450', '121.208500', '24.945000', 1, 98, 0, 2, '2019-06-11:06:22:52'),
(92, 'TY91', '平鎮區金陵路台66線口', 'http://61.60.10.121/camera71?1=1rand=3431.2501618715746', '121.2309 24.9066', '121.230900', '24.906600', 7, 57, 34, 2, '2019-06-11:06:22:53'),
(93, 'TY92', '平鎮區中豐路台66交流道路口', 'http://61.60.10.121/camera13?1=1rand=10689.189831028627', '121.2133 24.9279', '121.213300', '24.927900', 23, 54, 21, 2, '2019-06-11:06:22:54'),
(94, 'TY93', '平鎮區延平路台66交流道南側出口匝道路口', 'http://61.60.10.121/camera76?1=1rand=8550.877549358634', '121.1981 24.9322', '121.198100', '24.932200', 96, 3, 0, 1, '2019-06-11:06:22:54'),
(95, 'TY94', '平鎮區延平路台66交流道北側出口匝道口', 'http://61.60.10.121/camera75?1=1rand=7447.488923740638', '121.1977 24.9319', '121.197700', '24.931900', 86, 0, 13, 1, '2019-06-11:06:22:55'),
(96, 'TY95', '平鎮區中豐南平路口', 'http://61.60.10.121/camera134?1=1rand=10144.8043737294', '121.2113 24.9199', '121.211300', '24.919900', 0, 0, 99, 3, '2019-06-11:06:22:55'),
(97, 'TY96', '平鎮區南平陸橋南路口', 'http://61.60.10.121/camera135?1=1rand=642.6922375388151', '121.1875 24.9234', '121.187500', '24.923400', 3, 96, 0, 2, '2019-06-11:06:22:56'),
(99, 'TY98', '楊梅區中山北路環東路口', 'http://61.60.10.121/camera90?1=1rand=10098.291738776265', '121.1575 24.9085', '121.157500', '24.908500', 80, 18, 1, 1, '2019-06-11:06:22:57'),
(100, 'TY99', '楊梅區大成路中山路口', 'http://61.60.10.121/camera91?1=1rand=1482.0360155186927', '121.1456 24.9069', '121.145600', '24.906900', 22, 40, 36, 2, '2019-06-11:06:22:58'),
(101, 'TY100', '楊梅區楊新路大成路口', 'http://61.60.10.121/camera136?1=1rand=4454.494418182862', '121.1456 24.9135', '121.145600', '24.913500', 1, 0, 98, 3, '2019-06-11:06:22:59'),
(103, 'TY102', '大溪區介壽路員林路', 'http://61.60.10.121/camera14?1=1rand=8604.103116958617', '121.2845 24.8985', '121.284500', '24.898500', 64, 32, 2, 1, '2019-06-11:06:23:00'),
(104, 'TY103', '大溪區員林路與仁和路口', 'http://61.60.10.121/camera86?1=1rand=8645.800753147638', '121.2790 24.8972', '121.279000', '24.897200', 7, 58, 33, 2, '2019-06-11:06:23:02'),
(105, 'TY104', '大溪區台4線38.5K位置', 'http://61.60.10.121/camera15?1=1rand=3497.16342846261', '121.2798 24.8943', '121.279800', '24.894300', 98, 1, 0, 1, '2019-06-11:06:23:10'),
(106, 'TY105', '大溪區武嶺橋西端', 'http://61.60.10.121/camera118?1=1rand=2662.7607102572247', '121.2789 24.8918', '121.278900', '24.891800', 99, 0, 0, 1, '2019-06-11:06:23:12'),
(107, 'TY106', '大溪區康莊路武嶺橋口', 'http://61.60.10.121/camera83?1=1rand=2462.552715480656', '121.2784 24.8919', '121.278400', '24.891900', 20, 59, 20, 2, '2019-06-11:06:23:13'),
(108, 'TY107', '大溪區112甲臺66線', 'http://61.60.10.121/camera17?1=1rand=5213.271559067448', '121.2624 24.8975', '121.262400', '24.897500', 0, 99, 0, 2, '2019-06-11:06:23:16'),
(109, 'TY108', '大溪區員林路連絡道', 'http://61.60.10.121/camera16?1=1rand=9482.98585172855', '121.2703 24.8892', '121.270300', '24.889200', 95, 4, 0, 1, '2019-06-11:06:23:17'),
(110, 'TY109', '大溪區員林路三段與石園路', 'http://61.60.10.121/camera112?1=1rand=6912.983660727049', '121.2657 24.8821', '121.265700', '24.882100', 53, 45, 0, 1, '2019-06-11:06:23:17'),
(111, 'TY110', '大溪區信義路中華路口', 'http://61.60.10.121/camera85?1=1rand=4938.013705744824', '121.2928 24.8853', '121.292800', '24.885300', 0, 99, 0, 2, '2019-06-11:06:23:18'),
(112, 'TY111', '大溪區康莊路與信義路口', 'http://61.60.10.121/camera87?1=1rand=653.4228003991993', '121.2893 24.8846', '121.289300', '24.884600', 35, 0, 64, 3, '2019-06-11:06:23:18'),
(113, 'TY112', '大溪區慈湖路與復興路口', 'http://61.60.10.121/camera89?1=1rand=9679.553227734568', '121.2887 24.8809', '121.288700', '24.880900', 0, 0, 99, 3, '2019-06-11:06:23:19'),
(114, 'TY113', '大溪區復興路中華路口', 'http://61.60.10.121/camera88?1=1rand=5326.024690060512', '121.2928 24.8783', '121.292800', '24.878300', 1, 98, 0, 2, '2019-06-11:06:23:21'),
(115, 'TY114', '大溪區康莊路中華路口', 'http://61.60.10.121/camera84?1=1rand=1320.7056541257518', '121.2863 24.8734', '121.286300', '24.873400', 98, 0, 0, 1, '2019-06-11:06:23:23'),
(116, 'TY115', '大溪區台四康莊路、內柵路', 'http://61.60.10.121/camera102?1=1rand=1022.2283855483312', '121.2823 24.8607', '121.282300', '24.860700', 0, 1, 97, 3, '2019-06-11:06:23:25'),
(117, 'TY116', '大溪區台七慈康路', 'http://61.60.10.121/camera103?1=1rand=10086.584724262893', '121.2851 24.8494', '121.285100', '24.849400', 0, 0, 99, 3, '2019-06-11:06:23:25'),
(118, 'TY118', '龍潭區中興路與大昌路', 'http://61.60.10.121/camera105?1=1rand=10405.280016302713', '121.2207 24.8694', '121.220700', '24.869400', 0, 0, 99, 3, '2019-06-11:06:23:27'),
(119, 'TY118', '龍潭區中興路與大昌路', 'http://61.60.10.121/camera120?1=1rand=654.5119602106236', '121.2207 24.8693', '121.220700', '24.869300', 0, 0, 99, 3, '2019-06-11:06:23:27'),
(120, 'TY119', '龍潭區中豐路中山段與聖亭路', 'http://61.60.10.121/camera113?1=1rand=10633.982940294805', '121.2098 24.8651', '121.209800', '24.865100', 99, 0, 0, 1, '2019-06-11:06:23:27'),
(121, 'TY120', '龍潭區神龍路龍華路口', 'http://61.60.10.121/camera141?1=1rand=7274.483898371057', '121.2174 24.8573', '121.217400', '24.857300', 99, 0, 0, 1, '2019-06-11:06:23:29'),
(123, 'TY122', '大溪區台七懷德路', 'http://61.60.10.121/camera101?1=1rand=9761.087667449952', '121.3113 24.8257', '121.311300', '24.825700', 0, 99, 0, 2, '2019-06-11:06:23:31'),
(124, 'TY123', '復興區台七線與桃115線', 'http://61.60.10.121/camera124?1=1rand=8160.213990015327', '121.3677 24.8039', '121.367700', '24.803900', 97, 0, 2, 1, '2019-06-11:06:23:31');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `cctv_taoyuan`
--
ALTER TABLE `cctv_taoyuan`
  ADD PRIMARY KEY (`aid`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `cctv_taoyuan`
--
ALTER TABLE `cctv_taoyuan`
  MODIFY `aid` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
