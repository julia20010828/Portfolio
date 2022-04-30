CREATE TABLE `discussion` (
  `id` bigint(20) NOT NULL,
  `mid` varchar(255) NOT NULL,
  `topic` varchar(512) NOT NULL,
  `content` varchar(512) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;