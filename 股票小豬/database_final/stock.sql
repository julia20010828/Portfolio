DROP TABLE IF EXISTS stock;
CREATE TABLE stock(
   代號      INTEGER  NOT NULL PRIMARY KEY 
  ,名稱      VARCHAR(7) NOT NULL
  ,市場      VARCHAR(1) NOT NULL
  ,股價日期    VARCHAR(5) NOT NULL
  ,成交      NUMERIC(5,2) NOT NULL
  ,漲跌價     NUMERIC(5,2) NOT NULL
  ,漲跌幅     NUMERIC(5,2) NOT NULL
  ,成交張數    VARCHAR(6) NOT NULL
  ,成交額百萬   VARCHAR(5) NOT NULL
  ,昨收      NUMERIC(5,2) NOT NULL
  ,開盤      NUMERIC(5,2) NOT NULL
  ,最高      NUMERIC(5,2) NOT NULL
  ,最低      NUMERIC(5,2) NOT NULL
  ,振幅      NUMERIC(4,2) NOT NULL
  ,PER     NUMERIC(5,2)
  ,PBR     NUMERIC(4,2) NOT NULL
)DEFAULT CHARSET=utf8;
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (1336,'台翰','櫃','5/14',21.35,-0.4,-1.84,'443','9.62',21.75,21.85,22.75,21.35,6.44,8.61,1.01);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (1471,'首利','市','5/14',9.11,0.06,0.66,'2,413','22.5',9.05,9.44,9.7,8.99,7.85,2.98,1.31);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (1582,'信錦','市','5/14',80.8,0.3,0.37,'462','37.4',80.5,81,81.8,80.4,1.74,10.4,1.67);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (1595,'川寶','櫃','5/14',29.45,1.05,3.7,'53','1.57',28.4,30.6,30.6,28.6,7.04,58.9,0.58);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (1815,'富喬','櫃','5/14',13.85,-0.45,-3.15,'13,841','199',14.3,14.6,15.2,13.6,11.2,NULL,0.87);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2059,'川湖','市','5/14',376,10,2.73,'219','80.1',366,375,380,369.5,2.87,31.4,3.1);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2308,'台達電','市','5/14',266.5,2,0.76,'9,425','2,518',264.5,267,271.5,264.5,2.65,23.1,4.5);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2313,'華通','市','5/14',34.7,0,0,'10,335','362',34.7,35.05,35.5,34.5,2.88,8.87,1.38);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2316,'楠梓電','市','5/14',27,-0.05,-0.18,'1,167','32',27.05,27.45,28.2,26.85,4.99,12.6,0.67);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2327,'國巨','市','5/14',440,30.5,7.45,'18,905','8,386',409.5,438,450,432,4.4,13.9,2.96);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2328,'廣宇','市','5/14',36.55,-0.4,-1.08,'13,473','498',36.95,37.7,39,35.3,10,23,1.64);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2355,'敬鵬','市','5/14',26.5,1.25,4.95,'5,675','148',25.25,25.1,26.9,25.05,7.33,NULL,0.69);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2367,'燿華','市','5/14',20.05,-0.4,-1.96,'8,834','178',20.45,20.75,20.9,19.95,4.65,NULL,1.14);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2368,'金像電','市','5/14',45.9,2.05,4.68,'22,446','1,028',43.85,45.4,47.4,44.5,6.61,12,2.68);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2375,'凱美','市','5/14',93,1.4,1.53,'13,204','1,283',91.6,96,100.5,92,9.28,27.2,1.66);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2383,'台光電','市','5/14',157,5.5,3.63,'4,037','634',151.5,152.5,160,151,5.94,13.4,2.97);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2385,'群光','市','5/14',79.1,-0.1,-0.13,'4,610','367',79.2,79.2,80.4,78.9,1.89,7.96,2.14);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2392,'正崴','市','5/14',39.1,-0.1,-0.26,'2,817','109',39.2,39.55,40.25,38.95,3.32,9.63,0.8);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2402,'毅嘉','市','5/14',15.7,-0.15,-0.95,'2,343','37.3',15.85,16.05,16.6,15.5,6.94,31.4,0.84);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2413,'環科','市','5/14',20.4,0.25,1.24,'1,146','23.9',20.15,21,21.8,20.15,8.19,75.6,1.59);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2415,'錩新','市','5/14',32.5,-0.5,-1.52,'583','19.4',33,33.9,34.85,32.1,8.33,29,1.78);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2420,'新巨','市','5/14',35.95,0.2,0.56,'441','15.9',35.75,35.9,36.55,35.7,2.38,12.1,1.65);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2421,'建準','市','5/14',42.3,0.8,1.93,'1,956','82.2',41.5,41.4,42.85,41.4,3.49,12.5,2.27);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2428,'興勤','市','5/14',154,3,1.99,'760','120',151,157.5,163,152,7.28,12.4,2.57);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2429,'銘旺科','市','5/14',16.8,0.1,0.6,'16','0.27',16.7,16.7,16.9,16.7,1.2,NULL,2.75);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2431,'聯昌','市','5/14',11.95,0.2,1.7,'1,443','17.3',11.75,12.05,12.2,11.7,4.26,28.5,0.96);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2440,'太空梭','市','5/14',16.8,0.05,0.3,'1,522','26',16.75,17.55,17.95,16.55,8.36,10.6,1.86);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2456,'奇力新','市','5/14',91.4,0.6,0.66,'6,276','588',90.8,93.4,96.7,91.2,6.06,13.7,0.95);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2457,'飛宏','市','5/14',28.4,-1.45,-4.86,'20,565','598',29.85,30.5,31.2,27.8,11.4,NULL,2.1);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2460,'建通','市','5/14',28.7,-1.65,-5.44,'7,426','218',30.35,31,31.75,27.4,14.3,45.6,2.14);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2462,'良得電','市','5/14',27.1,-0.75,-2.69,'431','11.8',27.85,27.85,28.45,27,5.21,31.1,1.48);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2467,'志聖','市','5/14',50.1,-1.4,-2.72,'1,365','69.6',51.5,52.1,52.7,50,5.24,14.8,2.78);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2472,'立隆電','市','5/14',59.1,-0.1,-0.17,'2,317','141',59.2,61,63.7,58.5,8.78,12.2,1.65);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2476,'鉅祥','市','5/14',30.95,0.1,0.32,'2,783','89.2',30.85,31.45,33.8,30.9,9.4,13.1,1.19);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2478,'大毅','市','5/14',65.7,1,1.55,'2,053','138',64.7,66.5,70.2,64.5,8.81,13.8,1.56);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2483,'百容','市','5/14',19.5,-0.3,-1.52,'255','4.95',19.8,19.7,19.8,19.1,3.54,88.6,0.91);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2484,'希華','市','5/14',25.3,-0.25,-0.98,'2,890','74.6',25.55,25.8,26.75,25.15,6.26,20.2,1.18);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2492,'華新科','市','5/14',195,3.5,1.83,'14,006','2,813',191.5,198,209.5,194,8.09,11.9,2.29);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (2493,'揚博','市','5/14',36.75,0.25,0.68,'788','29',36.5,36.7,37.3,36.35,2.6,15,1.95);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3003,'健和興','市','5/14',62.5,-1.5,-2.34,'3,155','202',64,65.3,66.9,62,7.66,26.9,2.01);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3011,'今皓','市','5/14',7.25,-0.03,-0.41,'707','5.21',7.28,7.49,7.64,7.2,6.04,NULL,0.89);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3015,'全漢','市','5/14',41.85,-1.05,-2.45,'1,606','69',42.9,44,44.75,41.6,7.34,9.55,0.69);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3021,'鴻名','市','5/14',19.05,-0.25,-1.3,'583','11.5',19.3,20.2,20.75,19,9.07,13.1,1.47);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3023,'信邦','市','5/14',241.5,-3.5,-1.43,'988','242',245,241,253.5,241,5.1,24.9,5.73);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3026,'禾伸堂','市','5/14',121.5,1,0.83,'6,931','861',120.5,123,129,121,6.64,12.4,2.26);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3032,'偉訓','市','5/14',39.4,-0.15,-0.38,'471','18.7',39.55,40.1,40.8,39.2,4.05,9.56,1.7);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3037,'欣興','市','5/14',95,0.4,0.42,'49,298','4,838',94.6,95.8,104,94.5,10,19.2,2.76);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3042,'晶技','市','5/14',93.3,0.9,0.97,'10,747','1,011',92.4,94.4,96.8,92,5.19,16,2.76);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3044,'健鼎','市','5/14',125,2,1.63,'2,662','334',123,123.5,128.5,121,6.1,10,1.73);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3058,'立德','市','5/14',13.95,-0.55,-3.79,'4,969','71.4',14.5,14.8,15.3,13.6,11.7,NULL,1.2);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3078,'僑威','櫃','5/14',47.85,0.55,1.16,'5,161','250',47.3,48.45,49.75,47.3,5.18,8.73,1.94);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3090,'日電貿','市','5/14',51.5,0.5,0.98,'2,892','151',51,52.1,53.9,51.1,5.49,13.6,2.09);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3092,'鴻碩','市','5/14',60,-0.3,-0.5,'2,592','159',60.3,62.9,64.1,58.5,9.29,49.2,2.76);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3114,'好德','櫃','5/14',23.45,-0.2,-0.85,'199','4.78',23.65,23.8,24.6,23.2,5.92,11.2,1.2);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3115,'寶島極','櫃','5/14',16.6,1,6.41,'1','0.02',15.6,16.6,16.6,16.6,0,NULL,2.76);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3144,'新揚科','櫃','5/14',36,0.05,0.14,'94','3.39',35.95,36.05,36.35,35.8,1.53,12,2.06);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3191,'和進','櫃','5/14',6,0,0,'130','0.78',6,6,6,6,0,NULL,2.14);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3202,'樺晟','櫃','5/14',12.65,-0.1,-0.78,'641','8.31',12.75,12.85,13.5,12.65,6.67,NULL,1.37);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3206,'志豐','櫃','5/14',32.1,-0.15,-0.47,'138','4.48',32.25,32.7,32.9,31.8,3.41,10.9,1.63);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3207,'耀勝','櫃','5/14',10.35,-0.15,-1.43,'16','0.16',10.5,10.5,10.95,10.25,6.67,NULL,2.05);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3217,'優群','櫃','5/14',96,4.2,4.58,'976','93.2',91.8,93.3,97.5,93.2,4.68,13.6,2.28);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3229,'晟鈦','市','5/14',6.35,-0.05,-0.78,'17','0.11',6.4,6.29,6.4,6.29,1.72,NULL,1.72);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3236,'千如','櫃','5/14',25,-0.05,-0.2,'926','23.8',25.05,25.25,26.7,24.85,7.39,22.3,1.75);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3276,'宇環','櫃','5/14',12.5,-0.25,-1.96,'319','4.1',12.75,12.95,13.5,12.5,7.84,20.8,1.3);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3288,'點晶','櫃','5/14',14.4,-0.05,-0.35,'54','0.8',14.45,14.95,15.7,14.2,10.4,NULL,2.61);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3290,'東浦','櫃','5/14',12.8,0,0,'140','1.82',12.8,13,13.25,12.75,3.91,20.3,0.92);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3294,'英濟','櫃','5/14',19.4,-0.15,-0.77,'491','9.64',19.55,20.3,20.4,19.1,6.65,10.1,1.05);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3296,'勝德','市','5/14',20.05,-0.1,-0.5,'461','9.12',20.15,20.15,20.55,19,7.69,52.8,1.36);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3308,'聯德','市','5/14',8.26,-0.09,-1.08,'261','2.17',8.35,8.3,8.77,8,9.22,NULL,1.16);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3310,'佳穎','櫃','5/14',29.1,-0.05,-0.17,'22','0.63',29.15,29.85,29.85,28.35,5.15,35.5,1.17);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3313,'斐成','櫃','5/14',12.05,0.1,0.84,'150','1.81',11.95,12,12.2,11.85,2.93,NULL,1.29);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3321,'同泰','市','5/14',11.75,-0.05,-0.42,'683','8.14',11.8,12.1,12.25,11.65,5.08,NULL,2.02);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3322,'建舜電','櫃','5/14',17.15,-0.35,-2,'1,260','22',17.5,18.35,18.4,16.55,10.6,NULL,1.74);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3332,'幸康','櫃','5/14',37.25,0.05,0.13,'13','0.48',37.2,37.2,37.4,37,1.08,12.8,1.3);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3338,'泰碩','市','5/14',45.5,1.2,2.71,'802','36.5',44.3,44.5,47,44.35,5.98,22.9,2.37);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3354,'律勝','櫃','5/14',12.55,0.2,1.62,'91','1.14',12.35,12.85,12.85,12.35,4.05,NULL,0.8);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3357,'臺慶科','櫃','5/14',119.5,-0.5,-0.42,'984','121',120,122,128.5,118,8.75,13.2,2.83);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3376,'新日興','市','5/14',102,2,2,'1,122','115',100,103.5,105,101.5,3.5,11.3,1.25);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3388,'崇越電','櫃','5/14',73.7,0.5,0.68,'285','21.2',73.2,73.7,75.5,73.7,2.46,12.2,1.32);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3390,'旭軟','櫃','5/14',14.7,0.15,1.03,'241','3.55',14.55,14.6,15.25,14.5,5.15,NULL,0.99);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3432,'台端','市','5/14',12.85,0,0,'136','1.77',12.85,12.95,13.3,12.8,3.89,27.9,0.54);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3465,'進泰電子','櫃','5/14',182,-1,-0.55,'60','11.1',183,188,190.5,181,5.19,30.4,11.6);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3484,'崧騰','櫃','5/14',64,0.5,0.79,'1,389','88.1',63.5,64.7,64.9,62,4.57,8.83,2.08);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3492,'長盛','櫃','5/14',17.2,0.45,2.69,'224','3.93',16.75,17,18.25,17,7.46,31.9,1.13);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3501,'維熹','市','5/14',48.1,0,0,'250','12.1',48.1,48.25,49,48.1,1.87,13.4,1);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3511,'矽瑪','櫃','5/14',28.1,0.05,0.18,'1,914','54.5',28.05,28.65,29.4,27.85,5.53,25.8,1.49);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3512,'皇龍','櫃','5/14',34.45,-0.5,-1.43,'95','3.3',34.95,36.3,36.3,34,6.58,13.1,1.93);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3520,'華盈','櫃','5/14',14.1,0.2,1.44,'38','0.54',13.9,14.3,14.3,13.5,5.76,94,1.6);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3526,'凡甲','櫃','5/14',130.5,0.5,0.38,'395','52.5',130,132,138,130.5,5.77,12.8,3.25);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3533,'嘉澤','市','5/14',513,46,9.85,'2,101','1,069',467,485,513,482,6.64,19.4,3.93);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3537,'堡達','櫃','5/14',37.2,0.3,0.81,'890','33.3',36.9,37.5,38.45,36.5,5.28,12,2.15);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3548,'兆利','櫃','5/14',66.6,-0.2,-0.3,'395','26.7',66.8,66.7,69.2,66,4.79,13.2,0.97);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3550,'聯穎','市','5/14',17.05,-0.1,-0.58,'1,017','17.6',17.15,17.35,18,16.8,7,10.6,0.75);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3593,'力銘','市','5/14',14,0.2,1.45,'112','1.58',13.8,14.7,14.75,13.85,6.52,NULL,2.14);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3597,'映興','櫃','5/14',26.55,0.65,2.51,'104','2.76',25.9,26.25,27.5,26.05,5.6,17.1,1.89);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3605,'宏致','市','5/14',38.55,0.3,0.78,'1,738','67.9',38.25,39,40.4,38.3,5.49,10.5,1.04);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3607,'谷崧','市','5/14',13.55,-0.3,-2.17,'963','13.4',13.85,13.95,14.6,13.4,8.66,NULL,0.61);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3609,'東林','櫃','5/14',30.5,-0.2,-0.65,'54','1.65',30.7,30.75,30.95,30.1,2.77,NULL,1.89);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3624,'光頡','櫃','5/14',29.45,0.75,2.61,'1,938','57.1',28.7,29.35,30.8,28.65,7.49,14.5,1.28);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3631,'晟楠','櫃','5/14',50.1,-0.5,-0.99,'158','7.92',50.6,51,51,50,1.98,NULL,3.07);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3645,'達邁','市','5/14',43,0.25,0.58,'717','31',42.75,43.15,44.8,42,6.55,14.1,1.96);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3646,'艾恩特','櫃','5/14',23.05,-0.75,-3.15,'312','7.25',23.8,24.2,24.4,22.6,7.56,15.6,1.88);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3653,'健策','市','5/14',262,23.5,9.85,'4,886','1,257',238.5,243,262,243,7.97,38.4,4.78);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3679,'新至陞','市','5/14',125.5,-1,-0.79,'315','40.2',126.5,127.5,132.5,125,5.93,8.7,1.69);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3689,'湧德','櫃','5/14',27.05,-0.3,-1.1,'537','14.7',27.35,28,28.25,26.85,5.12,12.5,0.74);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (3710,'連展投控','櫃','5/14',9.86,-0.14,-1.4,'3,458','35',10,10.05,10.4,9.79,6.1,NULL,0.96);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (4542,'科嶠','櫃','5/14',20.7,-0.3,-1.43,'70','1.51',21,22.4,22.4,20.7,8.1,94.1,1.07);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (4545,'銘鈺','市','5/14',25.9,0.15,0.58,'283','7.4',25.75,26.35,27.75,25.55,8.54,36,1.18);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (4912,'聯德控股-KY','市','5/14',167.5,-4,-2.33,'932','161',171.5,173,178,165.5,7.29,17.5,3.29);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (4915,'致伸','市','5/14',50.8,-0.5,-0.97,'4,420','229',51.3,52.3,52.7,50.6,4.09,10.6,1.67);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (4927,'泰鼎-KY','市','5/14',49.5,-1.3,-2.56,'3,963','199',50.8,51.6,53,49.1,7.68,7.84,1.23);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (4939,'亞電','櫃','5/14',20.45,0.1,0.49,'965','20.2',20.35,21.6,21.7,20.1,7.86,10.2,1.25);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (4943,'康控-KY','市','5/14',53.4,1.7,3.29,'954','51.3',51.7,53.3,55.5,52.4,6,NULL,1.67);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (4958,'臻鼎-KY','市','5/14',90,-1.8,-1.96,'7,700','702',91.8,92.6,93.5,89.1,4.79,10.4,1.14);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (4974,'亞泰','櫃','5/14',51.6,-0.3,-0.58,'364','18.9',51.9,52,52.7,51.6,2.12,9.9,1.43);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (4989,'榮科','市','5/14',34.45,-0.6,-1.71,'2,348','84.2',35.05,37.9,37.9,34,11.1,50.7,2.44);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (4999,'鑫禾','市','5/14',47.8,-0.5,-1.04,'403','19.5',48.3,49.7,49.7,47.6,4.35,8.14,1.06);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (5227,'立凱-KY','櫃','5/14',9.8,-0.35,-3.45,'1,183','11.8',10.15,10.15,10.35,9.65,6.9,NULL,1.69);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (5291,'邑昇','櫃','5/14',28,-0.45,-1.58,'653','18.5',28.45,28.7,29.35,27.6,6.15,12.2,1.28);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (5309,'系統電','櫃','5/14',26.35,-0.65,-2.41,'1,727','47.8',27,28,29.15,26.35,10.4,NULL,3.75);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (5321,'友銓','櫃','5/14',32.8,-0.2,-0.61,'86','2.84',33,34.25,34.25,32.1,6.52,NULL,2.77);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (5328,'華容','櫃','5/14',12.65,0.1,0.8,'1,202','15.5',12.55,12.7,13.35,12.5,6.77,50.6,1.23);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (5340,'建榮','櫃','5/14',31.75,-1.1,-3.35,'423','13.7',32.85,33.65,33.65,31.5,6.54,77.4,3.44);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (5345,'天揚','櫃','5/14',6.8,0.01,0.15,'10','0.07',6.79,6.8,6.8,6.25,8.1,NULL,3.06);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (5355,'佳總','櫃','5/14',6.77,-0.03,-0.44,'1,133','7.85',6.8,6.81,7.17,6.6,8.38,96.7,0.82);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (5381,'合正','櫃','5/14',5.81,0.02,0.35,'42','0.23',5.79,5.79,5.81,5.5,5.35,581,1.52);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (5439,'高技','櫃','5/14',54.5,-1.9,-3.37,'1,360','76.7',56.4,57.8,58.4,54.5,6.91,14.8,2.53);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (5457,'宣德','櫃','5/14',56.6,1.6,2.91,'2,813','158',55,56.6,58.5,54.9,6.55,13.5,3.08);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (5460,'同協','櫃','5/14',12.3,0,0,'118','1.45',12.3,12.5,12.5,12.1,3.25,NULL,0.98);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (5464,'霖宏','櫃','5/14',20.1,-0.65,-3.13,'308','6.34',20.75,21,21.2,20.1,5.3,5.33,1.04);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (5469,'瀚宇博','市','5/14',40.55,0.25,0.62,'3,473','142',40.3,41.05,42,40.1,4.71,5.7,0.71);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (5475,'德宏','櫃','5/14',13.7,-0.85,-5.84,'2,181','31.6',14.55,15,15.45,13.2,15.5,NULL,4.52);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (5488,'松普','櫃','5/14',7.42,0.12,1.64,'397','2.96',7.3,7.58,7.66,7.32,4.66,NULL,0.8);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (5498,'凱崴','櫃','5/14',14.65,0.2,1.38,'2,327','33.8',14.45,15,15.2,13.95,8.65,28.2,1.24);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6108,'競國','市','5/14',18,0.15,0.84,'500','9.06',17.85,18.05,18.35,17.95,2.24,NULL,0.83);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6114,'久威','櫃','5/14',24.25,0.15,0.62,'75','1.82',24.1,24.15,24.5,24,2.07,50.5,0.85);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6115,'鎰勝','市','5/14',42.95,0.05,0.12,'261','11.2',42.9,43.9,43.9,42.75,2.68,14.2,1.66);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6124,'業強','櫃','5/14',27.1,-0.25,-0.91,'24','0.65',27.35,27.35,27.35,26.5,3.11,14.7,1.51);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6126,'信音','櫃','5/14',23.5,-0.25,-1.05,'764','18.3',23.75,24.25,24.75,23.3,6.11,10.6,2.05);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6127,'九豪','櫃','5/14',24.7,0.05,0.2,'3,995','100',24.65,25.1,26.65,23.9,11.2,NULL,2.41);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6133,'金橋','市','5/14',9.1,-0.13,-1.41,'690','6.32',9.23,9.4,9.54,8.86,7.37,455,0.77);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6134,'萬旭','櫃','5/14',16.7,-0.2,-1.18,'199','3.4',16.9,17,17.6,16.7,5.33,52.2,1.63);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6141,'柏承','市','5/14',25.8,0,0,'701','18.2',25.8,26.3,26.85,25.2,6.4,7.84,1.31);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6153,'嘉聯益','市','5/14',27.7,0.1,0.36,'5,511','152',27.6,28.25,28.9,27.05,6.7,16.5,0.97);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6155,'鈞寶','市','5/14',23.4,-0.1,-0.43,'944','22.8',23.5,23.95,25.2,23.35,7.87,43.3,1.41);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6156,'松上','櫃','5/14',16.55,-0.5,-2.93,'655','11.1',17.05,17.3,17.7,16.55,6.74,11.5,1.04);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6158,'禾昌','櫃','5/14',27.85,-0.65,-2.28,'149','4.25',28.5,28.5,29.4,27.85,5.44,7.71,1.61);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6165,'浪凡','市','5/14',30.95,-1.65,-5.06,'497','15.8',32.6,32.6,33.45,30.65,8.59,26.7,3.04);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6173,'信昌電','櫃','5/14',57.1,0.2,0.35,'4,010','236',56.9,58.9,61.5,56.8,8.26,10.2,1.75);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6174,'安碁','櫃','5/14',16.45,0.2,1.23,'121','2',16.25,16.25,17,16.25,4.62,117,1.35);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6175,'立敦','櫃','5/14',32.2,-0.05,-0.16,'1,139','37.8',32.25,33.5,34.6,31.8,8.68,12.9,1.76);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6185,'幃翔','櫃','5/14',12.65,0.1,0.8,'270','3.43',12.55,12.55,12.95,12.5,3.59,NULL,0.87);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6191,'精成科','市','5/14',28.45,0.1,0.35,'7,933','227',28.35,28.95,29.5,27.85,5.82,6.21,0.9);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6194,'育富','櫃','5/14',31.4,-0.95,-2.94,'66','2.1',32.35,31.55,33.1,31.4,5.26,14.1,1.03);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6197,'佳必琪','市','5/14',36,-0.35,-0.96,'533','19.4',36.35,36.5,37.1,35.9,3.3,14.8,1.63);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6203,'海韻電','櫃','5/14',99.9,-1.6,-1.58,'3,265','335',101.5,103.5,107,98.1,8.77,10.9,3.36);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6204,'艾華','櫃','5/14',103,-0.5,-0.48,'187','19.1',103.5,100,104.5,99,5.31,37.5,3.06);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6205,'詮欣','市','5/14',31.25,0.15,0.48,'205','6.45',31.1,31.1,32.5,30.65,5.95,15.3,1.2);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6207,'雷科','櫃','5/14',27.3,-0.5,-1.8,'783','21.9',27.8,28.2,28.8,27.2,5.76,16.7,1.53);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6208,'日揚','櫃','5/14',38.35,-0.5,-1.29,'850','32.7',38.85,39.4,39.5,37.95,3.99,13.9,1.95);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6210,'慶生','櫃','5/14',41.4,0.7,1.72,'40','1.66',40.7,41.8,41.95,40.9,2.58,15.9,1.85);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6213,'聯茂','市','5/14',116,-0.5,-0.43,'2,499','294',116.5,118.5,121.5,115,5.58,13.2,2.76);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6217,'中探針','櫃','5/14',31.9,0,0,'1,754','56.8',31.9,32.45,33.65,31.6,6.43,16.3,1.31);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6220,'岳豐','櫃','5/14',22.85,-0.1,-0.44,'654','15.1',22.95,23.85,23.85,22.5,5.88,8.43,1.14);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6224,'聚鼎','市','5/14',102.5,-2.5,-2.38,'1,544','162',105,106.5,110,101.5,8.1,18.1,3.64);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6251,'定穎','市','5/14',17.5,0.6,3.55,'8,189','144',16.9,17.2,18.2,16.85,7.99,33,0.97);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6259,'百徽','櫃','5/14',18.6,1.25,7.2,'26','0.44',17.35,17.95,18.6,16.3,13.3,35.1,1.35);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6266,'泰詠','櫃','5/14',20,0,0,'158','3.18',20,20.2,20.35,19.95,2,14.7,1.31);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6269,'台郡','市','5/14',114,2,1.79,'3,463','395',112,113,116,112,3.57,13.2,1.69);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6274,'台燿','櫃','5/14',92.8,0.4,0.43,'2,141','198',92.4,92.9,94.3,91.4,3.14,14.6,2.46);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6279,'胡連','櫃','5/14',99.3,-4.2,-4.06,'873','88.5',103.5,104.5,106,99.3,6.47,13.7,2.06);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6282,'康舒','市','5/14',24.8,-0.25,-1,'5,491','138',25.05,25.5,25.8,24.55,4.99,9.5,1.28);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6284,'佳邦','櫃','5/14',52.2,-0.9,-1.69,'2,405','130',53.1,54.1,56.3,51.1,9.79,16.6,1.39);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6290,'良維','櫃','5/14',56.4,-0.8,-1.4,'3,291','189',57.2,58.6,59.4,56,5.94,10,1.8);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6292,'迅德','櫃','5/14',39,0.1,0.26,'120','4.69',38.9,39.85,39.85,38.9,2.44,7.59,1.81);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6412,'群電','市','5/14',67.3,0.3,0.45,'534','36',67,67.1,68,67.1,1.34,10.1,3.04);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6418,'詠昇','櫃','5/14',14.25,-0.4,-2.73,'48','0.7',14.65,15,15,13.8,8.19,89.1,1.04);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6432,'今展科','櫃','5/14',35.55,0.25,0.71,'455','16.4',35.3,35.9,37,35,5.67,12.2,1.45);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6449,'鈺邦','市','5/14',56.8,-0.7,-1.22,'977','56.2',57.5,58.1,59.9,56.6,5.74,15.9,2.04);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6538,'倉和','櫃','5/14',108,-5.5,-4.85,'850','97.3',113.5,118,121,107,12.3,9.38,2.25);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6642,'富致','櫃','5/14',62.5,0.9,1.46,'141','8.85',61.6,61.5,64,61.5,4.06,19.6,3.31);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6664,'群翊','櫃','5/14',66,1.2,1.85,'228','15.1',64.8,65.5,67.5,65.4,3.24,11.7,1.91);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6672,'騰輝電子-KY','市','5/14',87.6,-0.7,-0.79,'1,235','109',88.3,90.5,91.1,86.8,4.87,13.5,2.38);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6715,'嘉基','市','5/14',106,3,2.91,'346','35.7',103,101.5,110.5,100,10.2,22.5,3.53);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6727,'亞泰金屬','櫃','5/14',53.5,-0.8,-1.47,'28','1.52',54.3,55.4,55.4,53.5,3.5,14.2,1.61);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (6781,'AES-KY','市','5/14',672,14,2.13,'1,342','917',658,662,709,654,8.36,47.4,11.8);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8038,'長園科','櫃','5/14',28.8,-1.2,-4,'171','5.07',30,30,30.9,28.65,7.5,NULL,3.16);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8039,'台虹','市','5/14',46.25,1.4,3.12,'1,625','75.3',44.85,46.45,47.45,45.5,4.35,11.2,1.26);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8042,'金山電','櫃','5/14',42.55,0.75,1.79,'582','25.4',41.8,44.45,45.5,42.3,7.66,473,1.42);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8043,'蜜望實','櫃','5/14',26,-0.1,-0.38,'868','23.3',26.1,27,28.3,25.8,9.58,31.7,0.83);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8046,'南電','市','5/14',290,6.5,2.29,'18,388','5,443',283.5,290,305,286.5,6.53,39.2,5.53);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8071,'能率網通','櫃','5/14',11.9,-0.3,-2.46,'266','3.22',12.2,12.6,12.6,11.8,6.56,42.5,0.81);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8074,'鉅橡','櫃','5/14',20.55,0.15,0.74,'246','5.07',20.4,21.1,21.1,20.35,3.68,22.6,1.22);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8091,'翔名','櫃','5/14',59.3,-0.2,-0.34,'320','19.2',59.5,62.7,62.7,58.7,6.72,14.3,1.06);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8093,'保銳','櫃','5/14',10.15,0.15,1.5,'480','4.97',10,10.05,10.95,10,9.5,24.2,1.65);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8103,'瀚荃','市','5/14',35.95,-0.25,-0.69,'2,055','74.9',36.2,37.15,37.55,35.3,6.22,10.6,1.06);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8109,'博大','櫃','5/14',68.5,-0.5,-0.72,'154','10.6',69,69.6,70,67.5,3.62,14,3.55);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8121,'越峰','櫃','5/14',15.25,0.3,2.01,'922','14.1',14.95,15.7,15.85,14.75,7.36,84.7,2.15);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8147,'正淩','櫃','5/14',40.7,0.7,1.75,'5','0.2',40,40.1,40.7,40.1,1.5,54.3,1.93);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8155,'博智','櫃','5/14',94.4,-0.8,-0.84,'292','27.8',95.2,95.2,97,94,3.15,8.83,2.46);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8182,'加高','櫃','5/14',30.6,-0.3,-0.97,'1,190','37.5',30.9,31.5,32.65,30.6,6.63,12.6,1.07);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8213,'志超','市','5/14',46.85,-0.15,-0.32,'3,035','143',47,47.8,47.8,46.5,2.77,8.74,0.96);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8249,'菱光','市','5/14',21.5,-0.1,-0.46,'640','13.9',21.6,21.75,21.95,21.35,2.78,11.5,0.74);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8289,'泰藝','櫃','5/14',15.75,-0.1,-0.63,'732','11.8',15.85,16.6,17.2,15.15,12.9,34.2,0.82);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8291,'尚茂','櫃','5/14',7.12,-0.79,-9.99,'61','0.44',7.91,7.21,7.23,7.12,1.39,NULL,1.81);
INSERT INTO stock(代號,名稱,市場,股價日期,成交,漲跌價,漲跌幅,成交張數,成交額百萬,昨收,開盤,最高,最低,振幅,PER,PBR) VALUES (8358,'金居','櫃','5/14',73.8,5.7,8.37,'20,354','1,478',68.1,69.9,74.6,69.2,7.93,30.2,3.46);