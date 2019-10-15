-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2019 年 06 月 25 日 08:15
-- 伺服器版本： 10.1.40-MariaDB
-- PHP 版本： 7.3.5

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
-- 資料表結構 `cctv_nantou`
--

CREATE TABLE `cctv_nantou` (
  `aid` int(4) UNSIGNED NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `normal` int(11) NOT NULL,
  `floods` int(11) NOT NULL,
  `unknow` int(11) NOT NULL,
  `realtime` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `cctv_nantou`
--

INSERT INTO `cctv_nantou` (`aid`, `id`, `address`, `lon`, `lat`, `url`, `normal`, `floods`, `unknow`, `realtime`) VALUES
(0, '1', '集山路三段與大明路', '120.691724', '23.76074', 'http://117.56.98.67/172017024128?cache=1f613c94bb', 0, 0, 0, ''),
(2, '3', '草屯鎮虎山路口-育英路口', '120.68592', '23.97663', 'http://117.56.98.67/172017002128?cache=19b225079c', 0, 0, 0, ''),
(3, '4', '草屯鎮虎山路口–富林路口', '120.687148', '23.968653', 'http://117.56.98.67/172017003128?cache=e81532ecab', 0, 0, 0, ''),
(5, '6', '彰南路與董門路-南雅街', '120.701905', '23.839281', 'http://117.56.98.67/172017023128?cache=d9d705eee7', 0, 0, 0, ''),
(6, '7', '彰南路與山腳巷-名松路', '120.699567', '23.842569', 'http://117.56.98.67/172017022128?cache=015dc02984', 0, 0, 0, ''),
(7, '8', '太平路與省府路往草屯', '120.68069', '23.95558', 'http://117.56.98.67/172017015128?cache=718f8e6d33', 0, 0, 0, ''),
(8, '9', '太平路與中興路', '120.679343', '23.97445', 'http://117.56.98.67/172017021128?cache=f8bc36cc1e', 0, 0, 0, ''),
(9, '10', '大明路與前山路', '120.6835', '23.757475', 'http://117.56.98.67/172017025128?cache=af9b6c9ac9', 0, 0, 0, ''),
(10, '11', '南投縣鹿谷鄉縣151線與線131線路口(往竹山方向)', '120.73595', '23.76872', 'http://117.56.98.67/172017013128?cache=23811f5714', 0, 0, 0, ''),
(11, '12', '南投縣魚池鄉魚池街643號', '120.93324', '23.89986', 'http://117.56.98.67/172017005128?cache=d8aeb1496b', 0, 0, 0, ''),
(12, '13', '南投縣魚池鄉頭社村和平巷145號', '120.89624', '23.83372', 'http://117.56.98.67/172017009128?cache=de5e8d5d81', 0, 0, 0, ''),
(13, '14', '南投縣魚池鄉登武村統貴巷3號水里枝46', '120.887915', '23.823976', 'http://117.56.98.67/172017010128?cache=cc920e20ee', 0, 0, 0, ''),
(14, '15', '南投縣魚池鄉水社村中山路65號', '120.914982', '23.866048', 'http://117.56.98.67/172017006128?cache=3d9b14aec1', 0, 0, 0, ''),
(15, '16', '南投縣魚池鄉日月村中正路288號(德化派出所)', '120.93227', '23.84704', 'http://117.56.98.67/172017008128?cache=d5028c7aff', 0, 0, 0, ''),
(16, '17', '南投縣魚池鄉日月村中正路101號(青年活動中心入口)', '120.93611', '23.85133', 'http://117.56.98.67/172017007128?cache=e09dbb0765', 0, 0, 0, ''),
(17, '18', '南投縣水里鄉集里路(台21線)頂崁巷(台16線)路口', '120.86861', '23.79441', 'http://117.56.98.67/172017011128?cache=34ceaf4cd7', 0, 0, 0, ''),
(18, '19', '南投縣水里鄉新山橋(台21線)80K~81K前閃黃燈號誌燈桿', '120.86545', '23.76976', 'http://117.56.98.67/172017012128?cache=d79e8938d0', 0, 0, 0, ''),
(19, '20', '南投縣埔里鎮中山路四段72號', '120.936656', '23.965415', 'http://117.56.98.67/172017004128?cache=ed63f421ed', 0, 0, 0, ''),
(20, '21', '南崗三路與中華路', '120.66577', '23.93429', 'http://117.56.98.67/172017016128?cache=8da1c62248', 0, 0, 0, ''),
(21, '22', '南崗一路與中興路往南投市', '120.685328', '23.899627', 'http://117.56.98.67/172017017128?cache=8a07fefbc3', 0, 0, 0, ''),
(22, '23', '中正路一段201號前紅綠燈桿', '120.7582', '23.7404', 'http://117.56.98.67/172017019128?cache=22a6f6df87', 0, 0, 0, ''),
(23, '24', '中正路82號前紅綠燈桿', '120.973628', '23.957173', 'http://117.56.98.67/172017018128?cache=a99a29fd83', 0, 0, 0, ''),
(24, '25', 'CCTV-32', '120.778848', '23.718888', 'http://221.120.49.33/snap?cache=fc62c711a0', 0, 0, 0, ''),
(25, '26', 'CCTV-31', '120.760297', '23.736717', 'http://221.120.49.254/snap?cache=f245ea5baa', 0, 0, 0, ''),
(26, '27', 'CCTV-30', '120.71476', '23.766932', 'http://221.120.49.34/snap?cache=92ae7f937d', 0, 0, 0, '');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `cctv_nantou`
--
ALTER TABLE `cctv_nantou`
  ADD UNIQUE KEY `aid` (`aid`),
  ADD KEY `aid_2` (`aid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
