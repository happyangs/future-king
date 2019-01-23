DROP TABLE IF EXISTS bk_product;
CREATE TABLE `bk_product` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `product_id` int(8) NOT NULL DEFAULT '0' COMMENT '商品编码',
  `product_type` int(4) NOT NULL DEFAULT '0' COMMENT '商品类型',
  `product_theme` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '主题',
  `product_name` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '商品名称',
  `show_path` varchar(300) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '首页图片链接',
  `price` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `html_num` INT(3) NOT NULL DEFAULT 10 COMMENT '页面张数',
  `link` VARCHAR(200) NOT NULL DEFAULT '' COMMENT '商品存放链接',
  `link_code` VARCHAR(50) NOT NULL DEFAULT '' COMMENT '提取码',
  `product_desc` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '商品描述',
  `product_synopsis` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '详情简介',
  `remark` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_delete` int(4) NOT NULL DEFAULT '0' COMMENT '删除标记',
  UNIQUE INDEX(`product_id`),
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`) USING BTREE COMMENT '商品编码索引',
  KEY `idx_product_name` (`product_name`) USING BTREE COMMENT '商品名称索引',
  KEY `idx_price` (`price`) USING BTREE COMMENT '商品价格索引',
  KEY `idx_update_time` (`update_time`) USING BTREE COMMENT '更新时间索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='商品表';

INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1001,1,'节日','父亲节','https://s2.ax1x.com/2019/01/23/kA4WMq.png','10.01','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1002,1,'明星','亮黑手机壳02','http://m.tuniucdn.com/fb2/t1/G5/M00/E6/78/Cii-slt9Oo-IQMf_AAIfKdXQ55UAAMfBgDg02wAAh9B121.jpg','20.02','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1003,1,'明星','亮黑手机壳03','http://m.tuniucdn.com/fb2/t1/G5/M00/85/82/Cii-slqiV-CIHQjJAAD8yJ4nLtIAAEDVQBM-xMAAPzg656.jpg','30.03','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1004,1,'明星','亮黑手机壳04','http://m.tuniucdn.com/fb2/t1/G5/M00/58/22/Cii-slszozaIcoxFAAXQI_1e-28AAJO-wP26K0ABdA7130.jpg','40.04','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1005,1,'明星','亮黑手机壳05','http://m.tuniucdn.com/fb2/t1/G5/M00/94/EB/Cii-tFqwfU-IM1HiAAD4uzdwzjwAAEekwGkYjQAAPjT584.jpg','50.05','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1006,1,'明星','亮黑手机壳06','http://m.tuniucdn.com/fb2/t1/G1/M00/7A/B4/Cii9EFie4xyITCeHAAXAYvy52coAAHcKwDeGk0ABcB6854.jpg','60.06','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1007,1,'明星','亮黑手机壳07','http://m.tuniucdn.com/fb2/t1/G5/M00/E6/7B/Cii-s1t9O92IaBUqAAKnW1Zu4FwAAMfCgPYpHgAAqdz753.jpg','70.07','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1008,1,'明星','亮黑手机壳08','http://m.tuniucdn.com/fb2/t1/G2/M00/73/A3/Cii-TlhbPECIVqH-AATNQUyDKoMAAF3IQPLy5MABM1Z171.png','80.08','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1009,1,'明星','亮黑手机壳09','http://m.tuniucdn.com/fb2/t1/G2/M00/73/9E/Cii-T1hbO0mIWkc5AAYNaRqxdT8AAF3HAP1wI8ABg2B475.png','90.09','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1010,1,'明星','亮黑手机壳10','http://m.tuniucdn.com/fb2/t1/G5/M00/E6/78/Cii-slt9Oo-IQMf_AAIfKdXQ55UAAMfBgDg02wAAh9B121.jpg','10.10','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1011,1,'明星','亮黑手机壳11','http://m.tuniucdn.com/fb2/t1/G3/M00/67/19/Cii_Lll_CvqIfSulAASEdmokMEAAAFyQgPk750ABISO779.png','10.11','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1012,1,'明星','亮黑手机壳12','http://m.tuniucdn.com/fb2/t1/G2/M00/C4/DA/Cii-TFh4u8mILpkuAACogGWYTyIAAGv8AP5lykAAKiY879.png','20.12','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1013,1,'明星','亮黑手机壳13','http://m.tuniucdn.com/fb2/t1/G5/M00/FF/48/Cii-tFuM9TeICdVYAAQutkJqbdwAANHngFcaPUABC7O988.jpg','30.13','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1014,1,'明星','亮黑手机壳14','http://m.tuniucdn.com/fb2/t1/G5/M00/1A/D0/Cii-s1o7RBWIY7GBAAEoBqzawHAAABF0QP94lMAASge709.jpg','40.14','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1015,1,'明星','亮黑手机壳15','http://m.tuniucdn.com/fb2/t1/G4/M00/92/6E/Cii_J1nfD7eIPU_lAAI63nRzTBsAACGPAHZS18AAjr2032.png','50.15','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1016,1,'明星','亮黑手机壳16','http://m.tuniucdn.com/fb2/t1/G3/M00/12/61/Cii_LllMrgSIFfXlAAPtBGHah_IAABWcwP1yA0AA-0c422.png','60.16','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1017,1,'明星','亮黑手机壳17','http://m.tuniucdn.com/fb2/t1/G5/M00/07/70/Cii-sluSCv2IDCdhAAHMUoaHkosAANUogEgcsAAAcxq857.jpg','70.17','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1018,1,'明星','亮黑手机壳18','http://m.tuniucdn.com/fb2/t1/G5/M00/78/C8/Cii-tFvX6KGIGRbBAAQ4y_R1jEkAAP02wFbNzAABDjj514.jpg','80.18','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1019,1,'明星','亮黑手机壳19','http://m.tuniucdn.com/fb2/t1/G5/M00/2D/F1/Cii-s1pNkpyIS_D1AAMYLlUccqcAABpPwCFcPYAAxhG336.jpg','90.19','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1020,1,'明星','亮黑手机壳20','http://m.tuniucdn.com/fb2/t1/G5/M00/20/C7/Cii-tFpArvaIdbSmAABr0SusiGkAABTswDUL7wAAGvp786.jpg','20.20','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1021,1,'明星','亮黑手机壳21','http://m.tuniucdn.com/fb2/t1/G5/M00/78/C8/Cii-tFvX6KGIGRbBAAQ4y_R1jEkAAP02wFbNzAABDjj514.jpg','10.21','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_type,product_theme,product_name,show_path,price,product_desc,product_synopsis) VALUES (1022,1,'明星','亮黑手机壳22','http://m.tuniucdn.com/fb2/t1/G5/M00/07/70/Cii-sluSCv2IDCdhAAHMUoaHkosAANUogEgcsAAAcxq857.jpg','20.22','适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');