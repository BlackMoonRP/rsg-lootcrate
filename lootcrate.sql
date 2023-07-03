CREATE TABLE IF NOT EXISTS `lootcrate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `looted` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `lootcrate` (`id`, `name`, `looted`) VALUES
(1, 'lootcrate1', 0),
(2, 'lootcrate2', 0),
(3, 'lootcrate3', 0),
(4, 'lootcrate4', 0),
(5, 'lootcrate5', 0),
(6, 'lootcrate6', 0),
(7, 'lootcrate7', 0),
(8, 'lootcrate8', 0),
(9, 'lootcrate9', 0),
(10, 'lootcrate10', 0),
(11, 'lootcrate11', 0),
(12, 'lootcrate12', 0),
(13, 'lootcrate13', 0),
(14, 'lootcrate14', 0),
(15, 'lootcrate15', 0),
(16, 'lootcrate16', 0),
(17, 'lootcrate17', 0),
(18, 'lootcrate18', 0),
(19, 'lootcrate19', 0),
(20, 'lootcrate20', 0);
