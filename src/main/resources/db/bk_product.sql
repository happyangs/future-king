DROP TABLE IF EXISTS bk_product;
CREATE TABLE `bk_product` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `product_id` int(8) NOT NULL DEFAULT '0' COMMENT '商品编码',
  `product_name` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '商品名称',
  `price` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `product_desc` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '商品描述',
  `picture_path` varchar(300) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '商品图片链接',
  `remark` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_delete` int(4) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`) USING BTREE COMMENT '商品编码索引',
  KEY `idx_product_name` (`product_name`) USING BTREE COMMENT '商品名称索引',
  KEY `idx_price` (`price`) USING BTREE COMMENT '商品价格索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='商品表';

INSERT INTO bk_product (product_id,product_name,price,product_desc,picture_path) VALUES (1001,'亮黑手机壳01','50.28','适用于iphoneX','http://img12.360buyimg.com/popWaterMark/jfs/t1120/20/458856238/140504/bab699cb/5526b9ebN1d63d8f8.jpg');
INSERT INTO bk_product (product_id,product_name,price,product_desc,picture_path) VALUES (1002,'亮黑手机壳02','50.28','适用于iphoneX','http://img12.360buyimg.com/popWaterMark/jfs/t1120/20/458856238/140504/bab699cb/5526b9ebN1d63d8f8.jpg');
INSERT INTO bk_product (product_id,product_name,price,product_desc,picture_path) VALUES (1003,'亮黑手机壳03','50.28','适用于iphoneX','http://img12.360buyimg.com/popWaterMark/jfs/t1120/20/458856238/140504/bab699cb/5526b9ebN1d63d8f8.jpg');
INSERT INTO bk_product (product_id,product_name,price,product_desc,picture_path) VALUES (1004,'亮黑手机壳04','50.28','适用于iphoneX','http://img12.360buyimg.com/popWaterMark/jfs/t1120/20/458856238/140504/bab699cb/5526b9ebN1d63d8f8.jpg');
INSERT INTO bk_product (product_id,product_name,price,product_desc,picture_path) VALUES (1005,'亮黑手机壳05','50.28','适用于iphoneX','http://img12.360buyimg.com/popWaterMark/jfs/t1120/20/458856238/140504/bab699cb/5526b9ebN1d63d8f8.jpg');
INSERT INTO bk_product (product_id,product_name,price,product_desc,picture_path) VALUES (1006,'亮黑手机壳06','50.28','适用于iphoneX','http://img12.360buyimg.com/popWaterMark/jfs/t1120/20/458856238/140504/bab699cb/5526b9ebN1d63d8f8.jpg');
INSERT INTO bk_product (product_id,product_name,price,product_desc,picture_path) VALUES (1007,'亮黑手机壳07','50.28','适用于iphoneX','http://img12.360buyimg.com/popWaterMark/jfs/t1120/20/458856238/140504/bab699cb/5526b9ebN1d63d8f8.jpg');
INSERT INTO bk_product (product_id,product_name,price,product_desc,picture_path) VALUES (1008,'亮黑手机壳08','50.28','适用于iphoneX','http://img12.360buyimg.com/popWaterMark/jfs/t1120/20/458856238/140504/bab699cb/5526b9ebN1d63d8f8.jpg');
INSERT INTO bk_product (product_id,product_name,price,product_desc,picture_path) VALUES (1009,'亮黑手机壳09','50.28','适用于iphoneX','http://img12.360buyimg.com/popWaterMark/jfs/t1120/20/458856238/140504/bab699cb/5526b9ebN1d63d8f8.jpg');
INSERT INTO bk_product (product_id,product_name,price,product_desc,picture_path) VALUES (1010,'亮黑手机壳10','50.28','适用于iphoneX','http://img12.360buyimg.com/popWaterMark/jfs/t1120/20/458856238/140504/bab699cb/5526b9ebN1d63d8f8.jpg');
INSERT INTO bk_product (product_id,product_name,price,product_desc,picture_path) VALUES (1011,'亮黑手机壳11','50.28','适用于iphoneX','http://img12.360buyimg.com/popWaterMark/jfs/t1120/20/458856238/140504/bab699cb/5526b9ebN1d63d8f8.jpg');
INSERT INTO bk_product (product_id,product_name,price,product_desc,picture_path) VALUES (1012,'亮黑手机壳12','50.28','适用于iphoneX','http://img12.360buyimg.com/popWaterMark/jfs/t1120/20/458856238/140504/bab699cb/5526b9ebN1d63d8f8.jpg');
INSERT INTO bk_product (product_id,product_name,price,product_desc,picture_path) VALUES (1013,'亮黑手机壳13','50.28','适用于iphoneX','http://img12.360buyimg.com/popWaterMark/jfs/t1120/20/458856238/140504/bab699cb/5526b9ebN1d63d8f8.jpg');
INSERT INTO bk_product (product_id,product_name,price,product_desc,picture_path) VALUES (1014,'亮黑手机壳14','50.28','适用于iphoneX','http://img12.360buyimg.com/popWaterMark/jfs/t1120/20/458856238/140504/bab699cb/5526b9ebN1d63d8f8.jpg');
INSERT INTO bk_product (product_id,product_name,price,product_desc,picture_path) VALUES (1015,'亮黑手机壳15','50.28','适用于iphoneX','http://img12.360buyimg.com/popWaterMark/jfs/t1120/20/458856238/140504/bab699cb/5526b9ebN1d63d8f8.jpg');