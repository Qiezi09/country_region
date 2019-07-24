# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 192.168.8.110 (MySQL 5.6.10)
# Database: country_region
# Generation Time: 2019-07-24 01:17:37 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table states
# ------------------------------------------------------------

DROP TABLE IF EXISTS `states`;

CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso_code_2` varchar(100) NOT NULL,
  `cn_name` varchar(100) NOT NULL,
  `en_name` varchar(100) DEFAULT NULL,
  `country_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`cn_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;

INSERT INTO `states` (`id`, `iso_code_2`, `cn_name`, `en_name`, `country_id`)
VALUES
	(1,'SH','舍卜沃省','Shabwah',5),
	(2,'12','塞姆南省','Semnan Province',9),
	(3,'30','礼萨呼罗珊省','Razavi Khorasan',9),
	(4,'22','中央省','Markazi',9),
	(5,'NX','纳希切万自治共和国','Nakhichevan',12),
	(6,'24','曼德拉','Mandera District',17),
	(7,'TO','乔波省','Tshopo',18),
	(8,'MO','蒙加拉省','Mongala',18),
	(9,'TU','楚阿帕省','Tshuapa',18),
	(10,'TA','塔朱拉州','Tadjourah',19),
	(11,'OB','奧博克州','Obock',19),
	(12,'HM','上姆博穆省','Haut-Mbomou',21),
	(13,'MB','姆博穆省','Mbomou',21),
	(14,'VK','瓦卡加省','Vakaga',21),
	(15,'HK','上科托省','Haute-Kotto',21),
	(16,'UK','瓦卡省','Ouaka',21),
	(17,'BB','巴明吉-班戈兰省','Bamingui-Bangoran',21),
	(18,'BK','下科托省','Basse-Kotto',21),
	(19,'JA','南部省','South Governorate',26),
	(20,'15','穆哈拉格省','Muharraq',32),
	(21,'17','北方省','Northern',32),
	(22,'HA','海法区','Haifa',28),
	(23,'66','约兹加特省','Yozgat',34),
	(24,'31','哈塔伊省','Hatay',34),
	(25,'06','安卡拉省','Ankara',34),
	(26,'48','穆拉省','Muğla',34),
	(27,'65','凡城省','Van',34),
	(28,'64','乌沙克省','Uşak',34),
	(29,'45','马尼萨省','Manisa',34),
	(30,'62','通杰利省','Tunceli',34),
	(31,'33','梅尔辛省','Mersin',34),
	(32,'09','艾登省','Aydın',34),
	(33,'73','舍尔纳克省','Şırnak',34),
	(34,'43','屈塔希亚省','Kütahya',34),
	(35,'56','锡尔特省','Siirt',34),
	(36,'01','阿达纳省','Adana',34),
	(37,'42','科尼亚省','Konya',34),
	(38,'20','代尼兹利省','Denizli',34),
	(39,'04','阿勒省','Ağrı',34),
	(40,'27','加济安泰普省','Gaziantep',34),
	(41,'49','穆什省','Muş',34),
	(42,'47','马尔丁省','Mardin',34),
	(43,'38','开塞利省','Kayseri',34),
	(44,'07','安塔利亚省','Antalya',34),
	(45,'44','马拉蒂亚省','Malatya',34),
	(46,'17','恰纳卡莱省','Canakkale',34),
	(47,'40','克尔谢希尔省','Kırşehir',34),
	(48,'71','克勒克卡莱省','Kırıkkale',34),
	(49,'79','基利斯省','Kilis',34),
	(50,'70','卡拉曼省','Karaman',34),
	(51,'46','卡赫拉曼马拉什省','Kahramanmaraş',34),
	(52,'32','伊斯帕尔塔省','Isparta',34),
	(53,'76','厄德尔省','Iğdır',34),
	(54,'25','埃尔祖鲁姆省','Erzurum',34),
	(55,'10','巴勒克埃西尔省','Balıkesir',34),
	(56,'30','哈卡里省','Hakkâri',34),
	(57,'26','埃斯基谢希尔省','Eskişehir',34),
	(58,'24','埃尔津詹省','Erzincan',34),
	(59,'15','布尔杜尔省','Burdur',34),
	(60,'11','比莱吉克省','Bilecik',34),
	(61,'13','比特利斯省','Bitlis',34),
	(62,'12','宾格尔省','Bingöl',34),
	(63,'72','巴特曼省','Batman',34),
	(64,'68','阿克萨赖省','Aksaray',34),
	(65,'VEN','文茨皮尔斯','Ventspils',44),
	(66,'LPX','利耶帕亚','Liepaja',44),
	(67,'JEL','叶尔加瓦','Jelgava',44),
	(68,'DGV','陶格夫匹尔斯','Daugavpils',44),
	(69,'MOS','莫斯科州','Moscow Oblast',42),
	(70,'KO','科米共和国','Komi',42),
	(71,'MUR','摩爾曼斯克州','Murmansk',42),
	(72,'ULY','乌里扬诺夫斯克州','Ulyanovsk Oblast',42),
	(73,'CU','楚瓦什共和国','Chuvashia',42),
	(74,'DA','达吉斯坦共和国','Dagestan',42),
	(75,'KR','卡累利阿共和国','Karelia',42),
	(76,'BD','北博滕','Norrbotten',48),
	(77,'MM','姆茨赫塔-姆季阿涅季州','Mtskheta-Mtianeti',51),
	(78,'IM','伊梅列季州','Imereti',51),
	(79,'BR','布里切尼區','Briceni',53),
	(80,'18','新地区','Uusimaa',54),
	(81,'53','波尔塔瓦州','Poltavs\'ka Oblast\'',52),
	(82,'51','敖德萨州','Odesa',52),
	(83,'32','基辅州','Kyiv',52),
	(84,'65','赫尔松州','Khersons\'ka Oblast\'',52),
	(85,'BK','巴奇-基什孔州','Bács-Kiskun',57),
	(86,'34','伊斯坦布尔','Istanbul',34),
	(87,'61','特拉布宗省','Trabzon',34),
	(88,'41','科贾埃利省','Kocaeli',34),
	(89,'77','亚洛瓦省','Yalova',34),
	(90,'55','萨姆松省','Samsun',34),
	(91,'39','克尔克拉雷利省','Kırklareli',34),
	(92,'22','埃迪尔内省','Edirne',34),
	(93,'52','奥尔杜省','Ordu',34),
	(94,'37','卡斯塔莫努省','Kastamonu',34),
	(95,'59','泰基尔达省','Tekirdağ',34),
	(96,'19','乔鲁姆省','Çorum',34),
	(97,'57','锡诺普省','Sinop',34),
	(98,'54','萨卡里亚省','Sakarya',34),
	(99,'05','阿马西亚省','Amasya',34),
	(100,'14','博卢省','Bolu',34),
	(101,'28','吉雷松省','Giresun',34),
	(102,'18','昌克勒省','Çankırı',34),
	(103,'74','巴尔滕省','Bartın',34),
	(104,'08','阿尔特温省','Artvin',34),
	(105,'75','阿尔达汉省','Ardahan',34),
	(106,'LU','卢布林省','Lublin',61),
	(107,'PK','喀尔巴阡山省','Subcarpathian',61),
	(108,'MA','小波兰省','Lesser Poland',61),
	(109,'LD','罗兹省','Łódź Voivodeship',61),
	(110,'66','雷森区','Resen',58),
	(111,'19','戈斯蒂瓦尔','Gostivar',58),
	(112,'07','博西洛沃区','Bosilovo',58),
	(113,'05','博格丹奇区','Bogdanci',58),
	(114,'MOX','莫希科省','Moxico',10),
	(115,'G','大科摩罗岛','Grande Comore',69),
	(116,'GT','豪登省','Gauteng',77),
	(117,'LP','林波波省','Limpopo',77),
	(118,'T','太特省','Tete',78),
	(119,'N','楠普拉省','Nampula',78),
	(120,'K','塔巴-采卡區','Thaba-Tseka',72),
	(121,'TA','联邦直辖部落地区','Federally Administered Tribal Areas',80),
	(122,'SD','信德省','Sindh',80),
	(123,'JK','自由克什米爾','Azad Kashmir',80),
	(124,'SU','北苏门答腊省','North Sumatra',85),
	(125,'L','列巴普州','Lebap',14),
	(126,'02','吉打','Kedah',87),
	(127,'6','西北省','North Western Province',88),
	(128,'4','北部省','Northern Province',88),
	(129,'TN','泰米尔纳德邦','Tamil Nadu',83),
	(130,'AR','阿鲁纳恰尔邦','Arunachal Pradesh',83),
	(131,'UP','北方邦','Uttar Pradesh',83),
	(132,'HP','喜马偕尔邦','Himachal Pradesh',83),
	(133,'MH','马哈拉施特拉邦','Maharashtra',83),
	(134,'KA','卡纳塔克邦','Karnataka',83),
	(135,'HR','哈里亚纳邦','Haryana',83),
	(136,'WB','西孟加拉邦','West Bengal',83),
	(137,'TG','特伦甘纳邦','Telangana',83),
	(138,'GJ','古吉拉特邦','Gujarat',83),
	(139,'AP','安得拉邦','Andhra Pradesh',83),
	(140,'PY','本地治里','Union Territory of Puducherry',83),
	(141,'MP','中央邦','Madhya Pradesh',83),
	(142,'GA','果阿邦','Goa',83),
	(143,'KL','喀拉拉邦','Kerala',83),
	(144,'AS','阿萨姆邦','Assam',83),
	(145,'RJ','拉贾斯坦邦','Rajasthan',83),
	(146,'TR','特里普拉邦','Tripura',83),
	(147,'ML','梅加拉亚邦','Meghalaya',83),
	(148,'CT','恰蒂斯加尔邦','Chhattisgarh',83),
	(149,'MN','曼尼普尔邦','Manipur',83),
	(150,'PB','旁遮普邦','Punjab',83),
	(151,'BR','比哈尔邦','Bihar',83),
	(152,'SK','锡金','Sikkim',83),
	(153,'JH','贾坎德邦','Jharkhand',83),
	(154,'DN','达德拉-纳加尔哈维利','Dadra and Nagar Haveli',83),
	(155,'MZ','米佐拉姆邦','Mizoram',83),
	(156,'AN','安达曼-尼科巴群岛','Andaman and Nicobar',83),
	(157,'NL','那加兰邦','Nagaland',83),
	(158,'DD','达曼-第乌','Daman and Diu',83),
	(159,'CH','昌迪加尔','Chandigarh',83),
	(160,'XZ','西藏','Tibet',90),
	(161,'GS','甘肃','Gansu',90),
	(162,'YN','云南','Yunnan',90),
	(163,'QH','青海','Qinghai',90),
	(164,'XJ','新疆','Xinjiang',90),
	(165,'JS','江苏','Jiangsu',90),
	(166,'GZ','贵州','Guizhou',90),
	(167,'AH','安徽','Anhui',90),
	(168,'SG','胡志明市','Ho Chi Minh',101),
	(169,'JT','中爪哇省','Central Java',85),
	(170,'VI','維克克區','Viqueque',102),
	(171,'BA','巴厘岛','Bali',85),
	(172,'JI','东爪哇省','East Java',85),
	(173,'SA','北苏拉威西省','North Sulawesi',85),
	(174,'KI','東加里曼丹省','East Kalimantan',85),
	(175,'JB','西爪哇省','West Java',85),
	(176,'BT','万丹省','Banten',85),
	(177,'BB','邦加-勿里洞省','Bangka–Belitung Islands',85),
	(178,'KB','西加里曼丹省','West Kalimantan',85),
	(179,'KS','南加里曼丹省','South Kalimantan',85),
	(180,'SS','南苏门答腊省','South Sumatra',85),
	(181,'ST','中苏拉威西省','Central Sulawesi',85),
	(182,'TPE','台北市','Taipei City',104),
	(183,'TNN','台南市','Tainan',104),
	(184,'NWT','新北市','New Taipei',104),
	(185,'MIA','苗栗縣','Miaoli',104),
	(186,'KHH','高雄市','Kaohsiung',104),
	(187,'HSQ','新竹市','Hsinchu',104),
	(188,'KEE','基隆市','Keelung',104),
	(189,'06','西米沙鄢','Western Visayas',105),
	(190,'07','中米沙鄢','Central Visayas',105),
	(191,'10','北棉兰老','Northern Mindanao',105),
	(192,'02','卡加延河谷','Cagayan Valley',105),
	(193,'03','中央吕宋','Central Luzon',105),
	(194,'14','棉兰老穆斯林自治区','Autonomous Region in Muslim Mindanao',105),
	(195,'01','柔佛州','Johor',87),
	(196,'13','砂拉越','Sarawak',87),
	(197,'SD','山东','Shandong',90),
	(198,'SC','四川','Sichuan',90),
	(199,'HN','湖南','Hunan',90),
	(200,'HE','河北','Hebei',90),
	(201,'HA','河南','Henan',90),
	(202,'ZJ','浙江','Zhejiang',90),
	(203,'LN','辽宁','Liaoning',90),
	(204,'HB','湖北','Hubei',90),
	(205,'SX','山西','Shanxi',90),
	(206,'GD','广东','Guangdong',90),
	(207,'FJ','福建','Fujian',90),
	(208,'JX','江西','Jiangxi',90),
	(209,'GX','广西','Guangxi',90),
	(210,'NX','宁夏','Ningxia Hui Autonomous Region',90),
	(211,'SH','上海','Shanghai',90),
	(212,'SN','陕西','Shaanxi',90),
	(213,'NM','内蒙古','Inner Mongolia Autonomous Region',90),
	(214,'HI','海南','Hainan',90),
	(215,'BJ','北京','Beijing',90),
	(216,'TJ','天津','Tianjin',90),
	(217,'CQ','重庆','Chongqing',90),
	(218,'8','干丹省','Kandal',109),
	(219,'15','菩萨省','Pursat',109),
	(220,'1','班迭棉吉省','Banteay Meanchey',109),
	(221,'9','戈公省','Koh Kong',109),
	(222,'7','贡布省','Kampot',109),
	(223,'18','西哈努克市','Preah Sihanouk',109),
	(224,'4','磅清扬省','Kampong Chhnang',109),
	(225,'3','磅湛省','Kampong Cham',109),
	(226,'16','腊塔纳基里省','Ratanakiri',109),
	(227,'11','首尔特别市','Seoul',110),
	(228,'41','京畿道','Gyeonggi-do',110),
	(229,'26','釜山广域市','Busan',110),
	(230,'29','光州广域市','Gwangju',110),
	(231,'30','和歌山县','Wakayama',111),
	(232,'28','兵库县','Hyōgo',111),
	(233,'15','新潟县','Niigata',111),
	(234,'06','山形县','Yamagata',111),
	(235,'21','岐阜县','Gifu',111),
	(236,'40','福冈县','Fukuoka',111),
	(237,'25','滋贺县','Shiga',111),
	(238,'32','岛根县','Shimane',111),
	(239,'35','山口县','Yamaguchi',111),
	(240,'19','山梨县','Yamanashi',111),
	(241,'07','福岛县','Fukushima-ken',111),
	(242,'37','香川县','Kagawa',111),
	(243,'20','长野县','Nagano',111),
	(244,'YEV','犹太自治州','Jewish Autonomous Oblast',42),
	(245,'HL','黑龙江','Heilongjiang',90),
	(246,'JL','吉林','Jilin',90),
	(247,'01','北海道','Hokkaido',111),
	(248,'05','秋田县','Akita',111),
	(249,'03','岩手县','Iwate',111),
	(250,'ACT','澳大利亚首都领地','Australian Capital Territory',115),
	(251,'STL','南地大区','Southland',127),
	(252,'WGN','惠灵顿','Wellington',127),
	(253,'WTC','西岸大区','West Coast',127),
	(254,'NTL','北地大区','Northland',127),
	(255,'BOP','普伦蒂湾大区','Bay of Plenty',127),
	(256,'OTA','奥塔哥大区','Otago',127),
	(257,'MBH','马尔堡','Marlborough',127),
	(258,'GIS','吉斯伯恩大区','Gisborne',127),
	(259,'C','中央大区','Central',128),
	(260,'W','西部大区','Western',128),
	(261,'JU','朱夫拉省','Al Jufrah',6),
	(262,'ZG','济金绍尔区','Ziguinchor',130),
	(263,'DK','达喀尔区','Dakar',130),
	(264,'DB','久尔贝勒区','Diourbel',130),
	(265,'KL','考拉克区','Kaolack',130),
	(266,'8','盆地省','Cuvette',131),
	(267,'7','利夸拉省','Likouala',131),
	(268,'11','里斯本區','Lisbon',132),
	(269,'KL','奎卢省','Kwilu',18),
	(270,'C','中部区','Centrale',139),
	(271,'K','卡拉区','Kara',139),
	(272,'09','塔甘特省','Tagant',141),
	(273,'11','提里斯-宰穆爾省','Tiris Zemmour',141),
	(274,'05','卜拉克納省','Brakna',141),
	(275,'12','因希里省','Inchiri',141),
	(276,'LB','洛巴耶省','Lobaye',21),
	(277,'AC','瓦姆省','Ouham',21),
	(278,'AL','阿黎博里省','Alibori',142),
	(279,'DO','峽谷省','Donga',142),
	(280,'1','河口省','Estuaire',143),
	(281,'S','圣多美岛','São Tomé Island',145),
	(282,'P','普林西比岛','Principe',145),
	(283,'1','阿加德兹大区','Agadez',150),
	(284,'2','迪法大区','Diffa',150),
	(285,'EX','埃斯特雷马杜拉','Extremadura',155),
	(286,'CM','卡斯蒂利亚-拉曼恰','Castille-La Mancha',155),
	(287,'CN','加那利群岛','Canary Islands',155),
	(288,'82','西西里岛','Sicily',156),
	(289,'78','卡拉布里亚','Calabria',156),
	(290,'75','普利亚','Apulia',156),
	(291,'77','巴斯利卡塔','Basilicate',156),
	(292,'72','坎帕尼亚','Campania',156),
	(293,'85','西兰大区','Zealand',160),
	(294,'83','南丹麦大区','South Denmark',160),
	(295,'82','中日德兰大区','Central Jutland',160),
	(296,'ENG','英格兰','England',163),
	(297,'SCT','苏格兰','Scotland',163),
	(298,'JU','汝拉州','Jura',165),
	(299,'T','厄勒布鲁省','Örebro',48),
	(300,'O','西约塔兰省','Västra Götaland',48),
	(301,'X','耶夫勒堡省','Gävleborg',48),
	(302,'21','斯瓦尔巴群岛','Svalbard',49),
	(303,'NB','北布拉班特省','North Brabant',166),
	(304,'2','克恩顿州','Carinthia',159),
	(305,'1','布尔根兰州','Burgenland',159),
	(306,'8','福拉尔贝格州','Vorarlberg',159),
	(307,'BW','巴登-符腾堡','Baden-Württemberg Region',168),
	(308,'BY','巴伐利亚','Bavaria',168),
	(309,'RP','莱茵兰-普法尔茨','Rheinland-Pfalz',168),
	(310,'BB','勃兰登堡','Brandenburg',168),
	(311,'ST','萨克森-安哈尔特','Saxony-Anhalt',168),
	(312,'SH','石勒苏益格-荷尔斯泰因','Schleswig-Holstein',168),
	(313,'NI','下萨克森','Lower Saxony',168),
	(314,'BE','柏林','Land Berlin',168),
	(315,'M','芒斯特省','Munster',164),
	(316,'PDL','卢瓦尔河地区','Pays de la Loire',170),
	(317,'BRE','布列塔尼半岛','Brittany',170),
	(318,'PAC','普罗旺斯-阿尔卑斯-蓝色海岸','Provence-Alpes-Côte d\'Azur',170),
	(319,'02','卡尼略','Canillo',172),
	(320,'06','圣胡利娅-德洛里亚','Sant Julià de Loria',172),
	(321,'05','奥尔迪诺','Ordino',172),
	(322,'04','毛伦','Mauren',173),
	(323,'02','埃申','Eschen',173),
	(324,'ZA','佐洛州','Zala',57),
	(325,'VA','沃什州','Vas',57),
	(326,'20','中波希米亚州','Central Bohemia',177),
	(327,'31','南波希米亚州','Jihocesky kraj',177),
	(328,'DS','下西里西亚省','Lower Silesia',61),
	(329,'SL','西里西亚省','Silesia',61),
	(330,'WP','大波兰省','Greater Poland',61),
	(331,'RI','拉里奥哈','La Rioja',155),
	(332,'GA','加利西亚','Galicia',155),
	(333,'CL','卡斯蒂利亚-莱昂','Castille and León',155),
	(334,'CB','坎塔布里亚','Cantabria',155),
	(335,'34','威尼托','Veneto',156),
	(336,'42','利古里亞','Liguria',156),
	(337,'62','拉齐奥','Latium',156),
	(338,'21','皮埃蒙特','Piedmont',156),
	(339,'52','托斯卡纳','Tuscany',156),
	(340,'57','马尔凯','The Marches',156),
	(341,'67','莫利塞','Molise',156),
	(342,'65','阿布鲁佐','Abruzzo',156),
	(343,'55','翁布里亚','Umbria',156),
	(344,'02','基埃萨努欧瓦','Chiesanuova',179),
	(345,'036','伊德里亞','Idrija',182),
	(346,'113','斯洛文尼亞比斯特里察','Slovenska Bistrica',182),
	(347,'050','科佩尔','Koper',182),
	(348,'114','斯洛文尼亞科尼采','Slovenske Konjice',182),
	(349,'064','洛加泰茨','Logatec',182),
	(350,'102','拉多夫利察','Radovljica',182),
	(351,'096','普图伊','Ptuj',182),
	(352,'175','普雷瓦列','Prevalje',182),
	(353,'038','伊利爾斯卡比斯特里察','Ilirska Bistrica',182),
	(354,'091','皮夫卡','Pivka',182),
	(355,'11','莫伊科瓦茨','Mojkovac',65),
	(356,'08','新海尔采格','Herceg Novi',65),
	(357,'070','马里博尔','Maribor',182),
	(358,'040','伊佐拉','Izola',182),
	(359,'034','赫拉斯特尼克','Hrastnik',182),
	(360,'04','比耶洛波列','Bijelo Polje',65),
	(361,'014','采爾克諾','Cerkno',182),
	(362,'BGU','本吉拉省','Benguela',10),
	(363,'HUA','万博省','Huambo',10),
	(364,'PE','伯南布哥州','Pernambuco',189),
	(365,'TO','托坎廷斯州','Tocantins',189),
	(366,'MA','马拉尼昂州','Maranhao',189),
	(367,'PA','帕拉州','Para',189),
	(368,'AM','亚马孙州','Amazonas',189),
	(369,'QE','凯克卡塔','Qeqqata',190),
	(370,'KU','库雅雷克','Kujalleq',190),
	(371,'C','布宜诺斯艾利斯','Buenos Aires F.D.',194),
	(372,'CL','塞罗拉尔戈省','Cerro Largo',196),
	(373,'CA','卡内洛内斯省','Canelones',196),
	(374,'AR','阿蒂加斯省','Artigas',196),
	(375,'ES','圣埃斯皮里图州','Espirito Santo',189),
	(376,'MG','米纳斯吉拉斯州','Minas Gerais',189),
	(377,'GO','戈亚斯州','Goias',189),
	(378,'MT','马托格罗索州','Mato Grosso',189),
	(379,'MS','南马托格罗索州','Mato Grosso do Sul',189),
	(380,'TAM','塔毛利帕斯州','Tamaulipas',198),
	(381,'SE','圣尤斯特歇斯',' and Saba',202),
	(382,'MEX','墨西哥州','Estado de Mexico',198),
	(383,'OAX','瓦哈卡州','Oaxaca',198),
	(384,'PUE','普埃布拉州','Puebla',198),
	(385,'MOR','莫雷洛斯州','Morelos',198),
	(386,'YUC','尤卡坦州','Yucatán',198),
	(387,'CHP','恰帕斯州','Chiapas',198),
	(388,'TAB','塔巴斯科州','Tabasco',198),
	(389,'QUE','克雷塔羅州','Querétaro',198),
	(390,'CAM','坎佩切州','Campeche',198),
	(391,'Y','阿马库罗三角洲州','Delta Amacuro',197),
	(392,'TUM','通贝斯大区','Tumbes',232),
	(393,'LAL','拉利伯塔德大区','La Libertad',232),
	(394,'PIU','皮乌拉地区','Piura',232),
	(395,'UCA','乌卡亚利大区','Ucayali',232),
	(396,'LAM','兰巴耶克大区','Lambayeque',232),
	(397,'AMA','亚马孙大区','Amazonas',232),
	(398,'LOR','洛雷托大区','Loreto',232),
	(399,'ANC','安卡什大区','Ancash',232),
	(400,'KY','库纳雅拉特区','Guna Yala',233),
	(401,'EM','恩贝拉-沃内安特区','Embera-Wounaan',233),
	(402,'RM','圣地亚哥首都大区','Santiago Metropolitan',235),
	(403,'TA','塔拉帕卡大区','Tarapacá',235),
	(404,'PAS','帕斯科大区','Pasco',232),
	(405,'JUN','胡宁大区','Junin',232),
	(406,'MDD','马德雷德迪奥斯大区','Madre de Dios',232),
	(407,'TAC','塔克纳大区','Tacna',232),
	(408,'ICA','伊卡大区','Ica',232),
	(409,'AYA','阿亚库乔大区','Ayacucho',232),
	(410,'PUN','普诺大区','Puno',232),
	(411,'ARE','阿雷基帕大区','Arequipa',232),
	(412,'JAL','哈利斯科州','Jalisco',198),
	(413,'MIC','米却肯州','Michoacán',198),
	(414,'CHH','奇瓦瓦州','Chihuahua',198),
	(415,'AL','艾加伊勒泰','Aiga-i-le-Tai',242),
	(416,'AT','阿图阿','Atua',242),
	(417,'TU','图阿马萨加','Tuamasaga',242),
	(418,'E','东部大区','Eastern',128),
	(419,'TX','德克萨斯州','Texas',246),
	(420,'AL','亚拉巴马州','Alabama',246),
	(421,'VA','弗吉尼亚州','Virginia',246),
	(422,'AR','阿肯色州','Arkansas',246),
	(423,'DE','特拉华州','Delaware',246),
	(424,'FL','佛罗里达州','Florida',246),
	(425,'GA','乔治亚','Georgia',246),
	(426,'IN','印第安纳州','Indiana',246),
	(427,'MD','马里兰州','Maryland',246),
	(428,'KY','肯塔基州','Kentucky',246),
	(429,'MO','密苏里州','Missouri',246),
	(430,'NC','北卡罗来纳州','North Carolina',246),
	(431,'OH','俄亥俄州','Ohio',246),
	(432,'SC','南卡罗来纳州','South Carolina',246),
	(433,'TN','田纳西州','Tennessee',246),
	(434,'IL','伊利诺伊州','Illinois',246),
	(435,'LA','路易斯安那州','Louisiana',246),
	(436,'MS','密西西比州','Mississippi',246),
	(437,'NJ','新泽西州','New Jersey',246),
	(438,'PA','宾夕法尼亚州','Pennsylvania',246),
	(439,'CT','康乃狄克州','Connecticut',246),
	(440,'IA','艾奥瓦州','Iowa',246),
	(441,'ME','缅因州','Maine',246),
	(442,'MI','密歇根州','Michigan',246),
	(443,'MN','明尼苏达州','Minnesota',246),
	(444,'NY','纽约州','New York',246),
	(445,'SD','南达科他州','South Dakota',246),
	(446,'WI','威斯康辛州','Wisconsin',246),
	(447,'ND','北达科他州','North Dakota',246),
	(448,'NH','新罕布什尔州','New Hampshire',246),
	(449,'VT','佛蒙特州','Vermont',246),
	(450,'CA','加利福尼亚州','California',246),
	(451,'NM','新墨西哥州','New Mexico',246),
	(452,'UT','犹他州','Utah',246),
	(453,'NV','内华达州','Nevada',246),
	(454,'ID','爱达荷州','Idaho',246),
	(455,'AK','阿拉斯加州','Alaska',246),
	(456,'MT','蒙大拿州','Montana',246),
	(457,'OR','俄勒冈州','Oregon',246),
	(458,'WA','华盛顿州','Washington',246),
	(459,'WY','怀俄明州','Wyoming',246),
	(460,'HI','夏威夷州','Hawaii',246),
	(461,'BC','不列颠哥伦比亚','British Columbia',251),
	(462,'AB','艾伯塔','Alberta',251),
	(463,'ON','安大略','Ontario',251),
	(464,'MB','曼尼托巴','Manitoba',251),
	(465,'NS','新斯科舍','Nova Scotia',251),
	(466,'NB','新不倫瑞克','New Brunswick',251),
	(467,'YT','育空','Yukon',251),
	(468,'CE','休达','Ceuta',155),
	(469,'16','布城','Putrajaya',87);

/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
