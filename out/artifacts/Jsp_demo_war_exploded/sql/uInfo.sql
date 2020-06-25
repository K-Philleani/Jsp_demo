
CREATE TABLE `user` (
  `id` varchar(50) NOT NULL COMMENT '唯一ID',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;


INSERT INTO `uInfo` VALUES (1, 'tom', '123');
INSERT INTO `uInfo` VALUES (2, 'bibi', '22');
INSERT INTO `uInfo` VALUES (3, 'timi', '11');
INSERT INTO `uInfo` VALUES (4, 'timi', '11');
INSERT INTO `uInfo` VALUES (5, 'jimi', '22');
INSERT INTO `uInfo` VALUES (6, 'ray', '11');
