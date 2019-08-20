
-- ----------------------------
-- Table structure for[cctv_tainan_p]
-- ----------------------------
DROP TABLE IF EXISTS[cctv_tainan_p];
CREATE TABLE[cctv_tainan_p] (
 [aid] int NOT NULL,
 [address] varchar(255)  DEFAULT NULL,
 [url] varchar(255)  DEFAULT NULL,
 [xy] varchar(255)  DEFAULT NULL,
 [lon] decimal(10,6) DEFAULT NULL,
 [lat] decimal(10,6) DEFAULT NULL,
  PRIMARY KEY ([aid])
)

-- ----------------------------
-- Records of cctv_tainan_p
-- ----------------------------
INSERT INTO[cctv_tainan_p] VALUES ('1', '鹽埕87號旁(全)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=0&guid=9077be2a-6415-4e8c-8f1e-f71643c600e3', '120.10529, 23.15594', '120.105290', '23.155940');
INSERT INTO[cctv_tainan_p] VALUES ('2', '康樂街、尊王路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=1&guid=877842b2-dcbb-4f67-9646-be9a95329a21', '120.19430, 22.99211', '120.194300', '22.992110');
INSERT INTO[cctv_tainan_p] VALUES ('3', '南門路、友愛街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=2&guid=2db1bc87-33c8-4ca3-8757-c026f49ed2da', '120.20476, 22.99144', '120.204760', '22.991440');
INSERT INTO[cctv_tainan_p] VALUES ('4', '國華街、樹林街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=3&guid=424135cb-3534-4579-8810-609b711242a7', '120.18867, 22.96164', '120.188670', '22.961640');
INSERT INTO[cctv_tainan_p] VALUES ('5', '臺19線、大豐里南天宮路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=4&guid=a0a4384d-3116-418a-b93a-ec0c16cd1b6f', '120.22251, 23.26982', '120.222510', '23.269820');
INSERT INTO[cctv_tainan_p] VALUES ('6', '台南市仁德區中正路三段220號對面', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=5&guid=4642d6b3-b170-4274-8706-b814f28aeeb0', '120.25140, 22.97732', '120.251400', '22.977320');
INSERT INTO[cctv_tainan_p] VALUES ('7', '台南市仁德區中山路650號面', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=6&guid=55893b0d-8594-4020-913f-c5df619d515d', '120.24812, 22.97284', '120.248120', '22.972840');
INSERT INTO[cctv_tainan_p] VALUES ('8', '新化區中正路、正新北路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=7&guid=fc8eee61-fd00-4cf0-89e0-bef0c21c5c5a', '120.30516, 23.04264', '120.305160', '23.042640');
INSERT INTO[cctv_tainan_p] VALUES ('9', '新營區東興路、民治東路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=9&guid=2369538e-2429-4511-854f-3b46afe61761', '120.32367, 23.31114', '120.323670', '23.311140');
INSERT INTO[cctv_tainan_p] VALUES ('10', '七股區玉成里24號(七股所)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=10&guid=420ed8cf-adf5-42b2-ae45-f4d82f270c45', '120.13455, 23.13678', '120.134550', '23.136780');
INSERT INTO[cctv_tainan_p] VALUES ('11', '學甲區中正路、自強路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=11&guid=0175fc5f-c68d-4835-9701-83ab2b123b7b', '120.17940, 23.22897', '120.179400', '23.228970');
INSERT INTO[cctv_tainan_p] VALUES ('12', '學甲區信義路、寶發路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=12&guid=77c1cab7-543a-42ec-99d3-6714fde1cab4', '120.17529, 23.22834', '120.175290', '23.228340');
INSERT INTO[cctv_tainan_p] VALUES ('13', '仁德區中正路3段701號(7-11)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=13&guid=d8e55056-d993-404b-9378-f3ea88271ce4', '120.25580, 22.99184', '120.255800', '22.991840');
INSERT INTO[cctv_tainan_p] VALUES ('14', '中西區民族路海安路路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=14&guid=14e2794f-a5df-47cc-94dc-80d385a716dd', '120.19759, 22.99841', '120.197590', '22.998410');
INSERT INTO[cctv_tainan_p] VALUES ('15', '中西區府連路健康路路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=15&guid=590c7120-a7cd-482f-a364-9218853f8454', '120.20969, 22.98141', '120.209690', '22.981410');
INSERT INTO[cctv_tainan_p] VALUES ('16', '中西區華平路、西賢1街187巷口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=16&guid=5aecab8e-91df-4562-805d-46dee5a16d7d', '120.17565, 23.00363', '120.175650', '23.003630');
INSERT INTO[cctv_tainan_p] VALUES ('17', '安南區安中路、安吉路口(主機座加高)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=17&guid=0702e2e0-672b-443e-a8a3-39d9e57e5515', '120.18860, 23.04694', '120.188600', '23.046940');
INSERT INTO[cctv_tainan_p] VALUES ('18', '北區文賢路、文賢路1122巷口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=18&guid=3c964bdb-7da9-436a-ba70-bf4944e1744a', '120.19349, 23.01640', '120.193490', '23.016400');
INSERT INTO[cctv_tainan_p] VALUES ('19', '北區中華北路2段大和路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=19&guid=4b2574d8-6d54-4b66-8424-80cb128b1e0b', '120.18906, 23.01602', '120.189060', '23.016020');
INSERT INTO[cctv_tainan_p] VALUES ('20', '柳營區柳營路、中山西路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=20&guid=ea0af9ba-1f2f-4231-9b87-883390c4b7ef', '120.31256, 23.27651', '120.312560', '23.276510');
INSERT INTO[cctv_tainan_p] VALUES ('21', '七股區台17線、南26線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=21&guid=7b54edee-ca15-412e-88a9-51fb6b67ae02', '120.13285, 23.18772', '120.132850', '23.187720');
INSERT INTO[cctv_tainan_p] VALUES ('22', '西港區173線、南45線', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=22&guid=3cd204b1-01a1-409f-8af4-189f202ccd6c', '120.21693, 23.13935', '120.216930', '23.139350');
INSERT INTO[cctv_tainan_p] VALUES ('23', '佳里區176線、南47線路口(子龍廟前)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=23&guid=c759ad80-13ed-4b64-8b44-50655b4e5ccd', '120.20907, 23.17544', '120.209070', '23.175440');
INSERT INTO[cctv_tainan_p] VALUES ('24', '山上區178線、南182線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=24&guid=cd07a6a6-e02b-4356-8eda-33ada7b14d3d', '120.36646, 23.08264', '120.366460', '23.082640');
INSERT INTO[cctv_tainan_p] VALUES ('25', '仁德區中正路一段、崑崙路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=26&guid=2a96a987-378a-4bb7-b258-a29c532375d1', '120.24449, 22.92924', '120.244490', '22.929240');
INSERT INTO[cctv_tainan_p] VALUES ('26', '玉井區中山路、中正路口(玉井分局前)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=27&guid=d8509f90-d65d-4d40-8a46-bef7e06595fa', '120.45850, 23.12004', '120.458500', '23.120040');
INSERT INTO[cctv_tainan_p] VALUES ('27', '中西區民生路、環河街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=28&guid=45d64896-633a-4aab-8c33-05258552c133', '120.19260, 22.99682', '120.192600', '22.996820');
INSERT INTO[cctv_tainan_p] VALUES ('28', '中西區民權路、西和路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=29&guid=3cf3859a-13b0-42e7-8f64-1d7e61c5b51c', '120.18730, 22.99924', '120.187300', '22.999240');
INSERT INTO[cctv_tainan_p] VALUES ('29', '安南區北安路怡安路口、長溪街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=30&guid=e68e82a0-bf79-400d-b99f-1c13e4cae0d3', '120.20384, 23.04314', '120.203840', '23.043140');
INSERT INTO[cctv_tainan_p] VALUES ('30', '安南區海佃路4段388巷口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=31&guid=babce7c9-b0b4-4882-a0c8-322cef33294d', '120.17630, 23.06284', '120.176300', '23.062840');
INSERT INTO[cctv_tainan_p] VALUES ('31', '安南區海佃路、安吉路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=32&guid=c0e08a71-42d1-4052-9e57-52dde57cd480', '120.18747, 23.04134', '120.187470', '23.041340');
INSERT INTO[cctv_tainan_p] VALUES ('32', '安南區台江大道、長溪路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=33&guid=099c9314-3234-4c69-b701-bcd967deb603', '120.20069, 23.05933', '120.200690', '23.059330');
INSERT INTO[cctv_tainan_p] VALUES ('33', '中西區民權路、湖美街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=34&guid=fbd4285d-277e-44a6-869c-fd5436d856f4', '120.18006, 22.99923', '120.180060', '22.999230');
INSERT INTO[cctv_tainan_p] VALUES ('34', '安南區海佃路、同安路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=35&guid=2b6f28dd-f0c8-4987-8fb7-07a0c3df866d', '120.18796, 23.03893', '120.187960', '23.038930');
INSERT INTO[cctv_tainan_p] VALUES ('35', '仁德區民安路、文華路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=36&guid=de3025b9-7375-4242-8080-9ce40daa211f', '120.24006, 22.95951', '120.240060', '22.959510');
INSERT INTO[cctv_tainan_p] VALUES ('36', '仁德區中正路2段、上崙街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=37&guid=bbe757a4-a646-4413-8f2b-89b40e56f400', '120.24798, 22.93828', '120.247980', '22.938280');
INSERT INTO[cctv_tainan_p] VALUES ('37', '仁德區中山路、中正路2段口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=38&guid=8b8c260a-fa4d-4829-8d64-99f472e7b5e1', '120.25187, 22.97184', '120.251870', '22.971840');
INSERT INTO[cctv_tainan_p] VALUES ('38', '永康區復興路、大灣路口(北基加油站)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=39&guid=e52f0434-e15d-4021-88b3-570301803cfa', '120.25037, 22.99882', '120.250370', '22.998820');
INSERT INTO[cctv_tainan_p] VALUES ('39', '永康區永大路1段、大灣東路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=40&guid=f2590677-3d73-4951-b4ef-c9ce2c1a59be', '120.25870, 22.99806', '120.258700', '22.998060');
INSERT INTO[cctv_tainan_p] VALUES ('40', '永康區文化路、永華路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=41&guid=9685dd74-2289-43d7-a1ae-06fc2aa8dfed', '120.25800, 23.01644', '120.258000', '23.016440');
INSERT INTO[cctv_tainan_p] VALUES ('41', '西港區臺19線西港大橋旁便道', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=42&guid=522076e1-42cd-40ed-846a-df8f6117ab99', '120.20457, 23.11123', '120.204570', '23.111230');
INSERT INTO[cctv_tainan_p] VALUES ('42', '七股區臺17線、文化路（南32線）路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=43&guid=564da3c0-e74b-45d1-887a-b7e63e51d271', '120.13444, 23.15961', '120.134440', '23.159610');
INSERT INTO[cctv_tainan_p] VALUES ('43', '將軍區將富里臺17線、南18線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=44&guid=75ced123-5410-428d-8f4f-c8b43e8d1af3', '120.13529, 23.21492 ', '120.135290', '23.214920');
INSERT INTO[cctv_tainan_p] VALUES ('44', '學甲區中正路、三民路、華宗路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=45&guid=de0cbfc0-033c-4d95-91ff-38e455f0ebda', '120.18370, 23.23864', '120.183700', '23.238640');
INSERT INTO[cctv_tainan_p] VALUES ('45', '大內區圖書館前南181線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=46&guid=62e8fe26-36eb-4af0-922a-2f762ba551b4', '120.35640, 23.11942', '120.356400', '23.119420');
INSERT INTO[cctv_tainan_p] VALUES ('46', '左鎮區光和里臺20線和平橋前路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=47&guid=8e3787d9-863c-4a9b-a665-2a0eee9c1080', '120.38009, 23.06769', '120.380090', '23.067690');
INSERT INTO[cctv_tainan_p] VALUES ('47', '玉井區臺84線、豐里路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=48&guid=c557cae8-b3ad-41ac-823e-374134390dd6', '120.44170, 23.13220', '120.441700', '23.132200');
INSERT INTO[cctv_tainan_p] VALUES ('48', '玉井區中華路、中山路口(統一超商前)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=49&guid=7e2f28bf-be4e-4dff-8af6-1003e4f03439', '120.46569, 23.12112', '120.465690', '23.121120');
INSERT INTO[cctv_tainan_p] VALUES ('49', '安南區安中路、怡安路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=50&guid=c5d453c7-6b04-414a-9517-1f071ff85acc', '120.19203, 23.04532', '120.192030', '23.045320');
INSERT INTO[cctv_tainan_p] VALUES ('50', '安南區公學路、安吉路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=51&guid=c5c51b3c-381f-4ce3-af96-23ab18f85add', '120.19134, 23.06834', '120.191340', '23.068340');
INSERT INTO[cctv_tainan_p] VALUES ('51', '東區裕農路、裕義路', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=52&guid=7acd0bfb-2bfd-4f0a-85e3-9a201283ac56', '120.24730, 22.99073', '120.247300', '22.990730');
INSERT INTO[cctv_tainan_p] VALUES ('52', '中西區中華西路2段、光賢街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=53&guid=a8852a5f-46b5-44b3-830f-fb1017451172', '120.18679, 23.00414', '120.186790', '23.004140');
INSERT INTO[cctv_tainan_p] VALUES ('53', '北區文賢路、和緯路口-2', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=54&guid=1563892f-5b29-4ae8-9dde-579e5cc704b0', '120.19330, 23.01004', '120.193300', '23.010040');
INSERT INTO[cctv_tainan_p] VALUES ('54', '中西區西門路1段、和意路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=55&guid=232c9479-43ba-4047-80c8-b336002a2e38', '120.19746, 22.98904', '120.197460', '22.989040');
INSERT INTO[cctv_tainan_p] VALUES ('55', '南區中華南路、永成路-2', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=56&guid=ec2506bf-e866-4dde-82a7-6fbd1a6fddab', '120.19520, 22.96264', '120.195200', '22.962640');
INSERT INTO[cctv_tainan_p] VALUES ('56', '安南區北安路、安中路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=57&guid=a71fb655-2a76-4266-af45-f3274aba8bcc', '120.20277, 23.03892', '120.202770', '23.038920');
INSERT INTO[cctv_tainan_p] VALUES ('57', '七股區南176線與南29線路口(大文國小前)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=58&guid=1ce96c67-3dde-4c3d-9107-42cc2146e35e', '120.15232, 23.15061', '120.152320', '23.150610');
INSERT INTO[cctv_tainan_p] VALUES ('58', '七股區南25線與南34-1線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=59&guid=80845839-8df3-47aa-9e11-eac9952eb763', '120.10647, 23.15402', '120.106470', '23.154020');
INSERT INTO[cctv_tainan_p] VALUES ('59', '西港區中周寮與南40線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=61&guid=2f08f7be-f134-4dfe-8ded-c36a3d4a0ac1', '120.22335, 23.12382', '120.223350', '23.123820');
INSERT INTO[cctv_tainan_p] VALUES ('60', '善化區成功路高雄牧場前路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=62&guid=212385bc-ffc6-48a5-9ebe-4c0fd99ed1f9', '120.32865, 23.12458', '120.328650', '23.124580');
INSERT INTO[cctv_tainan_p] VALUES ('61', '安定區臺19線與新吉里61號前路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=63&guid=177bef79-051d-4209-bf04-f5f37a070d6d', '120.21039, 23.08463', '120.210390', '23.084630');
INSERT INTO[cctv_tainan_p] VALUES ('62', '仁德區太子路與高速公路便道路口(新泰汽車)', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=64&guid=c3af6de5-fa8f-44f4-b6d7-52a1dd920509', '120.24888, 22.99086', '120.248880', '22.990860');
INSERT INTO[cctv_tainan_p] VALUES ('63', '玉井區樹糖街、憲政街、中正路、太子街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=65&guid=c36303ae-463b-4219-840f-6ffe83d6475c', '120.46020, 23.12420', '120.460200', '23.124200');
INSERT INTO[cctv_tainan_p] VALUES ('64', '永康區大灣路與大灣路942巷口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=66&guid=d85574b1-e23f-44e9-be41-b3f1f015c5fd', '120.25490, 22.99965', '120.254900', '22.999650');
INSERT INTO[cctv_tainan_p] VALUES ('65', '佳里區臺19線與營頂67-1號路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=67&guid=348d8acd-cdb7-4380-89c5-2c16524245ea', '120.18860, 23.19954', '120.188600', '23.199540');
INSERT INTO[cctv_tainan_p] VALUES ('66', '中西區民生路、中華西路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=68&guid=814c6339-3af4-4830-89ab-b1b5ab807710', '120.18699, 22.99813', '120.186990', '22.998130');
INSERT INTO[cctv_tainan_p] VALUES ('67', '鹽水區武廟路、北門路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=69&guid=ce297d08-5cdc-4055-875e-822b7e894135', '120.26616, 23.32353', '120.266160', '23.323530');
INSERT INTO[cctv_tainan_p] VALUES ('68', '新營區民治路、健康路、民治路53巷口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=70&guid=f1041589-dca8-4fb2-9023-8298810e12d1', '120.31254, 23.31094', '120.312540', '23.310940');
INSERT INTO[cctv_tainan_p] VALUES ('69', '後壁區南85線、南85-1線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=71&guid=b017fadc-8bcb-4b83-86d4-c70c56a0ed0d', '120.33666, 23.38644', '120.336660', '23.386440');
INSERT INTO[cctv_tainan_p] VALUES ('70', '麻豆區興國路、興南路、仁愛路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=72&guid=550a04c3-21d8-4f4d-81eb-cf43f84e2183', '120.24827, 23.18321', '120.248270', '23.183210');
INSERT INTO[cctv_tainan_p] VALUES ('71', '六甲區中山路、民族路、和平街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=74&guid=dc08389d-7e5c-42f5-bd4d-3d98afe2e1b1', '120.34370, 23.23274', '120.343700', '23.232740');
INSERT INTO[cctv_tainan_p] VALUES ('72', '七股區臺61線、176線東側路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=75&guid=d6336da4-81d8-4803-8c1d-3385052e2da1', '120.09390, 23.15264', '120.093900', '23.152640');
INSERT INTO[cctv_tainan_p] VALUES ('73', '佳里區南34線、南37線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=76&guid=0b6e40a7-2d66-461f-883c-45ca3f769efe', '120.16590, 23.12930', '120.165900', '23.129300');
INSERT INTO[cctv_tainan_p] VALUES ('74', '佳里區南24線、南47線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=77&guid=ef4cfa32-a314-461c-8dea-bcd783bf048c', '120.19366, 23.18884', '120.193660', '23.188840');
INSERT INTO[cctv_tainan_p] VALUES ('75', '西港區南34線、南41線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=78&guid=cec95235-22e8-466c-a7f2-7291e0134f63', '120.18010, 23.12763', '120.180100', '23.127630');
INSERT INTO[cctv_tainan_p] VALUES ('76', '安定區178線、南132線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=79&guid=427b8b55-4690-4a38-9195-cf64f9af8aa9', '120.23526, 23.11494', '120.235260', '23.114940');
INSERT INTO[cctv_tainan_p] VALUES ('77', '新市區臺1線、南138線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=80&guid=31d4ba3f-76c3-4ef4-9aed-37d7604c05a9', '120.30135, 23.07453', '120.301350', '23.074530');
INSERT INTO[cctv_tainan_p] VALUES ('78', '新市區永新路、永華三街、永華二街、金華路1段口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=81&guid=83d01335-19d5-4e62-8d23-e71da92acf3e', '120.29500, 23.05924', '120.295000', '23.059240');
INSERT INTO[cctv_tainan_p] VALUES ('79', '新市區臺1線、南177線路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=82&guid=19656457-5ec8-4a86-b475-6e0b8a5620d2', '120.31306, 23.09626', '120.313060', '23.096260');
INSERT INTO[cctv_tainan_p] VALUES ('80', '仁德區中正路1段、文賢路1段、文賢路2段口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=83&guid=890e3478-7d89-470b-8191-3321054a174d', '120.23596, 22.92304', '120.235960', '22.923040');
INSERT INTO[cctv_tainan_p] VALUES ('81', '歸仁區武當路、歸仁八路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=85&guid=e2ff6c9c-ccf9-4363-8f86-bf668304cd52', '120.28209, 22.92792', '120.282090', '22.927920');
INSERT INTO[cctv_tainan_p] VALUES ('82', '歸仁區忠孝北路、中正北路1段、大光街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=86&guid=96443ef4-94fe-46cc-b2a9-9a859ddb627f', '120.29579, 22.97444', '120.295790', '22.974440');
INSERT INTO[cctv_tainan_p] VALUES ('83', '玉井區中山路、中正路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=87&guid=3a69af76-d87a-4225-8634-36d9407fe610', '120.46536, 23.12651', '120.465360', '23.126510');
INSERT INTO[cctv_tainan_p] VALUES ('84', '永康區民族路、大安街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=88&guid=4f681c09-d589-4682-8ebb-fa2ad327a256', '120.26556, 23.00896', '120.265560', '23.008960');
INSERT INTO[cctv_tainan_p] VALUES ('85', '永康區文化路、永二街、永二街245巷口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=89&guid=aa01c407-63f7-455d-8ed4-1335345a2920', '120.25229, 23.01591', '120.252290', '23.015910');
INSERT INTO[cctv_tainan_p] VALUES ('86', '永康區永明街、國民路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=90&guid=a447b204-1071-4997-8b82-d0949eb9ce47', '120.26239, 23.02504', '120.262390', '23.025040');
INSERT INTO[cctv_tainan_p] VALUES ('87', '永康區北興路、大灣路40巷口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=91&guid=2237e6ea-252d-493c-9427-97a56cdf5467', '120.27094, 23.01325', '120.270940', '23.013250');
INSERT INTO[cctv_tainan_p] VALUES ('88', '永康區大灣路、大灣三街口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=92&guid=8e9b2f78-a953-46fa-89bc-b340ed7b9a84', '120.26628, 23.00469', '120.266280', '23.004690');
INSERT INTO[cctv_tainan_p] VALUES ('89', '永康區永大路3段、竹南街、永大路3段469巷、八德街140巷口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=93&guid=804c95f5-4d38-4a35-8fb9-bcb6560a2e2b', '120.25815, 23.04012', '120.258150', '23.040120');
INSERT INTO[cctv_tainan_p] VALUES ('90', '東區小東路、前鋒路口 舊網路移機', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=94&guid=5020f1b7-caf7-4598-a9ac-b4ee3bea3ee2', '120.21366, 23.00184', '120.213660', '23.001840');
INSERT INTO[cctv_tainan_p] VALUES ('91', '安平區安平路、安北路口', 'http://59.125.222.210/FireDepMapSys/WS/TNPoliceCCTV.aspx?channel=95&guid=b082a0b0-e714-48c7-8db6-67aff0ae72a4', '120.16807, 22.99934', '120.168070', '22.999340');

-- ----------------------------
-- Table structure for[cctv_tainan_t]
-- ----------------------------
DROP TABLE IF EXISTS[cctv_tainan_t];
CREATE TABLE[cctv_tainan_t] (
 [aid] int  NOT NULL,
 [address] varchar(255)  DEFAULT NULL,
 [url] varchar(255)  DEFAULT NULL,
 [xy] varchar(255)  DEFAULT NULL,
 [lon] decimal(10,6) DEFAULT NULL,
 [lat] decimal(10,6) DEFAULT NULL,
  PRIMARY KEY ([aid])
)

-- ----------------------------
-- Records of cctv_tainan_t
-- ----------------------------
INSERT INTO[cctv_tainan_t] VALUES ('1', '(CCTV003)新港社大道(富強路→中正北路)', 'http://61.60.24.100/192168007001/snapshot?guid=aef04752-3884-4781-8e36-3e8220af98fb', '120.28145, 23.07329', '120.281450', '23.073290');
INSERT INTO[cctv_tainan_t] VALUES ('2', '(CCTV005)中正北路-永康交流道西側出口匝道口', 'http://61.60.24.100/192168004001/snapshot?guid=ef3e43de-f79f-40cc-ae81-0dc3687db412', '120.24793, 23.04882', '120.247930', '23.048820');
INSERT INTO[cctv_tainan_t] VALUES ('3', '安北路/安平路口', 'http://61.60.24.100/192168234006/snapshot?guid=509b3489-ece1-404e-9ba5-a066e32b426e', '120.16760, 23.00099', '120.167600', '23.000990');
INSERT INTO[cctv_tainan_t] VALUES ('4', '安北路/古堡街口', 'http://61.60.24.100/192168234005/snapshot?guid=394ef653-8ba7-4673-83aa-f312514105af', '120.16269, 23.00895', '120.162690', '23.008950');
INSERT INTO[cctv_tainan_t] VALUES ('5', '樹屋停車場', 'http://61.60.24.100/192168234001/snapshot?guid=fa2d761f-da4b-4df4-9495-f73a24829405', '120.15701, 23.00527', '120.157010', '23.005270');
INSERT INTO[cctv_tainan_t] VALUES ('6', '水景公園停車場', 'http://61.60.24.100/192168234002/snapshot?guid=7a05a324-73f2-4d19-9661-1fc2ac1bcc08', '120.15742, 23.00217', '120.157420', '23.002170');
INSERT INTO[cctv_tainan_t] VALUES ('7', '遊憩碼頭停車場', 'http://61.60.24.100/192168234003/snapshot?guid=2fac9711-72cd-47d2-99bf-6b9578066a5b', '120.15938, 23.00122', '120.159380', '23.001220');
INSERT INTO[cctv_tainan_t] VALUES ('8', '安億橋停車場', 'http://61.60.24.100/192168234004/snapshot?guid=1e4564d8-3f09-4d1d-897c-5ae4b5f0de0e', '120.16336, 22.99988', '120.163360', '22.999880');
INSERT INTO[cctv_tainan_t] VALUES ('9', '永安路/永安一街口', 'http://61.60.24.100/192168234008/snapshot?guid=be962d6a-8878-4619-8cc7-8005facea560', '120.24500, 23.04732', '120.245000', '23.047320');
INSERT INTO[cctv_tainan_t] VALUES ('10', '中正北路/新行街口', 'http://61.60.24.100/192168234007/snapshot?guid=1f55e16b-3e0f-4366-a5e5-7ae4367d781a', '120.24216, 23.04184', '120.242160', '23.041840');
INSERT INTO[cctv_tainan_t] VALUES ('11', '文德路中山路口(T桿)西向', 'http://61.60.24.100/50794012/snapshot?guid=834e37b8-bc09-466e-9f01-e32449d4d1c7', '120.24804, 22.97287', '120.248040', '22.972870');
INSERT INTO[cctv_tainan_t] VALUES ('12', '文德路中山路口(T桿)東向', 'http://61.60.24.100/3880e436/snapshot?guid=48b92605-222a-4029-87b8-d0912f505ba9', '120.24805, 22.97286', '120.248050', '22.972860');
INSERT INTO[cctv_tainan_t] VALUES ('13', '中華東路東門路口(T桿)西向', 'http://61.60.24.100/4427712d/snapshot?guid=8e5c13b6-dac8-49de-8765-be2086140950', '120.23021, 22.98320', '120.230210', '22.983200');
INSERT INTO[cctv_tainan_t] VALUES ('14', '中華東路東門路口(T桿)東向', 'http://61.60.24.100/6899d134/snapshot?guid=7424e117-49f8-4875-955c-4141afedcde3', '120.23021, 22.98169', '120.230210', '22.981690');
INSERT INTO[cctv_tainan_t] VALUES ('15', '東門路林森路口西向', 'http://61.60.24.100/b356aada/snapshot?guid=5c7055df-9ab3-4e2f-894f-b8c06c78ba92', '120.22332, 22.98670', '120.223320', '22.986700');
INSERT INTO[cctv_tainan_t] VALUES ('16', '東門路林森路口東向', 'http://61.60.24.100/17dcd3fb/snapshot?guid=85a4aa76-195e-4b58-852d-adf345ba59e4', '120.22311, 22.98690', '120.223110', '22.986900');
INSERT INTO[cctv_tainan_t] VALUES ('17', '東門圓環陸橋西向', 'http://61.60.24.100/0a1f007e/snapshot?guid=5d793daa-2113-4917-8e38-859fc66ef613', '120.23599, 23.00523', '120.235990', '23.005230');
INSERT INTO[cctv_tainan_t] VALUES ('18', '東門圓環陸橋東向', 'http://61.60.24.100/68524566/snapshot?guid=c02e38b7-b7e6-4242-ba04-e73cd11ea869', '120.21570, 22.98903', '120.215700', '22.989030');
INSERT INTO[cctv_tainan_t] VALUES ('19', '台1線中正北路317巷口(T桿)西向', 'http://61.60.24.100/82520774/snapshot?guid=403ae73b-21f8-4b81-88da-9025988050da', '120.24736, 23.04340', '120.247360', '23.043400');
INSERT INTO[cctv_tainan_t] VALUES ('20', '台1線中正北路317巷口(T桿)東向', 'http://61.60.24.100/55af0b06/snapshot?guid=327ee163-90de-448a-a598-3b424a1b0527', '120.24718, 23.04340', '120.247180', '23.043400');
INSERT INTO[cctv_tainan_t] VALUES ('21', '台1線中正路口(T桿)西向', 'http://61.60.24.100/8cdf6409/snapshot?guid=e71b5f19-5e12-4af3-86ba-441be5084e6b', '120.24736, 23.04340', '120.247360', '23.043400');
INSERT INTO[cctv_tainan_t] VALUES ('22', '台1線中正路口(T桿)東向', 'http://61.60.24.100/add19922/snapshot?guid=0be76ca8-f3ec-41ac-ab2c-9d23b553d964', '120.23682, 23.04289', '120.236820', '23.042890');
INSERT INTO[cctv_tainan_t] VALUES ('23', '台1線中華路口(T桿)西向', 'http://61.60.24.100/03acfaeb/snapshot?guid=16b71757-c3b3-47de-a38b-098270d21b6d', '120.21915, 23.02577', '120.219150', '23.025770');
INSERT INTO[cctv_tainan_t] VALUES ('24', '公園路公園北路口西向', 'http://61.60.24.100/b43c7fd5/snapshot?guid=5a1c455c-d3af-47c0-8f4b-8c9ecd247d9e', '120.21019, 23.00672', '120.210190', '23.006720');
INSERT INTO[cctv_tainan_t] VALUES ('25', '公園路公園北路口東向', 'http://61.60.24.100/703c3dbd/snapshot?guid=8acf2d52-c81d-4443-98d3-1f5cb6713bb6', '120.21028, 23.00640', '120.210280', '23.006400');
INSERT INTO[cctv_tainan_t] VALUES ('26', '小東路復國路口(T桿)西向', 'http://61.60.24.100/8d436ff5/snapshot?guid=57f8399d-68af-44fe-8efb-a9c37b02c283', '120.24488, 22.99889', '120.244880', '22.998890');
INSERT INTO[cctv_tainan_t] VALUES ('27', '小東路中華路口(T桿)西向', 'http://61.60.24.100/ccb665e1/snapshot?guid=460d0de0-a922-4713-bb4b-07605c1ea2fb', '120.23642, 22.99867', '120.236420', '22.998670');
INSERT INTO[cctv_tainan_t] VALUES ('28', '小東路林森路口(T桿)西向', 'http://61.60.24.100/bb2a361a/snapshot?guid=e7f8a810-0028-40bd-a128-a7247cbf4170', '120.22662, 23.00071', '120.226620', '23.000710');
INSERT INTO[cctv_tainan_t] VALUES ('29', '小東路林森路口(T桿)東向', 'http://61.60.24.100/7296fb51/snapshot?guid=3ad63634-4523-42db-90cb-84a4be813c92', '120.22665, 23.00067', '120.226650', '23.000670');
INSERT INTO[cctv_tainan_t] VALUES ('30', '東門路三段自由路二段口(T桿)西向', 'http://61.60.24.100/40a96d3d/snapshot?guid=31bc0bb0-d564-4063-b31b-245399a1e100', '120.23934, 22.97619', '120.239340', '22.976190');
INSERT INTO[cctv_tainan_t] VALUES ('31', '東門路三段自由路二段口(T桿)東向', 'http://61.60.24.100/088565ca/snapshot?guid=bc979e1f-0c64-48cd-8795-9541cc7b64d1', '120.23751, 22.97593', '120.237510', '22.975930');
INSERT INTO[cctv_tainan_t] VALUES ('32', '172線復興路803巷口西向', 'http://61.60.24.100/2ec8d3ed/snapshot?guid=c4b2f70d-fb9e-4404-b205-0b66252cb7e2', '120.28633, 23.30880', '120.286330', '23.308800');
INSERT INTO[cctv_tainan_t] VALUES ('33', '172線復興路803巷口東向', 'http://61.60.24.100/04728484/snapshot?guid=339904a4-60ba-4e5e-8a7c-ca967bf51f22', '120.28632, 23.30886', '120.286320', '23.308860');
INSERT INTO[cctv_tainan_t] VALUES ('34', '172線信義路口西向', 'http://61.60.24.100/7304f8f9/snapshot?guid=12149dd5-7962-48cf-8b8f-af9029eaf594', '120.27290, 23.31121', '120.272900', '23.311210');
INSERT INTO[cctv_tainan_t] VALUES ('35', '172線信義路口東向', 'http://61.60.24.100/dbf1601b/snapshot?guid=4a1cbf70-f3a5-4c25-8d32-ee2963322d15', '120.27284, 23.31121', '120.272840', '23.311210');
INSERT INTO[cctv_tainan_t] VALUES ('36', '中正路南門路月津路口北向', 'http://61.60.24.100/231b2f4f/snapshot?guid=b6c27bf9-0702-4c8e-b328-253890e31cbd', '120.27282, 23.31124', '120.272820', '23.311240');
INSERT INTO[cctv_tainan_t] VALUES ('37', '中正路南門路月津路口南向', 'http://61.60.24.100/ecd9925f/snapshot?guid=fa4fab5a-a47f-4eec-9197-900459160eb2', '120.26668, 23.31679', '120.266680', '23.316790');
INSERT INTO[cctv_tainan_t] VALUES ('38', '台19線月津路口(T桿)北向', 'http://61.60.24.100/514d9765/snapshot?guid=74ef22aa-d633-4734-8e0e-d2084af75e9b', '120.26338, 23.31032', '120.263380', '23.310320');
INSERT INTO[cctv_tainan_t] VALUES ('39', '台19線月津路口(T桿)南向', 'http://61.60.24.100/64a4aa81/snapshot?guid=d9a00631-96e6-41aa-8c0b-7d9c968d92f8', '120.26337, 23.31035', '120.263370', '23.310350');
INSERT INTO[cctv_tainan_t] VALUES ('40', '中華東路與裕農路口西向', 'http://61.60.24.100/d575216e/snapshot?guid=cbe962ea-bd45-40e6-8072-cf4ff20674a6', '120.23973, 22.98934', '120.239730', '22.989340');
INSERT INTO[cctv_tainan_t] VALUES ('41', '中華東路與裕農路口東向', 'http://61.60.24.100/f1bfc1c7/snapshot?guid=d74d7641-c72d-4016-81a1-ccd883cb0e73', '120.23971, 22.98933', '120.239710', '22.989330');
INSERT INTO[cctv_tainan_t] VALUES ('42', '台19線月津路口西向', 'http://61.60.24.100/22828577/snapshot?guid=76ed5eeb-e937-48a5-81fa-5d5523c543e6', '120.26408, 23.31139', '120.264080', '23.311390');
INSERT INTO[cctv_tainan_t] VALUES ('43', '台19線月津路口東向', 'http://61.60.24.100/c8a6813c/snapshot?guid=9892f9ae-c7db-4d20-aa05-cdea5921a595', '120.26380, 23.31131', '120.263800', '23.311310');
INSERT INTO[cctv_tainan_t] VALUES ('44', '長榮路二段民生路口(T桿)北向', 'http://61.60.24.100/6d9f71b8/snapshot?guid=b741362a-9312-4c01-a30e-01775c2b6a53', '120.30275, 23.31600', '120.302750', '23.316000');
INSERT INTO[cctv_tainan_t] VALUES ('45', '長榮路二段民生路口(T桿)南向', 'http://61.60.24.100/44fb2600/snapshot?guid=ea646a06-57e3-4140-8b92-c708271f3198', '120.30276, 23.31601', '120.302760', '23.316010');
INSERT INTO[cctv_tainan_t] VALUES ('46', '信義路文武街口北向', 'http://61.60.24.100/b15c1b5e/snapshot?guid=64c87e56-aca3-4648-97f6-95231c89dbcd', '120.27140, 23.31837', '120.271400', '23.318370');
INSERT INTO[cctv_tainan_t] VALUES ('47', '信義路文武街口南向', 'http://61.60.24.100/df17076a/snapshot?guid=638cc22e-47f7-48fc-827f-97814289746d', '120.27134, 23.31833', '120.271340', '23.318330');
INSERT INTO[cctv_tainan_t] VALUES ('48', '復興路長榮路二段口(T桿)西向', 'http://61.60.24.100/3a732cdb/snapshot?guid=a72b02b8-8839-4254-8538-16954b7fa408', '120.29345, 23.30677', '120.293450', '23.306770');
INSERT INTO[cctv_tainan_t] VALUES ('49', '復興路長榮路二段口(T桿)東向', 'http://61.60.24.100/cf7695a6/snapshot?guid=0f49f2f4-e522-4992-862f-eaaf927e7f80', '120.29341, 23.30677', '120.293410', '23.306770');
INSERT INTO[cctv_tainan_t] VALUES ('50', '復興路民治路口西向', 'http://61.60.24.100/c72b68d0/snapshot?guid=04ab0d93-c5b1-4d4e-8436-d67ea1fb6e9f', '120.30193, 23.30462', '120.301930', '23.304620');
INSERT INTO[cctv_tainan_t] VALUES ('51', '復興路民治路口東向', 'http://61.60.24.100/66314de1/snapshot?guid=478ad6cd-c0b6-4df5-ab39-9108c954bd71', '120.30194, 23.30454', '120.301940', '23.304540');
INSERT INTO[cctv_tainan_t] VALUES ('52', '復興路民權路口西向', 'http://61.60.24.100/5c41e636/snapshot?guid=8fceeb37-0137-4893-8202-5476fa5cf168', '120.31410, 23.30289', '120.314100', '23.302890');
INSERT INTO[cctv_tainan_t] VALUES ('53', '復興路民權路口東向', 'http://61.60.24.100/c10d6734/snapshot?guid=f27312a5-2c10-4d0e-8f4f-437609c0fa96', '120.31410, 23.30289', '120.314100', '23.302890');
INSERT INTO[cctv_tainan_t] VALUES ('54', '中山路同濟街口西向', 'http://61.60.24.100/1fcbb002/snapshot?guid=cf1d1585-794e-40c3-a92f-13dd560c3b8c', '120.32029, 23.30622', '120.320290', '23.306220');
INSERT INTO[cctv_tainan_t] VALUES ('55', '中山路同濟街口東向', 'http://61.60.24.100/8dc4858c/snapshot?guid=c733cc61-7c06-4676-8643-601f5f21b40a', '120.32029, 23.30622', '120.320290', '23.306220');
INSERT INTO[cctv_tainan_t] VALUES ('56', '台19甲線172線路口北向', 'http://61.60.24.100/248deb09/snapshot?guid=a5330227-9a28-43f5-8c8f-398829082b7c', '120.27189, 23.30868', '120.271890', '23.308680');
INSERT INTO[cctv_tainan_t] VALUES ('57', '台19甲線172線路口南向', 'http://61.60.24.100/0152161b/snapshot?guid=43dad5b7-dedc-46e1-9473-ff09f5e67216', '120.27176, 23.30904', '120.271760', '23.309040');

-- ----------------------------
-- Table structure for[cctv_taipei_t]
-- ----------------------------
DROP TABLE IF EXISTS[cctv_taipei_t];
CREATE TABLE[cctv_taipei_t] (
 [aid] int  NOT NULL,
 [id] varchar(255)  NOT NULL,
 [address] varchar(255)  DEFAULT NULL,
 [lon] decimal(10,6) DEFAULT NULL,
 [lat] decimal(10,6) DEFAULT NULL,
 [url] varchar(255)  DEFAULT NULL,
  PRIMARY KEY ([aid])
)

-- ----------------------------
-- Records of cctv_taipei_t
-- ----------------------------
INSERT INTO[cctv_taipei_t] VALUES ('1', 'C000002', '板橋區文化路1段、民生路(下大漢橋)', '121.467942', '25.022613', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000002');
INSERT INTO[cctv_taipei_t] VALUES ('2', 'C000003', '板橋區縣民大道、民生路\r', '121.470993', '25.018879', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000003');
INSERT INTO[cctv_taipei_t] VALUES ('3', 'C000004', '三重區重陽路、三和路(國1三重交流道)', '121.494106', '25.072586', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000004');
INSERT INTO[cctv_taipei_t] VALUES ('4', 'C000005', '三重區台北橋(環河快速道路上匝道匯流處)', '121.506065', '25.063614', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000005');
INSERT INTO[cctv_taipei_t] VALUES ('5', 'C000006', '三重區忠孝橋(往台北方向避車彎)', '121.496269', '25.054365', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000006');
INSERT INTO[cctv_taipei_t] VALUES ('6', 'C000007', '三重區中興橋(環河快速道路上匝道匯流處)\r', '121.494003', '25.047974', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000007');
INSERT INTO[cctv_taipei_t] VALUES ('7', 'C000008', '淡水區民權路、187巷前200公尺\r', '121.458524', '25.132069', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000008');
INSERT INTO[cctv_taipei_t] VALUES ('8', 'C000011', '土城區中央路、大安路(土城交流道)', '121.432984', '24.965240', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000011');
INSERT INTO[cctv_taipei_t] VALUES ('9', 'C000012', '中和區景平路、成功路(秀朗橋頭)', '121.526188', '24.990156', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000012');
INSERT INTO[cctv_taipei_t] VALUES ('10', 'C000013', '板橋區縣民大道二段198號中央分隔島', '121.469114', '25.017215', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000013');
INSERT INTO[cctv_taipei_t] VALUES ('11', 'C000014', '板橋區縣民大道、板橋火車站前(新府路新站路間)\r', '121.464633', '25.013888', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000014');
INSERT INTO[cctv_taipei_t] VALUES ('12', 'C000015', '板橋區縣民大道、民族路(縣民大道中央分隔島)\r', '121.461829', '25.011333', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000015');
INSERT INTO[cctv_taipei_t] VALUES ('13', 'C000016', '三峽區介壽路、中正路(復興路)\r', '121.376299', '24.931392', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000016');
INSERT INTO[cctv_taipei_t] VALUES ('14', 'C000017', '鶯歌區三鶯大橋、文化路交接處', '121.352725', '24.945787', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000017');
INSERT INTO[cctv_taipei_t] VALUES ('15', 'C000018', '三峽區復興路、三鶯交流道(高速公路東側)\r', '121.361429', '24.938579', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000018');
INSERT INTO[cctv_taipei_t] VALUES ('16', 'C000019', '板橋區大漢橋(環河路上方)', '121.462961', '25.032998', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000019');
INSERT INTO[cctv_taipei_t] VALUES ('17', 'C000020', '板橋區民生路、中山路\r', '121.473477', '25.015711', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000020');
INSERT INTO[cctv_taipei_t] VALUES ('18', 'C000021', '板橋區台64線、板新路上方', '121.477188', '25.011917', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000021');
INSERT INTO[cctv_taipei_t] VALUES ('19', 'C000022', '板橋區中山路、三民路\r', '121.479246', '25.018772', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000022');
INSERT INTO[cctv_taipei_t] VALUES ('20', 'C000023', '板橋區新海橋(堤防上方)\r', '121.456104', '25.030590', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000023');
INSERT INTO[cctv_taipei_t] VALUES ('21', 'C000024', '板橋區四川路、中央路\r', '121.450033', '24.993511', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000024');
INSERT INTO[cctv_taipei_t] VALUES ('22', 'C000026', '三重區重新路、重陽路', '121.486658', '25.056459', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000026');
INSERT INTO[cctv_taipei_t] VALUES ('23', 'C000027', '新莊區中正路、思源路', '121.460526', '25.039081', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000027');
INSERT INTO[cctv_taipei_t] VALUES ('24', 'C000028', '中和區台64線於錦和路上方', '121.490362', '24.994198', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000028');
INSERT INTO[cctv_taipei_t] VALUES ('25', 'C000029', '中和區中正路、中山路', '121.484056', '25.005103', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000029');
INSERT INTO[cctv_taipei_t] VALUES ('26', 'C000030', '中和區中正路、連城路\r', '121.485109', '24.996335', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000030');
INSERT INTO[cctv_taipei_t] VALUES ('27', 'C000031', '中和區華中橋(環河西路上方)', '121.495411', '25.007818', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000031');
INSERT INTO[cctv_taipei_t] VALUES ('28', 'C000032', '林口區文化一路、林口交流道\r', '121.368497', '25.065982', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000032');
INSERT INTO[cctv_taipei_t] VALUES ('29', 'C000033', '新店區寶橋路235巷', '121.551606', '24.978978', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000033');
INSERT INTO[cctv_taipei_t] VALUES ('30', 'C000034', '板橋區文化路2段、民生路2段(文化路中央分隔島)', '121.468443', '25.023203', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000034');
INSERT INTO[cctv_taipei_t] VALUES ('31', 'C000037', '板橋區光復橋', '121.486167', '25.022550', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000037');
INSERT INTO[cctv_taipei_t] VALUES ('32', 'C000039', '板橋區台64線萬板路上方', '121.470233', '25.019830', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000039');
INSERT INTO[cctv_taipei_t] VALUES ('33', 'C000040', '中和區中正路、連城路2', '121.485117', '24.996033', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000040');
INSERT INTO[cctv_taipei_t] VALUES ('34', 'C000041', '新店區安和路、中安大橋', '121.516745', '24.979429', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000041');
INSERT INTO[cctv_taipei_t] VALUES ('35', 'C000042', '新店區環河路、中正路', '121.533292', '24.991722', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000042');
INSERT INTO[cctv_taipei_t] VALUES ('36', 'C000043', '新店區北新路1段、安康路1段', '121.539064', '24.961962', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000043');
INSERT INTO[cctv_taipei_t] VALUES ('37', 'C000044', '新店區北新路3段、民權路', '121.541251', '24.982946', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000044');
INSERT INTO[cctv_taipei_t] VALUES ('38', 'C000045', '新店區安康路、安坑交流道\r', '121.519612', '24.963910', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000045');
INSERT INTO[cctv_taipei_t] VALUES ('39', 'C000046', '汐止區大同路1段、民權街', '121.621554', '25.054932', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000046');
INSERT INTO[cctv_taipei_t] VALUES ('40', 'C000047', '汐止區大同路1段、南陽大橋', '121.630840', '25.054949', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000047');
INSERT INTO[cctv_taipei_t] VALUES ('41', 'C000048', '汐止區大同路1段、新台五路1段\r', '121.633280', '25.056958', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000048');
INSERT INTO[cctv_taipei_t] VALUES ('42', 'C000049', '汐止區新台五路1段、國道三號下匝道\r', '121.637046', '25.055824', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000049');
INSERT INTO[cctv_taipei_t] VALUES ('43', 'C000050', '汐止區新台五路1段、國道三號上匝道\r', '121.645384', '25.060418', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000050');
INSERT INTO[cctv_taipei_t] VALUES ('44', 'C000051', '汐止區大同路2段、汐萬路1段', '121.656113', '25.066811', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000051');
INSERT INTO[cctv_taipei_t] VALUES ('45', 'C000052', '板橋區文化路2段、雙十路\r', '121.472173', '25.029787', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000052');
INSERT INTO[cctv_taipei_t] VALUES ('46', 'C000053', '板橋區文化路、新站路', '121.463035', '25.016232', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000053');
INSERT INTO[cctv_taipei_t] VALUES ('47', 'C000054', '板橋區民生路、萬板路\r', '121.469901', '25.020297', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000054');
INSERT INTO[cctv_taipei_t] VALUES ('48', 'C000056', '永和區永和路、中山路(中正路)\r', '121.514534', '25.010331', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000056');
INSERT INTO[cctv_taipei_t] VALUES ('49', 'C000057', '永和區中正路、福和路\r', '121.516898', '25.007383', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000057');
INSERT INTO[cctv_taipei_t] VALUES ('50', 'C000058', '永和區中正路、永貞路\r', '121.517175', '25.004174', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000058');
INSERT INTO[cctv_taipei_t] VALUES ('51', 'C000060', '中和區板南路、中正路161巷\r', '121.498281', '24.993552', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000060');
INSERT INTO[cctv_taipei_t] VALUES ('52', 'C000061', '中和區南山路、興南路1段\r', '121.507914', '24.986458', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000061');
INSERT INTO[cctv_taipei_t] VALUES ('53', 'C000064', '中和區中正路、中興街', '121.500092', '24.993498', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000064');
INSERT INTO[cctv_taipei_t] VALUES ('54', 'C000066', '三重區重新路、中正南路\r', '121.493268', '25.061019', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000066');
INSERT INTO[cctv_taipei_t] VALUES ('55', 'C000067', '三重區重新路、福德北路\r', '121.502551', '25.063927', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000067');
INSERT INTO[cctv_taipei_t] VALUES ('56', 'C000068', '三重區自強路、重陽路', '121.490559', '25.068649', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000068');
INSERT INTO[cctv_taipei_t] VALUES ('57', 'C000069', '三重區重安街、中正南路\r', '121.493383', '25.055812', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000069');
INSERT INTO[cctv_taipei_t] VALUES ('58', 'C000070', '三重區重陽路、中山路', '121.486762', '25.061335', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000070');
INSERT INTO[cctv_taipei_t] VALUES ('59', 'C000071', '蘆洲區永安南路、中山一路', '121.468363', '25.076387', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000071');
INSERT INTO[cctv_taipei_t] VALUES ('60', 'C000072', '蘆洲區集賢路、三和路\r', '121.479692', '25.080682', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000072');
INSERT INTO[cctv_taipei_t] VALUES ('61', 'C000073', '蘆洲區三民路、中山一路\r', '121.476088', '25.081683', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000073');
INSERT INTO[cctv_taipei_t] VALUES ('62', 'C000074', '新北環快，三重龍門路與環快匝道交會處\r', '121.502877', '25.074390', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000074');
INSERT INTO[cctv_taipei_t] VALUES ('63', 'C000075', '新北環快，南下3K+880門架\r', '121.484424', '25.047172', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000075');
INSERT INTO[cctv_taipei_t] VALUES ('64', 'C000076', '新北環快，南下5K+232板橋匝道分流處\r', '121.480651', '25.039789', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000076');
INSERT INTO[cctv_taipei_t] VALUES ('65', 'C000077', '新北環快，南下8K+555中和永和下匝道處\r', '121.487310', '25.013984', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000077');
INSERT INTO[cctv_taipei_t] VALUES ('66', 'C000078', '新北環快，北上1K+820下福德南路分流處\r', '121.500582', '25.057485', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000078');
INSERT INTO[cctv_taipei_t] VALUES ('67', 'C000079', '新北環快，北上2K+900中興橋上環快主線\r', '121.493425', '25.051622', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000079');
INSERT INTO[cctv_taipei_t] VALUES ('68', 'C000080', '新北環快，北上3K+420台北中興橋匝道分流\r', '121.488866', '25.047848', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000080');
INSERT INTO[cctv_taipei_t] VALUES ('69', 'C000082', '新北環快，北上5K+015(重翠橋中段)', '121.479864', '25.042254', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000082');
INSERT INTO[cctv_taipei_t] VALUES ('70', 'C000083', '新北環快，北上6K+871萬華匝道分流處', '121.484370', '25.025923', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000083');
INSERT INTO[cctv_taipei_t] VALUES ('71', 'C000084', '新北環快，北上8K+240中和光環路上匝道口\r', '121.487095', '25.015890', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000084');
INSERT INTO[cctv_taipei_t] VALUES ('72', 'C000085', '三重區環河南路重安街口', '121.496342', '25.054172', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000085');
INSERT INTO[cctv_taipei_t] VALUES ('73', 'C000086', '新北環快，三重成功路平面匝道口(雙向)\r', '121.490561', '25.049340', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000086');
INSERT INTO[cctv_taipei_t] VALUES ('74', 'C000087', '新北環快，福德南路平面匝道口\r', '121.503199', '25.061525', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000087');
INSERT INTO[cctv_taipei_t] VALUES ('75', 'C000088', '新北環快，北上5K+733\r', '121.481506', '25.036898', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000088');
INSERT INTO[cctv_taipei_t] VALUES ('76', 'C000089', '新北環快，南下5K+733台64上主線匝道口\r', '121.481516', '25.037238', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000089');
INSERT INTO[cctv_taipei_t] VALUES ('77', 'C000090', '新北環快，南下7K+388 F型鋼構\r', '121.485883', '25.021363', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000090');
INSERT INTO[cctv_taipei_t] VALUES ('78', 'C000091', '新北環快，北上7K+388\r', '121.485829', '25.021004', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000091');
INSERT INTO[cctv_taipei_t] VALUES ('79', 'C000092', '新北環快，南下斜張橋北側(三重機車道上來往板橋方向)', '121.487117', '25.047138', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000092');
INSERT INTO[cctv_taipei_t] VALUES ('80', 'C000093', '新北環快，北上斜張橋北側(往三重機車道)', '121.487224', '25.046934', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000093');
INSERT INTO[cctv_taipei_t] VALUES ('81', 'C000094', '新北環快，北上3K+791.5三重成功路匝道分流\r', '121.487052', '25.046998', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000094');
INSERT INTO[cctv_taipei_t] VALUES ('82', 'C000095', '新北環快，北下斜張橋南側(人行步道)', '121.481969', '25.047150', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000095');
INSERT INTO[cctv_taipei_t] VALUES ('83', 'C000096', '新北環快，南下斜張橋南側(人行步道)\r', '121.481969', '25.047150', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000096');
INSERT INTO[cctv_taipei_t] VALUES ('84', 'C000097', '新北環快，北上4K+080', '121.483319', '25.047124', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000097');
INSERT INTO[cctv_taipei_t] VALUES ('85', 'C000098', '新北環快，南下4K+168.5新莊匝道分流處(往新莊環河路)\r', '121.480971', '25.047425', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000098');
INSERT INTO[cctv_taipei_t] VALUES ('86', 'C000099', '土城區城林路、亞洲路', '121.437099', '24.975419', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000099');
INSERT INTO[cctv_taipei_t] VALUES ('87', 'C000100', '台65線7.6K處', '121.452055', '25.000834', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000100');
INSERT INTO[cctv_taipei_t] VALUES ('88', 'C000102', '新莊區中環路、中原路\r', '121.442327', '25.054348', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000102');
INSERT INTO[cctv_taipei_t] VALUES ('89', 'C000103', '新莊區中環路、新泰路', '121.442361', '25.046176', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000103');
INSERT INTO[cctv_taipei_t] VALUES ('90', 'C000104', '新莊區中環路、幸福路\r', '121.442311', '25.049141', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000104');
INSERT INTO[cctv_taipei_t] VALUES ('91', 'C000105', '新莊區中環路、中正路', '121.441916', '25.034137', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000105');
INSERT INTO[cctv_taipei_t] VALUES ('92', 'C000106', '泰山區中山路、貴子路\r', '121.429527', '25.040164', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000106');
INSERT INTO[cctv_taipei_t] VALUES ('93', 'C000107', '泰山區中山路、泰林路\r', '121.438563', '25.052346', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000107');
INSERT INTO[cctv_taipei_t] VALUES ('94', 'C000108', '新莊區中正路、新泰路\r', '121.448911', '25.035346', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000108');
INSERT INTO[cctv_taipei_t] VALUES ('95', 'C000109', '新莊區中華路、中原路\r', '121.451999', '25.054497', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000109');
INSERT INTO[cctv_taipei_t] VALUES ('96', 'C000110', '新莊區中華路、幸福路\r', '121.452562', '25.049178', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000110');
INSERT INTO[cctv_taipei_t] VALUES ('97', 'C000111', '新北環快，忠孝橋三重端上方', '121.496627', '25.054302', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000111');
INSERT INTO[cctv_taipei_t] VALUES ('98', 'C000112', '新莊區台1高架，中山路思源路口(中山路東向上方)\r', '121.459951', '25.060471', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000112');
INSERT INTO[cctv_taipei_t] VALUES ('99', 'C000113', '泰山區台1高架，民生路上、下匝道口(既有F型鋼構)', '121.434763', '25.046975', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000113');
INSERT INTO[cctv_taipei_t] VALUES ('100', 'C000114', '泰山台65線泰山交流道(西)', '121.439081', '25.063530', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000114');
INSERT INTO[cctv_taipei_t] VALUES ('101', 'C000115', '板橋區環河路、湳仔橋(環河路170號前號誌桿上)\r', '121.451682', '25.000875', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000115');
INSERT INTO[cctv_taipei_t] VALUES ('102', 'C000116', '板橋區板城路、縣民大道', '121.452948', '25.003719', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000116');
INSERT INTO[cctv_taipei_t] VALUES ('103', 'C000117', '永和區環河西路二段近保順路口', '121.502725', '25.011579', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000117');
INSERT INTO[cctv_taipei_t] VALUES ('104', 'C000118', '永和區環河西路二段與新生路210巷口(平面)', '121.505188', '25.013466', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000118');
INSERT INTO[cctv_taipei_t] VALUES ('105', 'C000119', '永和區環河西路二段與新生路210巷口(高架)', '121.505211', '25.013536', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000119');
INSERT INTO[cctv_taipei_t] VALUES ('106', 'C000120', '永和區環河西路一段95巷4弄3號前(高架)', '121.511528', '25.017572', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000120');
INSERT INTO[cctv_taipei_t] VALUES ('107', 'C000121', '永和區環河西路一段85巷前(高架)', '121.512660', '25.018063', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000121');
INSERT INTO[cctv_taipei_t] VALUES ('108', 'C000122', '永和區環河東路一段、光復路口', '121.516686', '25.017768', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000122');
INSERT INTO[cctv_taipei_t] VALUES ('109', 'C000123', '永和區環河東路一段170號、竹林路75巷4弄口', '121.521529', '25.014273', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000123');
INSERT INTO[cctv_taipei_t] VALUES ('110', 'C000124', '永和區環河東路二段、豫溪街191巷口(往新店側)', '121.524094', '25.010496', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000124');
INSERT INTO[cctv_taipei_t] VALUES ('111', 'C000125', '永和區環河東路二段、豫溪街191巷口(往板橋側)', '121.524057', '25.010484', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000125');
INSERT INTO[cctv_taipei_t] VALUES ('112', 'C000126', '永和區環河東路三段、林森路口', '121.526954', '25.006028', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000126');
INSERT INTO[cctv_taipei_t] VALUES ('113', 'C000127', '永和區環河東路三段、民樂街39巷口(天琴大樓)往新店側', '121.529005', '25.000512', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000127');
INSERT INTO[cctv_taipei_t] VALUES ('114', 'C000128', '永和區環河東路三段、民樂街39巷口(天琴大樓)往中和側', '121.529110', '25.000504', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000128');
INSERT INTO[cctv_taipei_t] VALUES ('115', 'C000129', '板橋區新北環快，華翠橋', '121.484047', '25.026924', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000129');
INSERT INTO[cctv_taipei_t] VALUES ('116', 'C000130', '板橋區新北環快，萬板橋', '121.483714', '25.027994', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000130');
INSERT INTO[cctv_taipei_t] VALUES ('117', 'C000131', '板橋區浮洲橋上(路燈桿上)，環河道路上方近樹林', '121.435241', '24.995423', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000131');
INSERT INTO[cctv_taipei_t] VALUES ('118', 'C000132', '板橋區三民路與中正路(北側號誌桿上)', '121.478724', '25.011340', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000132');
INSERT INTO[cctv_taipei_t] VALUES ('119', 'C000133', '板橋區三民路、縣民大道(華翠橋)(南側路燈桿上)', '121.478380', '25.024018', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000133');
INSERT INTO[cctv_taipei_t] VALUES ('120', 'C000134', '永和區中正橋(台北往永和環快分流F桿上)', '121.515482', '25.018495', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000134');
INSERT INTO[cctv_taipei_t] VALUES ('121', 'C000135', '永和區永福橋上(環河東路三段上方)', '121.525265', '25.009123', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000135');
INSERT INTO[cctv_taipei_t] VALUES ('122', 'C000136', '永和區福和橋上(環河東路三段上方)(路燈桿上)', '121.527282', '25.005973', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000136');
INSERT INTO[cctv_taipei_t] VALUES ('123', 'C000137', '永和區林森路、永元路口(南側號誌門架上)', '121.522819', '25.003406', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000137');
INSERT INTO[cctv_taipei_t] VALUES ('124', 'C000138', '永和區福和路與永貞路口(南側警用桿上)', '121.520781', '25.007801', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000138');
INSERT INTO[cctv_taipei_t] VALUES ('125', 'C000139', '中和區景平路、環河東路口(秀朗橋門架上)', '121.527196', '24.990142', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000139');
INSERT INTO[cctv_taipei_t] VALUES ('126', 'C000140', '中和區中山路、漢民路口(南側號誌桿上)', '121.472415', '25.006517', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000140');
INSERT INTO[cctv_taipei_t] VALUES ('127', 'C000141', '中和區中山路、中和路口(中山路行人陸橋上)', '121.499516', '25.002647', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000141');
INSERT INTO[cctv_taipei_t] VALUES ('128', 'C000142', '中和區中和路、景安路口(西側號誌桿上)', '121.508142', '24.999614', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000142');
INSERT INTO[cctv_taipei_t] VALUES ('129', 'C000143', '中和區中山路、建一路口(南側號誌桿上)', '121.487950', '25.004806', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000143');
INSERT INTO[cctv_taipei_t] VALUES ('130', 'C000144', '中和區中正路、錦和路口(東側號誌桿上)', '121.490525', '24.994304', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000144');
INSERT INTO[cctv_taipei_t] VALUES ('131', 'C000145', '土城區台65高架上(中央路三段與大安路口上方)(西側路燈桿上)', '121.432718', '24.966393', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000145');
INSERT INTO[cctv_taipei_t] VALUES ('132', 'C000146', '土城區中央路三段、中華路二段口(北側號誌桿上)', '121.438126', '24.968513', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000146');
INSERT INTO[cctv_taipei_t] VALUES ('133', 'C000147', '新店區中正路、復興路口(南側號誌桿上)', '121.533741', '24.988022', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000147');
INSERT INTO[cctv_taipei_t] VALUES ('134', 'C000148', '新店區中興路三段、寶慶街口(北側號誌桿上)', '121.542015', '24.986748', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000148');
INSERT INTO[cctv_taipei_t] VALUES ('135', 'C000149', '新店區中興路二段、國道3號匝道口(東側號誌桿上)', '121.547390', '24.971859', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000149');
INSERT INTO[cctv_taipei_t] VALUES ('136', 'C000150', '新店區北新路二段、寶橋路口(南側號誌桿上)', '121.542982', '24.973512', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000150');
INSERT INTO[cctv_taipei_t] VALUES ('137', 'C000151', '新店區環河路、中央路口(東側號誌桿上)', '121.529106', '24.972287', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000151');
INSERT INTO[cctv_taipei_t] VALUES ('138', 'C000152', '新店區環河路、中山路口(南側號誌門架上)', '121.523636', '24.977860', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000152');
INSERT INTO[cctv_taipei_t] VALUES ('139', 'C000153', '新店區安康路一段、華城路口(北側號誌桿上)', '121.530599', '24.961082', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000153');
INSERT INTO[cctv_taipei_t] VALUES ('140', 'C000154', '新店區北宜路二段、新烏路口(北側號誌桿上)', '121.547540', '24.952046', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000154');
INSERT INTO[cctv_taipei_t] VALUES ('141', 'C000155', '新店區北新路三段、順安街口(南側號誌桿上)', '121.540942', '24.984706', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000155');
INSERT INTO[cctv_taipei_t] VALUES ('142', 'C000156', '新店區安康路二段與安和路一段', '121.516918', '24.964078', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000156');
INSERT INTO[cctv_taipei_t] VALUES ('143', 'C000157', '深坑區新光路二段、文山路三段(西側號誌桿上)', '121.599961', '25.002122', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000157');
INSERT INTO[cctv_taipei_t] VALUES ('144', 'C000158', '石碇區文山路一段、國五南下匝道口(西側號誌桿上)', '121.646921', '25.008549', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000158');
INSERT INTO[cctv_taipei_t] VALUES ('145', 'C000159', '八里區龍米路一段65巷口(西側號誌桿上)', '121.455461', '25.121949', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000159');
INSERT INTO[cctv_taipei_t] VALUES ('146', 'C000160', '淡水區民權路、民富街口(南側號誌桿上)', '121.459629', '25.140341', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000160');
INSERT INTO[cctv_taipei_t] VALUES ('147', 'C000161', '新莊區中山路、青山路口(南側號誌桿上)', '121.412183', '25.027653', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000161');
INSERT INTO[cctv_taipei_t] VALUES ('148', 'C000162', '新莊區中山路、中正路口(南側號誌桿上)', '121.414093', '25.023279', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000162');
INSERT INTO[cctv_taipei_t] VALUES ('149', 'C000163', '新莊區新五路、中山路口(北側號誌桿上)', '121.443104', '25.057553', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000163');
INSERT INTO[cctv_taipei_t] VALUES ('150', 'C000164', '三重區自強路五段、仁義街口', '121.496117', '25.082800', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000164');
INSERT INTO[cctv_taipei_t] VALUES ('151', 'C000165', '三重區重新路二段、正義北路口(西側號誌桿上)', '121.497908', '25.062276', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000165');
INSERT INTO[cctv_taipei_t] VALUES ('152', 'C000166', '三重區集賢路、三信路口(西側號誌桿上)', '121.491407', '25.089165', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000166');
INSERT INTO[cctv_taipei_t] VALUES ('153', 'C000167', '蘆洲區成蘆大橋環河分流點(西側路燈桿上)', '121.459274', '25.095966', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000167');
INSERT INTO[cctv_taipei_t] VALUES ('154', 'C000168', '五股區中興路四段、新五路二段(北側號誌桿上)', '121.440370', '25.082179', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000168');
INSERT INTO[cctv_taipei_t] VALUES ('155', 'C000169', '林口區文化北路一段、八德一路口', '121.355428', '25.066047', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000169');
INSERT INTO[cctv_taipei_t] VALUES ('156', 'C000170', '三峽區復興路、國3南下匝道口(西側號誌桿上)', '121.357758', '24.939876', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000170');
INSERT INTO[cctv_taipei_t] VALUES ('157', 'C000171', '汐止區新台五路一段、新興路口', '121.656929', '25.063695', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000171');
INSERT INTO[cctv_taipei_t] VALUES ('158', 'C000172', '淡水區民權路、自強路口', '121.463057', '25.124679', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000172');
INSERT INTO[cctv_taipei_t] VALUES ('159', 'C000174', '淡水區中正東路一段3巷口', '121.450498', '25.164800', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000174');
INSERT INTO[cctv_taipei_t] VALUES ('160', 'C000175', '淡水區淡金路中正東路口', '121.457974', '25.157947', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000175');
INSERT INTO[cctv_taipei_t] VALUES ('161', 'C000176', '淡水區中正路、中山路口', '121.444565', '25.169121', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000176');
INSERT INTO[cctv_taipei_t] VALUES ('162', 'C000178', '淡水區文化路、新生街', '121.438710', '25.172970', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000178');
INSERT INTO[cctv_taipei_t] VALUES ('163', 'C000179', '淡水區中山北路三段、淡金路口', '121.446215', '25.197602', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000179');
INSERT INTO[cctv_taipei_t] VALUES ('164', 'C000184', '林口區文化二路忠孝二路', '121.365747', '25.069060', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000184');
INSERT INTO[cctv_taipei_t] VALUES ('165', 'C000185', '林口區文化三路一段191巷', '121.362308', '25.069989', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000185');
INSERT INTO[cctv_taipei_t] VALUES ('166', 'C000186', '三峽區復興路隆恩街', '121.356657', '24.940456', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000186');
INSERT INTO[cctv_taipei_t] VALUES ('167', 'C000187', '三峽區復興路、學成路(國慶路口)', '121.368245', '24.938951', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000187');
INSERT INTO[cctv_taipei_t] VALUES ('168', 'C000188', '土城區城林路中華路', '121.438694', '24.975245', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000188');
INSERT INTO[cctv_taipei_t] VALUES ('169', 'C000189', '汐止區大同路禮門街', '121.656913', '25.067086', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000189');
INSERT INTO[cctv_taipei_t] VALUES ('170', 'C000192', '八里區領港路商港路口', '121.392728', '25.150365', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000192');
INSERT INTO[cctv_taipei_t] VALUES ('171', 'C000193', '八里區中華路商港路口', '121.397604', '25.144049', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000193');
INSERT INTO[cctv_taipei_t] VALUES ('172', 'C000194', '三重區台1高架，重新路上分路燈桿', '121.489306', '25.058405', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000194');
INSERT INTO[cctv_taipei_t] VALUES ('173', 'C000195', '新莊區台1高架，化成路上方門架', '121.464651', '25.061214', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000195');
INSERT INTO[cctv_taipei_t] VALUES ('174', 'C000196', '新莊區台1高架，中信街上方門架', '121.446693', '25.059476', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000196');
INSERT INTO[cctv_taipei_t] VALUES ('175', 'C000197', '五股區成泰路洲后路', '121.452856', '25.103780', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000197');
INSERT INTO[cctv_taipei_t] VALUES ('176', 'C000199', '五股區台65往南,O K門架', '121.438031', '25.065548', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000199');
INSERT INTO[cctv_taipei_t] VALUES ('177', 'C000200', '三重區台1高架,疏洪東路上方門架', '121.479614', '25.061489', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000200');
INSERT INTO[cctv_taipei_t] VALUES ('178', 'C000201', '三重區重新路2段92號(CMS共構)', '121.497028', '25.061864', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000201');
INSERT INTO[cctv_taipei_t] VALUES ('179', 'C000202', '三重區成功路106-2號(CMS共構)', '121.487342', '25.051648', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000202');
INSERT INTO[cctv_taipei_t] VALUES ('180', 'C000203', '三重區重新路四段184巷(CMS共構)', '121.486273', '25.055126', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000203');
INSERT INTO[cctv_taipei_t] VALUES ('181', 'C000204', '坪林區國中路1號旁(消防隊)', '121.712583', '24.936470', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000204');
INSERT INTO[cctv_taipei_t] VALUES ('182', 'C000205', '坪林區國中路坪林管制站前(往國5)', '121.712555', '24.941763', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000205');
INSERT INTO[cctv_taipei_t] VALUES ('183', 'C000206', '板橋區新北環快、環河西路匝道', '121.477986', '25.037936', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000206');
INSERT INTO[cctv_taipei_t] VALUES ('184', 'C000207', '新莊區中正路、思源路(大漢橋匝道)', '121.460015', '25.039883', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000207');
INSERT INTO[cctv_taipei_t] VALUES ('185', 'C000208', '板橋區縣民大道、館前西路', '121.457919', '25.006919', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000208');
INSERT INTO[cctv_taipei_t] VALUES ('186', 'C000209', '板橋區中山路、重慶路', '121.460276', '25.008394', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000209');
INSERT INTO[cctv_taipei_t] VALUES ('187', 'C000210', '板橋區縣民大道、南雅南路', '121.454870', '25.003997', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000210');
INSERT INTO[cctv_taipei_t] VALUES ('188', 'C000211', '泰山台65線泰山交流道(東)', '121.439304', '25.063715', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000211');
INSERT INTO[cctv_taipei_t] VALUES ('189', 'C000212', '泰山區新五路台1高架入口', '121.441485', '25.059432', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000212');
INSERT INTO[cctv_taipei_t] VALUES ('190', 'C000213', '三芝區淡金公路(台2)、淡金路1段(往三芝市區)', '121.498060', '25.259760', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000213');
INSERT INTO[cctv_taipei_t] VALUES ('191', 'C000214', '三芝區台2、白沙灣風景區(約台2 22K+800處)', '121.519890', '25.282470', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000214');
INSERT INTO[cctv_taipei_t] VALUES ('192', 'C000215', '板橋區民生路三段119巷(號誌控制器旁L桿)', '121.465520', '25.027170', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000215');
INSERT INTO[cctv_taipei_t] VALUES ('193', 'C000216', '三峽區介壽路二段(台3)、龍埔路', '121.390220', '24.935020', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000216');
INSERT INTO[cctv_taipei_t] VALUES ('194', 'C000217', '樹林區中山路二段、中華路(大安路)', '121.410470', '24.980750', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000217');
INSERT INTO[cctv_taipei_t] VALUES ('195', 'C000218', '樹林區柑園街一段、柑園二橋', '121.405990', '24.961970', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000218');
INSERT INTO[cctv_taipei_t] VALUES ('196', 'C000219', '樹林區環河路、柑園二橋', '121.404650', '24.969290', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000219');
INSERT INTO[cctv_taipei_t] VALUES ('197', 'C000220', '樹林區佳園路三段、學府路', '121.386920', '24.951270', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000220');
INSERT INTO[cctv_taipei_t] VALUES ('198', 'C000221', '鶯歌區文化路、尖山路', '121.352320', '24.950650', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000221');
INSERT INTO[cctv_taipei_t] VALUES ('199', 'C000222', '鶯歌區中山高架橋、西湖街', '121.340270', '24.958190', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000222');
INSERT INTO[cctv_taipei_t] VALUES ('200', 'C000223', '新店區順安街、寶慶街(景美橋)', '121.540780', '24.986790', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000223');
INSERT INTO[cctv_taipei_t] VALUES ('201', 'C000224', '鶯歌區鶯桃路、福德一路', '121.330830', '24.967560', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000224');
INSERT INTO[cctv_taipei_t] VALUES ('202', 'C000225', '瑞芳區建基路二段55號', '121.806910', '25.133500', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000225');
INSERT INTO[cctv_taipei_t] VALUES ('203', 'C000226', '瑞芳區台2、台2丁', '121.822090', '25.120970', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000226');
INSERT INTO[cctv_taipei_t] VALUES ('204', 'C000227', '瑞芳區台2、台62出口', '121.819480', '25.122630', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000227');
INSERT INTO[cctv_taipei_t] VALUES ('205', 'C000228', '瑞芳區台2、北34', '121.863830', '25.122480', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000228');
INSERT INTO[cctv_taipei_t] VALUES ('206', 'C000229', '瑞芳區台2丁、106縣道(靜安路)', '121.793220', '25.110580', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000229');
INSERT INTO[cctv_taipei_t] VALUES ('207', 'C000230', '瑞芳區台2丁、明燈路二段', '121.809330', '25.107450', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000230');
INSERT INTO[cctv_taipei_t] VALUES ('208', 'C000231', '瑞芳區台2丁、台62瑞芳一匝道', '121.796470', '25.110020', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000231');
INSERT INTO[cctv_taipei_t] VALUES ('209', 'C000232', '瑞芳區瑞金公路、基山街', '121.845140', '25.109950', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000232');
INSERT INTO[cctv_taipei_t] VALUES ('210', 'C000233', '瑞芳區瑞金公路、北35', '121.842850', '25.109600', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000233');
INSERT INTO[cctv_taipei_t] VALUES ('211', 'C000234', '樹林區佳園路三段66巷', '121.387454', '24.952058', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000234');
INSERT INTO[cctv_taipei_t] VALUES ('212', 'C000235', '貢寮區興隆街(台2)、下雙溪街(台2丙)', '121.933250', '25.019000', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000235');
INSERT INTO[cctv_taipei_t] VALUES ('213', 'C000236', '金山區環金路(台2)、中山路', '121.641680', '25.217400', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000236');
INSERT INTO[cctv_taipei_t] VALUES ('214', 'C000237', '金山區台2、台2甲', '121.631830', '25.221310', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000237');
INSERT INTO[cctv_taipei_t] VALUES ('215', 'C000238', '鶯歌區鶯桃路、鶯歌路', '121.330467', '24.968084', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000238');
INSERT INTO[cctv_taipei_t] VALUES ('216', 'C000239', '萬里區台2、瑪鍊路', '121.688280', '25.182290', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000239');
INSERT INTO[cctv_taipei_t] VALUES ('217', 'C000240', '萬里區台2、玉田路(近明光港測)', '121.674290', '25.201370', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000240');
INSERT INTO[cctv_taipei_t] VALUES ('218', 'C000241', '萬里區景美路、中福路', '121.687700', '25.175600', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000241');
INSERT INTO[cctv_taipei_t] VALUES ('219', 'C000242', '萬里區台2、玉田路(近翡翠灣飯店)', '121.683230', '25.187580', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000242');
INSERT INTO[cctv_taipei_t] VALUES ('220', 'C000243', '汐止區新台五路、國3北上出口匝道', '121.640190', '25.056450', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000243');
INSERT INTO[cctv_taipei_t] VALUES ('221', 'C000244', '汐止區工建路、新社后橋', '121.636700', '25.062500', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000244');
INSERT INTO[cctv_taipei_t] VALUES ('222', 'C000245', '汐止區大同路一段、中興路', '121.637560', '25.058830', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000245');
INSERT INTO[cctv_taipei_t] VALUES ('223', 'C000246', '新店區環河路、安康路(碧潭大橋)', '121.537150', '24.961330', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000246');
INSERT INTO[cctv_taipei_t] VALUES ('224', 'C000247', '樹林區八德街、東榮街(八德地下道)', '121.418340', '24.983690', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000247');
INSERT INTO[cctv_taipei_t] VALUES ('225', 'C000248', '五股區成蘆橋(防汛道路正上方)', '121.453810', '25.102150', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000248');
INSERT INTO[cctv_taipei_t] VALUES ('226', 'C000249', '三重區重陽橋', '121.499220', '25.084530', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000249');
INSERT INTO[cctv_taipei_t] VALUES ('227', 'C000250', '蘆洲區永安大橋', '121.455070', '25.081470', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000250');
INSERT INTO[cctv_taipei_t] VALUES ('228', 'C000251', '板橋區城林橋(板橋端)', '121.428840', '24.980720', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000251');
INSERT INTO[cctv_taipei_t] VALUES ('229', 'C000252', '八里區關渡大橋(八里龍米路上方門架)', '121.455070', '25.124330', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000252');
INSERT INTO[cctv_taipei_t] VALUES ('230', 'C000253', '新莊區中正路、建國一路', '121.433630', '25.032440', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000253');
INSERT INTO[cctv_taipei_t] VALUES ('231', 'C000254', '板橋區新北環快華江橋上方', '121.481470', '25.035850', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000254');
INSERT INTO[cctv_taipei_t] VALUES ('232', 'C000255', '新莊區環河道路、21號越堤道', '121.435510', '25.001800', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000255');
INSERT INTO[cctv_taipei_t] VALUES ('233', 'C000256', '三重區台1高架與重陽路上方', '121.486760', '25.061480', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000256');
INSERT INTO[cctv_taipei_t] VALUES ('234', 'C000257', '三重區重新橋(新莊端)', '121.479690', '25.049560', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000257');
INSERT INTO[cctv_taipei_t] VALUES ('235', 'C000258', '泰山區泰林路二段、大科路', '121.420050', '25.064870', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000258');
INSERT INTO[cctv_taipei_t] VALUES ('236', 'C000259', '新莊區建國一路138號(新莊好市多)', '121.434934', '25.027186', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000259');
INSERT INTO[cctv_taipei_t] VALUES ('237', 'C000260', '烏來區信福路北107道8.7K(養工處)', '121.578823', '24.849665', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000260');
INSERT INTO[cctv_taipei_t] VALUES ('238', 'C000261', '五股區新五路、自強路口', '121.437103', '25.074076', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000261');
INSERT INTO[cctv_taipei_t] VALUES ('239', 'C000262', '五股區新五路、蓬萊路口', '121.438498', '25.078554', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000262');
INSERT INTO[cctv_taipei_t] VALUES ('240', 'C000263', '林口區文化一路1段、仁愛路2段路口', '121.377570', '25.074480', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000263');
INSERT INTO[cctv_taipei_t] VALUES ('241', 'C000264', '林口區文化一路1段、忠孝路口', '121.371200', '25.069610', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000264');
INSERT INTO[cctv_taipei_t] VALUES ('242', 'C000265', '林口區文化三路1段、仁愛路2段路口', '121.372790', '25.078090', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000265');
INSERT INTO[cctv_taipei_t] VALUES ('243', 'C000266', '林口區文化三路1段、八德路口', '121.361220', '25.065600', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000266');
INSERT INTO[cctv_taipei_t] VALUES ('244', 'C000267', '林口區中山路、粉寮路1段路口', '121.396700', '25.078160', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000267');
INSERT INTO[cctv_taipei_t] VALUES ('245', 'C000268', '三重區光復路2段、疏洪西路', '121.472150', '25.062050', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000268');
INSERT INTO[cctv_taipei_t] VALUES ('246', 'C000269', '五股區成泰路4段22巷口', '121.453420', '25.106920', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000269');
INSERT INTO[cctv_taipei_t] VALUES ('247', 'C000270', '中和區橋和路、中山路2段332巷口', '121.493350', '25.006090', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000270');
INSERT INTO[cctv_taipei_t] VALUES ('248', 'C000271', '蘆洲區中原路永安南路口', '121.457389', '25.081527', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000271');
INSERT INTO[cctv_taipei_t] VALUES ('249', 'C000272', '新店區寶橋路、中興路口', '121.547006', '24.976025', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000272');
INSERT INTO[cctv_taipei_t] VALUES ('250', 'C000273', '樹林區學府路、大義路口(三鶯二橋)', '121.376164', '24.949691', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000273');
INSERT INTO[cctv_taipei_t] VALUES ('251', 'C000274', '樹林區大義路柑園路二段', '121.374620', '24.952310', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000274');
INSERT INTO[cctv_taipei_t] VALUES ('252', 'C000275', '汐止區大同路、同興路', '121.639140', '25.059580', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000275');
INSERT INTO[cctv_taipei_t] VALUES ('253', 'C000276', '汐止區大同路、樟樹二路口', '121.640270', '25.060100', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000276');
INSERT INTO[cctv_taipei_t] VALUES ('254', 'C000277', '汐止區大同路、樟樹一路口', '121.642350', '25.061040', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000277');
INSERT INTO[cctv_taipei_t] VALUES ('255', 'C000278', '汐止區大同路、南興路口', '121.651620', '25.063970', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000278');
INSERT INTO[cctv_taipei_t] VALUES ('256', 'C000279', '汐止區大同路、信義路口', '121.662250', '25.069340', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000279');
INSERT INTO[cctv_taipei_t] VALUES ('257', 'C000280', '汐止區大同路、鄉長路一段', '121.665260', '25.073220', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000280');
INSERT INTO[cctv_taipei_t] VALUES ('258', 'C000281', '汐止區大同路、中國貨櫃', '121.673800', '25.075470', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000281');
INSERT INTO[cctv_taipei_t] VALUES ('259', 'C000282', '汐止區大同路、汐平路', '121.680590', '25.071170', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000282');
INSERT INTO[cctv_taipei_t] VALUES ('260', 'C000283', '汐止區大同路、保新街', '121.683630', '25.073480', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000283');
INSERT INTO[cctv_taipei_t] VALUES ('261', 'C000284', '三重區環河路、三信路', '121.492380', '25.089890', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000284');
INSERT INTO[cctv_taipei_t] VALUES ('262', 'C000285', '五股區成泰路、新五路', '121.444130', '25.090080', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000285');
INSERT INTO[cctv_taipei_t] VALUES ('263', 'C000286', '三峽區台3線、台7乙', '121.365920', '24.910040', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000286');
INSERT INTO[cctv_taipei_t] VALUES ('264', 'C000287', '三峽區中正路、中園街', '121.366950', '24.919160', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000287');
INSERT INTO[cctv_taipei_t] VALUES ('265', 'C000288', '淡水區中正東路2段143巷', '121.459610', '25.147620', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000288');
INSERT INTO[cctv_taipei_t] VALUES ('266', 'C000289', '三峽區文化路、中山路', '121.366030', '24.935650', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000289');
INSERT INTO[cctv_taipei_t] VALUES ('267', 'C000290', '板橋區華翠橋(三民路上方路南向燈桿)', '121.478566', '25.023895', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000290');
INSERT INTO[cctv_taipei_t] VALUES ('268', 'C000291', '板橋區民權路、民族路', '121.463155', '25.009390', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000291');
INSERT INTO[cctv_taipei_t] VALUES ('269', 'C000292', '中和區中山路民有街口', '121.475561', '25.005852', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000292');
INSERT INTO[cctv_taipei_t] VALUES ('270', 'C000293', '板橋區縣民大道新站路口', '121.465559', '25.014526', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000293');
INSERT INTO[cctv_taipei_t] VALUES ('271', 'C000294', '板橋區縣民大道板新路口', '121.467868', '25.016205', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000294');
INSERT INTO[cctv_taipei_t] VALUES ('272', 'C000295', '瑞芳區瑞金公路、9號停車場', '121.833030', '25.111720', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000295');
INSERT INTO[cctv_taipei_t] VALUES ('273', 'C000296', '淡水區中正東路2段105巷口', '121.459450', '25.151447', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000296');
INSERT INTO[cctv_taipei_t] VALUES ('274', 'C000297', '淡水區中正東路八勢路', '121.459370', '25.153368', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000297');
INSERT INTO[cctv_taipei_t] VALUES ('275', 'C000298', '淡水區中正東路坪頂路', '121.454928', '25.159485', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000298');
INSERT INTO[cctv_taipei_t] VALUES ('276', 'C000299', '淡水區民生路民權路', '121.459890', '25.137734', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000299');
INSERT INTO[cctv_taipei_t] VALUES ('277', 'C000300', '新莊區中正路大觀街', '121.453687', '25.036470', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000300');
INSERT INTO[cctv_taipei_t] VALUES ('278', 'C000301', '新莊區新北大道路思源路', '121.460023', '25.060581', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000301');
INSERT INTO[cctv_taipei_t] VALUES ('279', 'C000302', '樹林博愛街240號、瑋鋒科技前', '121.423935', '24.987104', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000302');
INSERT INTO[cctv_taipei_t] VALUES ('280', 'C000303', '新莊區中正路、新樹路', '121.441093', '25.033625', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000303');
INSERT INTO[cctv_taipei_t] VALUES ('281', 'C000304', '汐止區民權路一段、橫科路', '121.620056', '25.050274', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000304');
INSERT INTO[cctv_taipei_t] VALUES ('282', 'C000305', '五股成德公園(停車場)攝影機1', '121.454167', '25.104989', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000305');
INSERT INTO[cctv_taipei_t] VALUES ('283', 'C000306', '五股成德公園(停車場)攝影機2', '121.453857', '25.104854', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000306');
INSERT INTO[cctv_taipei_t] VALUES ('284', 'C000307', '五股成德公園(停車場)攝影機3', '121.453985', '25.104632', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000307');
INSERT INTO[cctv_taipei_t] VALUES ('285', 'C000308', '五股成德公園(停車場)攝影機4', '121.454158', '25.104218', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000308');
INSERT INTO[cctv_taipei_t] VALUES ('286', 'C000309', '五股成德公園(停車場)攝影機5', '121.454167', '25.104123', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000309');
INSERT INTO[cctv_taipei_t] VALUES ('287', 'C000310', '樹林區中正路、三龍街', '121.408900', '25.018110', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000310');
INSERT INTO[cctv_taipei_t] VALUES ('288', 'C000311', '蘆洲區中原路、長安街口', '121.459690', '25.082680', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000311');
INSERT INTO[cctv_taipei_t] VALUES ('289', 'C000312', '淡水區中正路、中正路1段8巷', '121.428150', '25.175610', 'http://atis.ntpc.gov.tw/ATIS/ShowFrame4CCTV/C000312');

-- ----------------------------
-- Table structure for[cctv_taoyuan]
-- ----------------------------
DROP TABLE IF EXISTS[cctv_taoyuan];
CREATE TABLE[cctv_taoyuan] (
 [aid] int NOT NULL,
 [address] varchar(255)  DEFAULT NULL,
 [url] varchar(255)  DEFAULT NULL,
 [xy] varchar(255)  DEFAULT NULL,
 [lon] decimal(10,6) DEFAULT NULL,
 [lat] decimal(10,6) DEFAULT NULL,
  PRIMARY KEY ([aid])
)

-- ----------------------------
-- Records of cctv_taoyuan
-- ----------------------------
INSERT INTO[cctv_taoyuan] VALUES ('1', '大園區中正東路與民生南路', 'http://61.60.10.121/camera104?1=1rand=1375.1935387918713', '121.2034 25.0623', '121.203400', '25.062300');
INSERT INTO[cctv_taoyuan] VALUES ('2', '大園區中正東路埔心街', 'http://61.60.10.121/camera144?1=1rand=8293.233707090281', '121.2223 25.0547', '121.222300', '25.054700');
INSERT INTO[cctv_taoyuan] VALUES ('4', '蘆竹區南青路(台31)大竹路', 'http://61.60.10.121/camera146?1=1rand=507.1324075034798', '121.2420 25.0395', '121.242000', '25.039500');
INSERT INTO[cctv_taoyuan] VALUES ('5', '大園區中正東路 南青路(下匝道)', 'http://61.60.10.121/camera127?1=1rand=8974.289157446012', '121.2304 25.0283', '121.230400', '25.028300');
INSERT INTO[cctv_taoyuan] VALUES ('7', '蘆竹區南崁路中正路口', 'http://61.60.10.121/camera97?1=1rand=9671.51466853854', '121.2901 25.0505', '121.290100', '25.050500');
INSERT INTO[cctv_taoyuan] VALUES ('8', '蘆竹區南崁路忠孝東路', 'http://61.60.10.121/camera98?1=1rand=10620.65950365226', '121.2959 25.0455', '121.295900', '25.045500');
INSERT INTO[cctv_taoyuan] VALUES ('9', '蘆竹區中正路南國新南路', 'http://61.60.10.121/camera1?1=1rand=8223.19233653685', '121.2958 25.0409', '121.295800', '25.040900');
INSERT INTO[cctv_taoyuan] VALUES ('10', '桃園區經國路與新南路', 'http://61.60.10.121/camera126?1=1rand=86.85916525911486', '121.3010 25.0342', '121.301000', '25.034200');
INSERT INTO[cctv_taoyuan] VALUES ('12', '桃園區莊敬路經國路口', 'http://61.60.10.121/camera59?1=1rand=1945.1304263876946', '121.3015 25.0258', '121.301500', '25.025800');
INSERT INTO[cctv_taoyuan] VALUES ('13', '桃園區莊敬路中正路口', 'http://61.60.10.121/camera60?1=1rand=6484.238240319058', '121.2952 25.0231', '121.295200', '25.023100');
INSERT INTO[cctv_taoyuan] VALUES ('14', '桃園區莊敬路富國路口', 'http://61.60.10.121/camera61?1=1rand=4992.526434207339', '121.2839 25.0186', '121.283900', '25.018600');
INSERT INTO[cctv_taoyuan] VALUES ('15', '桃園區春日路南平路口', 'http://61.60.10.121/camera129?1=1rand=1127.5236147703704', '121.3077 25.0216', '121.307700', '25.021600');
INSERT INTO[cctv_taoyuan] VALUES ('16', '桃園區經國路南平路口', 'http://61.60.10.121/camera66?1=1rand=2212.930598205761', '121.3039 25.0204', '121.303900', '25.020400');
INSERT INTO[cctv_taoyuan] VALUES ('17', '桃園區中正路南平路口', 'http://61.60.10.121/camera47?1=1rand=7626.435511260504', '121.2977 25.0179', '121.297700', '25.017900');
INSERT INTO[cctv_taoyuan] VALUES ('18', '桃園區大有路大興路口', 'http://61.60.10.121/camera130?1=1rand=1032.4693102156716', '121.3165 25.0167', '121.316500', '25.016700');
INSERT INTO[cctv_taoyuan] VALUES ('20', '桃園區大興西路經國路', 'http://61.60.10.121/camera18?1=1rand=1063.1074764571285', '121.3065 25.0150', '121.306500', '25.015000');
INSERT INTO[cctv_taoyuan] VALUES ('21', '桃園區大興西路經國路', 'http://61.60.10.121/camera2?1=1rand=7584.274749542058', '121.3063 25.0151', '121.306300', '25.015100');
INSERT INTO[cctv_taoyuan] VALUES ('22', '桃園區大興西路中正路', 'http://61.60.10.121/camera23?1=1rand=6331.110185770702', '121.3004 25.0124', '121.300400', '25.012400');
INSERT INTO[cctv_taoyuan] VALUES ('25', '桃園區大興西路中埔二街', 'http://61.60.10.121/camera24?1=1rand=10624.489117125639', '121.2966 25.0104', '121.296600', '25.010400');
INSERT INTO[cctv_taoyuan] VALUES ('26', '桃園區大興西路永安路', 'http://61.60.10.121/camera25?1=1rand=4569.053856739329', '121.2925 25.0070', '121.292500', '25.007000');
INSERT INTO[cctv_taoyuan] VALUES ('27', '桃園區大興西路永安路', 'http://61.60.10.121/camera20?1=1rand=1035.2290141922085', '121.2925 25.0069', '121.292500', '25.006900');
INSERT INTO[cctv_taoyuan] VALUES ('28', '桃園區永安路與大興西路', 'http://61.60.10.121/camera116?1=1rand=7951.159457547751', '121.2923 25.0069', '121.292300', '25.006900');
INSERT INTO[cctv_taoyuan] VALUES ('29', '桃園區大興西路國際路', 'http://61.60.10.121/camera26?1=1rand=1242.9699747484185', '121.2868 25.0020', '121.286800', '25.002000');
INSERT INTO[cctv_taoyuan] VALUES ('30', '桃園區大興西路國際路', 'http://61.60.10.121/camera22?1=1rand=7497.20867896315', '121.2867 25.0021', '121.286700', '25.002100');
INSERT INTO[cctv_taoyuan] VALUES ('31', '桃園區大興西路二段與國際路二段旁路側', 'http://61.60.10.121/camera109?1=1rand=8036.4451829070795', '121.2867 25.0022', '121.286700', '25.002200');
INSERT INTO[cctv_taoyuan] VALUES ('33', '桃園區春日路經國路口', 'http://61.60.10.121/camera54?1=1rand=5485.497459546678', '121.3112 25.0089', '121.311200', '25.008900');
INSERT INTO[cctv_taoyuan] VALUES ('34', '桃園區春日路民光東路', 'http://61.60.10.121/camera3?1=1rand=9245.674012495016', '121.3121 25.0061', '121.312100', '25.006100');
INSERT INTO[cctv_taoyuan] VALUES ('35', '桃園區三民路與中正路口', 'http://61.60.10.121/camera36?1=1rand=109.82843799922182', '121.3085 24.9988', '121.308500', '24.998800');
INSERT INTO[cctv_taoyuan] VALUES ('36', '桃園區永安路三民路口', 'http://61.60.10.121/camera53?1=1rand=3984.369447923205', '121.3064 24.9969', '121.306400', '24.996900');
INSERT INTO[cctv_taoyuan] VALUES ('37', '桃園區文中路國際路口', 'http://61.60.10.121/camera51?1=1rand=7884.402871190624', '121.2877 24.9959', '121.287700', '24.995900');
INSERT INTO[cctv_taoyuan] VALUES ('38', '桃園區大興西路三段與文中路旁路側', 'http://61.60.10.121/camera110?1=1rand=9102.498493811921', '121.2781 24.9937', '121.278100', '24.993700');
INSERT INTO[cctv_taoyuan] VALUES ('39', '桃園區文中路與龍安街口', 'http://61.60.10.121/camera50?1=1rand=4600.673526850729', '121.2780 24.9937', '121.278000', '24.993700');
INSERT INTO[cctv_taoyuan] VALUES ('41', '沒有站名(桃園區中山東路春日路口)', 'http://61.60.10.121/camera56?1=1rand=6901.172752357914', '121.3158 24.9963', '121.315800', '24.996300');
INSERT INTO[cctv_taoyuan] VALUES ('42', '桃園區中山路中正路(往北照中正路)', 'http://61.60.10.121/camera125?1=1rand=7978.004238240725', '121.3122 24.9947', '121.312200', '24.994700');
INSERT INTO[cctv_taoyuan] VALUES ('43', '桃園區中山路中正路口', 'http://61.60.10.121/camera42?1=1rand=10442.184597584685', '121.3111 24.9946', '121.311100', '24.994600');
INSERT INTO[cctv_taoyuan] VALUES ('44', '桃園區中山路民族路口', 'http://61.60.10.121/camera46?1=1rand=9417.381145904514', '121.3086 24.9932', '121.308600', '24.993200');
INSERT INTO[cctv_taoyuan] VALUES ('45', '桃園區中山路三民路口', 'http://61.60.10.121/camera41?1=1rand=779.9254527450486', '121.3059 24.9925', '121.305900', '24.992500');
INSERT INTO[cctv_taoyuan] VALUES ('46', '桃園區中山路正光街口', 'http://61.60.10.121/camera45?1=1rand=10980.309457994925', '121.2949 24.9910', '121.294900', '24.991000');
INSERT INTO[cctv_taoyuan] VALUES ('47', '桃園區中山路國際路口', 'http://61.60.10.121/camera39?1=1rand=5834.912325307319', '121.2887 24.9899', '121.288700', '24.989900');
INSERT INTO[cctv_taoyuan] VALUES ('48', '桃園區中山路與國際路', 'http://61.60.10.121/camera115?1=1rand=1128.4461971356025', '121.2886 24.9898', '121.288600', '24.989800');
INSERT INTO[cctv_taoyuan] VALUES ('49', '桃園區中山路龍安街口', 'http://61.60.10.121/camera44?1=1rand=7768.24333616251', '121.2822 24.9868', '121.282200', '24.986800');
INSERT INTO[cctv_taoyuan] VALUES ('50', '桃園區春日路成功路口', 'http://61.60.10.121/camera57?1=1rand=6286.706119352194', '121.3166 24.9941', '121.316600', '24.994100');
INSERT INTO[cctv_taoyuan] VALUES ('51', '桃園區復興路與春日路口', 'http://61.60.10.121/camera63?1=1rand=9099.612822837515', '121.3176 24.9899', '121.317600', '24.989900');
INSERT INTO[cctv_taoyuan] VALUES ('52', '桃園區民族路復興路口', 'http://61.60.10.121/camera52?1=1rand=10265.464983880678', '121.3101 24.9895', '121.310100', '24.989500');
INSERT INTO[cctv_taoyuan] VALUES ('53', '桃園區復興路南華路', 'http://61.60.10.121/camera6?1=1rand=1567.9052304057648', '121.3087 24.9891', '121.308700', '24.989100');
INSERT INTO[cctv_taoyuan] VALUES ('54', '桃園區復興路三民路口', 'http://61.60.10.121/camera64?1=1rand=10198.130630562411', '121.3070 24.9891', '121.307000', '24.989100');
INSERT INTO[cctv_taoyuan] VALUES ('55', '桃園區桃鶯路建國路口', 'http://61.60.10.121/camera58?1=1rand=217.43258516352614', '121.3180 24.9860', '121.318000', '24.986000');
INSERT INTO[cctv_taoyuan] VALUES ('57', '桃園區介壽路三民路', 'http://61.60.10.121/camera7?1=1rand=8547.651847601299', '121.3076 24.9820', '121.307600', '24.982000');
INSERT INTO[cctv_taoyuan] VALUES ('58', '龜山區萬壽路與山鶯路', 'http://61.60.10.121/camera117?1=1rand=7888.505921690478', '121.3225 24.9920', '121.322500', '24.992000');
INSERT INTO[cctv_taoyuan] VALUES ('59', '龜山區三民路萬壽路口', 'http://61.60.10.121/camera93?1=1rand=1618.11370439823', '121.3254 24.9927', '121.325400', '24.992700');
INSERT INTO[cctv_taoyuan] VALUES ('60', '龜山區萬壽路二段與自強西路口(縣105)', 'http://61.60.10.121/camera96?1=1rand=1672.834860711344', '121.3324 24.9935', '121.332400', '24.993500');
INSERT INTO[cctv_taoyuan] VALUES ('61', '龜山區長壽路與忠義路', 'http://61.60.10.121/camera123?1=1rand=778.218438559877', '121.3438 25.0018', '121.343800', '25.001800');
INSERT INTO[cctv_taoyuan] VALUES ('62', '龜山區萬壽路二段與東萬壽路口', 'http://61.60.10.121/camera94?1=1rand=2577.945807573754', '121.3620 25.0019', '121.362000', '25.001900');
INSERT INTO[cctv_taoyuan] VALUES ('63', '龜山區萬壽路一段與中正路', 'http://61.60.10.121/camera122?1=1rand=1111.7976175407118', '121.4084 25.0189', '121.408400', '25.018900');
INSERT INTO[cctv_taoyuan] VALUES ('64', '八德區福德一路國二往西匝道口', 'http://61.60.10.121/camera82?1=1rand=4830.247018438996', '121.3260 24.9630', '121.326000', '24.963000');
INSERT INTO[cctv_taoyuan] VALUES ('65', '八德區和平路與福德一街', 'http://61.60.10.121/camera81?1=1rand=2784.8101226768363', '121.3199 24.9600', '121.319900', '24.960000');
INSERT INTO[cctv_taoyuan] VALUES ('66', '八德區介壽路建國路口', 'http://61.60.10.121/camera79?1=1rand=2881.2086486586027', '121.2992 24.9576', '121.299200', '24.957600');
INSERT INTO[cctv_taoyuan] VALUES ('68', '中壢區中華路興仁路口', 'http://61.60.10.121/camera67?1=1rand=10076.628628134373', '121.2600 24.9735', '121.260000', '24.973500');
INSERT INTO[cctv_taoyuan] VALUES ('69', '中壢區中華路自強一路口', 'http://61.60.10.121/camera69?1=1rand=4148.965463275254', '121.2444 24.9671', '121.244400', '24.967100');
INSERT INTO[cctv_taoyuan] VALUES ('70', '中壢區普忠路中華路口', 'http://61.60.10.121/camera133?1=1rand=4062.7430833635744', '121.2412 24.9662', '121.241200', '24.966200');
INSERT INTO[cctv_taoyuan] VALUES ('71', '中壢區中華路中園路口', 'http://61.60.10.121/camera68?1=1rand=9839.776683991506', '121.2379 24.9648', '121.237900', '24.964800');
INSERT INTO[cctv_taoyuan] VALUES ('72', '中壢區中華路育樂街', 'http://61.60.10.121/camera8?1=1rand=7818.443973902767', '121.2353 24.9640', '121.235300', '24.964000');
INSERT INTO[cctv_taoyuan] VALUES ('73', '中壢區環北路延平路', 'http://61.60.10.121/camera27?1=1rand=8891.631304808694', '121.2299 24.9632', '121.229900', '24.963200');
INSERT INTO[cctv_taoyuan] VALUES ('74', '中壢區環北路慈惠三街', 'http://61.60.10.121/camera29?1=1rand=763.6868557884053', '121.2258 24.9657', '121.225800', '24.965700');
INSERT INTO[cctv_taoyuan] VALUES ('75', '中壢區環北路新生路', 'http://61.60.10.121/camera30?1=1rand=5544.040339359928', '121.2234 24.9660', '121.223400', '24.966000');
INSERT INTO[cctv_taoyuan] VALUES ('77', '中壢區環西路民權路', 'http://61.60.10.121/camera33?1=1rand=298.9049078429533', '121.2166 24.9658', '121.216600', '24.965800');
INSERT INTO[cctv_taoyuan] VALUES ('78', '中壢區環西路志廣路', 'http://61.60.10.121/camera34?1=1rand=9011.84972573152', '121.2074 24.9608', '121.207400', '24.960800');
INSERT INTO[cctv_taoyuan] VALUES ('79', '中壢區環西路與民族路口', 'http://61.60.10.121/camera78?1=1rand=7970.521550550476', '121.2070 24.9574', '121.207000', '24.957400');
INSERT INTO[cctv_taoyuan] VALUES ('80', '中壢區民族路廣德街', 'http://61.60.10.121/camera11?1=1rand=5444.914752312442', '121.2050 24.9572', '121.205000', '24.957200');
INSERT INTO[cctv_taoyuan] VALUES ('81', '中壢區東園路(吉林路口)', 'http://61.60.10.121/camera131?1=1rand=4290.271950823536', '121.2399 24.9792', '121.239900', '24.979200');
INSERT INTO[cctv_taoyuan] VALUES ('82', '中壢區中園路吉林路', 'http://61.60.10.121/camera9?1=1rand=10670.255182611576', '121.2361 24.9813', '121.236100', '24.981300');
INSERT INTO[cctv_taoyuan] VALUES ('83', '中壢區南園二路與中福路口前', 'http://61.60.10.121/camera106?1=1rand=923.7868918958745', '121.2286 24.9716', '121.228600', '24.971600');
INSERT INTO[cctv_taoyuan] VALUES ('84', '中壢區普忠路環中路口', 'http://61.60.10.121/camera132?1=1rand=1656.3674332988921', '121.2489 24.9577', '121.248900', '24.957700');
INSERT INTO[cctv_taoyuan] VALUES ('85', '中壢區環中東路中山東路', 'http://61.60.10.121/camera10?1=1rand=10656.1704752747', '121.2404 24.9515', '121.240400', '24.951500');
INSERT INTO[cctv_taoyuan] VALUES ('86', '中壢區中山東路中北路口', 'http://61.60.10.121/camera74?1=1rand=6391.053542023887', '121.2356 24.9556', '121.235600', '24.955600');
INSERT INTO[cctv_taoyuan] VALUES ('87', '平鎮區環南路金陵路口', 'http://61.60.10.121/camera77?1=1rand=643.1401919015187', '121.2230 24.9407', '121.223000', '24.940700');
INSERT INTO[cctv_taoyuan] VALUES ('88', '平鎮區環南路德育路', 'http://61.60.10.121/camera12?1=1rand=3837.6714693797007', '121.2186 24.9402', '121.218600', '24.940200');
INSERT INTO[cctv_taoyuan] VALUES ('89', '平鎮區中豐路環南路口', 'http://61.60.10.121/camera70?1=1rand=5812.01618917889', '121.2165 24.9403', '121.216500', '24.940300');
INSERT INTO[cctv_taoyuan] VALUES ('90', '平鎮區中豐路與環南路', 'http://61.60.10.121/camera119?1=1rand=5218.234966343269', '121.2163 24.9403', '121.216300', '24.940300');
INSERT INTO[cctv_taoyuan] VALUES ('91', '平鎮區環南路延平路口', 'http://61.60.10.121/camera73?1=1rand=3133.0799978009395', '121.2085 24.9450', '121.208500', '24.945000');
INSERT INTO[cctv_taoyuan] VALUES ('92', '平鎮區金陵路台66線口', 'http://61.60.10.121/camera71?1=1rand=3431.2501618715746', '121.2309 24.9066', '121.230900', '24.906600');
INSERT INTO[cctv_taoyuan] VALUES ('93', '平鎮區中豐路台66交流道路口', 'http://61.60.10.121/camera13?1=1rand=10689.189831028627', '121.2133 24.9279', '121.213300', '24.927900');
INSERT INTO[cctv_taoyuan] VALUES ('94', '平鎮區延平路台66交流道南側出口匝道路口', 'http://61.60.10.121/camera76?1=1rand=8550.877549358634', '121.1981 24.9322', '121.198100', '24.932200');
INSERT INTO[cctv_taoyuan] VALUES ('95', '平鎮區延平路台66交流道北側出口匝道口', 'http://61.60.10.121/camera75?1=1rand=7447.488923740638', '121.1977 24.9319', '121.197700', '24.931900');
INSERT INTO[cctv_taoyuan] VALUES ('96', '平鎮區中豐南平路口', 'http://61.60.10.121/camera134?1=1rand=10144.8043737294', '121.2113 24.9199', '121.211300', '24.919900');
INSERT INTO[cctv_taoyuan] VALUES ('97', '平鎮區南平陸橋南路口', 'http://61.60.10.121/camera135?1=1rand=642.6922375388151', '121.1875 24.9234', '121.187500', '24.923400');
INSERT INTO[cctv_taoyuan] VALUES ('99', '楊梅區中山北路環東路口', 'http://61.60.10.121/camera90?1=1rand=10098.291738776265', '121.1575 24.9085', '121.157500', '24.908500');
INSERT INTO[cctv_taoyuan] VALUES ('100', '楊梅區大成路中山路口', 'http://61.60.10.121/camera91?1=1rand=1482.0360155186927', '121.1456 24.9069', '121.145600', '24.906900');
INSERT INTO[cctv_taoyuan] VALUES ('101', '楊梅區楊新路大成路口', 'http://61.60.10.121/camera136?1=1rand=4454.494418182862', '121.1456 24.9135', '121.145600', '24.913500');
INSERT INTO[cctv_taoyuan] VALUES ('103', '大溪區介壽路員林路', 'http://61.60.10.121/camera14?1=1rand=8604.103116958617', '121.2845 24.8985', '121.284500', '24.898500');
INSERT INTO[cctv_taoyuan] VALUES ('104', '大溪區員林路與仁和路口', 'http://61.60.10.121/camera86?1=1rand=8645.800753147638', '121.2790 24.8972', '121.279000', '24.897200');
INSERT INTO[cctv_taoyuan] VALUES ('105', '大溪區台4線38.5K位置', 'http://61.60.10.121/camera15?1=1rand=3497.16342846261', '121.2798 24.8943', '121.279800', '24.894300');
INSERT INTO[cctv_taoyuan] VALUES ('106', '大溪區武嶺橋西端', 'http://61.60.10.121/camera118?1=1rand=2662.7607102572247', '121.2789 24.8918', '121.278900', '24.891800');
INSERT INTO[cctv_taoyuan] VALUES ('107', '大溪區康莊路武嶺橋口', 'http://61.60.10.121/camera83?1=1rand=2462.552715480656', '121.2784 24.8919', '121.278400', '24.891900');
INSERT INTO[cctv_taoyuan] VALUES ('108', '大溪區112甲臺66線', 'http://61.60.10.121/camera17?1=1rand=5213.271559067448', '121.2624 24.8975', '121.262400', '24.897500');
INSERT INTO[cctv_taoyuan] VALUES ('109', '大溪區員林路連絡道', 'http://61.60.10.121/camera16?1=1rand=9482.98585172855', '121.2703 24.8892', '121.270300', '24.889200');
INSERT INTO[cctv_taoyuan] VALUES ('110', '大溪區員林路三段與石園路', 'http://61.60.10.121/camera112?1=1rand=6912.983660727049', '121.2657 24.8821', '121.265700', '24.882100');
INSERT INTO[cctv_taoyuan] VALUES ('111', '大溪區信義路中華路口', 'http://61.60.10.121/camera85?1=1rand=4938.013705744824', '121.2928 24.8853', '121.292800', '24.885300');
INSERT INTO[cctv_taoyuan] VALUES ('112', '大溪區康莊路與信義路口', 'http://61.60.10.121/camera87?1=1rand=653.4228003991993', '121.2893 24.8846', '121.289300', '24.884600');
INSERT INTO[cctv_taoyuan] VALUES ('113', '大溪區慈湖路與復興路口', 'http://61.60.10.121/camera89?1=1rand=9679.553227734568', '121.2887 24.8809', '121.288700', '24.880900');
INSERT INTO[cctv_taoyuan] VALUES ('114', '大溪區復興路中華路口', 'http://61.60.10.121/camera88?1=1rand=5326.024690060512', '121.2928 24.8783', '121.292800', '24.878300');
INSERT INTO[cctv_taoyuan] VALUES ('115', '大溪區康莊路中華路口', 'http://61.60.10.121/camera84?1=1rand=1320.7056541257518', '121.2863 24.8734', '121.286300', '24.873400');
INSERT INTO[cctv_taoyuan] VALUES ('116', '大溪區台四康莊路、內柵路', 'http://61.60.10.121/camera102?1=1rand=1022.2283855483312', '121.2823 24.8607', '121.282300', '24.860700');
INSERT INTO[cctv_taoyuan] VALUES ('117', '大溪區台七慈康路', 'http://61.60.10.121/camera103?1=1rand=10086.584724262893', '121.2851 24.8494', '121.285100', '24.849400');
INSERT INTO[cctv_taoyuan] VALUES ('118', '龍潭區中興路與大昌路', 'http://61.60.10.121/camera105?1=1rand=10405.280016302713', '121.2207 24.8694', '121.220700', '24.869400');
INSERT INTO[cctv_taoyuan] VALUES ('119', '龍潭區中興路與大昌路', 'http://61.60.10.121/camera120?1=1rand=654.5119602106236', '121.2207 24.8693', '121.220700', '24.869300');
INSERT INTO[cctv_taoyuan] VALUES ('120', '龍潭區中豐路中山段與聖亭路', 'http://61.60.10.121/camera113?1=1rand=10633.982940294805', '121.2098 24.8651', '121.209800', '24.865100');
INSERT INTO[cctv_taoyuan] VALUES ('121', '龍潭區神龍路龍華路口', 'http://61.60.10.121/camera141?1=1rand=7274.483898371057', '121.2174 24.8573', '121.217400', '24.857300');
INSERT INTO[cctv_taoyuan] VALUES ('123', '大溪區台七懷德路', 'http://61.60.10.121/camera101?1=1rand=9761.087667449952', '121.3113 24.8257', '121.311300', '24.825700');
INSERT INTO[cctv_taoyuan] VALUES ('124', '復興區台七線與桃115線', 'http://61.60.10.121/camera124?1=1rand=8160.213990015327', '121.3677 24.8039', '121.367700', '24.803900');

-- ----------------------------
-- Table structure for[rain_2016_05_16]
-- ----------------------------
DROP TABLE IF EXISTS[rain_2016_05_16];
CREATE TABLE[rain_2016_05_16] (
 [id] varchar(255)  NOT NULL,
 [災點分區] varchar(255)  DEFAULT NULL,
 [災情來源] varchar(255)  DEFAULT NULL,
 [來源說明] varchar(255)  DEFAULT NULL,
 [案號] varchar(255)  DEFAULT NULL,
 [縣市] varchar(255)  DEFAULT NULL,
 [鄉鎮] varchar(255)  DEFAULT NULL,
 [災害種類] varchar(255)  DEFAULT NULL,
 [發生時間] datetime DEFAULT NULL,
 [災害地點] varchar(255)  DEFAULT NULL,
 [災情描述] varchar(255)  DEFAULT NULL,
 [深度] varchar(255)  DEFAULT NULL,
 [是否退水] varchar(255)  DEFAULT NULL,
 [退水時間] varchar(255)  DEFAULT NULL,
 [災情處置情形] varchar(255)  DEFAULT NULL,
 [詢問單位聯絡資訊] varchar(255)  DEFAULT NULL,
 [x] varchar(255)  DEFAULT NULL,
 [y] varchar(255)  DEFAULT NULL,
 [lon] decimal(10,6) DEFAULT NULL,
 [lat] decimal(10,6) DEFAULT NULL,
  PRIMARY KEY ([id])
)

-- ----------------------------
-- Records of rain_2016_05_16
-- ----------------------------
INSERT INTO[rain_2016_05_16] VALUES ('8088', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '中壢區', '', '2016-05-16 06:45:00', '中壢火車站', '積淹水', '--', '是', '2016/5/16 08:17', '已派廠商抽水機抽水', '1.姓名：黃國昌 2.電話：0912253019', '272799.117573', '2760665.066270', '121.225783', '24.953671');
INSERT INTO[rain_2016_05_16] VALUES ('8089', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '中壢區', '', '2016-05-16 06:30:00', '普中路地下道、崁頂路及新中北路交叉口、龍崗路三段', '淹水', '--', '是', '2016/5/16 15:03', '--', '1.姓名：黃國昌 2.電話：0912253019', '274002.440084', '2758309.618630', '121.237659', '24.932387');
INSERT INTO[rain_2016_05_16] VALUES ('8095', '經濟部水利署', '經濟部水利署', '', '', '新北市', '五股區', '', '2016-05-16 05:35:00', '1.五號越堤道 疏洪路上 2.成泰路一段與登林路交叉口 3.疏洪一路與疏洪十路交叉口 4.登林路中間段道路坍方 5.自強路與成泰路一段叉口', '積水', '--', '是', '2016/5/16 06:35', '自然退水', '1.姓名：林銚傑 2.電話：0928623122', '#N/A', '#N/A', null, null);
INSERT INTO[rain_2016_05_16] VALUES ('8098', '經濟部水利署', '經濟部水利署', '', '', '新北市', '新莊區', '待查', '2016-05-16 05:35:00', '環漢路17號人行道 跨過提方的越堤道 瓊林路61-2號', '局部淹水', '--', '是', '2016/5/16 09:58', '排水口清淤並自然退水', '1.姓名：謝宗翰 2.電話：0912559306', '294367.123275', '2768160.399020', '121.439611', '25.020863');
INSERT INTO[rain_2016_05_16] VALUES ('8099', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '道路', '2016-05-16 05:35:00', '桃園市民族地下道', '淹水', '170', '是', '2016/5/16 15:00', '已派抽水機處理', '1.姓名：楊宇傑 2.電話：0933020121', '265803.684644', '2761652.074830', '121.156518', '24.962671');
INSERT INTO[rain_2016_05_16] VALUES ('8100', '經濟部水利署', '經濟部水利署', '', '', '新竹市', '東區', '待查', '2016-05-16 05:35:00', '中華路一段255巷', '淹水', '50', '是', '2016/5/16 08:55', '已派抽水機處理', '1.姓名：黃志揚 2.電話：0928635865', '248994.287732', '2744894.142590', '120.990052', '24.811454');
INSERT INTO[rain_2016_05_16] VALUES ('8101', '經濟部水利署', '經濟部水利署', '', '', '新竹市', '北區', '待查', '2016-05-16 05:35:00', '中山路334巷28弄17號', '積水', '2', '是', '2016/5/16 09:05', '自然退水', '1.姓名:程書雲 2.電話:035152525#200', '204833.424995', '2647938.212930', '120.556290', '23.935385');
INSERT INTO[rain_2016_05_16] VALUES ('8102', '經濟部水利署', '經濟部水利署', '', '', '新北市', '鶯歌區', '道路', '2016-05-16 07:00:00', '鶯桃路、中正三路交叉口', '淹水', '30', '是', '2016/5/16 10:03', '自然退水', '1.姓名：廖中正 2.電話：0913917839', '283358.713265', '2762279.371810', '121.330394', '24.968050');
INSERT INTO[rain_2016_05_16] VALUES ('8103', '經濟部水利署', '經濟部水利署', '', '', '新北市', '泰山區', '道路', '2016-05-16 05:35:00', '新北大道五段、民生路交叉口', '積水', '28', '是', '2016/5/16 10:05', '自然退水', '1.姓名：潘配淮 2.電話：0955685921', '298033.112605', '2767296.795370', '121.475904', '25.012955');
INSERT INTO[rain_2016_05_16] VALUES ('8104', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '八德區', '待查', '2016-05-16 06:30:00', '桃園市和平路528巷9號、 和平路621巷61弄8號', '淹水', '5', '是', '2016/5/16 10:43', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '281734.216533', '2761052.702220', '121.314277', '24.957010');
INSERT INTO[rain_2016_05_16] VALUES ('8105', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '八德區', '道路', '2016-05-16 06:34:00', '高城公園旁地下道', '淹水', '50', '是', '2016/5/16 10:43', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '295147.438333', '2766428.079530', '121.447286', '25.005201');
INSERT INTO[rain_2016_05_16] VALUES ('8106', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '八德區', '', '2016-05-16 06:49:00', '桃園市廣福路1216號、 華康街和忠義街的交叉路口', '淹水', '--', '是', '2016/5/16 10:43', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '280382.562440', '2765105.537040', '121.300980', '24.993628');
INSERT INTO[rain_2016_05_16] VALUES ('8107', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '八德區', '', '2016-05-16 11:56:00', '瑞德里豐德路89巷67號前淹水', '淹水', '--', '是', '2016/5/16 10:43', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '279735.841233', '2757506.262700', '121.294410', '24.925032');
INSERT INTO[rain_2016_05_16] VALUES ('8108', '第二河川局', '經濟部水利署', '', '', '桃園市', '八德區', '', '2016-05-16 07:12:00', '白鷺里', '白鷺里皮寮溪水暴漲、河床內挖土機淹沒 成功橋往成功街淹水 崁頂路淹水', '--', '是', '2016/5/16 10:43', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '277386.007832', '2761322.781670', '121.271220', '24.959533');
INSERT INTO[rain_2016_05_16] VALUES ('8109', '第二河川局', '經濟部水利署', '', '', '桃園市', '八德區', '', '2016-05-16 07:38:00', '瑞發里興豐路869巷', '淹水', '--', '是', '2016/5/16 10:43', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '280402.130564', '2758620.949340', '121.301031', '24.935083');
INSERT INTO[rain_2016_05_16] VALUES ('8110', '第二河川局', '經濟部水利署', '', '', '桃園市', '八德區', '', '2016-05-16 13:31:00', '桃園市忠義街、康華街後段', '淹水', '--', '是', '2016/5/16 10:43', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '277560.563676', '2762607.367910', '121.272975', '24.971128');
INSERT INTO[rain_2016_05_16] VALUES ('8111', '第二河川局', '經濟部水利署', '', '', '桃園市', '八德區', '', '2016-05-16 08:09:00', '桃園市永福街', '淹水', '--', '是', '2016/5/16 10:43', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '280507.792782', '2761643.961410', '121.302144', '24.962374');
INSERT INTO[rain_2016_05_16] VALUES ('8112', '第二河川局', '經濟部水利署', '', '', '桃園市', '八德區', '', '2016-05-16 07:51:00', '桃園市東勇街400巷、 和強路、東勇街400巷七弄旁的水利會閘門', '淹水及東勇街400巷七弄旁的水利會閘門沒打開', '--', '是', '2016/5/16 10:43', '水利會已開啟東勇街400巷水門', '1.姓名：馮浦捷 2.電話：03-3306690', '280382.562440', '2765105.537040', '121.300980', '24.993628');
INSERT INTO[rain_2016_05_16] VALUES ('8113', '第二河川局', '經濟部水利署', '', '', '桃園市', '八德區', '待查', '2016-05-16 12:51:00', '桃園市仁和街與樹仁三街', '淹水及膝', '50', '是', '2016/5/16 10:43', '已派雨工黃技正', '1.姓名：馮浦捷 2.電話：03-3306690', '280382.562440', '2765105.537040', '121.300980', '24.993628');
INSERT INTO[rain_2016_05_16] VALUES ('8114', '第二河川局', '經濟部水利署', '', '', '桃園市', '八德區', '待查', '2016-05-16 13:48:00', '介壽里路二段582巷&596巷', '淹水', '35', '是', '2016/5/16 10:43', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '286293.902103', '2755424.372410', '121.359285', '24.906094');
INSERT INTO[rain_2016_05_16] VALUES ('8115', '第二河川局', '經濟部水利署', '', '', '桃園市', '八德區', '', '2016-05-16 07:51:00', '豐德路89巷61弄、豐德路106巷', '淹水', '--', '是', '2016/5/16 10:43', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '279859.637368', '2757521.406700', '121.295636', '24.925167');
INSERT INTO[rain_2016_05_16] VALUES ('8116', '第二河川局', '經濟部水利署', '', '', '桃園市', '八德區', '', '2016-05-16 07:52:00', '桃園市桃鶯路與興隆街口', '淹水', '--', '是', '2016/5/16 10:43', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '280382.562440', '2765105.537040', '121.300980', '24.993628');
INSERT INTO[rain_2016_05_16] VALUES ('8117', '第二河川局', '經濟部水利署', '', '', '桃園市', '八德區', '', '2016-05-16 07:54:00', '和強路', '淹水', '--', '是', '2016/5/16 10:43', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '281654.949278', '2761634.611120', '121.313505', '24.962266');
INSERT INTO[rain_2016_05_16] VALUES ('8118', '第二河川局', '經濟部水利署', '', '', '桃園市', '八德區', '', '2016-05-16 07:55:00', '八德區東勇街490巷75弄121號', '淹水', '--', '是', '2016/5/16 10:43', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '280962.113215', '2761784.197870', '121.306647', '24.963631');
INSERT INTO[rain_2016_05_16] VALUES ('8119', '第二河川局', '經濟部水利署', '', '', '桃園市', '八德區', '', '2016-05-16 07:56:00', '八德區文昌街111巷、97巷', '側溝淤積', '--', '是', '2016/5/16 10:43', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '279826.569709', '2760597.117520', '121.295375', '24.952936');
INSERT INTO[rain_2016_05_16] VALUES ('8120', '第二河川局', '經濟部水利署', '', '', '桃園市', '八德區', '', '2016-05-16 07:56:00', '桃園市廣福路茄苳橋護岸工程', '現場砌石情況不良，之前於河道內施作徵型椿保護,現水流沖壞護岸導致崩塌', '--', '是', '2016/5/16 10:43', '已由廠商待命,準備太空包，待水位消退後,準備堆疊及灌漿應急保護', '1.姓名：馮浦捷 2.電話：03-3306690', '280382.562440', '2765105.537040', '121.300980', '24.993628');
INSERT INTO[rain_2016_05_16] VALUES ('8121', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '大溪區', '', '2016-05-16 08:33:00', '儲蓄路230巷25弄', '淹水', '--', '是', '2016/5/16 13:52', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '277558.439931', '2755533.548970', '121.272813', '24.907263');
INSERT INTO[rain_2016_05_16] VALUES ('8122', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '中壢區', '', '2016-05-16 06:33:00', '榮民南路和普忠路交叉路口', '淹水', '--', '是', '2016/5/16 10:44', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '275943.676264', '2760221.890540', '121.256916', '24.949620');
INSERT INTO[rain_2016_05_16] VALUES ('8123', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '中壢區', '道路', '2016-05-16 06:54:00', '桃園市普忠路地下道', '淹水', '60', '是', '2016/5/16 14:44', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '274640.366505', '2761690.501890', '121.244035', '24.962900');
INSERT INTO[rain_2016_05_16] VALUES ('8124', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '中壢區', '待查', '2016-05-16 08:01:00', '桃園市後興路、昆明街', '淹水', '10', '是', '2016/5/16 10:44', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '280382.562440', '2765105.537040', '121.300980', '24.993628');
INSERT INTO[rain_2016_05_16] VALUES ('8125', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '中壢區', '待查', '2016-05-16 08:02:00', '桃園市龍岡路二段200號、 龍岡路三段拓寬工程路段', '淹水', '15', '是', '2016/5/16 10:44', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '280382.562440', '2765105.537040', '121.300980', '24.993628');
INSERT INTO[rain_2016_05_16] VALUES ('8126', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '中壢區', '', '2016-05-16 08:03:00', '桃園市中山東路三段107號', '淹水', '--', '是', '2016/5/16 10:44', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '275113.759019', '2759668.041890', '121.248687', '24.944633');
INSERT INTO[rain_2016_05_16] VALUES ('8127', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '中壢區', '', '2016-05-16 07:24:00', '桃園市榮民南路27巷', '淹水', '--', '是', '2016/5/16 10:44', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '276204.879262', '2760955.112590', '121.259516', '24.956235');
INSERT INTO[rain_2016_05_16] VALUES ('8128', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '中壢區', '', '2016-05-16 07:37:00', '桃園市仁德街12巷54號', '淹水', '--', '是', '2016/5/16 10:44', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '275519.925327', '2759429.157710', '121.252705', '24.942470');
INSERT INTO[rain_2016_05_16] VALUES ('8129', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '平鎮區', '', '2016-05-16 08:11:00', '桃園市文化街294號', '淹水', '--', '是', '2016/5/16 14:00', '兩台抽水機運作抽水', '1.姓名：馮浦捷 2.電話：03-3306690', '270524.273924', '2760266.817620', '121.203249', '24.950108');
INSERT INTO[rain_2016_05_16] VALUES ('8130', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '中壢區', '待查', '2016-05-16 07:44:00', '桃園市中壢區龍江路73巷75號', '淹水', '10', '是', '2016/5/16 10:44', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '276119.624405', '2758372.010570', '121.258623', '24.932915');
INSERT INTO[rain_2016_05_16] VALUES ('8131', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '中壢區', '', '2016-05-16 08:29:00', '桃園市中壢區龍和一街235號', '淹水', '--', '是', '2016/5/16 15:00', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '274767.918583', '2759155.216590', '121.245253', '24.940009');
INSERT INTO[rain_2016_05_16] VALUES ('8132', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '平鎮區', '待查', '2016-05-16 06:12:00', '桃園市平鎮區振興西路地下道', '淹水', '20', '是', '2016/5/16 07:40', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '271580.796945', '2759839.890760', '121.213705', '24.946239');
INSERT INTO[rain_2016_05_16] VALUES ('8133', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '平鎮區', '', '2016-05-16 06:34:00', '環南路66巷', '無災情', '--', '是', '2016/5/16 10:12', '區公所已派人抽水完畢', '1.姓名：馮浦捷 2.電話：03-3306690', '#N/A', '#N/A', null, null);
INSERT INTO[rain_2016_05_16] VALUES ('8135', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '道路', '2016-05-16 05:59:00', '桃鶯路398號、318號', '淹水', '20', '是', '2016/5/16 08:38', '車輛已可通行', '1.姓名：馮浦捷 2.電話：03-3306690', '282637.097542', '2763139.604300', '121.323267', '24.975832');
INSERT INTO[rain_2016_05_16] VALUES ('8137', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '道路', '2016-05-16 06:28:00', '桃園市桃園區長安街和萬壽路三段、林森路地下道', '淹水', '20', '是', '2016/5/16 14:25', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '281954.638489', '2764598.220540', '121.316541', '24.989016');
INSERT INTO[rain_2016_05_16] VALUES ('8138', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '待查', '2016-05-16 06:29:00', '桃園市桃園區泰山街和中山路的交叉路口', '淹水', '5', '是', '2016/5/16 14:25', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '280034.037154', '2764851.164490', '121.297522', '24.991339');
INSERT INTO[rain_2016_05_16] VALUES ('8139', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '待查', '2016-05-16 06:30:00', '桃園市桃園區春日路和三民路二段的交叉路口', '淹水', '20', '是', '2016/5/16 14:25', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '281697.453052', '2765912.018800', '121.314024', '25.000882');
INSERT INTO[rain_2016_05_16] VALUES ('8140', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '待查', '2016-05-16 06:43:00', '桃園市桃園區桃鶯路87巷35號', '淹水', '12', '是', '2016/5/16 08:41', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '282172.826403', '2764523.678260', '121.318701', '24.988338');
INSERT INTO[rain_2016_05_16] VALUES ('8141', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '住戶', '2016-05-16 06:43:00', '桃園市桃園區朝陽街二段16號地下停車場', '淹水', '20', '是', '2016/5/16 14:41', '一般住家，已退水', '1.姓名：馮浦捷 2.電話：03-3306690', '281889.708306', '2764849.081060', '121.315904', '24.991282');
INSERT INTO[rain_2016_05_16] VALUES ('8142', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '待查', '2016-05-16 06:46:00', '桃園市桃園區延平路54號', '淹水', '13', '是', '2016/5/16 08:45', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '281712.901792', '2764127.734170', '121.314136', '24.984773');
INSERT INTO[rain_2016_05_16] VALUES ('8143', '第二河川局', '經濟部水利署', '', '', '桃園市', '桃園區', '道路', '2016-05-16 06:46:00', '桃園市民族地下道', '淹水，已封鎖', '40', '是', '2016/5/16 08:45', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '265803.684644', '2761652.074830', '121.156518', '24.962671');
INSERT INTO[rain_2016_05_16] VALUES ('8144', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '待查', '2016-05-16 06:49:00', '桃園市桃園區桃鶯路275巷', '淹水', '20', '是', '2016/5/16 08:38', '自然退水，車輛已可通行', '1.姓名：馮浦捷 2.電話：03-3306690', '282187.813056', '2763963.007400', '121.318836', '24.983276');
INSERT INTO[rain_2016_05_16] VALUES ('8145', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '', '2016-05-16 06:57:00', '三民路三段529號', '無災情', '--', '是', '2016/5/16 08:45', '已退水', '1.姓名：馮浦捷 2.電話：03-3306690', '#N/A', '#N/A', null, null);
INSERT INTO[rain_2016_05_16] VALUES ('8146', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '', '2016-05-16 06:58:00', '建國東路12巷35弄', '無災情', '--', '是', '2016/5/16 07:10', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '#N/A', '#N/A', null, null);
INSERT INTO[rain_2016_05_16] VALUES ('8147', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '道路', '2016-05-16 07:07:00', '桃園市桃園區民族路橋地下道', '淹水，處於封路狀態', '200', '是', '2016/5/16 15:10', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '279977.579282', '2765080.475610', '121.296967', '24.993410');
INSERT INTO[rain_2016_05_16] VALUES ('8148', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '待查', '2016-05-16 07:10:00', '桃園市桃園區桃鶯路和大誠路的交叉路口', '淹水', '35', '是', '2016/5/16 08:45', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '282247.604405', '2763780.521570', '121.319424', '24.981627');
INSERT INTO[rain_2016_05_16] VALUES ('8149', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '待查', '2016-05-16 07:12:00', '復興路367巷43號附近', '淹水', '20', '是', '2016/5/16 08:53', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '280529.922779', '2764671.661950', '121.302430', '24.989708');
INSERT INTO[rain_2016_05_16] VALUES ('8150', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '待查', '2016-05-16 14:41:00', '桃園市桃園區樹仁三街201號', '淹水', '30', '是', '2016/5/16 15:00', '已退水', '1.姓名：馮浦捷 2.電話：03-3306690', '282013.002352', '2762920.471070', '121.317081', '24.973867');
INSERT INTO[rain_2016_05_16] VALUES ('8151', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '', '2016-05-16 07:37:00', '桃園市桃園區龍門街', '淹水', '--', '是', '2016/5/16 14:53', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '276632.164783', '2763515.446960', '121.263797', '24.979343');
INSERT INTO[rain_2016_05_16] VALUES ('8152', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '', '2016-05-16 07:43:00', '桃園市桃園區中正路及復興路口', '淹水', '--', '是', '2016/5/16 08:53', '已退水', '1.姓名：馮浦捷 2.電話：03-3306690', '280519.148024', '2766768.908640', '121.302370', '25.008643');
INSERT INTO[rain_2016_05_16] VALUES ('8153', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '', '2016-05-16 07:32:00', '桃園市桃園區建國東路整條', '淹水', '--', '是', '2016/5/16 14:53', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '282302.602669', '2764278.222090', '121.319981', '24.986119');
INSERT INTO[rain_2016_05_16] VALUES ('8154', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '待查', '2016-05-16 07:33:00', '桃園市桃園區桃鶯路及春日路口', '淹水', '--', '是', '2016/5/16 14:53', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '282259.607691', '2763737.850600', '121.319542', '24.981242');
INSERT INTO[rain_2016_05_16] VALUES ('8155', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '', '2016-05-16 07:32:00', '桃園市桃園區春日路至中山東路之間', '淹水', '--', '是', '2016/5/16 14:53', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '281329.649307', '2767003.278000', '121.310405', '25.010742');
INSERT INTO[rain_2016_05_16] VALUES ('8156', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '', '2016-05-16 07:35:00', '桃園市桃園區桃鶯路至大成路間', '淹水', '--', '是', '2016/5/16 14:53', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '282259.607691', '2763737.850600', '121.319542', '24.981242');
INSERT INTO[rain_2016_05_16] VALUES ('8157', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '楊梅區', '待查', '2016-05-16 06:19:00', '桃園市楊梅區民富路三段紡織廠前地下道', '淹水，有人受困已引導出，無人受傷', '100', '是', '2016/5/16 10:14', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '259800.247481', '2758191.849090', '121.097036', '24.931481');
INSERT INTO[rain_2016_05_16] VALUES ('8158', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '楊梅區', '', '2016-05-16 06:59:00', '桃園市楊梅區埔心火車站後站', '無災情', '--', '是', '2016/5/16 10:14', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '#N/A', '#N/A', null, null);
INSERT INTO[rain_2016_05_16] VALUES ('8159', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '楊梅區', '待查', '2016-05-16 07:13:00', '富豐南路地下道', '地下道淹水', '40', '是', '2016/5/16 07:45', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '258916.554727', '2758534.374860', '121.088288', '24.934579');
INSERT INTO[rain_2016_05_16] VALUES ('8161', '第二河川局', '經濟部水利署', '', '', '桃園市', '龜山區', '待查', '2016-05-16 06:34:00', '桃園市龜山區長壽路479號', 'TOYOTA前淹水', '20', '是', '2016/5/16 07:45', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '283777.735165', '2765542.690120', '121.334624', '24.997503');
INSERT INTO[rain_2016_05_16] VALUES ('8163', '第二河川局', '經濟部水利署', '', '', '桃園市', '龜山區', '待查', '2016-05-16 06:59:00', '山鶯路光華路口', '淹水', '20', '是', '2016/5/16 07:45', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '283039.785101', '2764251.559060', '121.327282', '24.985863');
INSERT INTO[rain_2016_05_16] VALUES ('8164', '第二河川局', '經濟部水利署', '', '', '桃園市', '龜山區', '待查', '2016-05-16 07:03:00', '山鶯路300-330號', '淹水', '20', '是', '2016/5/16 07:45', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '282574.587267', '2764915.855700', '121.322690', '24.991870');
INSERT INTO[rain_2016_05_16] VALUES ('8165', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '大園區', '待查', '2016-05-16 07:04:00', '桃園市大園區內海里', '淹水', '--', '是', '2016/5/16 09:45', '自然退水', '1.姓名：馮浦捷 2.電話：03-3306690', '268697.620576', '2774707.584850', '121.185356', '25.080507');
INSERT INTO[rain_2016_05_16] VALUES ('8166', '經濟部水利署', '經濟部水利署', '', '', '桃園市', '桃園區', '待查', '2016-05-16 06:19:00', '大仁路40巷1弄7號', '無災情', '--', '是', '2016/5/16 14:25', '--', '1.姓名：馮浦捷 2.電話：03-3306690', '#N/A', '#N/A', null, null);
INSERT INTO[rain_2016_05_16] VALUES ('8168', '經濟部水利署', '經濟部水利署', '', '', '屏東縣', '內埔鄉', '待查', '2016-05-16 15:00:00', '屏東縣內埔鄉', '無災情', '--', '是', '2016/5/16 15:21', '--', '1. 姓名:廖皓芢 2. 電話:087782141', '#N/A', '#N/A', null, null);
INSERT INTO[rain_2016_05_16] VALUES ('8169', '經濟部水利署', '經濟部水利署', '', '', '屏東縣', '內埔鄉', '待查', '2016-05-16 15:10:00', '屏東縣內埔鄉', '無災情', '--', '是', '2016/5/16 15:21', '--', '1. 姓名:廖皓芢 2. 電話:087782141', '#N/A', '#N/A', null, null);
INSERT INTO[rain_2016_05_16] VALUES ('8170', '經濟部水利署', '經濟部水利署', '', '', '屏東縣', '泰武鄉', '', '2016-05-16 19:15:00', '舊泰武', '無災情', '--', '是', '2016/5/16 18:54', '--', '1.姓名：曾月蓮 2.電話：0988717318', '#N/A', '#N/A', null, null);
