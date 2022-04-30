DROP TABLE IF EXISTS favorite;
CREATE TABLE favorite(
  `mId` varchar(30) NOT NULL, 
  `sId` INTEGER NOT NULL,
  `buyPrice` NUMERIC(5,2) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  FOREIGN KEY (mId) REFERENCES member(mId),
  FOREIGN KEY (sId) REFERENCES stock(代號)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



